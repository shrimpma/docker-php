The Docker setup for PHP applications using PHP7-FPM and Nginx described in http://geekyplatypus.com/dockerise-your-php-application-with-nginx-and-php7-fpm/

## Instructions
1. Checkout the repository
* ~~Create a record in your `hosts` file to point `php-docker.local` to your Docker environment~~
* Run `docker-compose up`
* ~~Navigate to php-docker.local:8080 in a browser~~
* Navigate to localhost:8080

That's it! You have your local PHP setup using Docker

*Example of activated PHP logging* - https://github.com/mikechernev/dockerised-php/tree/feature/log-to-stdout


## create mysql user in docker container 

CREATE USER 'magento'@'%' IDENTIFIED BY '123456';
GRANT ALL ON *.* TO 'magento'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;

- 代码中连接数据库 使用 host = app_mysql

## container 常用命令

apt-get update
apt-get install iputils-ping
apt-get install -y procps

## faq 

1. 无法从外部或者 其他container 访问redis 
redis 修改配置 
bind 0.0.0.0
protected-mode no