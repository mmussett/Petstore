set password=%1
set org=%2
set reg=%3
set app=%4
set ws=%5
shift
shift
shift
shift
shift
cd %ws%\%app%\target
copy %ws%\%app%.parent\manifest.json .
c:\opt\tibcli\tibcli login -p %password% -o %org% -r %reg%
if errorlevel gtr 0 exit
c:\opt\tibcli\tibcli app push
if errorlevel gtr 0 exit
exit 0

