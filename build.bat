::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Configuration
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Tortoise SVN version (must equal a tag name from http://svn.osdn.net/svnroot/tortoisesvn/tags/)
SET TortoiseSvnVersion=version-1.14.0

:: NAnt version
SET NANT_VERSION=0.92

:: Path to NAnt
SET PATH=%PATH%;%~dp0\%TortoiseSvnVersion%\nant-0.92\bin

:: Path to python 2.6 (x86)
SET PATH=%PATH%;C:\Python26

:: Path to wget
SET PATH=%PATH%;%~dp0\wget-1.20.3-win32

:: Path to 7-zip
SET SEVEN_ZIP="C:\Program Files\7-Zip\7z.exe"

:: Path to JDK
SET JDK_PATH="C:\Projects\TortoiseSVN_Build\openjdk-13.0.1_windows-x64_bin"

:: Build architecutre, must be x86 or x64
SET TSVN_ARCHITECTURE=%1


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
call "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Auxiliary\Build\vcvarsall.bat" %TSVN_ARCHITECTURE% 10
NAnt.exe -buildfile:%~dp0\build.xml -logfile:build32.log -D:arch=%TSVN_ARCHITECTURE% -D:TortoiseSvnVersion=%TortoiseSvnVersion% -D:JdkDirectory=%JDK_PATH% || GOTO END

:END
pause