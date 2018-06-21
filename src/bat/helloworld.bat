@Echo Off
Echo.
Echo Hello World (.bat) - %1
Echo.
Set datefmt=%date:~-4%-%date:~3,2%-%date:~0,2%
Set timefmt=%time:~0,2%:%time:~3,2%:%time:~6,2%
Echo Current directory is 
Cd
Echo.
Echo Current DateTime is %datefmt% %timefmt%
Echo.
Echo %datefmt% ; %timefmt% >> helloworld.log