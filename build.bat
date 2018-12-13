:: Configuration
SET TORTOISE_SVN_DIRECTORY=version-1.11.0
SET PATH=%PATH%;%~dp0\nant-0.92\bin;C:\Python26

IF "%TORTOISE_SVN_DIRECTORY%"=="version-1.11.0" (
SET APR_URL=http://mirror.softaculous.com/apache//apr/apr-1.6.5-win32-src.zip
SET APR_UTILS_URL=http://mirror.softaculous.com/apache//apr/apr-util-1.6.1-win32-src.zip
SET SUBVERSION_URL=http://ftp.fau.de/apache/subversion/subversion-1.11.0.zip
SET SERF_URL=https://www.apache.org/dist/serf/serf-1.3.9.zip
)

:: Preparation
IF NOT EXIST %TORTOISE_SVN_DIRECTORY%\ (
svn export http://svn.osdn.net/svnroot/tortoisesvn/tags/%TORTOISE_SVN_DIRECTORY%/ %TORTOISE_SVN_DIRECTORY%
wget %APR_URL%
wget %APR_UTILS_URL%
wget %SUBVERSION_URL%
wget %SERF_URL%
)

:: Execution
call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Auxiliary\Build\vcvars32.bat"
NAnt.exe -buildfile:%~dp0\build.xml -D:TortoiseSvnDirectory=%TORTOISE_SVN_DIRECTORY%