# TortoiseSVN_Build
Scripts for automated build of Tortoise SVN including Subversion and its JavaHL libraries

## Overview
The following Tortoise SVN versions are supported:
- 1.11.0

## Usage
Check the path settings for Python, and 7-zip in build.bat before running the build.

The following tools must be installed manually according to TortoiseSVN's build.txt:
- Java runtime
- Python 2.6 x86 including libxml2 python bindings
- Perl
- Wix 3.10
- Windows SDK 8.1 (I had to install it together with the Windows Universal CRT SDK in the Visual Studio 2017 Installer according to https://stackoverflow.com/a/52118479). Additionally "Visual C++ MFC for x86 and x64" must be installed (according to [this MSDN entry](https://social.msdn.microsoft.com/Forums/en-US/6b69607a-8a84-4e46-b3c8-5cd832bfb9c7/vs-2017-rc-file-error-rc1015-cannot-open-include-file-afxresh?forum=vcgeneral) for details).

The following tools must be installed manually:
- 7zip
- SVN command line client

## Known problems
During checking out the Tortoise SVN tag, the subversion command line client sometimes reports an error:
```
E020014 internal error
```
I don't know the reason for this problem. Workarounds: Perform a SVN Cleanup and try again.

## Automatically fetched packages
The following packages will be retrieved during execution of the script:
- NAnt 0.9.2

The following dependencies are retrieved during exectuion:
- APR
- APR utils
- Subversion
- SERF

This project includes the following tools:
- wget from http://gnuwin32.sourceforge.net/packages/wget.htm
