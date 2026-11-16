@echo off
title SafeRoute AI - React Frontend UI (Port 5173)
echo ===================================================
echo   Starting SafeRoute React Web App (Vite)
echo ===================================================
echo Web App URL: http://localhost:5173
echo.
cd /d "%~dp0frontend"
npm run dev
pause
