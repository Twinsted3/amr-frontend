#!/usr/bin/env python3
"""Command-line synchronization between SMAP and Open-RMF Traffic Editor."""

from __future__ import annotations

import argparse
import json
import shutil
from datetime import datetime
from pathlib import Path

from smap_rmf import rmf_to_smap, smap_to_rmf, topology_summary, validate_smap


HERE = Path(__file__).resolve().parent
WORKSPACE = HERE.parents[1]


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("direction", choices=("to-rmf", "from-rmf", "check"))
    parser.add_argument("--map", dest="smap", type=Path, default=WORKSPACE / "src/warehouse_sim/maps/warehouse.smap")
    parser.add_argument("--rmf", type=Path, default=WORKSPACE / "src/warehouse_sim/maps/warehouse.building.yaml")
    args = parser.parse_args()
    args.smap = args.smap.resolve()
    args.rmf = args.rmf.resolve()

    if args.direction == "check":
        document = validate_smap(json.loads(args.smap.read_text(encoding="utf-8")))
        print(json.dumps(topology_summary(document), ensure_ascii=False, indent=2))
        return 0
    if args.direction == "to-rmf":
        document = validate_smap(json.loads(args.smap.read_text(encoding="utf-8")))
        result = smap_to_rmf(document, args.rmf)
    else:
        backup = args.smap.with_name(f"{args.smap.name}.{datetime.now():%Y%m%d-%H%M%S}.bak")
        shutil.copy2(args.smap, backup)
        result = rmf_to_smap(args.rmf, args.smap)
        result["backup"] = str(backup)
    print(json.dumps(result, ensure_ascii=False, indent=2))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
