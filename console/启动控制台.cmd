@echo off
setlocal
pushd "%~dp0" || exit /b 1
python -c "import sys; sys.exit(sys.version_info < (3, 10))" >nul 2>&1
if not errorlevel 1 goto python_path
py -3 -c "import sys; sys.exit(sys.version_info < (3, 10))" >nul 2>&1
if not errorlevel 1 goto python_launcher
echo Python 3.10 or newer is required.
popd
pause
exit /b 1

:python_launcher
py -3 "%~dp0app.py" --open-browser %*
goto finish

:python_path
python "%~dp0app.py" --open-browser %*

:finish
set "dispatch_exit=%errorlevel%"
popd
if not "%dispatch_exit%"=="0" pause
exit /b %dispatch_exit%
