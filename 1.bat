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