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
tibcli login -p %password% -o %org% -r %reg%
tibcli app push
