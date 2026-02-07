@echo off

ECHO HELLO WORLD
echo "hello"
echo 12345
echo hello 12345

vol

ver

set var=rahul
%var%
echo %var%

set var1=dir
%var1%
echo %var1%

rem learning batch scripting
:: learning batch scripting

REM Environmental variable
set
echo %ProgramFiles%
%ComSpec%


REM String concatenation
echo %var% %var1%
set statement1=this is 1st statement
echo %statement1% This is 2nd statement

REM Arithmetic operations
set /A sum=10*10
echo the sum is %sum%

REM Input from USER
echo Enter 1st number
set /P no1=
echo Enter 2nd number
set /P no2=
set /A output=%no1%+%no2%
echo the sum is %output%

REM Functions
REM function example 1
goto :function3
:function1
echo this is the 1st Function
:function2
echo this is the 2nd function
REM Exit /B 0 - exit only from function1 because function1 is called.(end this CALLED function and return. They only end the called function and return to the main flow.)
exit /B 0
:function3
echo this is 3rd function

call :function1

REM function example 2
goto :function6
:function4
echo this is the 4th Function
:function5
echo this is the 5th function
REM goto :eof - exit only from function4 because function4 is called(end this CALLED function and return)
goto :eof
:eof
:function6
echo this is 6th function

call :function4

REM function example 3
goto :function9
:function7
echo this is the 7th Function
:function8
echo this is the 8th function
timeout 15
exit
:function9
echo this is 9th function

call :function7

REM Function argument
goto :main
:name
echo Hi %~1
goto :eof

:main
set /P name=your name is 
call :name %name%

REM setlocal
setlocal
:age
set /p age=enter your age 
echo Hi youngMan!
endlocal

REM IF statement
set /p age=enter your age 
if %age% geq 18 (Echo you are eligible to vote)

set /p path=enter the path 
if %path% equ D:\Automation (
cd %path%
dir)

REM ELSE statement
set /p age=enter your age 
if %age% geq 18 (echo you are eligible to vote) else (echo you are not eligible)

REM FOR LOOP
for %%i in (1 2 3 4 5) do (
	echo %%i
	)

for /L %%f in (0,3,10) do (
	echo %%f)
	
for /R %%f in (*.bat) do (
	echo %%f
	)

for /d %%g in (D:\*) do (
	echo %%g
	)
	
REM errorlevel
:: 1. Try to rename a file that definitely isn't there
ren "ThisFileDoesNotExist.txt" "NewName.txt"

:: 2. Check if the previous command failed
if %errorlevel% neq 0 (
    echo [ERROR] The file was not found or could not be renamed.
    echo The specific Error Level is: %errorlevel%
) else (
    echo [SUCCESS] File renamed successfully!
)

REM LOG file
ver >> batchscript1.txt
dir >> batchscript1.txt