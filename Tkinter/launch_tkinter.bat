@echo off
setlocal enabledelayedexpansion

echo Starting RATP - ODTGEN Barcode Scanner (Tkinter Version)...

:: Change to the script directory
cd /d "%~dp0"

:: Define parent directory path
set "parent_dir=%~dp0..\"

:: Check if virtual environment exists in parent folder
if not exist "%parent_dir%\venv" (
    echo Creating virtual environment in parent folder...
    pushd "%parent_dir%"
    python -m venv venv
    popd
    if !errorlevel! neq 0 (
        echo Failed to create virtual environment. Please ensure Python is installed correctly.
        pause
        exit /b 1
    )
    echo Virtual environment created successfully.
) else (
    echo Using existing virtual environment from parent folder.
)

:: Activate virtual environment from parent folder
echo Activating virtual environment...
call "%parent_dir%\venv\Scripts\activate.bat"
if !errorlevel! neq 0 (
    echo Failed to activate virtual environment.
    pause
    exit /b 1
)

:: Install requirements
echo Installing requirements...
pip install -r requirements_tkinter.txt
if !errorlevel! neq 0 (
    echo Failed to install requirements.
    pause
    exit /b 1
)

:: Launch application
echo Starting the application...
python app_tkinter.py
if !errorlevel! neq 0 (
    echo Application exited with an error.
) else (
    echo Application closed successfully.
)

pause
endlocal
