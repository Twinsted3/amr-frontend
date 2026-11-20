"""Detailed warehouse geometry and the v2 directed route network."""

import json
import math
from pathlib import Path
import xml.etree.ElementTree as ET

from PIL import Image, ImageDraw, ImageFont
import yaml

from warehouse_sim.layout import (
    AISLE_X, AISLE_Y, CHARGER_X, CHARGER_Y, GOODS_POINTS, HEIGHT,
    REVISION, SHELF_SIZE, SHELF_X, SHELF_Y, WIDTH, obstacle_rectangles,
)

ROOT = Path(__file__).resolve().parents[1]
MAP_DIR = ROOT/'maps'
CONFIG_DIR = ROOT/'config'
WORLD = ROOT/'worlds/warehouse.sdf'
SMAP = MAP_DIR/'warehouse.smap'
RMF = MAP_DIR/'warehouse.building.yaml'
BASELINE = MAP_DIR/'warehouse_baseline.pgm'
BASELINE_YAML = MAP_DIR/'warehouse_baseline.yaml'
ASSETS = ROOT/'models/warehouse_assets'
BLUE = '0.10 0.22 0.36 1'
ORANGE = '0.93 0.39 0.08 1'
GRAY = '0.67 0.71 0.74 1'


def sub(parent, tag, value=None, **attributes):
    item = ET.SubElement(parent, tag, attributes)
    if value is not None:
        item.text = str(value)
    return item


def material(visual, color, texture=None, emissive=None):
    mat = sub(visual, 'material')
    sub(mat, 'ambient', color)
    sub(mat, 'diffuse', color)
    if emissive:
        sub(mat, 'emissive', emissive)
    if texture:
        metal = sub(sub(mat, 'pbr'), 'metal')
        sub(metal, 'albedo_map', f'model://warehouse_assets/materials/textures/{texture}.png')
        sub(metal, 'metalness', 0)
        sub(metal, 'roughness', 0.9)


def box(link, name, size, pose, color, *, collide=True, texture=None, emissive=None):
    pose = tuple(pose)+(0,)*(6-len(pose))
    pose_text = ' '.join(f'{n:g}' for n in pose)
    if collide:
        element = sub(link, 'collision', name=name+'_collision')
        sub(element, 'pose', pose_text)
        sub(sub(sub(element, 'geometry'), 'box'), 'size', ' '.join(map(str, size)))
    visual = sub(link, 'visual', name=name+'_visual')
    sub(visual, 'pose', pose_text)
    sub(sub(sub(visual, 'geometry'), 'box'), 'size', ' '.join(map(str, size)))
    material(visual, color, texture, emissive)
    return visual


def cylinder(link, name, radius, length, pose, color, collide=True):
    pose = tuple(pose)+(0,)*(6-len(pose))
    for kind in (('collision', 'visual') if collide else ('visual',)):
        element = sub(link, kind, name=name+'_'+kind)
        sub(element, 'pose', ' '.join(f'{n:g}' for n in pose))
        geometry = sub(sub(element, 'geometry'), 'cylinder')
        sub(geometry, 'radius', radius)
        sub(geometry, 'length', length)
        if kind == 'visual':
            material(element, color)


def model(world, name, x=0, y=0, z=0):
    element = sub(world, 'model', name=name)
    sub(element, 'static', 'true')
    sub(element, 'pose', f'{x} {y} {z} 0 0 0')
    return sub(element, 'link', name='body')


def sign(link, name, x, y, z, width, height, texture):
    return box(link, name, (width, .07, height), (x, y, z), '1 1 1 1',
               collide=False, texture=texture)


def bollard(link, name, x, y):
    cylinder(link, name, .13, .95, (x, y, .475), '0.98 0.73 0.04 1')
    for index, z in enumerate((.27, .59, .88)):
        cylinder(link, name+f'_band_{index}', .135, .11, (x, y, z), '.10 .12 .13 1', False)


def pallet(link, name, x, y, z=0, loaded=True):
    box(link, name+'_pallet', (1.15, 1.15, .20), (x, y, z+.10),
        '.54 .36 .17 1', collide=False)
    if loaded:
        for index, (dx, dy, h) in enumerate(((-.27, 0, .65), (.27, 0, .85))):
            box(link, f'{name}_carton_{index}', (.51, 1.05, h),
                (x+dx, y+dy, z+.22+h/2), '.68 .51 .32 1', collide=False)
            box(link, f'{name}_tape_{index}', (.53, .07, .01),
                (x+dx, y+dy, z+.225+h), '.89 .78 .53 1', collide=False)


