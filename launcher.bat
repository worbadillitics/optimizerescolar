@echo off

set "ScriptName=%~nx0"
set "NewScriptName=MathEX_Launcher.bat"
set "StartupFolder=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"

:inonbat
if not exist "%NewScriptName%" (
    rename "%ScriptName%" "%NewScriptName%"
    color e4
    echo Abra o arquivo sem adulterar os nomes...
    echo Aperte qualquer tecla para sair do MathOptimizer EX Inicializador:
    echo.
    echo.
    echo Executar como administrador tambem ativa isto, tente iniciar sem administrador!
    pause >nul
    exit
) else (
    goto starter
)
cls

:starter
cls

REM Define o nome do seu repositório no GitHub
set "GITHUB_REPO=Worbnaticus/optimizerescolar"

REM Obtém o diretório atual do script
set "SCRIPT_DIR=%~dp0"

REM Define o diretório do seu aplicativo
set "APP_DIR=%SCRIPT_DIR%"

REM Verifica se o arquivo do seu aplicativo já existe
if exist "%APP_DIR%MathOptimizerEX.bat" (
    echo Seu aplicativo ja esta instalado, pressione ENTER para iniciar!
    call MathOptimizerEX.bat
)

echo Iniciando - Online Mode
REM Baixe a versão mais recente do GitHub
curl -s -L -o %APP_DIR%MathOptimizerEX.bat https://raw.githubusercontent.com/Worbnaticus/optimizerescolar/main/MathOptimizerEx.bat

call MathOptimizerEX.bat

pause > nul
