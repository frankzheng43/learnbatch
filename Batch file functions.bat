:: Batch File Function Definition
:function_name 
Some_Operational_Code 
EXIT /B 0

:: Batch File Functions Call
:: To call function without parameters 
CALL :function_name
:: To call function with parameters
CALL :function_name param1, param2,...,paramN
:: To call function with return values
CALL :function_name return_value1,return_value2,..,return_valueN

@echo OFF
CALL :basic_function 
EXIT /B %ERRORLEVEL% 
:: the EXIT /B %ERRORLEVEL% is used to separate the function from the main program
:basic_function
SET n=Harry
ECHO My name is %n%
PAUSE
EXIT /B 0

:: In the case of batch file functions with parameters, 
:: a tilde(~) sign is used to access them in the main program along with the positional number of parameter.
:: Similarly, in the case of batch file functions with return values, return values are set 
:: in the function using the set command and the tilde(~) character along with the positional number of the return values.

:: 注意参数在函数中的引用方式
@echo OFF
CALL :param_function 20, 400
EXIT /B %ERRORLEVEL% 
:param_function
ECHO The square of %~1 is %~2
PAUSE
EXIT /B 0

@echo OFF
CALL :retun_value_function ret_val1,ret_val2
ECHO The square root of %ret_val1% is %ret_val2%
PAUSE
EXIT /B %ERRORLEVEL% 
:return_value_function
SET %~1=100
SET %~2=10
EXIT /B 0