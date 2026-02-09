@echo off
echo Установка зависимостей...
python -m pip install -r requirements.txt
echo.
echo Запуск бота...
python bot.py
pause
