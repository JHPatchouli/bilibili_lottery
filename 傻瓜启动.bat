@echo off
title Bվ�齱�����ű� - ԭ����Magician-T �����ű�����JHPatchouli
rem set av=AVID
rem set up=UPID
rem set win=WINRS
set file=cookies.txt
@echo. -----------------------------------------------------------------
@echo.                          �齱�����ű�                                                            
@echo.      �齱�ű�����Magician-T   https://github.com/Magician-T
@echo.      �����ű�����JHPatchouli  https://github.com/JHPatchouli
@echo.                    ��ȷ����������װpython����
@echo.                       �����ֶ���ȡcookies
@echo.            ��������requirements�����·���װ�������Ҫ��
@echo.                  ǧ��Ҫ����Ա��������������
@echo. -----------------------------------------------------------------
:install
echo                              �Ƿ�װ����
echo                            1����       2����    
set/p install=������:
if "%install%"=="1" (
	pip install -r requirements
) else if "%install%"=="2" (
	goto msxz
) else (
	echo ��������
	goto install
)
:msxz
cls
echo                                   ѡ��齱ģʽ
echo                            1����˿+����     2��������    
set/p cjms=������:
if "%cjms%"=="1" (
	cd /d ./FS
) else if "%cjms%"=="2" (
	goto av
) else (
	echo ��������
	goto msxz
)
:av
set/p av1=������AV��:
echo %av1%|findstr "^[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]$">nul
if %errorlevel% equ 0 (
echo AV�ż�� ok
) else (
echo ����ȷ���� no
goto av
)
:up
set/p up1=������up��id:
echo %up1%|findstr "^[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]$">nul
if %errorlevel% equ 0 (
echo UPID��� ok
) else (
echo ����ȷ���� no
goto up
)
:win
set/p win1=�����������:
echo %win1%|findstr /be "[0-9]*">nul
if %errorlevel% equ 0 (
echo ��� ok
) else (
echo ����ȷ���� no
goto win
)
:srcook
cls
echo                           �Ƿ��ڴ�����cookies
echo                            1����       2����    
set/p cookyn=������:
if "%cookyn%"=="1" (
	start cookies.txt
	echo ���Ʋ�����
	pause ������ɺ�������
) else if "%cookyn%"=="2" (
	goto cookies
) else (
	echo ��������
	goto srcook
)
:cookies
echo AVID��%av1% UPID��%up1% ��������%win1%
echo ���ں˶�cookie
if exist cookies.txt (
goto cookiesok
) else (
echo ��ȷ��cookies.txt�ļ��Ƿ����
goto exit
)
:cookiesok
findstr /i /c:"%up1%" "%file%" >nul 2>nul && goto checkok || goto checkno
:checkno
echo upID��cookies����
echo ����cookies����UPID
goto exit
:checkok
echo �˶����
goto config
:config
xcopy .\PZ\config.py .\config.py /Y
cls
echo VIDEO_ID = %av1% >> config.py
echo USER_ID = %up1% >> config.py
echo NUM_WINNERS = %win1% >> config.py
echo TEST_POOL_SIZE = 500 >> config.py
echo TEST_WINNERS = 1 >> config.py
echo TEST_EXPERIMENTS = 10 >> config.py
echo д���������
python draw.py
:exit
pause