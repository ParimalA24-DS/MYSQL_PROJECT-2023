create database customers;
use customers; #important when using any particular database 

-- Create table in database customers

create table customer_info
( id int ,
fist_name varchar(10) ,
last_name varchar(20)
);
show tables;
select *FROM customer_info;  #only table structure created with column names

-- Insert values into table using INSERT INTO 
insert into customer_info(id,fist_name,last_name)
values (1,'PRI','shah');
select *FROM customer_info;
insert into customer_info(id,first_name,last_name)
values (1,'Prish','shah');
#but here not uniqueid and auto incremented 

ALTER TABLE customer_info
CHANGE COLUMN fist_name first_name VARCHAR(25);
-- drop table and database 
drop table customer_info;

drop  database customers;
