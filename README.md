# TortoiseSVN_Build
Automated build of Tortoise SVN including Subversion and its JavaHL libraries

This project includes the following tools:
- wget from http://gnuwin32.sourceforge.net/packages/wget.htm

The following tools must be installed manually according to TortoiseSVN's build.txt
- Java runtime
- Python 2.6 x86 including libxml2 python bindings
- Perl
- Wix 3.10

The following packages will be retrieved during execution of the script:
- NAnt 0.9.2

The following dependencies are retrieved during exectuion (currently only supported for Tortoise SVN version 1.11.0):
- APR
- APR utils
- Subversion
- SERF
