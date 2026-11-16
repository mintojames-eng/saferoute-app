@echo off
title SafeRoute AI - Push to GitHub
echo ===================================================
echo   SafeRoute AI - Automatic GitHub Push Script
echo ===================================================
cd /d "%~dp0"

echo Current Git Status:
git status
echo.
set /p commit_msg="Enter commit message (or press ENTER for default): "
if "%commit_msg%"=="" set commit_msg="Update SafeRoute AI full stack application"

git add .
git commit -m "%commit_msg%"
echo.
echo Pushing to GitHub main branch...
git push origin main

if %ERRORLEVEL% NEQ 0 (
    echo.
    echo ---------------------------------------------------
    echo [Tip] If your remote is not set up yet, run:
    echo   git remote add origin https://github.com/mintojames-eng/<repo-name>.git
    echo   git branch -M main
    echo   git push -u origin main
    echo ---------------------------------------------------
) else (
    echo.
    echo ===================================================
    echo   Successfully pushed to GitHub!
    echo ===================================================
)
pause