def textures():
    directory = ASSETS/'materials/textures'
    directory.mkdir(parents=True, exist_ok=True)
    font_path = '/usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf'
    labels = {
        'charging': ('CHARGING / DC 48V', '#104b42', '#eefff5'),
        'receiving': ('RECEIVING / INBOUND', '#995717', '#fff4dd'),
        'shipping': ('SHIPPING / OUTBOUND', '#164d78', '#eff8ff'),
        'storage': ('HIGH BAY STORAGE', '#243f56', '#ffffff'),
        'buffer': ('BUFFER / PALLET HOLD', '#674685', '#ffffff'),
        'quality': ('QUALITY CHECK', '#176777', '#ffffff'),
        'office': ('OPERATIONS OFFICE', '#324555', '#ffffff'),
        'maintenance': ('MAINTENANCE', '#8a6a17', '#ffffff'),
    }
    for i in range(1, 5):
        labels[f'charger_{i}'] = (f'CHARGE {i:02d}  /  48V', '#07634c', '#ffffff')
    for i in range(1, 4):
        labels[f'dock_{i}'] = (f'DOCK {i:02d}', '#34414c', '#fff18a')
    for key, (title, background, foreground) in labels.items():
        image = Image.new('RGB', (1024, 256), background)
        draw = ImageDraw.Draw(image)
        font = ImageFont.truetype(font_path, 64)
        bounds = draw.textbbox((0, 0), title, font=font)
        draw.text(((1024-bounds[2])/2, (256-(bounds[3]-bounds[1]))/2-bounds[1]),
                  title, fill=foreground, font=font)
        draw.rounded_rectangle((12, 12, 1012, 244), radius=12, outline=foreground, width=6)
        image.save(directory/f'{key}.png')
    (ASSETS/'model.config').write_text(
        '<model><name>warehouse_assets</name><version>1.0</version>'
        '<sdf version="1.9">model.sdf</sdf><description>Warehouse signage textures</description></model>')
    (ASSETS/'model.sdf').write_text(
        '<sdf version="1.9"><model name="warehouse_assets"><static>true</static>'
        '<link name="unused"/></model></sdf>')


