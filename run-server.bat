@echo off
echo Starting Civil Engineering API Server...
echo.

REM Check if Maven is installed
where mvn >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo Maven is not installed or not in your PATH.
    echo Please install Maven according to the instructions in README.md
    echo.
    echo Press any key to exit...
    pause >nul
    exit /b 1
)

REM Navigate to the Main directory
cd Main

REM Start the Spring Boot application
start "Civil Engineering API" cmd /c "mvn spring-boot:run"

REM Wait for the server to start
echo Waiting for server to start...
timeout /t 20 /nobreak

REM Open browser to access the application
echo Opening browser...
start http://localhost:8080/api/h2-console

REM Also open API documentation
timeout /t 2 /nobreak
start http://localhost:8080/api/projects

echo.
echo Server is running in the background.
echo You can close this window once you're done using the application.
echo To stop the server, close the Maven terminal window.
echo.
pause
