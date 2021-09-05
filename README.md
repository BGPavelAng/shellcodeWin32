# shellcodeWin

@echo off
echo "compilando"
timeout 2
del Fw_protect.obj
timeout 1
del Fw_protect.exe
timeout 4
nasm -fwin32 -o Fw_protect.obj Fw_protect.nasm
timeout 3
ld -m i386pe -o Fw_protect.exe Fw_protect.obj
echo "compilado"
timeout 2
