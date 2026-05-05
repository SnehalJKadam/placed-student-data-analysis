-- create databse
CREATE DATABaSE bank_app;

SHOW databases;

-- To make above database as current databse
USE bank_app;

-- Create Customer table
 CREATE TABLE customers(cust_id int primary key auto_increment,first_name varchar(20),last_name varchar(20));
 
-- to see tables
show tables;

-- Alter table
-- add column,to renamecolumn,to change datatype
-- add,change,modify
-- Add phone no
-- alter table table_name add column new_col_name data_type constraints
ALTER TABLE customers ADD COLUMN ph_no bigint unique;

desc customers;

-- how add column in between 
ALTER TABLE customers ADD email int unique after last_name;

desc customers;


-- alter table with modify
-- to change datatype of email column
ALTER TABLE customers modify email varchar(30);

-- Alter with table with change
ALTER TABLE customers change column last_name lastname varchar(20);

ALTER TABLE customers change column first_name firstname varchar(20);

-- Alter table drop a column
-- to drop phone number
ALTER TABLE customers drop column ph_no;
desc customers;

ALTER TABLE customers ADD Phone_no bigint unique;

-- Alter table to rename table name
ALTER TABLE customers rename to customer;
desc customer;


-- create table 
 CREATE TABLE Accounts(AccountID int primary key,CustomerID int);
 
 show tables;
 Alter table Accounts ADD AccountType varchar(30);
 desc Accounts;
 Alter table Accounts ADD Balance decimal;
 
 -- Create Transactions
 CREATE TABLE Transactions(TransactionID int,AccountID int,Trans_date date,Amount decimal,trans_type varchar(20));
  show tables;
  desc Transactions;
  
  
-- Create Branches
CREATE TABLE Branches(BranchID int primary key, Branch_name varchar(30),Branch_addr varchar (40),Branch_phn bigint); 
  desc Branches;
  
-- Adding constraints after creation of table
-- adding primary key after creation fro table transactions
ALTER TABLE transactions ADD primary key (TransactionID);
desc transactions;
commit;

DESC accounts;

-- Syntax to add forgien key
-- ALTER TABLE TABLE_NAME add constraint
-- constraint_name forgien key(column name)
-- references parent_table(columan_name)

ALTER TABLE accounts ADD constraint cust_id_fk
foreign key(CustomerID) references customer(cust_id)
on delete cascade
on update cascade;

desc accounts;
ALTER TABLE transactions ADD constraint cust_trans_fk
foreign key(AccountID) references accounts(AccountID)
on delete cascade
on update cascade;

desc transactions;

ALTER TABLE customer add acc_creation_date date;

-- Insert data into tables
INSERT INTO customer VALUES
(1,'Amit','Sharma','amit@gmail.com','9876543210','2024-01-01'),
(2,'Neha','Patil','neha@gmail.com','9876543211','2024-01-02'),
(3,'Raj','Verma','raj@gmail.com','9876543212','2024-01-03'),
(4,'Pooja','Singh','pooja@gmail.com','9876543213','2024-01-04'),
(5,'Karan','Mehta','karan@gmail.com','9876543214','2024-01-05'),
(6,'Sneha','Joshi','sneha@gmail.com','9876543215','2024-01-06'),
(7,'Vikas','Gupta','vikas@gmail.com','9876543216','2024-01-07'),
(8,'Riya','Kapoor','riya@gmail.com','9876543217','2024-01-08'),
(9,'Arjun','Yadav','arjun@gmail.com','9876543218','2024-01-09'),
(10,'Priya','Desai','priya@gmail.com','9876543219','2024-01-10'),
(11,'Rohit','Jain','rohit@gmail.com','9876543220','2024-01-11'),
(12,'Anjali','Jadhav','anjali@gmail.com','9876543221','2024-01-12'),
(13,'Manish','Kumar','manish@gmail.com','9876543222','2024-01-13'),
(14,'Sonal','Shah','sonal@gmail.com','9876543223','2024-01-14'),
(15,'Deepak','Chauhan','deepak@gmail.com','9876543224','2024-01-15'),
(16,'Nikita','More','nikita@gmail.com','9876543225','2024-01-16'),
(17,'Ajay','Nair','ajay@gmail.com','9876543226','2024-01-17'),
(18,'Meena','Reddy','meena@gmail.com','9876543227','2024-01-18'),
(19,'Suresh','Iyer','suresh@gmail.com','9876543228','2024-01-19'),
(20,'Divya','Pandey','divya@gmail.com','9876543229','2024-01-20');

