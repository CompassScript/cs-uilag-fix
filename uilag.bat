@echo off
echo "Compass-Soft, UI Lag Grabber"
:loop

set /a countfiles = 1
timeout 1 > NUL
echo "FiveM Subprocess, FivemBrowser grabbed, set pr"
wmic process where name="FiveM_ChromeBrowser" CALL setpriority "high priority"

if %countfiles% GTR 0 goto loop

pause