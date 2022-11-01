@echo off
TITLE Windows 11 Registry Tweaks
cls
@echo ====================================================================================================================
@echo This will enable the classic right click context menu for win 11
and disable widgets in the task bar.
@echo                        To Continue Press enter to cancel exit
close the window.
@echo ====================================================================================================================
pause
cls
@echo 1. Change right click context menu
reg add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\inprocServer32" /f /ve
@echo 2. Turn off Widgets
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v TaskbarDa /t REG_DWORD /d 0 /f
@echo 3. Disable Cortana
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v AllowCortana /t REG_DWORD /d 0 /f
@echo 4. Disable Search Highlights
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\SearchSettings" /v IsDynamicSearchBoxEnabled /t REG_DWORD /d 0 /f
@echo 5. Set Smaller Task Bar
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v TaskbarSi /t REG_DWORD /d 0 /f

pause