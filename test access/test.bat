set /p MYIP="SRC IP Address: "
for /F "tokens=*" %%A in (servers.txt) do powershell Test-NetConnection -ComputerName %%A -InformationLevel "Detailed" -Port 9500 >> %MYIP%
pause