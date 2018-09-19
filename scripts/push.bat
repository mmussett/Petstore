set password=%1
set org=%2
set reg=%3
set app=%4
shift
shift
shift
cd ..\%app%\target
copy ..\..\%app%.parent\manifest.json .
tibcli login -p %password% -o %org% -r %reg%
tibcli app push
