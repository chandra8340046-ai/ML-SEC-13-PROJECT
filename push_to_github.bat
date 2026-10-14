@echo off
setlocal
echo ========================================================
echo Pushing ML-SEC-13-PROJECT to GitHub...
echo Repository: https://github.com/chandra8340046-ai/ML-SEC-13-PROJECT
echo Branch:     main
echo ========================================================
echo.

cd /d "%~dp0"

REM Verify git status
git status

echo.
echo Attempting to push to origin main...
git push -u origin main

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ========================================================
    echo [SUCCESS] Successfully pushed all files to GitHub!
    echo View your repository online at:
    echo https://github.com/chandra8340046-ai/ML-SEC-13-PROJECT
    echo ========================================================
) else (
    echo.
    echo ========================================================
    echo [ERROR] Push failed.
    echo Please make sure you are authenticated with GitHub.
    echo You can authenticate by running:
    echo     gh auth login
    echo Or generate a Personal Access Token (PAT) with repo scope:
    echo     https://github.com/settings/tokens
    echo ========================================================
)

echo.
pause
