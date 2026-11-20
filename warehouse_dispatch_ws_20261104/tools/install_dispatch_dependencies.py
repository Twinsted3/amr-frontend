"""Offline install of the bundled pure-Python wheel; no system pip required."""
from pathlib import Path
import zipfile
root=Path(__file__).resolve().parents[1]
wheel=root/'vendor/networkx-3.4.2-py3-none-any.whl'
target=(root/'.dispatch-deps').resolve()
if not wheel.is_file():raise SystemExit('缺少 vendor/networkx-3.4.2-py3-none-any.whl，请同步完整工作区依赖。')
with zipfile.ZipFile(wheel) as archive:
    for member in archive.infolist():
        path=(target/member.filename).resolve()
        if not path.is_relative_to(target) or member.filename.split('/')[0] not in ('networkx','networkx-3.4.2.dist-info'):
            raise SystemExit('依赖包包含不支持的文件路径')
    archive.extractall(target)
print('调度依赖已安装。Ubuntu 请重新 source scripts/env.sh；Windows 按操作指南设置 PYTHONPATH。')
