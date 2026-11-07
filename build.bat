@echo off

:: Run Maven build
echo Running mvn clean initialize...
call mvn clean initialize

echo Running mvn install...
call mvn install

:: Identify the jar file in the target directory
:: Based on pom.xml, the artifact is virtual-robot-simulator-1.5.0-SNAPSHOT.jar
set JAR_FILE=

for %%i in (target\virtual-robot-simulator-*.jar) do (
    if not "%%i"=="%%i" (
        set JAR_FILE=%%i
    )
)

:: Actually, a simpler way to get the first match in a batch file:
for %%i in (target\virtual-robot-simulator-*.jar) do set "JAR_FILE=%%i"

if "%JAR_FILE%"=="" (
    echo Error: Could not find the generated JAR file in target\ directory.
    pause
    exit /b 1
)

echo Found JAR: %JAR_FILE%

:: Target directory
set TARGET_DIR=repo\com\github\tedb04\virtual-robot-simulator

:: Create target directory if it doesn't exist
if not exist "%TARGET_DIR%" mkdir "%TARGET_DIR%"

:: Copy the jar file to the repo directory
copy "%JAR_FILE%" "%TARGET_DIR%\"

echo Successfully copied %JAR_FILE% to %TARGET_DIR%
pause