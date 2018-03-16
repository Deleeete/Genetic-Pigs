:start
@echo off
setlocal enabledelayedexpansion
set b=0
set c=0
set d=0
set e=0
set k=512
set z=0
set o=1


set /p name1=        输入亲本猪名1    
set /p name2=        输入亲本猪名2     
set /p name3=        输入子代猪名      



::-----------------------------------------

:GET1
for /f "tokens=1" %%u in (%name1%.txt) do (
  set /a a=!RANDOM!%%2
      IF !a!==%z% (
       echo %%u>>a.txt
   
       )
     IF !a!==%o% (
     echo %%u>>%name3%.txt 
        set /a b=!b!+1
		set /p=%%u<nul
           IF !b!==%k% (
            goto :GET2
           )
     )
 		
    )



:GETMORE1
 for /f "tokens=1" %%d in (a.txt) do (
     set /a r=!RANDOM!%%2
       IF !r!==%z% (
         set /p=*<nul	
        )
       
	   IF !r!==%o% (
		 echo %%d>>%name3%.txt
			set /a b=!b!+1
				 IF !b!==%k% (
				 goto :GET2
                )
        )
    )
   



:GET2
for /f "tokens=1" %%p in (%name2%.txt) do (
 	   set /a r=!RANDOM!%%2
     		IF !r!==%z% (
       		 echo %%p>>b.txt
     		)
    		 
		    IF !r!==%o% (
       		 echo %%p>>%name3%.txt
        		set /a c=!c!+1
				set /p=%%p<nul
             		 	IF !c!==%k% (
               			   goto :END
               			)
      	    )
    )



:GETMORE2
 for /f "tokens=1" %%q in (b.txt) do (
      set /a l=!RANDOM!%%2
             IF !l!==%z% (
              set /p=*<nul
            )
             IF !l!==%o% (
                   echo %%q>>%name3%.txt 
                   set /a c=!c!+1
                      IF !c!==%k% (
                      goto :END
                    )
                )
    )




:END
for %%v in (a.txt) do (
   del %%v
)

for %%w in (b.txt) do (
    del %%w
) 
pause
   
call Gene.bat
goto :start