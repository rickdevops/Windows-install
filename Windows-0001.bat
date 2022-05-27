@ECHO OFF
GOTO CHECK_PERMISSAO

:CHECK_PERMISSAO
    ECHO Verificando permissoes...
    NET SESSION >NUL 2>&1
    if %errorLevel% == 0 (
        ECHO Permissoes adminsitrativas confirmadas. Precione qualquer botao.
    ) else (
        ECHO Falha de permissao. Precione qualquer botao.
    )
    PAUSE >NUL

REM Ferramentas
winget install --exact --id 7zip.7zip
winget install --exact --id Audacity.Audacity
winget install --exact --id CPUID.HWMonitor
winget install --exact --id GNU.Emacs
REM winget install --exact --id Google.BackupAndSync
winget install --exact --id Google.Drive
REM winget install --exact --id LibreOffice.LibreOffice
REM winget install --exact --id Microsoft.MouseWithoutBorder
winget install --exact --id Microsoft.Office
winget install --exact --id Microsoft.PowerShell-Preview
winget install --exact --id Microsoft.WindowsTerminalPreview
winget install --exact --id Google.Chrome