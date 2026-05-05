-- create Database
-- Syntax- CREATE DATABASE database_name;

CREATE DATABASE student;
CREATE DATABASE  student1;

-- To display databse
SHOW databases;

--  CREATE TABLE table_name(
-- col1_name data_type constraints,
-- col2_name data_type,
-- ---------coln);

CREATE TABLE stud_info(stud_id int primary key,name varchar(20),address varchar(40),phone_no bigint);

-- show tables
SHOW TABLES;

 -- describe
 DESC stud_info;
 
 CREATE TABLE Marks( stud_id int,subject varchar(20),marks int);
 desc Marks;
 
 -- truncate:it delete only data and structure remains in same
 -- drop:it delete data and structure both
 
 -- insert into table_name (col1_name,col2_name....coln_name) values (value1,value2,......valuen)
 
 desc tables;
 
 insert into stud_info values (101,"snehal","thane",9876543245);
 
 desc stud_info;
 
 -- to see data in table
 select * from stud_info;
 
 insert into stud_info values (102,"geeta","thane",9765543245);
 insert into stud_info values (101,"neha","thane",9876543245);
 select * from stud_info;
 
 insert into stud_info values (102,"geeta","thane",9765543245);
 select * from stud_info;
 
 -- checking duplicate key
 insert into stud_info values (101,"geeta","thane",9765543245);
 
 -- multiple records
 insert into stud_info values (103,"riya","pune",8976543245),(104,"siya","satara",8976543245),(105,"rutu","pune",9945543245),(106,"divya","pune",8765543245);
 
 select * from stud_info;
 
 -- one of the value is missing
 insert into stud_info (stud_id,name,address) values (7,"akshara","satara");
 
 select * from stud_info;
 
 
 
 
 
 