:: http://www.trytoprogram.com/batch-file-variables/

:: Batch file variables – Syntax
SET varibale_name=variable_value
:: for assigning numeric value
SET /A variable_name=nameric_value

:: How to verify if batch variables are defined already?
IF DEFINED MyVar (ECHO MyVar IS defined) ELSE (ECHO MyVar is NOT defined)

:: Batch file variables – Example
@echo OFF
SET name=Apple :: 等号两边不能加空格
ECHO %name%

:: For numberic variable
SET a=2
ECHO %a%
PAUSE

:: Variable scope in Batch files: Global variables and Local variables
@echo oFF
SET var1=var1 is global variable
SETLOCAL
SET var2=var2 is a local variable

ECHO %var1%
ENDLOCAL
ECHO %var2%
PAUSE

:: 在SETLOCAL和ENDLOCAL之外引用var2，是不行的。