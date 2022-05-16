@echo off
echo .
echo Clear FiveM cache
echo .
set DIR=C:\Users\%USERNAME%\AppData\Local\FiveM\FiveApplicationData\data\cache\
set "keepdir=game-storage"
set "keepdir1=nui-storage"
echo .
echo Deleting cache and clear RecycleBin
echo .

FOR /d %%a IN (DIR) DO IF /i NOT "%%~nxa"=="%keepdir%" RD /S /Q "%%a"
FOR /d %%a IN (DIR) DO IF /i NOT "%%~nxa"=="%keepdir1%" RD /S /Q "%%a"

powershell -Command "PowerShell.exe -NoProfile -Command Clear-RecycleBin -Confirm:$false"
