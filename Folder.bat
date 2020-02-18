@echo off

start

:start
echo Would you like to add or delete a folder? 
echo 1 add
echo 2 delete
set /p choice=enter the number of your choice 
if %choice%==1 goto howMany
if %choice%==2 goto deleteFolder

:howMany
cls
set /p YN=would you like to see a list of folders in the directory? (y/n)
if %YN%==y dir
set /p folders=How many folders would you like to create? 
set /A numfolders=%folders%-1
If %folders% NEQ 0 goto create2
If %folders% EQU 0 goto end


:create2
cls
set /p folderName=enter the name of the folder you want to create: 
md %folderName%
set /A numfolders=%folders%-1
if %numfolders% NEQ 0 goto create2
if %numfolders% EQU 0 goto end
set /p YN=would you like to create another folder (y/n): 
if %YN%==y goto create2
if %YN%==n goto end


:deleteFolder
cls
set /p YN=would you like to see a list of folders that can be deleted? (y/n) 
if %YN%==y dir
set /p folderName=enter the name of the folder you want to delete 
rmdir %folderName%
set /p YN=would you like to delete another folder (y/n) 
if %YN%==y goto delete
if %YN%==n goto end



:End
cls
echo have a good day
pause
exit 



