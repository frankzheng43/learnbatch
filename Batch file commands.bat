:: https://ss64.com/nt/
:: http://www.trytoprogram.com/batch-file-commands
::寻求帮助
help 
/?

:: ASSOC 显示后缀对应的文件类型
@echo OFF
ASSOC | find ".txt"
pause

:: ATTRIB 显示和更改文件的属性
:: A means Archived, R means Read only and AH means Hidden file.
@echo OFF
:: To display attribute of note.txt
ATTRIB note.txt
:: To make it read only by adding 'r'
ATTRIB +r note.txt
ATTRIB note.txt
:: To make it hidden by adding 'ah'
ATTRIB +ah note.txt
ATTRIB note.txt
:: To remove attribute read only
ATTRIB -r note.txt
ATTRIB note.txt

:: CD navigation
@echo OFF
:: CD without any parameters displays the current working directory
CD
:: Changing to the parent directory one level up
CD..
CD
:: Changing the path to Programs
CD\Programs
CD
pause

:: CHKDSK 检查磁盘错误
@echo OFF
CHKDSK

:: CHOICE 选择选项
@echo OFF
ECHO You want coffee?
ECHO Enter Y for yes
ECHO Enter N for no
CHOICE /c YN /m "Yes or No"

:: CLS 清空屏幕
@echo OFF
CLS
pause

::CMD 打开新的CMD窗口
@echo OFF
CMD

:: COMP 比较两个文件的大小
@echo OFF
COMP C:\abc.txt C:\xyz.txt

:: CONVERT FAT to NTFS
@echo OFF
CONVERT D:\

:: COPY 复制文件
@echo OFF
:: For copying from one drive to another -xyz.txt from D:\ to E:\
COPY D:\xyz.txt E:\
:: If file has whitepace between name - use double quote
COPY "D:\my file.txt" E:\

:: DATE 显示时间
@echo OFF
echo %DATE%

:: DEL 删除文件
@echo OFF
:: To delete a single file xyz.txt
DEL D:\xyz.txt
:: To delete all the files of .txt extensions and ask for confirmation before deleting
DEL /p/s D:\*.txt
:: Remove /p to delete without confirmation
DEL /s D:\*.txt

:: DIR 列示文件
@echo OFF
:: To list all the contents  of current directory
DIR
:: To list all the hidden files of working directory
DIR /ah
:: To list all files with .php extensions
DIR *.php

:: DISKPART 磁盘管理？
@echo OFF
DISKPART


:: DRIVERQUERY 显示所有驱动
@echo OFF
DRIVERQUERY

:: ECHO 显示
@echo OFF
echo Hello

:: EXIT 退出
@echo OFF
echo HI 
EXIT

:: EXPAND 解压cab文件
@echo OFF
EXPAND xyz.cab

:: FC 比较文件内容的差别
@echo OFF
FC D:\a.txt D:\b.txt

:: FIND 文本查找
@echo OFF
FIND "find me" example.txt

:: FORMAT 格式化磁盘
@echo OFF
FORMAT E:\

:: IPCONFIG 显示IP设置
@echo OFF
IPCONFIG

:: LABEL 显示磁盘的标签
@echo OFF
LABEL

:: MD 新建文件夹
@echo OFF
MD abc

:: MORE 展示文件的内容
@echo OFF
MORE D:\example.txt

:: MOVE 移动文件
@echo OFF
:: To move xyz.txt from dir1 to dir2
MOVE C:\dir1\xyz.txt C:\dir2
:: To rename directory dir1 to dir2
MOVE C:\Program\dir1 C:\Program\dir2
:: To move directory dir1 from D:\ to D:\music
MOVE D:\dir1 D:\music\

:: NET 网络服务
@echo OFF
NET users

:: PATH 系统路径
@echo OFF
ECHO %PATH%

:: PAUSE 暂停
@echo OFF
ECHO hi
pause

:: PING
@echo OFF
PING 127.0.1.1

:: RD 清除空文件夹
@echo OFF
:: To remove directory xyz from C:\>
RD C:\xyz
:: To remove multiple directories from working location
RD dir1 dir2

:: REM 备注
@echo OFF
REM This is a comment

:: REN 重命名
@echo OFF
:: To rename x.php to y.php
REN C:\x.php C:\y.php

:: SET 显示环境变量
@echo OFF
SET

:: SHUTDOWN 关机
@echo OFF
SHUTDOWN

:: SORT 排序文件里的内容
@echo OFF
SORT D:\example.txt

:: START
@echo OFF
START PAINT.exe 

:: SYSTEMINFO 系统信息
@echo OFF
SYSTEMINFO

:: TASKKILL 终止任务
@echo OFF
TASKKILL /im notepad.exe

:: TASKLIST 列出任务
@echo OFF
TASKLIST

:: TIME 显示时间
@echo OFF
ECHO %TIME%

:: TITLE 给窗口取名
@echo OFF
TITLE New Console

:: TREE 树状图
@echo OFF
TREE D:\movies

:: TYPE 打印在屏幕上
@echo OFF
TYPE C:\notes.txt
pause

:: VER 版本
@echo OFF
VER
pause

:: VOL VOLUME LABEL
@echo OFF
VOL

:: XCOPY 复制整个文件夹
@echo OFF
XCOPY D:\test.txt to E:\
