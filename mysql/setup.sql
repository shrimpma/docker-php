CREATE USER 'magento'@'%' IDENTIFIED BY '123456';
GRANT ALL ON *.* TO 'magento'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;