@echo off
title AI Legal Document Analysis System

echo ================================================
echo   AI Legal Document Analysis System
echo ================================================
echo.

if not exist "venv\Scripts\python.exe" (
    echo [1/3] Creating Python virtual environment...
    python -m venv venv
    if errorlevel 1 (
        echo.
        echo ERROR: Python was not found.
        echo Install Python 3.10+ and make sure "Add Python to PATH" is enabled.
        pause
        exit /b 1
    )
) else (
    echo [1/3] Virtual environment already exists.
)

echo.
echo [2/3] Installing required packages...
call venv\Scripts\python.exe -m pip install --upgrade pip
call venv\Scripts\python.exe -m pip install -r requirements.txt
if errorlevel 1 (
    echo.
    echo ERROR: Package installation failed.
    pause
    exit /b 1
)

echo.
echo [3/3] Starting the application...
echo.
echo Open your browser at:
echo http://127.0.0.1:8000
echo.
echo Press CTRL+C in this window to stop the server.
echo.

call venv\Scripts\python.exe -m uvicorn app.main:app --reload
pause
