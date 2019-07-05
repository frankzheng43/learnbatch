:: Unary Operators

:: ~	Tilde operator
:: !	Boolean NOT operator (negation)
:: –	unary minus operator

:: C:\> cd C:\Users\ICT\MicrosoftEdgeBackups\backups\MicrosoftEdgeBackup20180303
:: is same as
:: C:\> cd C:\Users\ICT\Micros~1\backups\Micros~1

:: 六个连续字符后可以用~
:: 在~后得有1

:: Arithmetic Operators
:: +	Addition operator	        Set /A 5+5 10
:: –	Subtraction operator	    Set /A 10-5 5
:: %	Modulus operator	        Set /A 5%2 1
:: /	Division operator	        Set /A 20/2 10
:: *	Multiplication operator	    Set /A 2*2 4

@echo off
SET /A a = 2
SET /A b = 4
Set /A s = %a% + %b%
echo Sum = %s%
pause

:: 先后顺序 /  *  %  +  -

:: Relational Operators
:: EQU	equal to	                x EQU y     Returns true if x is equal to y
:: NEQ	not equal to	            x NEQ y     Returns true if x is not equal to y
:: LSS	less than	                x LSS y     Returns true if x is less than y
:: LEQ	less than or equal to	    x LEQ y     Returns true if x is less than or equal to y
:: GTR	greater than	            x GTR y     Returns true if x is greater than y
:: GEQ	greater than or equal to	x GEQ y     Returns true if x is greater than or equal to y

@echo off
SET /A x = 3
SET /A y = 4
if %x% EQU %y% echo x is equal to y
if %x% NEQ %y% echo x is not equal to y
if %x% LSS %y% echo x is less than y
if %x% LEQ %y% echo x is less than or equal to y
if %x% GTR %y% echo x is greater than y
if %x% GEQ %y% echo x is greater than or equal to y
pause

:: Logical shift and re directional Operators
:: >>	Logical shift operator	command > filename Append the output to a file
:: >	Re directional operator	command > filename Redirect the output to a file
:: <	Re directional operator	command < filename Redirect text to command

@echo off
echo Testing of redirection operator > test.txt

@echo off
NET USER > test.txt

@echo off
ping google.com >> test.txt

@echo off
SORT < Num.txt
pause

:: Bitwise Operators
:: &	Bitwise and operator
:: |	Bitwise or operator
:: ^	Bitwise exclusive or operator

:: Assignment Operators
:: +=	Set /A x = 4 x += 2 Value of x: 6	2 is added to the value of x and the result is assigned to x
:: -=	Set /A x = 4 x -= 2 Value of x: 2	2 is subtracted from the value of x and the result is assigned to x
:: *=	Set /A x = 4 x *= 2 Value of x: 8	2 is multiplied to the value of x and the result is assigned to x
:: /=	Set /A x = 4 x /= 2 Value of x: 2	The value of x is divided by 2 and the result is assigned to x
:: %=	Set /A x = 4 x %= 2 Value of x: 2	This will find the modulus and result is assigned to x

@echo off
SET /A x = 4
SET /A x += 2
echo x = %x%
SET /A x -= 2
echo x = %x%
SET /A x *= 2
echo x = %x%
SET /A x /= 2
echo x = %x%
SET /A x %= 2
echo x = %x%
pause

:: Remaining Batch File Programming Operators
:: ,	Separator
:: &&	For using Multiple Commands 在一行中运行多个命令
:: ||	For executing one from many commands

:: https://stackoverflow.com/a/28889980
:: && runs the second command on the line when the first command comes back successfully, or with an errorlevel of 0. 
:: The opposite of && is ||, which runs the second command when the first command is unsuccessful, or with an errorlevel of 1.

@echo off
SET /A x = 4 && SET /A x += 2
echo x = %x%
pause