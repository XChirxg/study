@echo off
echo ===================================================
echo UGC NET Commerce Portal - Git Push Helper
echo ===================================================
echo.

:: Check if git is installed
where git >nul 2>nul
if %errorlevel% neq 0 (
    echo [ERROR] Git is not installed or not in PATH!
    echo Please install Git and try again.
    pause
    exit /b
)

:: Prompt for commit message
set /p commit_msg="Enter commit message (press Enter for default 'Update Commerce Portal'): "
if "%commit_msg%"=="" (
    set commit_msg=Update Commerce Portal
)

echo.
echo Adding files to Git staging...
git add .

echo.
echo Committing changes...
git commit -m "%commit_msg%"

echo.
echo Pushing changes to remote main branch...
git push origin main

echo.
echo ===================================================
echo Process completed!
echo ===================================================
pause