desc customer;
select * from customer;

-- INSERT VALUES INTO ACCOUNTS TABLE
INSERT INTO accounts VALUES
(101,1,'Savings',5000),
(102,2,'Checking',2000),
(103,3,'Savings',8000),
(104,4,'Checking',1500),
(105,5,'Savings',3000),
(106,6,'Checking',1200),
(107,7,'Savings',9000),
(108,8,'Checking',2500),
(109,9,'Savings',7000),
(110,10,'Checking',1000),
(111,11,'Savings',6000),
(112,12,'Checking',1800),
(113,13,'Savings',7500),
(114,14,'Checking',2200),
(115,15,'Savings',4500),
(116,16,'Checking',1300),
(117,17,'Savings',8500),
(118,18,'Checking',2700),
(119,19,'Savings',9200),
(120,20,'Checking',3100);

select * from accounts;
-- INSERT VALUES INTO TRANSACTION TABLE
INSERT INTO transactions VALUES
(1,101,'2024-02-01',1000,'Deposit'),
(2,102,'2024-02-02',500,'Withdrawal'),
(3,103,'2024-02-03',2000,'Deposit'),
(4,104,'2024-02-04',700,'Withdrawal'),
(5,105,'2024-02-05',1500,'Deposit'),
(6,106,'2024-02-06',300,'Withdrawal'),
(7,107,'2024-02-07',2500,'Deposit'),
(8,108,'2024-02-08',800,'Withdrawal'),
(9,109,'2024-02-09',1200,'Deposit'),
(10,110,'2024-02-10',400,'Withdrawal'),
(11,111,'2024-02-11',2200,'Deposit'),
(12,112,'2024-02-12',600,'Withdrawal'),
(13,113,'2024-02-13',1800,'Deposit'),
(14,114,'2024-02-14',900,'Withdrawal'),
(15,115,'2024-02-15',1600,'Deposit'),
(16,116,'2024-02-16',500,'Withdrawal'),
(17,117,'2024-02-17',2100,'Deposit'),
(18,118,'2024-02-18',700,'Withdrawal'),
(19,119,'2024-02-19',3000,'Deposit'),
(20,120,'2024-02-20',1000,'Withdrawal');

select * from transactions;

-- INSERT VALUES INTO BRANCHES TABLE

INSERT INTO branches VALUES
(1,'Mumbai Main','Mumbai','0221111111'),
(2,'Pune Branch','Pune','0222222222'),
(3,'Delhi Branch','Delhi','0223333333'),
(4,'Chennai Branch','Chennai','0224444444'),
(5,'Bangalore Branch','Bangalore','0225555555'),
(6,'Hyderabad Branch','Hyderabad','0226666666'),
(7,'Kolkata Branch','Kolkata','0227777777'),
(8,'Ahmedabad Branch','Ahmedabad','0228888888'),
(9,'Nagpur Branch','Nagpur','0229999999'),
(10,'Surat Branch','Surat','0211111111'),
(11,'Jaipur Branch','Jaipur','0212222222'),
(12,'Lucknow Branch','Lucknow','0213333333'),
(13,'Indore Branch','Indore','0214444444'),
(14,'Bhopal Branch','Bhopal','0215555555'),
(15,'Patna Branch','Patna','0216666666'),
(16,'Goa Branch','Goa','0217777777'),
(17,'Coimbatore Branch','Coimbatore','0218888888'),
(18,'Mysore Branch','Mysore','0219999999'),
(19,'Trichy Branch','Trichy','0210000000'),
(20,'Vashi Branch','Navi Mumbai','0221234567');
-- to get all columns select use
select * from branches;
commit;
desc customer;

-- to get specific column
select firstname,lastname from customer;

-- to get specific record use where clause

select * from customer where cust_id=1;

select * from accounts where AccountType="savings";

-- Redrive details of account whose balance is greater than 5000
select * from accounts where Balance>5000;

-- DML command
-- 1.insert
-- 2.update
-- update the email id of customer id is 1
update customer
SET 
email="amit.sharma@gmail.com"
where cust_id=1;

select * from customer;
commit;











 
 
 







