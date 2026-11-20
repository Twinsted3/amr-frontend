"""Read-only Robokit 19301 sample sender. Never sends vehicle commands."""
import argparse
import json
from pathlib import Path
import socketserver
import threading
from telemetry import HEADER, MAX_FRAME, invalid_constant, normalize

class SampleVehicle:
    def __init__(self, path, port=0, interval=1., identity_prefix=''):
        self.frames=[]
        for line in Path(path).read_text(encoding='utf-8-sig').splitlines():
            if not line.strip():continue
            frame=json.loads(line,parse_constant=invalid_constant)
            normalize(frame)
            frame['data']['vehicle_id'] = identity_prefix + frame['data']['vehicle_id']
            body=json.dumps(frame['data'],ensure_ascii=False,allow_nan=False).encode('utf8')
            if len(body)>MAX_FRAME:raise ValueError('样本报文过大')
            self.frames.append((frame['data']['vehicle_id'],body))
        if not self.frames:raise ValueError('历史样本为空')
        if len({identity for identity,_ in self.frames})!=1:raise ValueError('样本必须来自同一车辆')
        self.vehicle_id=self.frames[0][0]
        self.stop=threading.Event()
        owner=self
        class Handler(socketserver.BaseRequestHandler):
            def handle(self):
                sequence=0
                self.request.settimeout(2)
                try:
                    while not owner.stop.is_set():
                        for _,body in owner.frames:
                            if owner.stop.is_set():return
                            sequence=(sequence+1)%65536
                            self.request.sendall(HEADER.pack(0x5A,1,sequence,len(body),19301,b'\0'*6)+body)
                            if owner.stop.wait(interval):return
                except OSError:pass
        class Server(socketserver.ThreadingTCPServer):
            allow_reuse_address=True
            daemon_threads=True
        self.server=Server(('127.0.0.1',port),Handler)
        self.port=self.server.server_address[1]
        self.thread=threading.Thread(target=self.server.serve_forever,kwargs={'poll_interval':.05},daemon=True)
    def start(self):self.thread.start();return self
    def close(self):
        self.stop.set()
        if self.thread.is_alive():self.server.shutdown();self.thread.join(timeout=2)
        self.server.server_close()

if __name__=='__main__':
    parser=argparse.ArgumentParser(description='每秒发送一条历史车况，仅监听本机，不接收运动指令')
    parser.add_argument('--file',type=Path,default=Path(__file__).parent/'samples/history.jsonl')
    parser.add_argument('--port',type=int,default=19301)
    args=parser.parse_args()
    sender=SampleVehicle(args.file,port=args.port).start()
    print(f'历史数据模拟：{sender.vehicle_id}，127.0.0.1:{sender.port}，每秒一条，共 {len(sender.frames)} 条。Ctrl+C 停止。',flush=True)
    try:threading.Event().wait()
    except KeyboardInterrupt:pass
    finally:sender.close()
