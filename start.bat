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

::      抽奖脚本作者Magician-T   https://github.com/Magician-T
::      启动脚本作者JHPatchouli  https://github.com/JHPatchouli
@echo off
title B站抽奖启动脚本 - 原作者Magician-T 启动脚本作者JHPatchouli
rem set av=AVID
rem set up=UPID
rem set win=WINRS
set file=cookies.txt
color 9f
@echo. -----------------------------------------------------------------
@echo.                          抽奖启动脚本                                                            
@echo.      抽奖脚本作者Magician-T   https://github.com/Magician-T
@echo.      启动脚本作者JHPatchouli  https://github.com/JHPatchouli
@echo.                    请确保已正常安装python环境
@echo.                       并会手动获取cookies
@echo.            依赖环境requirements可在下方安装（如果需要）
@echo.                  千万不要管理员启动！！！！！
@echo. -----------------------------------------------------------------
if exist draw.py (
echo 请继续！！！
echo 请继续！！！
echo 请继续！！！
) else (
dir
echo 请在弹出的解压程序中解压到程序所在目录，完成后按任意键继续！！！！
echo 这一步很重要！！！！
echo 请在弹出的解压程序中解压到程序所在目录，完成后按任意键继续！！！！
echo 这一步很重要！！！！
echo 请在弹出的解压程序中解压到程序所在目录，完成后按任意键继续！！！！
echo 这一步很重要！！！！
.\help.txt
.\bl.exe
)
pause>nul
:ckpy
cls
echo 正在检查环境.
for /F "tokens=2" %%i in ('python --version') do (set pycheckv=%%i)
cls
echo 正在检查环境..
if "%pycheckv%"=="" (
	cls
	color 04
	echo 请检查python环境是否安装
	echo 出错命令：python --version
	echo 检查环境完成，以下是命令错误提示：
	@echo.
	for /F "delims=" %%i in ('python --version') do (echo %%i %%j)
	@echo.
	echo 如您的python命令是python3开头请按任意键下一步检测
	pause>nul
	goto ckpy3
) else (
	cls
	color 9f
	echo 检查环境完成
	echo 已安装版本：%pycheckv% 
	set py=python
	pause>nul
	goto ckpip
)
:ckpy3
for /F "tokens=2" %%i in ('python3 --version') do (set pycheckv=%%i)
cls
echo 正在检查环境..
if "%pycheckv%"=="" (
	cls
	color 04
	echo 请检查python环境是否安装
	echo 出错命令：python3 --version
	echo 检查环境完成，以下是命令错误提示：
	@echo.
	for /F "delims=" %%i in ('python3 --version') do (echo %%i %%j)
	@echo.
	echo 请安装python环境后再使用
	echo 任意键退出
	pause>nul
	exit
) else (
	cls
	color 9f
	echo 检查环境完成
	echo 已安装版本：%pycheckv% 
	set py=python3
	pause>nul
)
:ckpip
cls
color 07
echo Python Version: %pycheckv%
echo 检查pip管理器中.
for /F "tokens=2" %%i in ('pip --version') do ( set pipv=%%i)
if "%pipv%"=="" (
	cls
	echo Python Version: %pycheckv%
	echo 请检查pip管理器是否安装，或者下一步尝试自动安装
	echo 出错命令: pip show requests ^| findstr /i "Version:"
	@echo.
	echo 出错详情：
	for /F "delims=" %%i in ('ip --version') do ( echo %%i)
	@echo.
	color 04
	echo 下一步可直接自动安装，如不需要请直接关闭窗口手动安装
	pause>nul
	goto installpip
) else (
	cls
	color 9f
	echo Python Version: %pycheckv%
	echo Pip Version: %pipv%
	echo 环境检查完成
	echo 任意键继续
	pause>nul
	goto ckmod
)
:installpip
cls
color 07
echo Python Version: %pycheckv%
echo 检查安装脚本.
if exist ".\get-pip.py" (
cls 
color a5
echo 存在安装脚本
echo 正在进行安装
for /F "delims=" %%i in ('%py% .\get-pip.py') do ( set st=%%i)
cls
echo %st%
@echo.
echo 如果报错请手动安装，下一步返回检查
pause>nul
goto ckpip
) else (
cls
echo 尝试下载自动安装脚本
for /F "delims=" %%i in ('.\curl.exe -k  https://bootstrap.pypa.io/get-pip.py -o get-pip.py') do ( set st=%%i)
echo %st%
@echo.
echo 下载完成,如有报错请手动安装，下一步返回检查
pause>nul
goto installpip
)
:ckmod
cls
color 07
echo Python Version: %pycheckv%
echo Pip Version: %pipv%
echo 检查依赖中.
for /F "delims=" %%i in ('pip show requests ^| findstr /i "Version:"') do ( set requestsv=%%i)
cls
echo Python Version: %pycheckv%
echo Pip Version: %pipv%
echo 检查依赖中..
if "%requestsv%"=="" (
	cls
	color 04
	echo Python Version: %pycheckv%
	echo Pip Version: %pipv%
	echo 请检查依赖环境，requests模块
	echo 出错命令: pip show requests ^| findstr /i "Version:"
	@echo.
	echo 出错详情：
	for /F "delims=" %%i in ('pip show requests ^| findstr /i "Version:"') do ( echo %%i)
	@echo.
	echo 下一步可直接自动安装，如不需要请直接关闭窗口手动安装
	pause>nul
	cls
	goto installmod
) else (
	cls
	color 9f
	echo Python Version: %pycheckv%
	echo Pip Version: %pipv%
	echo requests %requestsv%
	echo 环境检查完成
	echo 任意键继续
	pause>nul
	goto msxz
)
:installmod
color a5
echo pip模块下载模板
echo 1、清华
echo 2、中科大
echo 3、华工大
echo 4、山工大
echo 5、阿里云
echo 6、豆瓣
set/p jd=请选择节点:
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
					echo 输入有误，请重新输入
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
echo 安装完成
echo %modst%
@echo.
echo 下一步重新检查
pause>nul
goto ckmod
) else (
cls
color 04
echo 安装出错
echo 出错命令：pip install -i %ms% -r .\requirements.txt ^| findstr /i "Successfully"
@echo.
echo 错误详情：
for /F "delims=" %%i in ('pip install -i %ms% -r .\requirements.txt ^| findstr /i "Successfully"') do ( set modst=%%i )
echo %modst%
@echo.
echo 你可以选择其他节点安装，或手动安装，退出直接关闭窗口
pause>nul
cls
goto installmod
)
:msxz
cls
echo                                   选择抽奖模式
echo                            1、粉丝+评论     2、仅评论    
set/p cjms=请输入:
if "%cjms%"=="1" (
	cd /d ./FS
	goto bv
) else if "%cjms%"=="2" (
	goto bv
) else (
	echo 请检查输入
	goto msxz
)
:bv
set/p av1=请输入AV号或BV号: &cls
@echo %av1% | findstr /i "bv">>nul
if %errorlevel%==0 (
echo 转换BV号，请输入转换后的av后的数字
for /F "usebackq" %%j in (`.\nodejs\node.exe .\bvtoav.js %av1%`) do echo %%j
set/p av1=请输入：
cls
goto av
) else (
cls
goto av
)
:av
echo %av1%|findstr "[^0-9]">nul&&( 
echo %av1% AV号或BV号错误,AV号请输入不带"AV"的AV号，BV号需要带"BV"
goto bv
)||( 
echo AV号检查ok
 )
