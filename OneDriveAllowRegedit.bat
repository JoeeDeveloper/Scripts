REG ADD HKCU\Software\Microsoft\OneDrive /v EnableADAL /t REG_DWORD /d 1 /f
REG ADD HKLM\SOFTWARE\Policies\Microsoft\Windows\OneDrive /v DisableFileSyncNGSC /t REG_DWORD /d 0 /f
break