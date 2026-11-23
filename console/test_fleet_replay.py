"""Replay input and routing stay separate from the live field console."""
from pathlib import Path
from tempfile import TemporaryDirectory
from threading import Thread
import unittest
from urllib.error import HTTPError
from urllib.request import urlopen

from app import ConsoleServer, Handler, open_replay
from common.views import NOT_FOUND, find_page


class ReplayTests(unittest.TestCase):
    record = b'{"schema_version":1,"source":"LIGHTWEIGHT_BENCHMARK","frames":[{"tick":0}]}'

    def test_loads_versioned_capture_without_reserializing(self):
        with TemporaryDirectory() as directory:
            capture = Path(directory) / 'replay.json'
            capture.write_bytes(self.record)
            self.assertEqual(open_replay(capture), self.record)
            capture.write_bytes(b'{"schema_version":2,"frames":[{}]}')
            with self.assertRaises(ValueError):
                open_replay(capture)

    def test_replay_read_endpoint_does_not_exist_in_field_mode(self):
        with ConsoleServer(('127.0.0.1', 0), Handler) as server:
            server.mode, server.fleet, server.dispatch = 'sim', object(), None
            server.fleet_replay = self.record
            thread = Thread(target=server.serve_forever)
            thread.start()
            try:
                url = f'http://127.0.0.1:{server.server_port}/api/fleet/replay'
                with urlopen(url, timeout=5) as response:
                    self.assertEqual(response.read(), self.record)
                    self.assertEqual(response.headers['Cache-Control'], 'no-store')
                server.fleet_replay = None
                with self.assertRaises(HTTPError) as missing:
                    urlopen(url, timeout=5)
                self.assertEqual(missing.exception.code, 404)
                missing.exception.close()
                server.mode, server.fleet, server.fleet_replay = 'field', None, self.record
                with self.assertRaises(HTTPError) as forbidden:
                    urlopen(url, timeout=5)
                self.assertEqual(forbidden.exception.code, 404)
                forbidden.exception.close()
            finally:
                server.shutdown()
                thread.join()
        self.assertEqual(find_page('/fleet/replay', 'sim')[0][0], 'fleet-replay')
        self.assertEqual(find_page('/fleet/replay', 'field')[0], NOT_FOUND)
