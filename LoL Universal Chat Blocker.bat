ECHO OFF
CLS
color A

:MENU
ECHO ===============================================================================
ECHO Select your desired League of Legends server to appear offline. (Only Riot Games servers.)
ECHO PLEASE Make sure that you run this script as Administrator.
ECHO ===============================================================================
ECHO.
ECHO 1 - BR
ECHO 2 - EUNE
ECHO 3 - EUW
ECHO 4 - JAPAN
ECHO 5 - KOREA
ECHO 6 - LAN
ECHO 7 - LAS
ECHO 8 - NA
ECHO 9 - OCE
ECHO 10 - PBE
ECHO 11 - RU
ECHO 12 - TR
ECHO ================================================================================
ECHO 13 - REVERT CHANGES
ECHO 14 - EXIT
ECHO ================================================================================
ECHO.

SET /P M=Select your server and press ENTER:
IF %M%==1 GOTO BR
IF %M%==2 GOTO EUNE
IF %M%==3 GOTO EUW
IF %M%==4 GOTO JAPAN
IF %M%==5 GOTO KOREA
IF %M%==6 GOTO LAN
IF %M%==7 GOTO LAS
IF %M%==8 GOTO NA
IF %M%==9 GOTO OCE
IF %M%==10 GOTO PBE
IF %M%==11 GOTO RU
IF %M%==12 GOTO TR
IF %M%==13 GOTO REVERT
IF %M%==14 GOTO EXIT

:BR
netsh advfirewall firewall add rule name="lolchat" dir=out remoteip=172.65.212.1 protocol=TCP action=block
CLS
GOTO MENU

:EUNE
netsh advfirewall firewall add rule name="lolchat" dir=out remoteip=172.65.223.136 protocol=TCP action=block
CLS
GOTO MENU

:EUW
netsh advfirewall firewall add rule name="lolchat" dir=out remoteip=172.65.252.238 protocol=TCP action=block
CLS
GOTO MENU

:JAPAN
netsh advfirewall firewall add rule name="lolchat" dir=out remoteip=172.65.217.212 protocol=TCP action=block
CLS
GOTO MENU

:KOREA
netsh advfirewall firewall add rule name="lolchat" dir=out remoteip=172.65.226.99 protocol=TCP action=block
CLS
GOTO MENU

:LAN
netsh advfirewall firewall add rule name="lolchat" dir=out remoteip=172.65.250.49 protocol=TCP action=block
CLS
GOTO MENU

:LAS
netsh advfirewall firewall add rule name="lolchat" dir=out remoteip=172.65.194.233 protocol=TCP action=block
CLS
GOTO MENU

:NA
netsh advfirewall firewall add rule name="lolchat" dir=out remoteip=172.65.244.155 protocol=TCP action=block
CLS
GOTO MENU

:OCE
netsh advfirewall firewall add rule name="lolchat" dir=out remoteip=172.65.208.61 protocol=TCP action=block
CLS
GOTO MENU

:PBE
netsh advfirewall firewall add rule name="lolchat" dir=out remoteip=172.65.223.16 protocol=TCP action=block
CLS
GOTO MENU

:RU
netsh advfirewall firewall add rule name="lolchat" dir=out remoteip=172.65.192.156 protocol=TCP action=block
CLS
GOTO MENU

:TR
netsh advfirewall firewall add rule name="lolchat" dir=out remoteip=172.65.202.166 protocol=TCP action=block
CLS
GOTO MENU

:REVERT
netsh advfirewall firewall delete rule name="lolchat"
CLS
GOTO MENU

:EXIT
exit