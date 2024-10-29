@echo off
echo Running System File Checker...
sfc /scannow

echo Running DISM Scanhealth...
dism /Online /Cleanup-image /Scanhealth

echo Running DISM Restorehealth...
dism /Online /Cleanup-image /Restorehealth

echo Running DISM StartComponentCleanup...
dism /online /cleanup-image /startcomponentcleanup

echo Running Check Disk...
chkdsk /r /f c:

echo All commands executed. Please restart your computer if prompted.
pause
