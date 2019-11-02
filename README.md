# TortoiseSVN_Build
Scripts for automated build of Tortoise SVN including Subversion and its JavaHL libraries

## Usage
### General
Check the following settings before running the build:
- Paths in the Configuration section of build.bat
- Settings in the configuration target of build.xml

The following tools must be installed manually according to TortoiseSVN's build.txt:
- Java runtime
- Python 2.6 x86 including libxml2 python bindings
- Perl
- Wix 3.10

The following tools must be installed manually:
- 7zip
- SVN command line client
- Java development kit

To start the build, run build.bat of the package in the Developer Command Prompt of Visual Studio.

### Building Tortoise SVN
* Visual Studio 2019 (e.g. Community Edition) including MFC and ATL build tools must be installed. The export of the used Visual Studio Installer configuration is available in the repository (.vsconfig).

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
- wget from https://eternallybored.org/misc/wget/
