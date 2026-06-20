@echo off
echo ===================================================
echo   Pushing E-Commerce System Upgrades to GitHub
echo ===================================================

cd "%~dp0"

:: Step 1: Configure Git remote origin for ARIVU3355
echo.
echo [1/4] Configuring remote origin to https://github.com/ARIVU3355/AI-Based-E-Commerce-Recommendation-System.git ...
git remote remove origin >nul 2>&1
git remote add origin https://github.com/ARIVU3355/AI-Based-E-Commerce-Recommendation-System.git
git branch -M main

:: Step 2: Add all changes
echo.
echo [2/4] Staging changes...
git add .

:: Step 3: Commit changes
echo.
echo [3/4] Committing changes...
git commit -m "Upgrade: Add shopping cart, dynamic price ranges, category/price filters, and developer attribution"

:: Step 4: Push to your GitHub repository
echo.
echo [4/4] Pushing to remote repository main branch...
git push -u origin main

echo.
echo ===================================================
echo   GitHub Push Completed!
echo ===================================================
pause