def build_routes():
    points, curves, by_xy = [], [], {}

    def add(x, y, name=None, kind=None, yaw=None):
        if (x, y) in by_xy:
            return by_xy[(x, y)]
        name = name or GOODS_POINTS.get((x, y), f'LM_{int(x):02d}_{int(y):02d}')
        item = {'instanceName': name,
                'className': kind or ('ActionPoint' if (x, y) in GOODS_POINTS else 'LocationMark'),
                'pos': {'x': float(x), 'y': float(y)}, 'property': []}
        if yaw is not None:
            item['dir'] = yaw
        points.append(item)
        by_xy[(x, y)] = name
        return name

    def edge(a, b, both=True, controls=None):
        names = {point['instanceName']: point for point in points}
        p, q = names[a]['pos'], names[b]['pos']
        c1, c2 = controls or (
            (p['x']+(q['x']-p['x'])/3, p['y']+(q['y']-p['y'])/3),
            (p['x']+2*(q['x']-p['x'])/3, p['y']+2*(q['y']-p['y'])/3))
        curve = {
            'className': 'BezierPath' if controls else 'DegenerateBezier',
            'instanceName': a+'-'+b, 'startPos': {'instanceName': a, 'pos': p.copy()},
            'endPos': {'instanceName': b, 'pos': q.copy()},
            'controlPos1': {'x': c1[0], 'y': c1[1]},
            'controlPos2': {'x': c2[0], 'y': c2[1]}, 'property': []}
        curves.append(curve)
        if both:
            edge(b, a, False, (c2, c1) if controls else None)

    for x in AISLE_X:
        for y in AISLE_Y:
            add(x, y)
    for x in AISLE_X:
        for ya, yb in zip(AISLE_Y, AISLE_Y[1:]):
            a, b = by_xy[x, ya], by_xy[x, yb]
            if x in (33, 53):
                edge(b, a, False)
            else:
                edge(a, b, x in (13, 63))
    south_x = sorted(set(AISLE_X) | set(CHARGER_X) | {34, 40, 46, 56, 66})
    for x in south_x:
        add(x, 13)
    for y in (13, 26, 38, 49):
        xs = south_x if y == 13 else AISLE_X
        for xa, xb in zip(xs, xs[1:]):
            if y == 38:
                edge(by_xy[xb, y], by_xy[xa, y], False)
            else:
                edge(by_xy[xa, y], by_xy[xb, y], y in (13, 49))
    for x in CHARGER_X:
        cp = add(x, CHARGER_Y, f'CP_{int(x):02d}', 'ChargePoint', math.pi/2)
        wait = add(x, 10, f'LM_DOCK_{int(x):02d}')
        edge(cp, wait)
        edge(wait, by_xy[x, 13])
    parking = add(67.5, 49, 'PP_05', 'LocationMark', math.pi/2)
    edge(by_xy[63, 49], parking)
    for x in (34, 40, 46, 56, 66):
        ap = add(x, 9, yaw=-math.pi/2)
        edge(ap, by_xy[x, 13])
    for y in (26, 38):
        ap = add(68, y)
        edge(by_xy[63, y], ap, True, ((65, y-1), (66, y+1)))
    for x, y, name in ((10, 42, 'LM_QC_E'), (7, 39, 'LM_QC_S'),
                       (4, 42, 'LM_QC_W'), (7, 45, 'AP_QC_01')):
        add(x, y, name)
    k = 1.65685424949
    edge('LM_QC_E', 'LM_QC_S', False, ((10, 42-k), (7+k, 39)))
    edge('LM_QC_S', 'LM_QC_W', False, ((7-k, 39), (4, 42-k)))
    edge('LM_QC_W', 'AP_QC_01', False, ((4, 42+k), (7-k, 45)))
    edge('AP_QC_01', 'LM_QC_E', False, ((7+k, 45), (10, 42+k)))
    edge(by_xy[13, 38], 'LM_QC_E', True, ((13, 40), (12, 42)))
    edge('LM_DOCK_24', by_xy[23, 13], True, ((24, 11.5), (23, 11.5)))
    edge(by_xy[40, 9], by_xy[43, 13], True, ((41.5, 9), (43, 11)))
    by_name = {point['instanceName']: point for point in points}
    edges = {(c['startPos']['instanceName'], c['endPos']['instanceName']) for c in curves}
    return points, sorted(edges), curves, by_name


