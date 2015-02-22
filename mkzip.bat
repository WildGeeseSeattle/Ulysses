setlocal
set ZipFile=..\bloomsday.zip 
del /q %ZipFile%
zip %ZipFile% *.vim *.bat *.xml *.xsl *.asp
