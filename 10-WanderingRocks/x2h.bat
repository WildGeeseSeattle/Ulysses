@setlocal
@REM set file=wandering-rocks
@REM set file=sirens
@set file=cyclops

@if not "%1"=="" set file=%1

c:\libxml\AltovaXSLT.exe -xml %file%.xml -xsl %file%.xsl -out %file%.html 
