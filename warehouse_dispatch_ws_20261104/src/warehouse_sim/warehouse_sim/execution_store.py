"""Exclusive, durable command inbox for the simulation adapters.

Accept before side effects; a duplicate returns its stored state. A command whose
side effect may have started is never replayed after adapter restart.
"""
import json
import uuid
from warehouse_sim.durable_dispatch import Journal


class ExecutionStore:
    def __init__(self, path):
        self.journal = Journal(path)
        self.db = self.journal.db
        self.db.execute('CREATE TABLE IF NOT EXISTS inbox (id TEXT PRIMARY KEY, fingerprint TEXT NOT NULL, body TEXT NOT NULL, state TEXT NOT NULL, result TEXT NOT NULL)')
        self.db.execute('CREATE TABLE IF NOT EXISTS metadata (key TEXT PRIMARY KEY, body TEXT NOT NULL)')
        self.db.execute('INSERT OR IGNORE INTO metadata VALUES(?,?)',('database_id',json.dumps(uuid.uuid4().hex)))
        self.database_id=self.metadata('database_id')
        self.db.execute("UPDATE inbox SET state='INTERRUPTED' WHERE state IN ('ACTIVE','PAUSED')")

    def accept(self, command):
        command_id = command.get('command_id')
        if not isinstance(command_id, str) or not command_id:
            raise ValueError('command_id required by durable executor')
        encoded = json.dumps(command, sort_keys=True, separators=(',', ':'), allow_nan=False)
        fingerprint = encoded
        old = self.get(command_id)
        if old:
            if old['body'] != command:
                raise ValueError('command_id reused with different payload')
            return old, False
        # Execution generations are unique even if a sender changes command UUID.
        def kind(c):return (next((k for k in ('cancel','pause','resume') if c.get(k)), 'goal'),c.get('control_seq',0))
        for item in self.records():
            if (item['body'].get('task_id'), item['body'].get('robot'), kind(item['body'])) == (command.get('task_id'), command.get('robot'), kind(command)):
                raise ValueError('execution generation already accepted with another command_id')
        self.db.execute('INSERT INTO inbox VALUES(?,?,?,?,?)', (command_id, fingerprint, encoded, 'ACCEPTED', '{}'))
        return self.get(command_id), True

    def get(self, command_id):
        row = self.db.execute('SELECT id,fingerprint,body,state,result FROM inbox WHERE id=?', (command_id,)).fetchone()
        return dict(id=row[0], fingerprint=row[1], body=json.loads(row[2]), state=row[3], result=json.loads(row[4])) if row else None

    def records(self):
        return [self.get(row[0]) for row in self.db.execute('SELECT id FROM inbox ORDER BY rowid')]

    def transition(self, command_id, state, result=None, metadata=None):
        self.db.execute('BEGIN IMMEDIATE')
        try:
            if command_id is not None:self.db.execute('UPDATE inbox SET state=?,result=? WHERE id=?', (state, json.dumps(result or {}, allow_nan=False), command_id))
            for key, value in (metadata or {}).items():
                self.db.execute('INSERT INTO metadata VALUES(?,?) ON CONFLICT(key) DO UPDATE SET body=excluded.body', (key, json.dumps(value, allow_nan=False)))
            self.db.execute('COMMIT')
        except BaseException:
            self.db.execute('ROLLBACK'); raise

    def metadata(self, key, default=None):
        row = self.db.execute('SELECT body FROM metadata WHERE key=?', (key,)).fetchone()
        return json.loads(row[0]) if row else default

    def save_metadata(self,values):
        self.transition(None,None,metadata=values)

    def close(self):
        self.journal.close()
