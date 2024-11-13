--create database employee_DBP;
use  employee_DBP;
create table employee (
	ID int  primary key,
	Full_Name varchar(25),
	Street varchar(25),
	City varchar(25),
);

create table company (
	Company_name varchar(50) primary key,
	City varchar(25),
);

create table works (
    ID int,
    Company_name varchar(50),
    Salary decimal(10, 2),
    primary key (ID, Company_name),
    foreign key (ID) references employee(ID) ON delete cascade,
    foreign key (Company_name) references company(Company_name) ON delete cascade
);

create table manages (
    ID int ,
    Manager_id int,
	primary key (ID,Manager_id),
    foreign key (Manager_id) references employee(ID) ON  delete cascade,
);

