@echo off
setlocal ENABLEDELAYEDEXPANSION
title 猪崽生育程序
@set b=0
 set t=1024
:NAME
 @set /p name=       请为猪崽起名，并回车：   
echo --------------------------------------------------
echo -----------------正在生成性别...------------------
echo  ... 
echo  ...
echo  ...
echo  ...
echo  ...
:SEX
 set /a c=%RANDOM%%%2
 IF !c!==0 (
set c=X
set s=母
)
 IF !c!==1 (
set c=Y
set s=公
)
@echo  X !c!>%name%.txt
echo --------------------------------------------------
echo --------------------完成！-----------------------
echo ----------------性别：%s%猪--------------------
echo  ...
echo  ...
echo  ... 
echo  ...
pause

echo --------------------------------------------------
echo ----------------正在生成基因...--------------------
echo ---------这可能需要几秒钟时间，请稍候-----------
:RANDOM
 @set /a a="%RANDOM%%%4"
 @echo !a!>>%name%.txt
 @set /a b=!b!+1
 @set /p=!a!<nul
 @goto :JUDGE
 
 

:JUDGE
 @if not !b! LSS %t% (
 goto :end
 )
 goto :RANDOM

:END
echo -------------------------------------------------
echo --------------------完成！----------------------
echo --------请于本目录查收您的%name%猪崽。------
echo --------更多详细信息请使用基因解析工具查看-----
@pause 
