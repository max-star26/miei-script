@echo off

rem PROGRAMMA DI AVVIO

rem ================= SEZIONE URL ==============================================

rem ***TEMPO***
set tempo=3
set tempo_login=3

rem ***BROWSER***
set BROWSER0=msedge.exe -inprivate
set BROWSER1=brave.exe
set BROWSER2=firefox.exe
set BROWSER3=duckduckgo.exe
set BROWSER4=brave.exe --args --incognito --tor
set BROWSER5="C:\Users\massi\Tor Browser\Browser\firefox.exe"
set BROWSER6=opera.exe

rem ***URLs***
set url_blank="about:blank"
set url_login="https://mail.google.com/" 

rem ================= SEZIONE SCELTA LOCATION ==============================================
CHOICE /C cmrt /T 30 /D c /M "Seleziona [C]asa [M]ilano [R]oma [T]est: "
echo *************************************************************
IF %ERRORLEVEL% EQU 1 goto SUB_CASA
IF %ERRORLEVEL% EQU 2 goto SUB_MILANO
IF %ERRORLEVEL% EQU 3 goto SUB_ROMA
IF %ERRORLEVEL% EQU 4 goto SUB_TEST
goto END

rem ================= SEZIONE CASA ==============================================
:SUB_CASA
	rem @echo on
	set softwC1="C:\Program Files\Google\Drive File Stream\launch.bat"
	set softwC2="C:\Program Files\Cryptomator\Cryptomator.exe"
	set softwC3="C:\Users\massi\AppData\Local\JDownloader 2.0\JDownloader2.exe"
	set softwC4="C:\Program Files (x86)\Synology\SynologyDrive\bin\launcher.exe"
	set softwC5="C:\Users\massi\Documents\DBs\q-dir.qdr"
	set softwC6="C:\Program Files\Microsoft OneDrive\OneDrive.exe"
	set softwC7="C:\Program Files (x86)\Eye Saver\eye saver.exe"
	set softwC8="C:\Users\massi\AppData\Roaming\Telegram Desktop\Telegram.exe"
	set softwC9="C:\Program Files\Mozilla Firefox\firefox.exe" 
	set softwCpar1="-private-window"
	set softwC10="C:\Users\massi\Documents\DBs\copy_DB_MediaMonkey.bat"
	set softwC11="C:\Users\massi\Documents\DBs\copy_DB_Calibre.bat"
	set softwC12="C:\Programmi Portable\PortableApps\Windhawk\windhawk.exe"
	rem set softwC13="C:\Windows\explorer.exe"
	set softwC14"C:\Programmi Portable\PortableApps\Linkbar_1_6_9\Linkbar64.exe"
	
	rem lancio pagina login
	start "BRW" %BROWSER1% %url_login:~1,-1% 
	timeout /t %tempo_login% /nobreak
	
	rem lancio browser per sitix 
	rem if NOT [%url_xsites%] EQU [""] start "X" %BROWSER3% 	
	
	rem lancio programmi
	call %softwC1%
	timeout /t %tempo% /nobreak
	start "P2" %softwC2%
	timeout /t %tempo% /nobreak
	start "P3" %softwC3%
	timeout /t %tempo% /nobreak
	start "P4" %softwC4%
	timeout /t %tempo% /nobreak
	start "P5" %softwC5%
	timeout /t %tempo% /nobreak
	start "P6" %softwC6%
	timeout /t %tempo% /nobreak
	start "P7" %softwC7%
	timeout /t %tempo% /nobreak
	start "P8" %softwC8%
	timeout /t %tempo% /nobreak
	rem start "P12" %softwC12%
	rem timeout /t %tempo% /nobreak
	rem start "P14" %softwC14%
	rem timeout /t %tempo% /nobreak
	
	rem parametro senza virgolette
	start "P9" %softwC9% %softwCpar1:~1,-1% 
	timeout /t %tempo% /nobreak
	
	rem lancio .bat
	call %softwC10%
	timeout /t %tempo% /nobreak	
	call %softwC11%
	timeout /t %tempo% /nobreak
	
	rem sposta le finestre selezionate in Desktop Virtuale
	rem cd C:\Programmi Portable\PortableApps\VirtualDesktop11
	rem Virtualdesktop11.exe /GetDesktop:1 /MoveWindowHandle:"DuckDuckGo" 
	
goto END

rem ================= SEZIONE MLANO ==============================================
:SUB_MILANO
	@echo on
	set softwM1="C:\Program Files\Microsoft Office\root\Office16\OUTLOOK.EXE"
	set softwM2="C:\Program Files\Microsoft Office\root\Office16\ONENOTE.EXE"
	set softwM3="C:\Users\bllmsm70r10e514b\AppData\Local\Microsoft\Teams\Update.exe"
	set softwMpar1="--processStart Teams.exe --process-start-args --profile=AAD"
	
	rem lancio pagina login
	start "BRW" %BROWSER1% %url_login:~1,-1% 
	timeout /t %tempo_login% /nobreak
	
	start "P1" %softwM1%
	timeout /t %tempo% /nobreak
	start "P2" %softwM2%
	timeout /t %tempo% /nobreak
	rem parametro senza virgolette
	start "P4" %softwM3% %softwMpar1:~1,-1% 
	timeout /t %tempo% /nobreak
goto END

rem ================= SEZIONE ROMA ==============================================
:SUB_ROMA
	@echo on
	set softwR1="C:\Program Files\Microsoft Office\root\Office16\OUTLOOK.EXE"
	rem set softwR2="C:\Program Files\Microsoft Office\root\Office16\ONENOTE.EXE"
	set softwR3="C:\Users\bllmsm70r10e514b\Downloads\Q-Dir_MAX.qdr"
	set softwR4="C:\Users\bllmsm70r10e514b\AppData\Local\Microsoft\WindowsApps\ms-teams.exe"
	set softwRpar1=""
	set softwR5="C:\Program Files\Google\Google Earth Pro\client\googleearth.exe"
	
	rem lancio pagina login
	start "BRW" %BROWSER1% %url_login:~1,-1% 
	timeout /t %tempo_login% /nobreak
	
	start "P1" %softwR1%
	timeout /t %tempo% /nobreak
	rem start "P2" %softwR2%
	rem timeout /t %tempo% /nobreak
	start "P3" %softwR3%
	timeout /t %tempo% /nobreak
	start "P4" %softwR4%
	timeout /t %tempo% /nobreak
	rem parametro senza virgolette
	rem start "P4" %softwR4% %softwRpar1:~1,-1% 
	start "P5" %softwR5%
goto END

rem ================= SEZIONE TEST ==============================================
:SUB_TEST
	start /MIN notepad.exe	

goto END

:END

