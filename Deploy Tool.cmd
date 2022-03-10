@echo off
title DEPLOY TOOL v1.0

:Init
cls
echo ================================================================================
echo  DEPLOY TOOL
echo --------------------------------------------------------------------------------
echo  Author: Nguyen Hoang Anh Khoa - VNDC
echo  Version: 1.0
echo  Created at: 10/03/2022 02:06PM
echo ================================================================================
echo:
echo  Please type your option:
echo:
echo  1. Update project
echo  2. Deploy a new one of project
echo  Any other key to Exit
echo:
set option=""
set srcpath=""
set dstpath=""
set modulename=""
set /p option="Your option? (integer) "
echo:
if %option% EQU 1 (
	echo UPDATE PROJECT
	goto PathSetting
)
if %option% EQU 2 (
	echo DEPLOY A NEW ONE OF PROJECT
	goto PathSetting
)
goto End

:PathSetting
echo:
set /p srcpath="Source path? (string, default: D:\SourceCode\MVCWebProject) "
if %srcpath% EQU "" set srcpath=D:\SourceCode\MVCWebProject
echo Source path: %srcpath%
echo:
set /p dstpath="Destination path? (string, default: C:\Production\MVCWebProduct) "
if %dstpath% EQU "" set dstpath=C:\Production\MVCWebProduct
echo Destination path: %dstpath%
echo:
if %option% EQU 1 goto UpdateProject
if %option% EQU 2 goto DeployNewOneOfProject
:UpdateModule
	xcopy /R /D /I /Y /EXCLUDE:CRM_Exclude_Update.txt "%srcpath%\bin" "%dstpath%\bin"
	xcopy /R /D /I /S /Y "%srcpath%\Views" "%dstpath%\Views"
	pause>nul
	goto Init

:DeployNewOneOfProject
	xcopy /R /D /I /Y /EXCLUDE:CRM_Exclude_Deploy.txt "%srcpath%" "%dstpath%"
  xcopy /R /D /I /S /Y "%srcpath%\bin" "%dstpath%\bin"
	xcopy /R /D /I /S /Y "%srcpath%\Views" "%dstpath%\Views"
	xcopy /R /D /I /S /Y "%srcpath%\Lib" "%dstpath%\Lib"
	pause>nul
	goto Init

:End
exit /b

