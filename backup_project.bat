@echo off
echo Создание резервной копии проекта...
set BACKUP_DIR=%USERPROFILE%\Desktop\telegram_bot_backup
set DATE=%date:~-4,4%%date:~-7,2%%date:~-10,2%

if not exist "%BACKUP_DIR%" mkdir "%BACKUP_DIR%"

xcopy /E /I /Y "%~dp0*" "%BACKUP_DIR%\%DATE%\" /EXCLUDE:%~dp0.gitignore

echo.
echo Резервная копия создана в: %BACKUP_DIR%\%DATE%
echo.
pause

