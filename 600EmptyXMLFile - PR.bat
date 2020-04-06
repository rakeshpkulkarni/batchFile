echo off
SET /a j=0
:floop
IF %j%==1 GOTO END
mkdir \\agpjaxsrvp1fs1\ftp_usr\PNERakeshFWSecond3%j%
SET /a i=1
:loop
IF %i%==301 GOTO FEND
echo This is iteration %i%.
ver | date | time >> \\agpjaxsrvp1fs1\ftp_usr\PNERakeshFWSecond30\TestPRNonMatchingFile%i%.xml
SET /a i=%i%+1
GOTO LOOP
:fend
SET /a j=%j%+1
cd ..
GOTO FLOOP
:end
echo That’s it!
pause