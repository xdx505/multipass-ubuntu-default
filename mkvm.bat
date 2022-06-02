@echo off
set VM_NAME=%1
multipass launch -n %VM_NAME% --cloud-init .\cloud-config.yaml
for /f %%i in ('multipass exec %VM_NAME% -- hostname -I') do set IP=%%i
ssh -o StrictHostKeyChecking=no ubuntu@%IP%