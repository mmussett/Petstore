cd ..\petstore_sample_service_application\target
copy ..\..\petstore_sample_service_application.parent\manifest.json .
tibcli login -p T1bc0.Sarah72 -o "EMEA North PreSales" -r "eu-west-1"
tibcli app push
