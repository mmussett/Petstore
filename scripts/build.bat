set app=%1
set ws=%2
shift
shift
cd %ws%\%app%.parent
mvn clean package
