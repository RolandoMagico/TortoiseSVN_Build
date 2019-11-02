# TortoiseSVN_Build
Scripts for automated build of Tortoise SVN including Subversion and its JavaHL libraries

## Usage
### General
- Use the branch matching your Tortoise SVN version:
  - [Version 1.8.12](https://github.com/ContextQuickie/TortoiseSVN_Build/tree/version-1.8.12)
  - [Version 1.9.7](https://github.com/ContextQuickie/TortoiseSVN_Build/tree/version-1.9.7)
  - [Version 1.9.8](https://github.com/ContextQuickie/TortoiseSVN_Build/tree/version-1.9.8)
  - [Version 1.10.1](https://github.com/ContextQuickie/TortoiseSVN_Build/tree/version-1.10.1)
  - [Version 1.10.2](https://github.com/ContextQuickie/TortoiseSVN_Build/tree/version-1.10.2)
  - [Version 1.10.3](https://github.com/ContextQuickie/TortoiseSVN_Build/tree/version-1.10.3)
  - [Version 1.11.0](https://github.com/ContextQuickie/TortoiseSVN_Build/tree/version-1.11.0)
  - [Version 1.11.1](https://github.com/ContextQuickie/TortoiseSVN_Build/tree/version-1.11.1)
  - [Version 1.12.0](https://github.com/ContextQuickie/TortoiseSVN_Build/tree/version-1.12.0)
  - [Version 1.12.1](https://github.com/ContextQuickie/TortoiseSVN_Build/tree/version-1.12.1)
  - [Version 1.12.2](https://github.com/ContextQuickie/TortoiseSVN_Build/tree/version-1.12.2)
  - [Version 1.13.0](https://github.com/ContextQuickie/TortoiseSVN_Build/tree/version-1.13.0)
  - [Version 1.13.1](https://github.com/ContextQuickie/TortoiseSVN_Build/tree/version-1.13.1)

- Check the following settings before running the build:
  - Paths in the Configuration section of build.bat
  - Settings in the configuration target of build.xml

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

## Automatically fetched packages
The following packages will be retrieved during execution of the script:
- NAnt 0.9.2

This project includes the following tools:
- wget from http://gnuwin32.sourceforge.net/packages/wget.htm
