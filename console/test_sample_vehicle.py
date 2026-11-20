import json
from pathlib import Path
import socket
import tempfile
import threading
import time
import unittest
from sample_vehicle import SampleVehicle
from telemetry import Telemetry,receive_frame
from dispatch import Dispatch
from vehicles import Vehicles

ROOT=Path(__file__).parent

class SampleTests(unittest.TestCase):
    def test_real_wire_format_order_and_one_second_cadence(self):
        sample=[json.loads(l) for l in (ROOT/'samples/history.jsonl').read_text().splitlines() if l.strip()]
        server=SampleVehicle(ROOT/'samples/history.jsonl').start()
        try:
            with socket.create_connection(('127.0.0.1',server.port)) as sock:
                first=receive_frame(sock,threading.Event());start=time.monotonic()
                second=receive_frame(sock,threading.Event());elapsed=time.monotonic()-start
                self.assertEqual(first['data'],sample[0]['data']);self.assertEqual(second['data'],sample[1]['data'])
                self.assertGreater(elapsed,.8);self.assertLess(elapsed,2.5)
                self.assertNotEqual(first['received_at'],sample[0]['received_at'])
        finally:server.close()
    def test_loop_repeats_original_order(self):
        with tempfile.TemporaryDirectory() as directory:
            path=Path(directory)/'sample.jsonl'
            frames=[{'data':{'vehicle_id':'test','x':n}} for n in (1,2)]
            path.write_text('\n'.join(json.dumps(f) for f in frames))
            server=SampleVehicle(path,interval=.02).start()
            try:
                with socket.create_connection(('127.0.0.1',server.port)) as sock:
                    self.assertEqual([receive_frame(sock,threading.Event())['data']['x'] for _ in range(5)],[1,2,1,2,1])
            finally:server.close()
    def test_registered_vehicle_replay_and_cleanup(self):
        with tempfile.TemporaryDirectory() as directory:
            dispatch=Dispatch(Path(directory)/'state.sqlite3',ROOT/'samples');vehicles=Vehicles(dispatch)
            try:
                row=vehicles.add(dict(vehicle_id='DEMO-FORKLIFT',name='sample',host='127.0.0.1',port=19301))
                vehicles.command(row['id'],'connect','sample_tcp')
                deadline=time.monotonic()+3
                while time.monotonic()<deadline:
                    feed=vehicles.snapshot()[0]['telemetry']
                    if feed['frame_count']>=2:break
                    time.sleep(.05)
                self.assertGreaterEqual(feed['frame_count'],2)
                self.assertFalse(feed['online']);self.assertTrue(feed['stream_active']);self.assertTrue(feed['simulated'])
                port=vehicles.senders[row['id']].port
                vehicles.command(row['id'],'disconnect')
                self.assertFalse(vehicles.senders)
                with self.assertRaises(OSError):socket.create_connection(('127.0.0.1',port),timeout=.2)
                vehicles.command(row['id'],'connect','sample_tcp');vehicles.command(row['id'],'remove')
                self.assertEqual(vehicles.snapshot(),[]);self.assertFalse(vehicles.senders)
            finally:vehicles.close();dispatch.db.close()
    def test_identity_mismatch_does_not_fabricate_vehicle(self):
        with tempfile.TemporaryDirectory() as directory:
            dispatch=Dispatch(Path(directory)/'state.sqlite3',ROOT/'samples');vehicles=Vehicles(dispatch)
            try:
                row=vehicles.add(dict(vehicle_id='wrong',name='wrong',host='127.0.0.1',port=19301))
                with self.assertRaises(ValueError):vehicles.command(row['id'],'connect','sample_tcp')
                self.assertFalse(vehicles.senders)
            finally:vehicles.close();dispatch.db.close()

if __name__=='__main__':unittest.main()
