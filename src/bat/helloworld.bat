@ECHO Off
ECHO.
ECHO Hello World (.bat)
ECHO.

SET datefmt=%date:~-4%-%date:~3,2%-%date:~0,2%
SET timefmt=%time:~0,2%:%time:~3,2%:%time:~6,2%
ECHO Current directory is 
CD
ECHO.
ECHO.
ECHO Current DateTime is %datefmt% %timefmt%
ECHO Current User is %USERNAME%
ECHO Command line arguments are %1 %2 %3 %4 %5 %6 %7 %8 
ECHO.