:up
set/p up1=请输入UP主id: &cls
set num=a%up1%
for /l %%a in (0 1 9) do call set num=%%num:%%a=%%
if "%num%"=="a" (
echo %up1% UPID检查 ok
cls
) else (
echo %up1% UPID错误,请输入如https://space.bilibili.com/2417656斜杠后的"2417656"
goto up
)
:win
set/p win1=请输入获奖人数:
echo %win1%|findstr /be "[0-9]*">nul
if %errorlevel% equ 0 (
echo 检查 ok
) else (
echo 请正确输入 no
goto win
)
:srcook
cls
echo                           是否在此输入cookies
echo                            1、是       2、否    
set/p cookyn=请输入:
if "%cookyn%"=="1" (
	start cookies.txt
	echo 复制并保存
	pause 保存完成后点击继续
) else if "%cookyn%"=="2" (
	goto cookies
) else (
	echo 请检查输入
	goto srcook
)
:cookies
echo AVID：%av1% UPID：%up1% 获奖人数：%win1%
echo 正在核对cookie
if exist cookies.txt (
goto cookiesok
) else (
echo 请确认cookies.txt文件是否存在
goto exit
)
:cookiesok
findstr /i /c:"%up1%" "%file%" >nul 2>nul && goto checkok || goto checkno
:checkno
echo upID与cookies不符
echo 请检查cookies或者UPID
goto exit
:checkok
echo 核对完成
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
echo 写入配置完成
python draw.py
pause>nul
:exit
pause>nul