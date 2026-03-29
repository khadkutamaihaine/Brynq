@echo off
title Brynq v0.420.69 Installer
echo.
echo   ==========================================
echo     BRYNQ - The OS for AI Workforces
echo     v0.420.69
echo   ==========================================
echo.

:: ── Step 1: Check Python ──────────────────────────
echo   [1/4] Checking Python...
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo.
    echo   Python is not installed.
    echo   Opening download page...
    start https://www.python.org/downloads/
    echo.
    echo   IMPORTANT: Check "Add Python to PATH" during install.
    echo   After installing Python, run this file again.
    echo.
    pause
    exit /b 1
)
for /f "tokens=2" %%v in ('python --version 2^>^&1') do echo   Found Python %%v

:: ── Step 2: Check Ollama ──────────────────────────
echo.
echo   [2/4] Checking Ollama (free local AI models)...
where ollama >nul 2>&1
if %errorlevel% neq 0 (
    echo.
    echo   Ollama is not installed.
    echo   Ollama lets you run free AI models locally — no API key needed.
    echo.
    set /p INSTALL_OLLAMA="   Install Ollama now? (Y/n): "
    if /i "%INSTALL_OLLAMA%" neq "n" (
        echo   Opening Ollama download page...
        start https://ollama.com/download
        echo.
        echo   Install Ollama, then press any key to continue.
        echo.
        pause
    ) else (
        echo   Skipping Ollama. Brynq works with Claude and Gemini too.
    )
) else (
    echo   Found Ollama
    ollama list >nul 2>&1
    for /f %%c in ('ollama list 2^>^&1 ^| find /c /v ""') do (
        if %%c leq 1 (
            echo.
            echo   No models installed yet. Pulling Llama 3 (free, ~4.7GB)...
            ollama pull llama3
        )
    )
)

:: ── Step 3: Install Brynq ────────────────────────
echo.
echo   [3/4] Installing Brynq v0.420.69...
pip install brynq==0.420.69 --upgrade --quiet
if %errorlevel% neq 0 (
    echo   Trying with --user flag...
    pip install brynq==0.420.69 --upgrade --quiet --user
)
echo   Brynq installed.

:: ── Step 4: Verify + Finish ─────────────────────
echo.
echo   [4/4] Verifying installation...
python -c "from runtime.version import __version__; print(f'   Brynq v{__version__} ready')" 2>nul
if %errorlevel% neq 0 (
    echo   Brynq installed but could not verify version.
)

echo.
echo   ==========================================
echo.
echo     Brynq is ready!
echo.
echo     To start:
echo       brynq-runtime start
echo.
echo     Or in interactive mode:
echo       brynq-runtime chat
echo.
echo     75 commands available. Type /help inside chat.
echo.
echo   ==========================================
echo.
pause
