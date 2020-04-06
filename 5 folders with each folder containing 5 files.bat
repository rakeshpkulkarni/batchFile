echo off
SET /a j=0
:floop
IF %j%==5 GOTO END
md client%j%
cd client%j%
SET /a i=0
:loop
IF %i%==5 GOTO FEND
echo This is iteration %i%.
ver | date | time >> file%i%.txt
SET /a i=%i%+1
GOTO LOOP
:fend
SET /a j=%j%+1
cd ..
GOTO FLOOP
:end
echo That’s it!
pause