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
customer_name varchar(215),
email varchar(215),
address text);

CREATE TABLE Orders(
customer_id int,
orders_id int,
foreign key (customer_id) references Customers (customer_id),
order_date Date);

CREATE TABLE order_detail(
book_id int,
orders_id int,
order_detail_id int primary key,
foreign key (orders_id) references Orders(orders_id),
foreign key (book_id) references Books(book_id),
quantity double);