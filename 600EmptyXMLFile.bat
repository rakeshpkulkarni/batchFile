echo off
SET /a j=0
:floop
IF %j%==1 GOTO END
md client%j%
cd client%j%
SET /a i=1
:loop
IF %i%==601 GOTO FEND
echo This is iteration %i%.
ver | date | time >> TestPRNonMatchingFile%i%.xml
SET /a i=%i%+1
GOTO LOOP
:fend
SET /a j=%j%+1
cd ..
GOTO FLOOP
:end
echo That’s it!
pause