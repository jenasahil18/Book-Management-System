create database subokmart;

USE SUBOOKMART;

CREATE TABLE BOOK(
book_id int , 
title varchar(50) ,
author varchar(50) ,
ISBN int primary key, 
price int not null);

insert into BOOK values(
001, 'BIG DATA ANALYSIS', 'THANGARAJ', 2105001, 299); 

insert into BOOK
(book_id,  title, author, ISBN,price)
 values
(002, 'COMPUTER NETWORKS','SUMAN SHARMA', 2105002, 499),
(003, 'COMPILER DESIN','PRADIP SINGH', 2105003, 499),
(004, 'DESCRETE MATHEMATICS','RAVI SHASHTRI', 2105004, 499),
(005, 'COMPUTER ORGANIZATION','KESHAV JHA', 2105005, 499),
(006, 'ARTIFICICAL INTELLIGENCE','NILESH SHARMA', 2105006, 499),
(007, 'INDIAN CONSTITUION','OM SOLANKI', 2105007, 499),
(008, 'IPDC','JEET SELAL', 2105008, 499),
(009, 'BASIC MECHANICAL', 'ANKIT R BHANU', 2105009, 499),
(010, 'BASIC ELECTRONICS', 'B.L. Theraja', 21050010, 499);

CREATE TABLE CUSTOMER(
customer_id int primary key , 
customer_name varchar(50) ,
email varchar(50) ,
pass int , 
country varchar(50));

insert into CUSTOMER
(customer_id,  customer_name, email, pass,country)
 values
(01, 'SUBHASH','SUBHASH@GMAIL.COM', 1968, 'IN'),
(02, 'SUMITRA','SUMITRA@GMAIL.COM', 1977, 'IN'),
(03, 'RAVINDRA','RAVINDRA@GMAIL.COM', 6377, 'IN'),
(04, 'NAGENDRA','NAGENDRA@GMAIL.COM', 8849, 'IN'),
(05, 'PARTH','PARTH@GMAIL.COM', 1456, 'IN'),
(06, 'NILKANTH','NILKANTH@GMAIL.COM', 4125, 'IN'),
(07, 'PRIYESH','PRIYESH@GMAIL.COM', 5466, 'IN'),
(08, 'UMESH', 'UMESH@GMAIL.COM', 7202, 'IN'),
(09, 'RAJENDRA', 'RAJENDRA@GMAIL.COM', 7984, 'IN'),
(10, 'BISHNU', 'BISHNU@GMAIL.COM', 9328, 'IN');

CREATE TABLE ORDERS(
order_id int primary key , 
cust_id int ,
ORDERDATE date,
total_amount int, 
status_book varchar(50),
foreign key (cust_id) references CUSTOMER(customer_id)
on update cascade
on delete cascade
);

insert into ORDERS
(order_id,  cust_id, ORDERDATE, total_amount,status_book)
 values
(101, 01,'2019-04-27', 998, 'PENDING'),
(102, 02,'2019-05-21', 499, 'SHIPPED'),
(103, 03,'2019-05-21', 998, 'DELIVERED'),
(104, 04,'2019-05-21', 499, 'CANCELLED'),
(105, 05,'2019-05-21', 998, 'PENDING'),
(106, 06,'2019-05-21', 499, 'SHIPPED'),
(107, 07,'2019-05-21', 998, 'DELIVERED'),
(108, 08,'2019-05-21', 499, 'CANCELLED'),
(109, 09,'2019-05-21', 998, 'PENDING'),
(110, 10,'2019-05-21', 499, 'DELIVERED');

CREATE TABLE ORDERS_DETAIL(
orderdetail_id int primary key , 
order_id int ,
book_id int,
quantity int, 
unit_price int,
total_price int,
foreign key (order_id) references ORDERS(order_id)
on update cascade
on delete cascade
);


insert into ORDERS_DETAIL
(orderdetail_id , order_id,  book_id, quantity, unit_price, total_price)
 values
(1010, 101,001,2,499, 998),
(1020, 102,002,1,499, 499),
(1030, 103,003,2,499, 998),
(1040, 104,004,1,499,499),
(1050, 105,005,2, 499,998),
(1060, 106,006,1,499, 499),
(1070, 107,007,2,499, 998),
(1080, 108,008,1,499, 499),
(1090, 109,009,2,499, 998),
(1100, 110,010,1,499, 499);



select * from BOOK;
select * from CUSTOMER;
select * from ORDERS;
select * from ORDERS_DETAIL;