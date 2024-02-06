@echo off
:: variables
set backupcmd=xcopy /s /c /d /e /h /i /r /y
SET /P drive= What is the Destination location? (ex. G:\Backkup):
SET /P day= What is the dat3? (ex. 19 Aug 2021):

echo ________________________________________________________________________________________________________________
echo #### Backing up 3D Files...
%backupcmd% "C:\Users\govin\3D Objects" "%drive%\%day%\3D Files"

echo ________________________________________________________________________________________________________________
echo #### Backing up Audio Books...
%backupcmd% "C:\Users\govin\Music\Audio_Books" "%drive%\%day%\Audio_Books"

echo ________________________________________________________________________________________________________________
echo #### Backing up Documents...
%backupcmd% "C:\Users\govin\Documents" "%drive%\%day%\Documents"

echo ________________________________________________________________________________________________________________
echo #### Backing up Games...
%backupcmd% "C:\Users\govin\Music\Games" "%drive%\%day%\Games"

echo ________________________________________________________________________________________________________________
echo #### Backing up Civilization 6 Saves...
%backupcmd% "C:\Users\govin\Documents\My Games\Sid Meier's Civilization VI\Saves\Single" "%drive%\%day%\Civ 6 Saves"

echo ________________________________________________________________________________________________________________
echo #### Backing up Pictures...
%backupcmd% "C:\Users\govin\Pictures" "%drive%\%day%\Pictures"

echo ________________________________________________________________________________________________________________
echo #### Backing up Scripts...
%backupcmd% "C:\Users\govin\Music\Software Development" "%drive%\%day%\Codes"


:: use below syntax to backup other directories...
:: %backupcmd% "...source directory..." "%drive%\...destination dir..."

echo Backup Complete!
@pause
