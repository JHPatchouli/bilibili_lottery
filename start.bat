::[Bat To Exe Converter]
::
::fBE1pAF6MU+EWHreyHcjLQlHcFbaaTLsOrkIqPj0/eCCoVkhVu5xfZfeug==
::fBE1pAF6MU+EWHreyHcjLQlHcFbaaTLsOrkIqPj0/eCCoVkhe84bRIfe1qTANPgHig==
::YAwzoRdxOk+EWAjk
::fBw5plQjdCuDJN9yJMfr8p2iq4BZ6u5+3/VUuqHHvrjX8h1PBqw2e4C7
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpSI=
::egkzugNsPRvcWATEpSI=
::dAsiuh18IRvcCxnZtBNQ
::cRYluBh/LU+EWAjk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJhZks0
::ZQ05rAF9IBncCkqN+0xwdVsFAlTi
::ZQ05rAF9IAHYFVzEqQISIRddTg2ONVS2CaEI7friwuWDwg==
::eg0/rx1wNQPfEVWB+kM9LVsJDAaLMGK4D7kV1+T0+/6CsFR9
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQK118HQluqvPWyzBbwd5qXPoOiOrkQfXe42R4PUzqCLMvmUHpTOXaYswnlSl94ABZ6In5poi28=
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFEkMGV3UAGeuRqUT+uL+7P67gEQRXeA2dIbk1ruaNOUB82jrcdgozn86
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983

