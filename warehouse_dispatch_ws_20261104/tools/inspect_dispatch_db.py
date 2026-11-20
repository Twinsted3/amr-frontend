#!/usr/bin/env python3
"""Read-only inspection. No force-resume, requeue or command replay functions."""
import argparse
import json
from pathlib import Path
import sqlite3


def main():
    p=argparse.ArgumentParser();p.add_argument('database');a=p.parse_args()
    db=sqlite3.connect(Path(a.database).resolve().as_uri()+'?mode=ro',uri=True)
    row=db.execute('SELECT revision,body FROM state WHERE id=1').fetchone()
    state=json.loads(row[1]) if row else None
    print(json.dumps(dict(revision=row[0] if row else 0,state=state,
                          commands=[dict(id=i,execution_id=e,kind=k,status=s) for i,e,k,s in db.execute('SELECT id,execution_id,kind,status FROM commands ORDER BY created')]),ensure_ascii=False,indent=2))
    db.close()


if __name__=='__main__':main()
