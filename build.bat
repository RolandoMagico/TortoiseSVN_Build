::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Configuration
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Tortoise SVN version (must equal a tag name from http://svn.osdn.net/svnroot/tortoisesvn/tags/)
SET TortoiseSvnVersion=version-1.12.0

:: NAnt version
SET NANT_VERSION=0.92

:: Path to NAnt
SET PATH=%PATH%;%~dp0\%TortoiseSvnVersion%\nant-0.92\bin

:: Path to python 2.6 (x86)
SET PATH=%PATH%;C:\Python26

:: Path to wget
SET PATH=%PATH%;%~dp0\wget-1.11.4-1\bin

:: Path to 7-zip
SET SEVEN_ZIP="C:\Program Files\7-Zip\7z.exe"

:: Path to JDK
SET JDK_PATH="C:\Program Files\Java\jdk1.8.0_191"


::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Preparation
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
IF NOT EXIST %TortoiseSvnVersion%\nant-%NANT_VERSION%\ (
md %TortoiseSvnVersion%
wget http://netcologne.dl.sourceforge.net/project/nant/nant/%NANT_VERSION%/nant-%NANT_VERSION%-bin.zip --output-document=%TortoiseSvnVersion%\nant-%NANT_VERSION%-bin.zip
%SEVEN_ZIP% x %TortoiseSvnVersion%\nant-%NANT_VERSION%-bin.zip -o%TortoiseSvnVersion%
)

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Execution
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Auxiliary\Build\vcvars32.bat" 8.1
NAnt.exe -buildfile:%~dp0\build.xml -logfile:build32.log -D:arch=x86 -D:TortoiseSvnVersion=%TortoiseSvnVersion% -D:JdkDirectory=%JDK_PATH% || GOTO END

call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Auxiliary\Build\vcvars64.bat" 8.1
NAnt.exe -buildfile:%~dp0\build.xml -logfile:build64.log -D:arch=x64 -D:TortoiseSvnVersion=%TortoiseSvnVersion% -D:JdkDirectory=%JDK_PATH% || GOTO END

:END
pause