import json
from pathlib import Path
import sys,tempfile,unittest
from warehouse_sim.durable_dispatch import Journal
sys.path.insert(0,str(Path(__file__).parents[1]/'tools'))
from recovery_evidence import audit_cursor,recovery_complete


class RecoveryEvidenceTests(unittest.TestCase):
    def test_old_recovery_notification_is_not_evidence_for_new_crash(self):
        with tempfile.TemporaryDirectory() as directory:
            path=Path(directory)/'db';j=Journal(path)
            revision=j.commit(0,dict(fenced=False,fleet=dict(jobs={})),events=[dict(event='restart_reconciliation_required'),dict(event='reconciliation_complete')])
            cursor=audit_cursor(path)
            self.assertFalse(recovery_complete(path,cursor))
            revision=j.commit(revision,dict(fenced=True,fleet=dict(jobs={'one':dict(state='RECONCILING')})),events=[dict(event='restart_reconciliation_required')])
            self.assertFalse(recovery_complete(path,cursor))
            j.commit(revision,dict(fenced=False,fleet=dict(jobs={'one':dict(state='EXECUTING')})),events=[dict(event='reconciliation_complete')])
            self.assertTrue(recovery_complete(path,cursor));j.close()

    def test_complete_event_does_not_override_still_fenced_or_unreconciled_state(self):
        with tempfile.TemporaryDirectory() as directory:
            path=Path(directory)/'db';j=Journal(path)
            revision=j.commit(0,dict(fenced=True,fleet=dict(jobs={})),events=[dict(event='restart_reconciliation_required'),dict(event='reconciliation_complete')])
            self.assertFalse(recovery_complete(path,0))
            revision=j.commit(revision,dict(fenced=False,fleet=dict(jobs={'one':dict(state='RECONCILING')})))
            self.assertFalse(recovery_complete(path,0))
            j.commit(revision,dict(fenced=False,fleet=dict(jobs={'one':dict(state='EXECUTING')})))
            self.assertTrue(recovery_complete(path,0));j.close()
