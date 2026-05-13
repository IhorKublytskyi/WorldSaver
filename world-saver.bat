REM WorldSaver
REM Version: 1.0.0
REM Author: Ihor Grac

@ECHO OFF

REM Set the path to the folder containing the world
SET WORLD_PATH=C:\Users\igorl\AppData\Roaming\.minecraft\saves\been chilling
REM Set the path to the folder containing the Minecraft Launcher executable
SET LAUNCHER_PATH=C:\XboxGames\Minecraft Launcher\Content

SET exe=Minecraft.exe

REM Change this value to specify the timeout interval
SET /A timeout_in_minutes=5
REM Don't change
SET /A timeout_in_seconds=%timeout_in_minutes% * 60

CD %WORLD_PATH%

git pull origin master

CD %LAUNCHER_PATH%

START %exe%

:loop
timeout %timeout_in_seconds%
tasklist /fi "ImageName eq %exe%" /fo csv 2>NUL | find /I "%exe%">NUL
if "%ERRORLEVEL%"=="0" goto loop

CD %WORLD_PATH%

git add .

git commit -m "Session: %DATE% %TIME%"

git push origin master