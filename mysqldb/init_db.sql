CREATE USER IF NOT EXISTS 'tito'@'%' IDENTIFIED WITH mysql_native_password BY 'password';
GRANT ALL PRIVILEGES ON *.* TO 'tito'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES; 

DROP DATABASE IF EXISTS service_db;

CREATE DATABASE service_db;

USE service_db;

DROP TABLE IF EXISTS products;

CREATE TABLE products ( 
  id INT NOT NULL AUTO_INCREMENT,  
  data LONGTEXT NOT NULL, 
  PRIMARY KEY (id) 
);


INSERT INTO products (data) VALUES('Computer Table');