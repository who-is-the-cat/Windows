:: ��������� ����� �� ����� ��� ����������
@echo off

:: ��������� ������������ ���� ���������� KB2998527 � ������ /q (� ����� ������). 
:: ����� ���������� ��������� ��������� � ���������� ��������.
"%~dp0WindowsServer2003-KB2998527-x86-ENU.exe" /q &

:: ����������� ���� ������� WindowsServer2K3_RTZ-2.reg � WindowsServer2K3_RTZ-4.reg
:: ��������� �������� regedit � ������ /s (� ����� ������). 
:: ����� ���������� ��������� � ���������� ��������.
regedit /s "%~dp0WindowsServer2K3_RTZ-2.reg" &
regedit /s "%~dp0WindowsServer2K3_RTZ-4.reg" &

:: �������� ��������� ������� tzchange.exe, ������� ������ ������� ����. 
:: ������ ��������� ������� ���������� ����� ���������� KB2998527 ��� ����� 
:: ����� ����������� ���������� ������� ������.
tzchange.exe /C "Russian Standard Time"