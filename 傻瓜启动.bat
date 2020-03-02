@echo off
title B站抽奖启动脚本 - 原作者Magician-T 启动脚本作者JHPatchouli
rem set av=AVID
rem set up=UPID
rem set win=WINRS
set file=cookies.txt
@echo. -----------------------------------------------------------------
@echo.                          抽奖启动脚本                                                            
@echo.      抽奖脚本作者Magician-T   https://github.com/Magician-T
@echo.      启动脚本作者JHPatchouli  https://github.com/JHPatchouli
@echo.                    请确保已正常安装python环境
@echo.                       并会手动获取cookies
@echo.            依赖环境requirements可在下方安装（如果需要）
@echo.                  千万不要管理员启动！！！！！
@echo. -----------------------------------------------------------------
:install
echo                              是否安装依赖
echo                            1、是       2、否    
set/p install=请输入:
if "%install%"=="1" (
	pip install -r requirements
) else if "%install%"=="2" (
	goto msxz
) else (
	echo 请检查输入
	goto install
)
:msxz
cls
echo                                   选择抽奖模式
echo                            1、粉丝+评论     2、仅评论    
set/p cjms=请输入:
if "%cjms%"=="1" (
	cd /d ./FS
) else if "%cjms%"=="2" (
	goto av
) else (
	echo 请检查输入
	goto msxz
)
:av
set/p av1=请输入AV号:
echo %av1%|findstr "^[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]$">nul
if %errorlevel% equ 0 (
echo AV号检查 ok
) else (
echo 请正确输入 no
goto av
)
:up
set/p up1=请输入up主id:
echo %up1%|findstr "^[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]$">nul
if %errorlevel% equ 0 (
echo UPID检查 ok
) else (
echo 请正确输入 no
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
:exit
pause