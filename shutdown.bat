echo "----------------Running Windows Update----------------"

wuauclt.exe /detectnow /updatenow

echo "----------------Deleting Temp Files----------------"

del /q/f/s %TEMP%\*
del /q/f/s C:\Windows\Temp\*
rd /q/s %systemdrive%\$Recycle.bin

echo "----------------Rebooting----------------"

defrag C: /H