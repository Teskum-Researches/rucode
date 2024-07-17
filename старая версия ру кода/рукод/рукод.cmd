@echo off
chcp 65001
cls
cd код языка
set version=0.0.0
set number=0003
type ресурсы\logo.txt
echo Версия: %version%, номер: %number%
:EnterCommand
set /p comm=Команда:
if "%comm%" == "test" goto :test
if "%comm%" == "help" goto :help
echo Ошибка! Введена команда "%comm%", не верный синтаксис.
goto :EnterCommand
pause
:test
:: Вызов PowerShell для вывода версии и номера с цветом
powershell -Command "Write-Host 'Версия: %version%, номер: %number%' -ForegroundColor Green"
goto :EnterCommand
:help
echo Список команд Рукод:
echo help
echo test
goto :EnterCommand
pause