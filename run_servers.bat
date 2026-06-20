@echo off
echo ===================================================
echo   Starting AI E-Commerce Recommendation System
echo ===================================================

cd "%~dp0"

:: Step 1: Install Backend Python Dependencies
echo.
echo [1/4] Installing Python dependencies...
python -m pip install flask pandas scikit-learn flask-cors

:: Step 2: Start Flask Backend Server in a new window
echo.
echo [2/4] Starting Flask backend server...
cd ai-ecommerce-recommendation\backend
start "Flask Backend Server" cmd /k "python app.py"
cd ..\..

:: Step 3: Install Frontend Node Dependencies
echo.
echo [3/4] Installing Frontend npm dependencies...
cd ai-ecommerce-recommendation\frontend
call npm install

:: Step 4: Start Frontend React Application
echo.
echo [4/4] Starting Frontend React application...
call npm start

pause
