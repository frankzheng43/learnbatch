if (condition) dosomething

:: For if..else if
if (condition) (statement1) else (statement2)

SET /A a=2
SET /A b=3
SET name1=Aston
SET name2=Martin

:: Using if statement
IF %a%==2 echo The value of a is 2
IF %name2%==Martin echo Hi this is Martin

:: Using if else statements
IF %a%==%b% (echo Numbers are equal) ELSE (echo Numbers are different)
IF %name1%==%name2% (echo Name is Same) ELSE (echo Name is different)
PAUSE

@echo OFF
::If var is not defined SET var = hello
IF "%var%"=="" (SET var=Hello)
:: This can be done in this way as well
IF NOT DEFINED var (SET var=Hello)

@echo OFF
::EXIST command is used to check for existence
IF EXIST D:\abc.txt ECHO abc.txt found
IF EXIST D:\xyz.txt (ECHO xyz.txt found) ELSE (ECHO xyz.txt not found)
PAUSE