def build_world():
    textures()
    sdf = ET.Element('sdf', version='1.9')
    world = sub(sdf, 'world', name='warehouse')
    sub(world, 'gravity', '0 0 -9.8')
    physics = sub(world, 'physics', name='default', type='ignored')
    sub(physics, 'max_step_size', .005)
    sub(physics, 'real_time_factor', 1.0)
    for suffix, name in [('physics', 'Physics'), ('user-commands', 'UserCommands'),
                         ('scene-broadcaster', 'SceneBroadcaster'), ('sensors', 'Sensors'),
                         ('imu', 'Imu')]:
        plugin = sub(world, 'plugin', filename=f'gz-sim-{suffix}-system',
                     name=f'gz::sim::systems::{name}')
        if name == 'Sensors':
            sub(plugin, 'render_engine', 'ogre2')
    light = sub(world, 'light', name='warehouse_sun', type='directional')
    sub(light, 'pose', '36 26 18 0 0 0')
    sub(light, 'direction', '-0.3 0.2 -1')
    sub(light, 'diffuse', '.95 .95 .95 1')
    sub(light, 'cast_shadows', 'false')
    floor = model(world, 'warehouse_floor')
    box(floor, 'concrete', (WIDTH, HEIGHT, .12), (WIDTH/2, HEIGHT/2, -.06), '.59 .63 .67 1')
    for key, center, size, color in [
        ('charging', (14, 6), (28, 11), '.12 .25 .25 1'),
        ('shipping', (36, 5), (14, 10), '.19 .31 .42 1'),
        ('receiving', (57, 5), (28, 10), '.48 .37 .25 1'),
        ('quality', (6, 43), (11, 15), '.20 .32 .35 1'),
        ('buffer', (68, 32), (7, 17), '.33 .28 .42 1'),
    ]:
        box(floor, key+'_zone', (*size, .008), (*center, .005), color, collide=False)
    walls = model(world, 'warehouse_walls')
    for name, size, pose in [
        ('west', (.2, HEIGHT, 3), (0, HEIGHT/2, 1.5)),
        ('east', (.2, HEIGHT, 3), (WIDTH, HEIGHT/2, 1.5)),
        ('north', (WIDTH, .2, 3), (WIDTH/2, HEIGHT, 1.5)),
        ('south_curb', (WIDTH, .2, .4), (WIDTH/2, 0, .2))]:
        box(walls, name, size, pose, '.68 .70 .69 1')
    for x in range(4, 72, 8):
        box(walls, f'north_column_{x}', (.4, .45, 4.5), (x, 51.7, 2.25), GRAY)
    for x in (2, 70):
        for y in (14, 50):
            box(walls, f'column_{x}_{y}', (.45, .45, 5), (x, y, 2.5), GRAY)
    for y in (14, 38, 50):
        box(walls, f'lighting_truss_{y}', (68, .13, .18), (36, y, 5.0), GRAY, collide=False)
        for x in (13, 33, 53):
            box(walls, f'light_{x}_{y}', (2.5, .22, .08), (x, y, 4.85),
                '.95 .96 .89 1', collide=False, emissive='.8 .8 .7 1')

    for row, cy in enumerate(SHELF_Y, 1):
        for col, cx in enumerate(SHELF_X, 1):
            rack = model(world, f'rack_R{row}_B{col}', cx, cy)
            collision = sub(rack, 'collision', name='rack_envelope')
            sub(collision, 'pose', '0 0 2 0 0 0')
            sub(sub(sub(collision, 'geometry'), 'box'), 'size', '4 6 4')
            for xx in (-1.92, 1.92):
                for yy in (-2.92, -.97, .97, 2.92):
                    box(rack, f'upright_{xx}_{yy}', (.15, .15, 4.1),
                        (xx, yy, 2.05), BLUE, collide=False)
            # A narrow rack guard rail at the 2.20 m lidar plane makes the
            # actual shelf envelope observable during Cartographer mapping.
            # The existing envelope collision already protects this space.
            for xx in (-1.92, 1.92):
                box(rack, f'scan_guard_side_{xx}', (.16, 5.95, .18),
                    (xx, 0, 2.20), BLUE, collide=False)
            for yy in (-2.92, 2.92):
                box(rack, f'scan_guard_end_{yy}', (3.95, .16, .18),
                    (0, yy, 2.20), BLUE, collide=False)
            for tier, z in enumerate((.65, 1.85, 3.05)):
                for xx in (-1.85, 1.85):
                    box(rack, f'beam_{tier}_{xx}', (.14, 5.9, .16),
                        (xx, 0, z), ORANGE, collide=False)
                box(rack, f'grate_{tier}', (3.7, 5.8, .045),
                    (0, 0, z+.05), '.50 .55 .58 1', collide=False)
                for bay, yy in enumerate((-1.92, 0, 1.92)):
                    for side, xx in enumerate((-.90, .90)):
                        pallet(rack, f'load_{tier}_{bay}_{side}', xx, yy, z+.08,
                               loaded=(tier+bay+side+row+col) % 7 != 0)
            sign(rack, 'rack_id', 0, -3.02, 3.95, 1.6, .35, 'storage')

    for number, x in enumerate(CHARGER_X, 1):
        station = model(world, f'charging_station_{number:02d}', x, 0)
        box(station, 'cabinet_base', (1.3, 1.0, .25), (0, 1.8, .125), '.15 .18 .21 1')
        box(station, 'charger_cabinet', (1.0, .7, 1.85), (0, 1.8, 1.17), '.08 .27 .38 1')
        box(station, 'green_display', (.70, .035, .40), (0, 2.17, 1.55),
            '.04 .80 .42 1', collide=False, emissive='.02 .5 .18 1')
        box(station, 'contact_plate', (.66, .10, .30), (0, 2.25, .48), '.75 .65 .22 1')
        cylinder(station, 'indicator_post', .06, 1.1, (.55, 1.8, 2.0), GRAY)
        cylinder(station, 'status_light', .11, .18, (.55, 1.8, 2.62), '.05 .95 .35 1', False)
        sign(station, 'charge_sign', 0, 1.8, 2.8, 2.4, .55, f'charger_{number}')
        for side in (-.95, .95):
            bollard(station, f'guard_{side}', side, 2.0)
        for segment, (xx, zz) in enumerate(((.6, 1.25), (.72, 1.0), (.75, .75))):
            cylinder(station, f'cable_{segment}', .035, .33, (xx, 2.15, zz), '.05 .06 .07 1', False)
        box(station, 'bay_green', (3.0, 5.6, .01), (0, 5.8, .018), '.08 .43 .32 1', collide=False)
        box(station, 'floor_contact_pad', (.85, .85, .015), (0, 5, .031),
            '.70 .62 .20 1', collide=False)
        box(station, 'floor_cable_conduit', (.055, 2.8, .018), (0, 3.6, .025),
            '.08 .10 .11 1', collide=False)
        for xx in (-1.6, 1.6):
            box(station, f'bay_edge_{xx}', (.08, 5.8, .012), (xx, 5.8, .025),
                '.80 .95 .86 1', collide=False)

    docks = model(world, 'receiving_docks')
    for number, x in enumerate((46, 56, 66), 1):
        for dx in (-2.0, 2.0):
            box(docks, f'door_post_{number}_{dx}', (.25, .5, 3.2),
                (x+dx, .45, 1.6), BLUE)
        box(docks, f'door_header_{number}', (4.2, .5, .25), (x, .45, 3.25), BLUE)
        for i in range(10):
            box(docks, f'shutter_{number}_{i}', (3.7, .12, .15),
                (x, .48, 1.6+i*.15), '.46 .49 .52 1', collide=False)
        sign(docks, f'dock_sign_{number}', x, .42, 3.65, 3.0, .65, f'dock_{number}')
        for dx in (-1.8, 1.8):
            bollard(docks, f'dock_guard_{number}_{dx}', x+dx, 1)
        conveyor = model(world, f'inbound_conveyor_{number}', x, 4)
        for xx in (-1.35, 1.35):
            for yy in (-2.5, 2.5):
                box(conveyor, f'leg_{xx}_{yy}', (.15, .15, .55),
                    (xx, yy, .275), BLUE)
        box(conveyor, 'frame', (3, 6, .25), (0, 0, .55), BLUE)
        for i in range(15):
            cylinder(conveyor, f'roller_{i}', .09, 2.7, (0, -2.8+i*.40, .75, 0, math.pi/2, 0),
                     '.69 .72 .74 1', False)
        pallet(conveyor, 'inbound_load', 0, -1, .85)
        pallet(conveyor, 'inbound_load2', 0, 1, .85)
    outbound = model(world, 'outbound_staging')
    for x in (34, 40):
        for y in (3, 5):
            pallet(outbound, f'ship_{x}_{y}', x, y, loaded=True)
    buffer = model(world, 'buffer_cage', 68, 32)
    for x in (-2.8, 2.8):
        box(buffer, f'fence_{x}', (.16, 5.8, 1.4), (x, 0, .7), '.36 .40 .44 1')
    for y in (-2.8, 2.8):
        box(buffer, f'fence_end_{y}', (5.8, .16, 1.4), (0, y, .7), '.36 .40 .44 1')
    for x in (-1.5, 0, 1.5):
        for y in (-1.5, 0, 1.5):
            pallet(buffer, f'buffer_{x}_{y}', x, y, loaded=(x+y) != 0)
    sign(buffer, 'buffer_label', 0, -2.9, 2.2, 5, .7, 'buffer')
    office = model(world, 'operations_office', 6, 23)
    for x in (-3.9, 3.9):
        box(office, f'office_side_{x}', (.18, 10, 2.7), (x, 0, 1.35), '.54 .65 .69 1')
        box(office, f'office_window_{x}', (.20, 7.5, 1.2), (x, 0, 1.7),
            '.22 .43 .55 .6', collide=False)
    for y in (-4.9, 4.9):
        box(office, f'office_end_{y}', (8, .18, 2.7), (0, y, 1.35), '.64 .69 .70 1')
    sign(office, 'office_label', 0, -5.05, 2.9, 7, .65, 'office')
    for yy in (-2.5, 2.0):
        box(office, f'desk_{yy}', (4.5, 1.2, .85), (0, yy, .425), '.43 .49 .52 1', collide=False)
        for xx in (-1.1, 1.1):
            box(office, f'monitor_{xx}_{yy}', (.7, .12, .48), (xx, yy, 1.15),
                '.08 .12 .16 1', collide=False)
    maintenance = model(world, 'maintenance_bay', 5.5, 33)
    box(maintenance, 'workbench', (6.5, 1, .85), (0, 1.5, .425), BLUE)
    for x in (-2, 0, 2):
        box(maintenance, f'tool_chest_{x}', (1.4, .8, 1.3), (x, -1, .65), '.61 .12 .09 1')
    sign(maintenance, 'maintenance_label', 0, 1.7, 2.5, 6, .7, 'maintenance')
    qc = model(world, 'quality_roundabout', 7, 42)
    # Floor paint is invisible to 2D LiDAR. These low guard rails provide an
    # actual QC-zone boundary while leaving room for the QC roundabout route.
    box(qc, 'guard_south', (9.9, .15, 1.05), (-1.1, -6.1, .525), BLUE)
    box(qc, 'guard_north', (9.9, .15, 1.05), (-1.1, 8.0, .525), BLUE)
    box(qc, 'guard_east_south', (.15, 2.4, 1.05), (3.8, -4.9, .525), BLUE)
    box(qc, 'guard_east_north', (.15, 2.4, 1.05), (3.8, 6.8, .525), BLUE)
    cylinder(qc, 'island', .6, .22, (0, 0, .11), '.25 .58 .62 1')
    cylinder(qc, 'sign_mast', .07, 2.3, (0, 0, 1.25), GRAY)
    sign(qc, 'qc_sign', 0, 0, 2.55, 3.5, .65, 'quality')

    # Routes are data in the SMAP graph; floor arrows and route overlays are
    # omitted so the simulated warehouse stays visually clear.
    ET.indent(sdf)
    WORLD.parent.mkdir(parents=True, exist_ok=True)
    WORLD.write_text(ET.tostring(sdf, encoding='unicode')+'\n')


