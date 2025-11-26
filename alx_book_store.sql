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
order_id INT,
FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
order_date DATE);

CREATE TABLE Order_Details(
book_id INT,
orders_id INT,
order_detail_id int primary key,
FOREIGN KEY (order_id) REFERENCES Orders(order_id),
FOREIGN KEY (book_id) REFERENCES Books(book_id),
quantity DOUBLE);