"""Read-only restart evidence; a volatile ROS notification may be missed."""
import json
from pathlib import Path
import sqlite3
from contextlib import closing


def audit_cursor(database):
    with closing(sqlite3.connect(Path(database).resolve().as_uri()+'?mode=ro',uri=True,timeout=2)) as db:
        return db.execute('SELECT COALESCE(MAX(seq),0) FROM audit').fetchone()[0]


def recovery_complete(database, after_seq):
    with closing(sqlite3.connect(Path(database).resolve().as_uri()+'?mode=ro',uri=True,timeout=2)) as db:
        db.execute('BEGIN')
        events={json.loads(row[0]).get('event') for row in db.execute('SELECT body FROM audit WHERE seq>?',(after_seq,))}
        row=db.execute('SELECT body FROM state WHERE id=1').fetchone()
        if not row:return False
        state=json.loads(row[0])
        return (events >= {'restart_reconciliation_required','reconciliation_complete'}
            and not state.get('fenced',True)
            and not any(j.get('state')=='RECONCILING' for j in state.get('fleet',{}).get('jobs',{}).values()))
