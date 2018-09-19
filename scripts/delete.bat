set password=%1
set org=%2
set reg=%3
set app=%4
shift
shift
shift
shift
tibcli login -p %password% -o %org% -r %reg%
tibcli app delete --force petstore_sample_service_application
