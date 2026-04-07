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

REM set url_01="https://app.raindrop.io/my/0"
REM set url_02="https://calendar.google.com/calendar/u/0"
REM set url_03="https://keep.google.com"
REM set url_04="https://photos.google.com/albums"
REM set url_05="https://docs.google.com/spreadsheets/u/0/?pli=1"
REM set url_06="https://www.wikipedia.org/"
REM set url_07="https://www.discogs.com/"

REM set url_08="https://www.meteo.it/"
REM set url_09="https://www.corriere.it"
REM set url_10="https://www.repubblica.it/"
REM set url_11="https://www.ilgiornale.it/"'
REM set url_12="https://www.ilfattoquotidiano.it/"
REM set url_13="https://news.google.com/home"
REM set url_14="https://www.ilsole24ore.com/"
REM set url_15="https://www.milanofinanza.it"
REM set url_16="https://www.wired.it/"

REM set url_17="https://it.tradingview.com/"
REM set url_18="https://tradingplatform.finecobank.com/"
REM set url_19="https://it.investing.com/economic-calendar/"
REM set url_20="https://www.fondidoc.it/d/Ana/FAMREV12/IE00BFM13062_fam-advisory-7-l-cap-eur"
REM set url_21="https://www.fondidoc.it/d/Ana/M4TT4R05/IE00BJDQMZ65_fam-ev-advisory-3-l-cap-eur"
REM set url_22="https://www.fondidoc.it/d/Ana/ANMFRE12/IT0005221939_anima-fondo-trading-ad-dis"
REM set url_23="https://www.fondidoc.it/d/Ana/SFORZE/IT0000380722_anima-sforzesco-a"
REM set url_24="https://www.fondidoc.it/d/Ana/VISCON/IT0000380706_anima-visconteo-a"

REM set url_25="https://bll.synology.me"
REM set url_26="https://web.teamviewer.com/"
REM set url_27="https://chat.openai.com/auth/login"
REM set url_28="https://bard.google.com/chat"
REM set url_29="https://copilot.microsoft.com/"
REM set url_30="https://www.gartner.com/account/signin"
REM set url_31="https://saymineapp.com/"
REM set url_32="https://vault.bitwarden.com/#/login"

REM set url_33="https://www.youtube.com/"
REM set url_34="https://mastodon.uno/web/home"
REM set url_35="https://www.facebook.com/"
REM set url_36="https://x.com/home"
REM set url_37="https://www.instagram.com/"
REM set url_38="https://www.reddit.com/"
REM set url_39="https://discord.com/login"
REM set url_40="https://flipboard.com/"
REM set url_41="https://www.pinterest.it/"
REM set url_42="https://www.tiktok.com/login/phone-or-email/email"
REM set url_43="https://www.twitch.tv/?lang=it-IT"
 
REM set url_44="https://web.whatsapp.com/"

REM set url_45="https://www.google.com/maps"
REM set url_46="https://www.cosavederearoma.com/20-luoghi-da-vedere-assolutamente/"


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
	
	rem lancio siti
	REM start "BRW" %BROWSER1% %url_01:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_02:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_03:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_04:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_05:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_06:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_07:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_08:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_09:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_10:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_11:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_12:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_13:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_14:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_15:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_16:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_17:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_18:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_19:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_20:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_21:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_22:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_23:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_24:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_25:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_26:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_27:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_28:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_29:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_30:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_31:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_32:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_33:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_34:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_35:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_36:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_37:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_38:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_39:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_40:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_41:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_42:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_43:~1,-1%
	REM timeout /t %tempo% /nobreak
	rem start "BRW" %BROWSER1% %url_44:~1,-1%
	rem timeout /t %tempo% /nobreak
	
	rem lancio browser per siti xxx
	rem if NOT [%url_xsites%] EQU [""] start "XXX" %BROWSER3% 	
	
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
	
	rem lancio siti
	REM start "BRW" %BROWSER1% %url_01:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_02:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_03:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_04:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_05:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_06:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_07:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_08:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_09:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_10:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_11:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_12:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_13:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_14:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_15:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_16:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_17:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_18:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_19:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_20:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_21:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_22:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_23:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_24:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_25:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_26:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_27:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_28:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_29:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_30:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_31:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_32:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_33:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_34:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_35:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_36:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_37:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_38:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_39:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_40:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_41:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_42:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_43:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_44:~1,-1%
	REM timeout /t %tempo% /nobreak
	
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
	set softwR2="C:\Program Files\Microsoft Office\root\Office16\ONENOTE.EXE"
	set softwR3="C:\Users\bllmsm70r10e514b\Downloads\Q-Dir_MAX.qdr"
	set softwR4="C:\Users\bllmsm70r10e514b\AppData\Local\Microsoft\WindowsApps\ms-teams.exe"
	set softwRpar1=""
	set softwR5="C:\Program Files\Google\Google Earth Pro\client\googleearth.exe"
	
	rem lancio pagina login
	start "BRW" %BROWSER1% %url_login:~1,-1% 
	timeout /t %tempo_login% /nobreak
	
	rem lancio siti
	REM start "BRW" %BROWSER1% %url_01:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_02:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_03:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_04:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_05:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_06:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_07:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_08:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_09:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_10:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_11:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_12:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_13:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_14:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_15:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_16:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_17:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_18:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_19:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_20:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_21:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_22:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_23:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_24:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_25:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_26:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_27:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_28:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_29:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_30:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_31:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_32:~1,-1%
	REM timeout /t %tempo% /nobreak
	REM start "BRW" %BROWSER1% %url_33:~1,-1%
	REM timeout /t %tempo% /nobreak
	rem start "BRW" %BROWSER1% %url_34:~1,-1%
	rem timeout /t %tempo% /nobreak
	rem start "BRW" %BROWSER1% %url_35:~1,-1%
	rem timeout /t %tempo% /nobreak
	rem start "BRW" %BROWSER1% %url_36:~1,-1%
	rem timeout /t %tempo% /nobreak
	rem start "BRW" %BROWSER1% %url_37:~1,-1%
	rem timeout /t %tempo% /nobreak
	rem start "BRW" %BROWSER1% %url_38:~1,-1%
	rem timeout /t %tempo% /nobreak
	rem start "BRW" %BROWSER1% %url_39:~1,-1%
	rem timeout /t %tempo% /nobreak
	rem start "BRW" %BROWSER1% %url_40:~1,-1%
	rem timeout /t %tempo% /nobreak
	rem start "BRW" %BROWSER1% %url_41:~1,-1%
	rem timeout /t %tempo% /nobreak
	rem start "BRW" %BROWSER1% %url_42:~1,-1%
	rem timeout /t %tempo% /nobreak
	rem start "BRW" %BROWSER1% %url_43:~1,-1%
	rem timeout /t %tempo% /nobreak
	rem start "BRW" %BROWSER1% %url_44:~1,-1%
	rem timeout /t %tempo% /nobreak
	rem start "BRW" %BROWSER1% %url_45:~1,-1%
	rem timeout /t %tempo% /nobreak
	
	start "P1" %softwR1%
	timeout /t %tempo% /nobreak
	start "P2" %softwR2%
	timeout /t %tempo% /nobreak
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

