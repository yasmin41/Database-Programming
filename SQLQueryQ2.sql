--create database bank;
use bank;

--create table branch ( 
--branch_name varchar(50) primary key ,
--branch_city varchar(25),
--assets decimal(15,2)
--);

--create table customer (
--ID varchar(10) primary key,
--customer_name varchar(50),
--customer_street varchar(25),
--customer_city varchar(25),
--);

--create table loan (
--loan_number varchar(10) primary key,
--branch_name varchar(50),
--amount decimal(15,2),
--foreign key (branch_name) references branch(branch_name)
--);

--create table borrower (
--ID varchar(10),
--loan_number varchar(10),
--primary key (ID,loan_number),
--foreign key (ID) references customer(ID),
--foreign key (loan_number) references loan(loan_number),
--);

--create table account (
--account_number varchar(10) primary key,
--branch_name varchar(50),
--balance decimal(15,2),
--foreign key (branch_name) references branch(branch_name)
--);

--create table depositor (
--ID varchar(10),
--account_number varchar(10),
--primary key (ID,account_number),
--foreign key (ID) references customer(ID),
--foreign key (account_number) references account(account_number),
--);


--insert into branch VALUES 
--('Amman Downtown', 'Amman', 5000000.00),
--('Irbid Center', 'Irbid', 2500000.00),
--('Salt Branch', 'Salt', 1500000.00);

--insert into customer VALUES 
--('C1001', 'Yasmin Hababa', 'Marj Alhamam Street', 'Amman'),
--('C1002', 'Sara Abu-Khader', 'Al-Jamea Street', 'Irbid'),
--('C1003', 'Nermeen Mohammad', 'Naur Street', 'Amman'),
--('C1004', 'Alaa Fakhouri', 'Marj Alhamam Street', 'Amman'),
--('C1005', 'Yousef Taha', 'Al-Hussein Street', 'Salt');


--insert into loan VALUES 
--('L2001', 'Amman Downtown', 100000.00),
--('L2002', 'Irbid Center', 75000.00),
--('L2005', 'Salt Branch', 60000.00);

--insert into borrower VALUES 
--('C1001', 'L2001'),
--('C1002', 'L2002'),
--('C1003', 'L2001'),
--('C1004', 'L2001'),
--('C1005', 'L2005');

--insert into account VALUES 
--('A3001', 'Amman Downtown', 20000.00),
--('A3002', 'Irbid Center', 15000.00),
--('A3005', 'Salt Branch', 8000.00);

--insert into depositor VALUES 
--('C1001', 'A3001'),
--('C1002', 'A3002'),
--('C1003', 'A3001'),
--('C1004', 'A3001'),
--('C1005', 'A3005');

--SELECT DISTINCT d.ID
--FROM depositor d
--LEFT JOIN borrower b ON d.ID = b.ID
--WHERE b.ID IS NULL;

--SELECT c2.ID
--FROM customer c1
--JOIN customer c2 ON c1.customer_street = c2.customer_street 
--                AND c1.customer_city = c2.customer_city
--WHERE c1.ID = 'C1001' AND c2.ID != 'C1001';

--SELECT DISTINCT a.branch_name
--FROM branch b
--JOIN account a ON b.branch_name = a.branch_name
--JOIN depositor d ON a.account_number = d.account_number
--JOIN customer c ON d.ID = c.ID
--WHERE c.customer_city = 'Amman';

