:: In batch files, there is the direct implementation of for loop only. 
:: There does not exist while and do while loops as in other programming languages.

FOR %%var_name IN list DO example_code
:: 是%%var_name而不是%var_name%

@echo OFF
FOR %%x IN (1 2 3) DO ECHO %%x
PAUSE

:: /L signifies that for loop is used for iterating through a range of values
FOR /L %%var_name IN (Lowerlimit, Increment, Upperlimit) Do some_code

@echo OFF
FOR /L %%y IN (0, 1, 3) DO ECHO %%y
PAUSE

:: 文件遍历的话用的是%而不是%%
FOR %y IN (D:\movie\*) DO @ECHO %y

:: /D 把子文件夹都遍历了
FOR /D %y IN (D:\movie\*) DO @ECHO %y