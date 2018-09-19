tibcli
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
tibcli -d login -p %password% -o %org% -r %reg%
if %ERRORLEVEL% NEQ 0 (
    echo error - unable to login to TIBCO Cloud
)
tibcli -d app push
if %ERRORLEVEL% NEQ 0 (
    echo error - unable to push application to TIBCO Cloud
    exit
)
exit 0

