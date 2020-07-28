setlocal enableextensions

REM set variables wget path needs to be explicitly set
set linktowget=wget.exe
set name=%date:~3,2%%date:~0,2%
set number=1145
set /a today=%number%+1
REM make a folder with todays date
mkdir 20%name%

REM grab links special -xkcd
%linktowget% -r -l 1 -A png -nd -H -P xkcd/ http://xkcd.com/
del xkcd\apple-touch-icon-precomposed.png
del xkcd\robots.txt*
del xkcd\terrible_small_logo.png
del xkcd\xkcd_store_rip_43.png
ren xkcd\*.* xkcd20%name%.*
move xkcd\* 20%name%

REM grab links special -andy
%linktowget% -r -l 1 -A gif -nd -H -P andy/ http://www.arcamax.com/thefunnies/andycapp/
del andy\art-creators.gif
del andy\robots.txt*
del andy\pgp120x600.gif
ren andy\*.* AndyCapp20%name%.*
move andy\* 20%name%

REM grab links special -WizardofId
%linktowget% -r -l 1 -A gif -nd -H -P wizardofId/ http://www.arcamax.com/thefunnies/wizardofid/
del wizardofId\art-creators.gif
del wizardofId\robots.txt*
del wizardofId\pgp120x600.gif
ren wizardofId\*.* WizardofId20%name%.*
move wizardofId\* 20%name%

REM grab links special -Hagar the horrible
%linktowget% -r -l 1 -A gif -nd -H -P Hagarthehorrible/ http://www.arcamax.com/thefunnies/hagarthehorrible/
del Hagarthehorrible\art-creators.gif
del Hagarthehorrible\robots.txt*
del Hagarthehorrible\pgp120x600.gif
ren Hagarthehorrible\*.* Hagarthehorrible20%name%.*
move Hagarthehorrible\* 20%name%

REM grab links special -Cyanide and Happiness
%linktowget% -r -l 1 -A png -nd -H -P xkcd/ www.explosm.net/comics/
del CyanideAndHappiness\robots.txt*
del share-code.png
ren CyanideAndHappiness\*.* CyanideAndHappiness20%name%.*
move CyanideAndHappiness\* 20%name%

REM grab links normal
%linktowget% http://synd.imgsrv.uclick.com/comics/pe/2020/pe20%name%.gif
%linktowget% http://synd.imgsrv.uclick.com/comics/ga/2020/ga20%name%.gif
%linktowget% http://synd.imgsrv.uclick.com/comics/ad/2020/ad20%name%.gif
%linktowget% http://synd.imgsrv.uclick.com/comics/tas/2020/tas20%name%.gif
%linktowget% http://synd.imgsrv.uclick.com/comics/bn/2020/bn20%name%.gif
%linktowget% http://synd.imgsrv.uclick.com/comics/ba/2020/ba20%name%.gif
%linktowget% http://synd.imgsrv.uclick.com/comics/td/2020/td20%name%.gif
%linktowget% http://synd.imgsrv.uclick.com/comics/ob/2020/ob20%name%.gif
%linktowget% http://synd.imgsrv.uclick.com/comics/nq/2020/nq20%name%.gif
%linktowget% http://synd.imgsrv.uclick.com/comics/tmrkt/2020/tmrkt20%name%.gif
%linktowget% http://synd.imgsrv.uclick.com/comics/tm/2020/tm20%name%.gif
REM renaming files to proper names

ren ad20%name%.gif Adam-20%name%.gif
ren pe20%name%.gif Peanuts-20%name%.gif
ren ga20%name%.gif Garfield-20%name%.gif
ren tas20%name%.gif Argyle-Sweater-20%name%.gif
ren bn20%name%.gif Big-Nate-20%name%.gif
ren ba20%name%.gif Baldo-20%name%.gif
ren td20%name%.gif Tom-the-Dancing-Bug-20%name%.gif
ren ob20%name%.gif OverBoard-20%name%.gif
ren nq20%name%.gif Non-Sequitur-20%name%.gif
ren tmrkt20%name%.gif Brewster-Rockit-20%name%.gif
ren tm20%name%.gif Tank-McNamara-20%name%.gif

REM move files to folder
move *.gif 20%name%
