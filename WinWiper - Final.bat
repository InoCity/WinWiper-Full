@echo off
title Checando permissoes...
Color F
echo Checando se o programa esta sendo executado como administrador...
net session >nul 2>&1
 if [%errorLevel%] == [0] (
      timeout /t 3 /NOBREAK >nul
      cls
      color 2
      title Permissoes detectadas.
      echo Permissoes detectadas!
 	echo Ok! Vamos continuar!
      timeout /t 2 /NOBREAK >nul
      cls
      goto script
 ) else (
      timeout /t /NOBREAK 3 >nul
      cls
      color 4
      title Erro!
 	echo Erro: O Programa nao esta rodando como administrador!
      echo Por favor, abra o programa como administrador!
 )
 pause>nul

:script
@echo off
color f
title Gerando informacoes...
echo Detectando arquitetura do processador...
echo Se seu processador for 64 bits, o programa ira executar normalmente
echo Caso for 32bits, o programa ira fechar automaticamente, pois nao sera compativel
timeout /t 4 /NOBREAK >nul
cls

if "%PROCESSOR_ARCHITECTURE%"=="AMD64" goto 64BIT
@echo off
color 4
echo Detectando processador...
timeout /t 1 /NOBREAK >nul
echo .
timeout /t 1 /NOBREAK >nul
echo .
timeout /t 1 /NOBREAK >nul
for /F "skip=1 delims=" %%A in ('wmic cpu get name') do if not defined cpu_name set "cpu_name=%%A"
echo Processador: %cpu_name%
title Erro!
echo seu processador é 32bit, fechando programa...
timeout /t 2 /NOBREAK >nul
goto END

:64BIT
@echo off
color A
echo Detectando processador...
timeout /t 1 /NOBREAK >nul
echo .
timeout /t 1 /NOBREAK >nul
echo .
timeout /t 1 /NOBREAK >nul
echo .
timeout /t 1 >nul
title Sucesso.
for /F "skip=1 delims=" %%A in ('wmic cpu get name') do if not defined cpu_name set "cpu_name=%%A"
echo Processador: %cpu_name%
echo(
echo Arquitetura: 64bit
echo(
echo executando programa em 3 segundos...
timeout /t 3 /NOBREAK >nul
goto batch

:END
exit 

:BATCH
cls
chcp 65001 >nul
color f
title WinWiper
echo(  _      __  _        _      __  _                       
echo( ^| ^| /^| / / ^(_^) ___  ^| ^| /^| / / ^(_^) ___   ___   ____     
echo( ^| ^|/ ^|/ / / / / _ \ ^| ^|/ ^|/ / / / / _ \ / -_^) / __/     
echo( ^|__/^|__/ /_/ /_//_/ ^|__/^|__/ /_/ / .__/ \__/ /_/        
echo(                                 /_/                     
echo(                                                        
echo(                                                                                                                 
timeout /t 1 /NOBREAK >nul
echo O limpador completo para o seu PC!
timeout /t 1 /NOBREAK >nul
echo por InoCity, no Discord/GitHub
timeout /t 1 /NOBREAK >nul
echo Obrigado para Memphis e aMathyzin (Discord)
timeout /t 2 /NOBREAK >nul

cls
color 9
echo. ██╗      ██╗ ███╗   ███╗ ██████╗   █████╗  ███╗   ██╗ ██████╗   ██████╗     
echo. ██║      ██║ ████╗ ████║ ██╔══██╗ ██╔══██╗ ████╗  ██║ ██╔══██╗ ██╔═══██╗    
echo. ██║      ██║ ██╔████╔██║ ██████╔╝ ███████║ ██╔██╗ ██║ ██║  ██║ ██║   ██║    
echo. ██║      ██║ ██║╚██╔╝██║ ██╔═══╝  ██╔══██║ ██║╚██╗██║ ██║  ██║ ██║   ██║    
echo. ███████╗ ██║ ██║ ╚═╝ ██║ ██║      ██║  ██║ ██║ ╚████║ ██████╔╝ ╚██████╔╝    
echo. ╚══════╝ ╚═╝ ╚═╝     ╚═╝ ╚═╝      ╚═╝  ╚═╝ ╚═╝  ╚═══╝ ╚═════╝   ╚═════╝     
echo.                                                                             
echo.                                                                             
echo.                                                                             
echo.                                                                             
echo.                                                                                                                                                                                                                   
timeout /t 2 /NOBREAK >nul

cls
color 4
del /f /s /q %systemdrive%\*.etl
del /f /s /q %systemdrive%\*.log
del /f /s /q %systemdrive%\*.tmp
del /f /s /q %systemdrive%\*.old
del /f /s /q %systemdrive%\*.bak
del /f /s /q %systemdrive%\*.bac
del /f /s /q %systemdrive%\*.bup
del /f /s /q %systemdrive%\*.chk
del /f /s /q %systemdrive%\*.dmp
del /f /s /q %systemdrive%\*.temp
del /s /f /q %SYSTEMDRIVE%\AMD\*.*
del /s /f /q %SYSTEMDRIVE%\NVIDIA\*.*
del /s /f /q %SYSTEMDRIVE%\INTEL\*.*
del /s /f /q %WinDir%\Temp\*.*
del /s /f /q %WinDir%\Prefetch\*.*
del /s /f /q %Temp%\*.*
del /s /f /q %AppData%\Temp\*.*
del /s /f /q %HomePath%\AppData\LocalLow\Temp\*.*
rd /s /q %WinDir%\Temp
rd /s /q %WinDir%\Prefetch
rd /s /q %Temp%
rd /s /q %AppData%\Temp
rd /s /q %HomePath%\AppData\LocalLow\Temp
rd /s /q %SYSTEMDRIVE%\AMD
rd /s /q %SYSTEMDRIVE%\NVIDIA
rd /s /q %SYSTEMDRIVE%\INTEL

cls
color f
echo Recriando pastas para evitar futuros erros...
timeout /t 2 /NOBREAK >nul

cls
color 9
md %WinDir%\Temp
md %WinDir%\Prefetch
md %Temp%
md %AppData%\Temp
md %HomePath%\AppData\LocalLow\Temp

cls
Color F
echo. ███████╗ ██╗ ███╗   ██╗  █████╗  ██╗      ██╗ ███████╗  █████╗  ██████╗   ██████╗     
echo. ██╔════╝ ██║ ████╗  ██║ ██╔══██╗ ██║      ██║ ╚══███╔╝ ██╔══██╗ ██╔══██╗ ██╔═══██╗    
echo. █████╗   ██║ ██╔██╗ ██║ ███████║ ██║      ██║   ███╔╝  ███████║ ██║  ██║ ██║   ██║    
echo. ██╔══╝   ██║ ██║╚██╗██║ ██╔══██║ ██║      ██║  ███╔╝   ██╔══██║ ██║  ██║ ██║   ██║    
echo. ██║      ██║ ██║ ╚████║ ██║  ██║ ███████╗ ██║ ███████╗ ██║  ██║ ██████╔╝ ╚██████╔╝    
echo. ╚═╝      ╚═╝ ╚═╝  ╚═══╝ ╚═╝  ╚═╝ ╚══════╝ ╚═╝ ╚══════╝ ╚═╝  ╚═╝ ╚═════╝   ╚═════╝     
echo.                                                                                       
echo.                                                                                       
echo.                                                                                       
echo.                                                                                       
echo.                                                                                       
timeout /t 2 /NOBREAK >nul
exit
