set app=%1
shift
cd ..\%app%.parent
mvn clean package
