docker build -t nodeapp:latest .
docker run --name mysql -e MYSQL_ROOT_PASSWORD=**** -d -p 3306:3306 mysql:latest
