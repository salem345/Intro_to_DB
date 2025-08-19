CREATE DATABASE IF NOT EXISTS alx_book_store;
use alx_book_store;
CREATE TABLE Authors(
author_id int PRIMARY KEY,
author_name varchar(215));

CREATE TABLE Books(
author_id int,
book_id int primary key,
title varchar(130),
foreign key (author_id) references Authors (author_id),
price double,
publication_date date);

CREATE TABLE Customers(
customer_id int primary key,
customer_name VARCHAR(215),
 email VARCHAR(215),
 address TEXT);

CREATE TABLE Orders(
customer_id INT,
orders_id int,
FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
order_date DATE);

CREATE TABLE order_detail(
book_id int,
orders_id int,
order_detail_id int primary key,
foreign key (orders_id) references Orders(orders_id),
foreign key (book_id) references Books(book_id),
quantity DOUBLE);