::      �齱�ű�����Magician-T   https://github.com/Magician-T
::      �����ű�����JHPatchouli  https://github.com/JHPatchouli
@echo off
title Bվ�齱�����ű� - ԭ����Magician-T �����ű�����JHPatchouli
rem set av=AVID
rem set up=UPID
rem set win=WINRS
set file=cookies.txt
color 9f
@echo. -----------------------------------------------------------------
@echo.                          �齱�����ű�                                                            
@echo.      �齱�ű�����Magician-T   https://github.com/Magician-T
@echo.      �����ű�����JHPatchouli  https://github.com/JHPatchouli
@echo.                    ��ȷ����������װpython����
@echo.                       �����ֶ���ȡcookies
@echo.            ��������requirements�����·���װ�������Ҫ��
@echo.                  ǧ��Ҫ����Ա��������������
@echo. -----------------------------------------------------------------
if exist draw.py (
echo �����������
echo �����������
echo �����������
) else (
dir
echo ���ڵ����Ľ�ѹ�����н�ѹ����������Ŀ¼����ɺ������������������
echo ��һ������Ҫ��������
echo ���ڵ����Ľ�ѹ�����н�ѹ����������Ŀ¼����ɺ������������������
echo ��һ������Ҫ��������
echo ���ڵ����Ľ�ѹ�����н�ѹ����������Ŀ¼����ɺ������������������
echo ��һ������Ҫ��������
.\help.txt
.\bl.exe
)
pause>nul
:ckpy
cls
echo ���ڼ�黷��.
for /F "tokens=2" %%i in ('python --version') do (set pycheckv=%%i)
cls
echo ���ڼ�黷��..
if "%pycheckv%"=="" (
	cls
	color 04
	echo ����python�����Ƿ�װ
	echo �������python --version
	echo ��黷����ɣ����������������ʾ��
	@echo.
	for /F "delims=" %%i in ('python --version') do (echo %%i %%j)
	@echo.
	echo ������python������python3��ͷ�밴�������һ�����
	pause>nul
	goto ckpy3
) else (
	cls
	color 9f
	echo ��黷�����
	echo �Ѱ�װ�汾��%pycheckv% 
	set py=python
	pause>nul
	goto ckpip
)
:ckpy3
for /F "tokens=2" %%i in ('python3 --version') do (set pycheckv=%%i)
cls
echo ���ڼ�黷��..
if "%pycheckv%"=="" (
	cls
	color 04
	echo ����python�����Ƿ�װ
	echo �������python3 --version
	echo ��黷����ɣ����������������ʾ��
	@echo.
	for /F "delims=" %%i in ('python3 --version') do (echo %%i %%j)
	@echo.
	echo �밲װpython��������ʹ��
	echo ������˳�
	pause>nul
	exit
) else (
	cls
	color 9f
	echo ��黷�����
	echo �Ѱ�װ�汾��%pycheckv% 
	set py=python3
	pause>nul
)
:ckpip
cls
color 07
echo Python Version: %pycheckv%
echo ���pip��������.
for /F "tokens=2" %%i in ('pip --version') do ( set pipv=%%i)
if "%pipv%"=="" (
	cls
	echo Python Version: %pycheckv%
	echo ����pip�������Ƿ�װ��������һ�������Զ���װ
	echo ��������: pip show requests ^| findstr /i "Version:"
	@echo.
	echo �������飺
	for /F "delims=" %%i in ('ip --version') do ( echo %%i)
	@echo.
	color 04
	echo ��һ����ֱ���Զ���װ���粻��Ҫ��ֱ�ӹرմ����ֶ���װ
	pause>nul
	goto installpip
) else (
	cls
	color 9f
	echo Python Version: %pycheckv%
	echo Pip Version: %pipv%
	echo ����������
	echo ���������
	pause>nul
	goto ckmod
)
:installpip
cls
color 07
echo Python Version: %pycheckv%
echo ��鰲װ�ű�.
if exist ".\get-pip.py" (
cls 
color a5
echo ���ڰ�װ�ű�
echo ���ڽ��а�װ
for /F "delims=" %%i in ('%py% .\get-pip.py') do ( set st=%%i)
cls
echo %st%
@echo.
echo ����������ֶ���װ����һ�����ؼ��
pause>nul
goto ckpip
) else (
cls
echo ���������Զ���װ�ű�
for /F "delims=" %%i in ('.\curl.exe -k  https://bootstrap.pypa.io/get-pip.py -o get-pip.py') do ( set st=%%i)
echo %st%
@echo.
echo �������,���б������ֶ���װ����һ�����ؼ��
pause>nul
goto installpip
)
:ckmod
cls
color 07
echo Python Version: %pycheckv%
echo Pip Version: %pipv%
echo ���������.
for /F "delims=" %%i in ('pip show requests ^| findstr /i "Version:"') do ( set requestsv=%%i)
cls
echo Python Version: %pycheckv%
echo Pip Version: %pipv%
echo ���������..
if "%requestsv%"=="" (
	cls
	color 04
	echo Python Version: %pycheckv%
	echo Pip Version: %pipv%
	echo ��������������requestsģ��
	echo ��������: pip show requests ^| findstr /i "Version:"
	@echo.
	echo �������飺
	for /F "delims=" %%i in ('pip show requests ^| findstr /i "Version:"') do ( echo %%i)
	@echo.
	echo ��һ����ֱ���Զ���װ���粻��Ҫ��ֱ�ӹرմ����ֶ���װ
	pause>nul
	cls
	goto installmod
) else (
	cls
	color 9f
	echo Python Version: %pycheckv%
	echo Pip Version: %pipv%
	echo requests %requestsv%
	echo ����������
	echo ���������
	pause>nul
	goto msxz
)
:installmod
color a5
echo pipģ������ģ��
echo 1���廪
echo 2���пƴ�
echo 3��������
echo 4��ɽ����
echo 5��������
echo 6������
set/p jd=��ѡ��ڵ�:
if "%jd%"=="1" (
set ms=https://pypi.tuna.tsinghua.edu.cn/simple
) else (
	if "%jd%"=="2" (
	set ms=https://pypi.mirrors.ustc.edu.cn/simple
	) else (
		if "%jd%"=="3" (
		set ms=http://pypi.hustunique.com/simple/
		) else (
			if "%jd%"=="4" (
			set ms=http://pypi.sdutlinux.org/simple/
			) else (
				if "%jd%"=="5" (
				set ms=http://mirrors.aliyun.com/pypi/simple/
				) else (
					if "%jd%"=="6" (
					set ms=http://pypi.douban.com/simple/
					) else (
					cls
					echo ������������������
					goto installmod
					)

				)
			)
		)
	)
)
for /F %%i in ('pip install -i %ms% -r .\requirements.txt ^| findstr /i "Successfully"') do ( set modst=%%i )
if "%modst%"=="Successfully " (
cls
color 9f
echo Python Version: %pycheckv%
echo Pip Version: %pipv%
@echo.
echo ��װ���
echo %modst%
@echo.
echo ��һ�����¼��
pause>nul
goto ckmod
) else (
cls
color 04
echo ��װ����
echo �������pip install -i %ms% -r .\requirements.txt ^| findstr /i "Successfully"
@echo.
echo �������飺
for /F "delims=" %%i in ('pip install -i %ms% -r .\requirements.txt ^| findstr /i "Successfully"') do ( set modst=%%i )
echo %modst%
@echo.
echo �����ѡ�������ڵ㰲װ�����ֶ���װ���˳�ֱ�ӹرմ���
pause>nul
cls
goto installmod
)
:msxz
cls
echo                                   ѡ��齱ģʽ
echo                            1����˿+����     2��������    
set/p cjms=������:
if "%cjms%"=="1" (
	cd /d ./FS
	goto bv
) else if "%cjms%"=="2" (
	goto bv
) else (
	echo ��������
	goto msxz
)
:bv
set/p av1=������AV�Ż�BV��: &cls
@echo %av1% | findstr /i "bv">>nul
if %errorlevel%==0 (
echo ת��BV�ţ�������ת�����av�������
for /F "usebackq" %%j in (`.\nodejs\node.exe .\bvtoav.js %av1%`) do echo %%j
set/p av1=�����룺
cls
goto av
) else (
cls
goto av
)
:av
echo %av1%|findstr "[^0-9]">nul&&( 
echo %av1% AV�Ż�BV�Ŵ���,AV�������벻��"AV"��AV�ţ�BV����Ҫ��"BV"
goto bv
)||( 
echo AV�ż��ok
 )
:up
set/p up1=������UP��id: &cls
set num=a%up1%
for /l %%a in (0 1 9) do call set num=%%num:%%a=%%
if "%num%"=="a" (
echo %up1% UPID��� ok
cls
) else (
echo %up1% UPID����,��������https://space.bilibili.com/2417656б�ܺ��"2417656"
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
pause>nul
:exit
pause>nul