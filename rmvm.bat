@echo off
set VM_NAME=%1
for /f %%i in ('multipass exec %VM_NAME% -- hostname -I') do set IP=%%i
multipass delete %VM_NAME%
multipass purge
ssh-keygen -R %IP%