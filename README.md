# TortoiseSVN_Build
Scripts for automated build of Tortoise SVN including Subversion and its JavaHL libraries

## Usage
### General
Check the following settings before running the build:
- Paths in the Configuration section of build.bat

The following tools must be installed manually according to TortoiseSVN's build.txt:
- Java runtime
- Python 2.6 x86 including libxml2 python bindings
- Perl
- Wix 3.10
- Visual Studio

The following tools must be installed manually:
- 7zip
- SVN command line client
- Java development kit

### Building Tortoise SVN 1.8.12
* Visual Studio 2015 (e.g. Community Edition) must be installed. The Express edition of Visual Studio doesn't work because of missing ATL header files.
* Some patches are included to be able to build the JavaHL libraries. They will be applied automatically during the build.
* The external repository for serf (http://serf.googlecode.com/svn/tags/1.3.8) doesn't exist anymore. Therefore, an checkout without externals is done first, afterwards the serf repository URL is changed to https://svn.apache.org/repos/asf/serf/tags/1.3.8. Afterwards all externals will be updated.

## Known problems
During checking out the Tortoise SVN tag, the subversion command line client sometimes reports an error:
```
E020014 internal error
```
I don't know the reason for this problem. Workarounds: Perform a SVN Cleanup and try again.

## Automatically fetched packages
The following packages will be retrieved during execution of the script:
- NAnt 0.9.2

This project includes the following tools:
- wget from http://gnuwin32.sourceforge.net/packages/wget.htm
