:: ��������� ����� �� ����� ��� ����������
@echo off

:: ����������� ���� ������� WindowsXP_RTZ-1.reg, WindowsXP_RTZ-2.reg, WindowsXP_RTZ-3.reg � 
:: WindowsXP_RTZ-4.reg ��������� �������� regedit � ������ /s (� ����� ������). 
:: %~dp0 - ������������ ��������� ������������ *.cmd-�������. 
:: ���� �� �������, �� ������������ ��������� \WINDOWS\system32.
:: ����� ���������� ��������� � ���������� ��������.
regedit /s "%~dp0WindowsXP_RTZ-1.reg" & 
regedit /s "%~dp0WindowsXP_RTZ-2.reg" & 
regedit /s "%~dp0WindowsXP_RTZ-3.reg" & 
regedit /s "%~dp0WindowsXP_RTZ-4.reg" & 

:: �������� ��������� ������� tzchange.exe, ������� ������ ������� ����. 
:: ������ ��������� ������� ���������� ����� ���������� KB2998527 ��� 
:: ����� ����� ������������� ���������� ������� ������.
tzchange.exe /C "Russian Standard Time"
