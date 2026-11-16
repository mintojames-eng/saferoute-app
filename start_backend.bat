@echo off
title SafeRoute AI - Flask & MongoDB Backend (Port 5000)
echo ===================================================
echo   Starting SafeRoute Backend Server with MongoDB
echo ===================================================
echo Connecting to MongoDB database: mongodb://localhost:27017/saferoute
echo Server URL: http://127.0.0.1:5000
echo.
cd /d "%~dp0backend"
python app.py
pause
