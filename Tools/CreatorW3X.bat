set OutPlaing="C:\Users\Bergi\Documents\Warcraft III\Maps\PeonSimulator\PeonRPG.w3x"
set curdir=%~dp0%Empty.w3x%
set empdir=%~dp0%Empty.w3x%%Empty.w3x
set mpq=%curdir%%MPQEditor.exe
xcopy %empdir% %OutPlaing%* /Y

set w3xdir=%curdir:~0,-6%%map.w3x\
cd %w3xdir%
dir /b>%curdir%list.txt

for /f "usebackq tokens=*" %%a in ("%curdir%list.txt") do (%mpq% add %OutPlaing% %w3xdir%%%~a "%%~a")

rem %mpq% add %OutPlaing% %w3xdir%%%~a "%%~a"

