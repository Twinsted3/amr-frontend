"""Transport-neutral execution boundary for the traffic and handling adapters.

A dispatch goal is a business intent. Only an AuthorizedMotion, constructed
from a granted traffic segment, may be translated into a vehicle move.
"""
from dataclasses import dataclass
import math
from typing import Protocol


def identifier(value, field):
    if not isinstance(value, str) or not value.strip() or len(value) > 256:
        raise ValueError(f'{field} must be a nonempty identifier')


def number(value, field):
    try:
        valid = type(value) in (float, int) and math.isfinite(value)
    except OverflowError:
        valid = False
    if not valid:
        raise ValueError(f'{field} must be finite')


def check_pose(value):
    if not isinstance(value, (tuple, list)) or len(value) != 3:
        raise ValueError('pose must contain x, y and yaw in the active map frame')
    for component in value:
        number(component, 'pose component')


@dataclass(frozen=True)
class VehicleIdentity:
    robot: str
    map_name: str
    epoch: str

    def __post_init__(self):
        identifier(self.robot, 'robot')
        identifier(self.map_name, 'map_name')
        identifier(self.epoch, 'vehicle_epoch')


@dataclass(frozen=True)
class ExecutionRef:
    vehicle: VehicleIdentity
    execution_id: str
    command_id: str

    def __post_init__(self):
        identifier(self.execution_id, 'execution_id')
        identifier(self.command_id, 'command_id')

    @classmethod
    def from_dispatch(cls, command, epoch):
        return cls(VehicleIdentity(command['robot'], command['map_name'], epoch),
                   command['task_id'], command['command_id'])


@dataclass(frozen=True)
class AuthorizedMotion:
    ref: ExecutionRef
    grant_id: str
    grant_sequence: int
    points: tuple[tuple[float, float, float], ...]
    lease_s: float
    max_speed_mps: float
    drive_reverse: bool = False

    def __post_init__(self):
        identifier(self.grant_id, 'grant_id')
        if type(self.grant_sequence) is not int or self.grant_sequence <= 0:
            raise ValueError('grant_sequence must be positive')
        if type(self.drive_reverse) is not bool:
            raise ValueError('drive_reverse must be boolean')
        if not isinstance(self.points, tuple) or len(self.points) < 2:
            raise ValueError('an authorized motion must contain at least two poses')
        for point in self.points:
            check_pose(point)
        object.__setattr__(self, 'points', tuple(tuple(point) for point in self.points))
        for field in ('lease_s', 'max_speed_mps'):
            value = getattr(self, field)
            number(value, field)
            if value <= 0:
                raise ValueError(f'{field} must be positive')


@dataclass(frozen=True)
class HandlingCommand:
    ref: ExecutionRef
    kind: str
    station: str
    cargo_id: str

    def __post_init__(self):
        if self.kind not in ('pickup', 'dropoff'):
            raise ValueError('unsupported handling action')
        identifier(self.station, 'station')
        identifier(self.cargo_id, 'cargo_id')

    @classmethod
    def from_dispatch(cls, command, epoch):
        return cls(ExecutionRef.from_dispatch(command, epoch), command['action'],
                   command['goal'], command['cargo_id'])


@dataclass(frozen=True)
class VehicleTelemetry:
    vehicle: VehicleIdentity
    sequence: int
    pose: tuple[float, float, float]
    soc: float
    stopped: bool
    localization_valid: bool
    cargo_verified: bool
    cargo_id: str | None = None
    active_command_id: str | None = None
    active_grant_id: str | None = None

    def __post_init__(self):
        if type(self.sequence) is not int or self.sequence < 0:
            raise ValueError('telemetry sequence must be nonnegative')
        check_pose(self.pose)
        object.__setattr__(self, 'pose', tuple(self.pose))
        number(self.soc, 'soc')
        if not 0 <= self.soc <= 1:
            raise ValueError('soc must be between 0 and 1')
        for value in (self.stopped, self.localization_valid, self.cargo_verified):
            if type(value) is not bool:
                raise ValueError('telemetry confidence and motion flags must be boolean')
        for field in ('cargo_id', 'active_command_id', 'active_grant_id'):
            value = getattr(self, field)
            if value is not None:
                identifier(value, field)
        if self.cargo_id is not None and not self.cargo_verified:
            raise ValueError('unverified cargo cannot be asserted as present')


class TelemetryIngress:
    """Bind each vehicle epoch and reject stale or out-of-order pose samples."""

    def __init__(self, identities):
        self.identities = {identity.robot: identity for identity in identities}
        self.latest = {}

    def observe(self, sample, received_at):
        number(received_at, 'received_at')
        name = sample.vehicle.robot
        previous = self.latest.get(name)
        if (self.identities.get(name) != sample.vehicle or
                (previous and (sample.sequence <= previous[0].sequence or received_at < previous[1]))):
            return False
        self.latest[name] = (sample, received_at)
        return True

    def read(self, robot, now, max_age_s):
        number(now, 'now')
        number(max_age_s, 'max_age_s')
        if max_age_s < 0:
            raise ValueError('max_age_s must be nonnegative')
        observation = self.latest.get(robot)
        if observation and 0 <= now - observation[1] <= max_age_s:
            sample = observation[0]
            return sample if sample.localization_valid else None
        return None


