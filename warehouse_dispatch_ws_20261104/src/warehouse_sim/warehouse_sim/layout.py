"""Single source of truth for the new warehouse's physical layout and initial routes."""

REVISION = 'warehouse_v2'
WIDTH = 72.0
HEIGHT = 52.0
SHELF_X = (18.0, 28.0, 38.0, 48.0, 58.0)
SHELF_Y = (20.0, 32.0, 44.0)
SHELF_SIZE = (4.0, 6.0)
AISLE_X = (13.0, 23.0, 33.0, 43.0, 53.0, 63.0)
AISLE_Y = (13.0, 20.0, 26.0, 32.0, 38.0, 44.0, 49.0)
CHARGER_X = (6.0, 12.0, 18.0, 24.0)
CHARGER_Y = 5.0
FOOTPRINT = ((-1.62, -0.58), (0.28, -0.58), (0.28, 0.58), (-1.62, 0.58))
# The fifth robot parks on a short spur, clear of the main top aisle.
# Keep the remaining optional model poses distinct; only 4/5-car scripts are validated.
HOME_STATIONS = ('CP_06', 'CP_12', 'CP_18', 'CP_24', 'PP_05') + tuple(
    f'LM_{int(x):02d}_49' for x in AISLE_X[:-1])
SPAWN_POSES = tuple((x, CHARGER_Y, 1.5707963267948966) for x in CHARGER_X) + (
    (67.5, 49.0, 1.5707963267948966),) + tuple(
    (x, 49.0, -1.5707963267948966) for x in AISLE_X[:-1])


def parking_homes(names):
    homes = {}
    for name in names:
        index = int(name.removeprefix('agv')) - 1
        if not 0 <= index < len(HOME_STATIONS):
            raise ValueError('unsupported robot parking index')
        homes[name] = HOME_STATIONS[index]
    if len(set(homes.values())) != len(homes):
        raise ValueError('robot parking destinations must be distinct')
    return homes


def exclusive_destination(station):
    """Charging and parking bays have capacity one, regardless of job type."""
    return station.startswith(('CP_', 'PP_'))
GOODS_POINTS = {
    (13.0, 20.0): 'AP_PICK_01',
    (33.0, 32.0): 'AP_PICK_02',
    (53.0, 44.0): 'AP_PICK_03',
    (46.0, 9.0): 'AP_RECEIVE_01',
    (56.0, 9.0): 'AP_RECEIVE_02',
    (66.0, 9.0): 'AP_RECEIVE_03',
    (34.0, 9.0): 'AP_SHIP_01',
    (40.0, 9.0): 'AP_SHIP_02',
    (68.0, 26.0): 'AP_BUFFER_01',
    (68.0, 38.0): 'AP_BUFFER_02',
    (7.0, 45.0): 'AP_QC_01',
}


def obstacle_rectangles():
    """Solid rack envelopes and fixtures used by route checks and the baseline map."""
    rectangles = [(x, y, *SHELF_SIZE) for x in SHELF_X for y in SHELF_Y]
    rectangles += [(6, 23, 8, 10), (5.5, 33, 7, 4), (68, 32, 6, 6), (7, 42, 1.2, 1.2)]
    # QC has low physical guard rails; the opening at y=42 is the forklift entrance.
    rectangles += [(5.9, 35.9, 9.9, .15), (5.9, 50.0, 9.9, .15),
                   (10.8, 37.1, .15, 2.4), (10.8, 48.8, .15, 2.4)]
    rectangles += [(x, 4, 3, 6) for x in (46, 56, 66)]
    rectangles += [(x, 4, 2.6, 3) for x in (34, 40)]
    rectangles += [(x, 1.8, 1.2, 0.8) for x in CHARGER_X]
    # These are solid columns in warehouse.sdf, not just decorative visuals.
    rectangles += [(float(x), 51.7, .4, .45) for x in range(4, 72, 8)]
    rectangles += [(float(x), float(y), .45, .45) for x in (2, 70) for y in (14, 50)]
    return rectangles


SURVEY_WAYPOINTS = [
    (6, 13), (13, 13), (13, 49),
    (13, 42), (10, 42), (13, 42), (13, 38), (13, 49),
    (23, 49), (23, 13),
    (33, 13), (33, 49), (43, 49), (43, 13),
    (53, 13), (53, 49), (63, 49),
    (63, 38), (68, 38), (63, 38),
    (63, 26), (68, 26), (63, 26), (63, 13),
    (63, 9), (43, 9), (23, 9), (6, 9), (6, 5)]
