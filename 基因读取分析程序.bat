:START
@echo oFF
title �����������
setlocal enabledelayedexpansion
set c0=0
set c1=0
set c2=0
set c3=0
set A=0
set B=1
set C=2
set D=3
set E=0
set X=X
set Y=Y




set /p name=  �����������س�:     

echo ----------------����������...-------------------
echo ------------------------------------------------     
echo ------------------------------------------------

:COUNT
 for /f "tokens=1" %%t in (%name%.txt) do (
        set /a E=!E!+1
		if %%t==%A% (set /a c0=!c0!+1)
		if %%t==%B% (set /a c1=!c1!+1)
		if %%t==%C% (set /a c2=!c2!+1)
		if %%t==%D% (set /a c3=!c3!+1)
	)

:SEX
 for /f "tokens=2" %%u in (%name%.txt) do (
   if %%u==%X% (echo �Ա�FEMALE
set s=���� )
   if %%u==%Y% (echo �Ա�MALE 
set s=����)
)

:SPECIES
echo                 0���������%c0%
echo                 1���������%c1%
echo                 2���������%c2%
echo                 3���������%c3%
echo                  %E%

%0
pause