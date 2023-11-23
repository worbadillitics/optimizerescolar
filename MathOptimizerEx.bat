@echo on
setlocal enabledelayedexpansion



rem If you consider to donate, join dsc.gg/mathoptimizer

rem Lol, this was made by only one person and it's so good!


rem -------------------------------------------------------------


rem MathOptimizer Ex - Free Evalue - Licensed by MIT LICENSE - - -

rem 15/11/2009 Version, IoT Optimization - Made by worbadill:tics


rem -------------------------------------------------------------


rem https://github.com/Worbnaticus/ -- Site dos arquivos

rem Open-Source, qualquer informação pode ser obtida no código do arquivo!

set "userFolder=%USERPROFILE%"

goto marka

:marka

if not exist "%NewScriptName%" (
    rename "%ScriptName%" "%NewScriptName%"
    color e4
    echo Abra o arquivo sem adulterar os nomes...
    echo Aperte qualquer tecla para sair do MathOptimizer EX:
    echo.
    echo.
    echo Executar como administrador tambem ativa isto, tente iniciar sem administrador!
    pause >nul
    exit
) else (
    goto inicializacaodoscript
)
cls

:inicializacaodoscript

set "ScriptName=%~nx0"
set "NewScriptName=MathOptimizerEx.bat"
set "ShortcutNamev1=MathOptimizerEx.ink"
set "StartupFolder=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"

rem shortcut

REM Define o nome do atalho
set "SHORTCUT_NAME=MathOptimizerEx"

REM Define o caminho do diretório de destino
set "DESTINATION_DIR=%~dp0"

REM Criação do script VBS temporário
echo Set WshShell = CreateObject("WScript.Shell") > createShortcut.vbs
echo Set shortcut = WshShell.CreateShortcut("%DESTINATION_DIR%\%SHORTCUT_NAME%.lnk") >> createShortcut.vbs
echo shortcut.TargetPath = "%~dp0/MathOptimizerEx.bat" >> createShortcut.vbs
echo shortcut.Save >> createShortcut.vbs

REM Execução do script VBS
cscript //nologo createShortcut.vbs

REM Remover o script VBS temporário
del createShortcut.vbs

echo Atalho criado em %DESTINATION_DIR%. 

rem Tamanho da tela

mode con cols=91 lines=13

rem Resolution

if not exist "%NewScriptName%" (
    rename "%ScriptName%" "%NewScriptName%"
    color e4
    echo Abra o arquivo sem adulterar os nomes...
    echo Aperte qualquer tecla para sair do MathOptimizer EX:
    echo.
    echo.
    echo Executar como administrador tambem ativa isto, tente iniciar sem administrador!
    pause >nul
    exit
) else (
    goto criarinicializador
)
cls


:adulteracionesilegaulis

color e4
echo.
echo Abra o arquivo sem adulterar os nomes
echo.
echo Sistema Anti-Edicao!
pause



:criarinicializador

echo.
if not exist "%StartupFolder%\%ShortcutNamev1%" (
    echo Feito por Luis
    cls
    copy "%ShortcutNamev1%" "%StartupFolder%"
    cls
    goto start
) else (
    echo Checkpoint
    cls
    goto start
)

cls
timeout /t 1 /nobreak >nul
cls



rem divisoria

:start

cls

color 47
echo Otimizador Automatico - Feito por Luis
echo dsc.gg/mathoptimizer
echo -------------------------------------------------------------------------------------
echo.
echo                                %date% , %time%
echo.
echo          ---              Iniciando a otimizacao automatica          ---              
echo.
echo            Para desativar, digite shell:startup e apague o arquivo 
echo.                             (MathOptimizer EX.bat)
echo.
echo.
echo -----------------------------------------------------------------------------------

cleanmgr /sagerun:1

del /q /s %temp%\*.* 2>nul

del /q /s C:\Windows\Prefetch\*.* 2>nul

del /q /s C:\Windows\Logs\*.* 2>nul

rd /s /q C:\$Recycle.Bin 2>nul

rem d


rem tw
echo Removendo arquivos temporarios...
del /s /q *.tmp 2>nul

echo Removendo arquivos de log...
del /s /q *.log 2>nul

echo Removendo arquivos de cache...
del /s /q *.cache 2>nul

echo Removendo arquivos de configuração temporarios...
del /s /q *.tmp 2>nul

echo Removendo arquivos de lixo eletronico...
del /s /q Thumbs.db 2>nul
del /s /q desktop.ini 2>nul

echo Removendo arquivos de registros de sistema...
del /s /q *.reg 2>nul

echo Removendo arquivos de backup do sistema...
del /s /q *.bak 2>nul

echo Removendo arquivos de cache do Windows Update...
rmdir /s /q "C:\Windows\SoftwareDistribution\Download" 2>nul

echo Removendo arquivos de relatórios de erros...
rmdir /s /q "C:\ProgramData\Microsoft\Windows\WER" 2>nul

rem Otimizacao de internet - inicio

cls
rem tw

ipconfig /flushdns
netsh winhttp reset proxy


rem Otimizacao de internet - final

rem b

cls

color a7
echo Otimizador Automatico - Feito por Luis
echo dsc.gg/mathoptimizer
echo -------------------------------------------------------------------------------------
echo.
echo                                %date% , %time%
echo.
echo          ---              Limpeza automatica finalizada          ---              
echo.
echo            Para desativar, digite shell:startup e apague o arquivo 
echo.                             (MathOptimizer EX.bat)
echo.
echo.
echo -----------------------------------------------------------------------------------
echo                MathOptimizer, Evalue version, stable and safe!


timeout -t 2 /nobreak >nul

rem Aviso : Se o antivirus sinalizar esse arquivo como suspeito, remova-o, o código é aberto e você pode procurar na internet sobre como ele funciona .
rem
rem                                                              Feito por worbadill:tics#0
rem
rem - 15/11/2023
rem
rem Este arquivo serve para limpar automaticamente!

rem --------------------------------------------------------------------------------------------------------------------------------------------------------------------

rem Aviso : Este programa é uma cópia autorizada para somente um dispositivo, tentar inserir em outro faz com que ele se apague automaticamente, dearly : luis
pause