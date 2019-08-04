@rem unistall chocolatey
rmdir /s /q C:\ProgramData\chocolatey @rem del app_dir

@rem del env variable for choco
reg delete HKCU\Environment /v ChocolateyLastPathUpdate
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v ChocolateyInstall

@rem del workDir with confirmation
rmdir /s C:\Users\%username%\work