@dataclass(frozen=True)
class VehicleFeedback:
    ref: ExecutionRef
    event: str
    station: str | None = None
    loaded: bool | None = None
    cargo_id: str | None = None
    reason: str | None = None

    events = frozenset({'arrived', 'handling_done', 'failed', 'rejected', 'handling_failed',
                        'cancelled', 'queued', 'dispatched', 'paused', 'resumed',
                        'handling_accepted', 'cancel_requested'})

    def __post_init__(self):
        if not isinstance(self.event, str) or self.event not in self.events:
            raise ValueError('unsupported vehicle feedback event')
        if self.event in ('arrived', 'handling_done'):
            identifier(self.station, 'station')
        if self.event == 'handling_done':
            identifier(self.cargo_id, 'cargo_id')
            if type(self.loaded) is not bool:
                raise ValueError('handling confirmation requires a boolean loaded flag')
        if self.loaded is not None and type(self.loaded) is not bool:
            raise ValueError('loaded must be boolean')
        if self.reason is not None and not isinstance(self.reason, str):
            raise ValueError('feedback reason must be text')

    @classmethod
    def from_event(cls, event):
        return cls(ExecutionRef.from_dispatch(event, event['vehicle_epoch']), event['event'],
                   event.get('station'), event.get('loaded'), event.get('cargo_id'), event.get('reason'))

    def matches(self, command, expected_epoch):
        if self.ref != ExecutionRef.from_dispatch(command, expected_epoch):
            return False
        if self.event == 'handling_done':
            action = command.get('action')
            return (action in ('pickup', 'dropoff') and self.station == command.get('goal')
                    and self.cargo_id == command.get('cargo_id') and self.loaded is (action == 'pickup'))
        if self.event == 'arrived':
            return (not command.get('action') and not any(command.get(flag) for flag in ('cancel', 'pause', 'resume'))
                    and self.station == command.get('goal'))
        if self.event in ('handling_accepted', 'handling_failed'):
            return command.get('action') in ('pickup', 'dropoff')
        return True

    def to_event(self):
        event = dict(robot=self.ref.vehicle.robot, map_name=self.ref.vehicle.map_name,
                     vehicle_epoch=self.ref.vehicle.epoch, task_id=self.ref.execution_id,
                     command_id=self.ref.command_id, event=self.event)
        event.update({key: getattr(self, key) for key in ('station', 'loaded', 'cargo_id', 'reason')
                      if getattr(self, key) is not None})
        return event


@dataclass(frozen=True)
class StopRequest:
    ref: ExecutionRef
    request_id: str
    grant_id: str | None = None

    def __post_init__(self):
        identifier(self.request_id, 'request_id')
        if self.grant_id is not None:
            identifier(self.grant_id, 'grant_id')

    def confirms(self, request_id, sample):
        return (request_id == self.request_id and sample.vehicle == self.ref.vehicle
                and sample.active_command_id == self.ref.command_id and sample.active_grant_id == self.grant_id
                and sample.localization_valid and sample.stopped)


@dataclass(frozen=True)
class SegmentArrival:
    ref: ExecutionRef
    grant_id: str
    telemetry: VehicleTelemetry

    def __post_init__(self):
        identifier(self.grant_id, 'grant_id')

    def confirms(self, ref, grant_id, endpoint, *, position_tolerance=.05, heading_tolerance=.1):
        pose = self.telemetry.pose
        return (self.ref == ref and self.grant_id == grant_id and self.telemetry.vehicle == ref.vehicle
                and self.telemetry.active_command_id == ref.command_id
                and self.telemetry.active_grant_id == grant_id
                and self.telemetry.localization_valid and self.telemetry.stopped
                and math.dist(pose[:2], endpoint[:2]) <= position_tolerance
                and abs(math.remainder(pose[2] - endpoint[2], math.tau)) <= heading_tolerance)


class VehicleAdapter(Protocol):
    """Asynchronous port. Submission alone grants no arrival or stop confirmation."""

    def send_motion(self, motion: AuthorizedMotion) -> None:
        """Execute only the granted points; fence duplicate and older grant sequences."""

    def send_handling(self, command: HandlingCommand) -> None:
        """Execute each command ID at most once, retaining its outcome for reconciliation."""

    def request_stop(self, request: StopRequest) -> None:
        """Stop motion and report a trusted stationary sample with the request ID."""

    def query_telemetry(self, vehicle: VehicleIdentity) -> None:
        """Request a fresh pose, cargo state and active command or grant identity."""


class VehicleAdapterEvents(Protocol):
    """A transport reports events here with server-local monotonic receipt time."""

    def on_telemetry(self, sample: VehicleTelemetry, received_at: float) -> None: ...

    def on_segment_arrival(self, acknowledgement: SegmentArrival, received_at: float) -> None: ...

    def on_handling_feedback(self, feedback: VehicleFeedback, received_at: float) -> None: ...

    def on_stop_confirmation(self, request_id: str, sample: VehicleTelemetry, received_at: float) -> None: ...
