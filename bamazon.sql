CREATE DATABASE bamazon;
USE bamazon;
CREATE TABLE products (
ID INTEGER(11) AUTO_INCREMENT NOT NULL, 
product_name varchar(255) NOT NULL, 
department_name varchar(255) NOT NULL, 
price INTEGER(11) NOT NULL, 
stock_quantity integer NOT NULL, 
primary key (id)
);
Select * FROM products;

INSERT INTO products (ID, product_name, department_name, price, stock_quantity) 
VALUES (101, "boots", "soccer", 79.99, 20),
	   (212, "jerseys", "basketball", 99.99, 10),
	   (313, "helmet", "football", 29.99, 5),
	   (420, "sweater", "hockey", 129.99, 14),
	   (504, "pants", "football", 39.99, 15),
	   (619, "shorts", "soccer", 19.99, 19),
	   (720, "gloves", "baseball", 49.99, 11),
	   (808, "bats", "baseball", 69.99, 10),
	   (913, "pucks", "hockey", 9.99, 19),
	   (1009, "shoes", "basketball", 89.99, 17)