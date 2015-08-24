:: Отключаем вывод на экран при выполнении
@echo off

:: Импортируем ключ реестра WindowsXP_RTZ-1.reg, WindowsXP_RTZ-2.reg, WindowsXP_RTZ-3.reg и 
:: WindowsXP_RTZ-4.reg системной утилитой regedit с ключем /s (в тихом режиме). 
:: %~dp0 - выставляется окружение расположения *.cmd-скрипта. 
:: Если не указать, то выставляется окружение \WINDOWS\system32.
:: После выполнения переходим к следующему действию.
regedit /s "%~dp0WindowsXP_RTZ-1.reg" & 
regedit /s "%~dp0WindowsXP_RTZ-2.reg" & 
regedit /s "%~dp0WindowsXP_RTZ-3.reg" & 
regedit /s "%~dp0WindowsXP_RTZ-4.reg" & 

:: Запускам системную утилиту tzchange.exe, которая меняет часовой пояс. 
:: Данная системная утилита появляется после обновления KB2998527 или 
:: после ранее установленных обновлений часовых поясов.
tzchange.exe /C "Russian Standard Time"
