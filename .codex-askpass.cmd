@echo off
setlocal
set "prompt=%~1"
echo %prompt% | findstr /i "Username" >nul
if %errorlevel%==0 (
  echo TING-shuang
  exit /b 0
)
echo %prompt% | findstr /i "Password" >nul
if %errorlevel%==0 (
  echo %CODEX_GITHUB_TOKEN%
  exit /b 0
)
echo.
