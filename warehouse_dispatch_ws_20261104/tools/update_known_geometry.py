#!/usr/bin/env python3
"""Add known solid fixtures to existing navigation pixels; preserve all SLAM hits."""
from pathlib import Path
import numpy as np
from PIL import Image
import yaml
from warehouse_sim.save_slam_map import navigation_grid
from warehouse_sim.scene_builder import build_baseline_map

root=Path(__file__).resolve().parents[1]/'src/warehouse_sim/maps'
config=yaml.safe_load((root/'warehouse_slam_navigation.yaml').read_text())
path=root/config['image']
old=np.flipud(np.asarray(Image.open(path).convert('L'))).copy()
new=navigation_grid(old,config['resolution'],config['origin'])
assert not np.any((old<90)&(new>=90)), 'must never erase existing occupied pixels'
Image.fromarray(np.flipud(new)).save(path)
build_baseline_map()
print('known geometry pixels added:',int(np.count_nonzero(old!=new)))