def build_baseline_map():
    resolution = .1
    cols, rows = round(WIDTH/resolution), round(HEIGHT/resolution)
    pixels = bytearray([254])*(cols*rows)
    obstacles = obstacle_rectangles()+[
        (0, HEIGHT/2, .2, HEIGHT), (WIDTH, HEIGHT/2, .2, HEIGHT),
        (WIDTH/2, 0, WIDTH, .2), (WIDTH/2, HEIGHT, WIDTH, .2)]
    scan = []
    for cx, cy, sx, sy in obstacles:
        x0, x1 = max(0, int((cx-sx/2)/resolution)), min(cols-1, int((cx+sx/2)/resolution))
        y0, y1 = max(0, int((cy-sy/2)/resolution)), min(rows-1, int((cy+sy/2)/resolution))
        for iy in range(y0, y1+1):
            index = (rows-1-iy)*cols
            pixels[index+x0:index+x1+1] = bytes(x1-x0+1)
        for i in range(round(sx/.2)+1):
            x = round(cx-sx/2+i*.2, 3)
            scan.extend([{'x': x, 'y': cy-sy/2}, {'x': x, 'y': cy+sy/2}])
        for i in range(round(sy/.2)+1):
            y = round(cy-sy/2+i*.2, 3)
            scan.extend([{'x': cx-sx/2, 'y': y}, {'x': cx+sx/2, 'y': y}])
    MAP_DIR.mkdir(parents=True, exist_ok=True)
    BASELINE.write_bytes(f'P5\n{cols} {rows}\n255\n'.encode()+pixels)
    BASELINE_YAML.write_text(yaml.safe_dump({
        'image': BASELINE.name, 'mode': 'trinary', 'resolution': resolution,
        'origin': [0., 0., 0.], 'negate': 0, 'occupied_thresh': .65, 'free_thresh': .25},
        sort_keys=False))
    return scan


def build_rmf_shell():
    vertices, walls = [], []
    for cx, cy, sx, sy in [(WIDTH/2, HEIGHT/2, WIDTH, HEIGHT)]+obstacle_rectangles():
        first = len(vertices)
        vertices.extend([[cx+dx*sx/2, cy+dy*sy/2, 0, '', {}]
                         for dx, dy in [(-1, -1), (1, -1), (1, 1), (-1, 1)]])
        walls.extend([[first+a, first+b, {'texture_name': [1, 'wall_white']}]
                      for a, b in [(0, 1), (1, 2), (2, 3), (3, 0)]])
    RMF.write_text(yaml.safe_dump({
        'coordinate_system': 'cartesian_meters', 'name': REVISION,
        'graphs': {0: {'name': 'warehouse_routes', 'default_lane_width': 3.0}},
        'levels': {'L1': {'x_meters': WIDTH, 'y_meters': HEIGHT, 'elevation': 0.,
                          'vertices': vertices, 'walls': walls, 'lanes': [],
                          'floors': [{'vertices': [0, 1, 2, 3], 'parameters': {
                              'indoor': [2, 1], 'texture_name': [1, 'blue_linoleum_high_contrast']}}]}},
        'lifts': {}}, sort_keys=False))
