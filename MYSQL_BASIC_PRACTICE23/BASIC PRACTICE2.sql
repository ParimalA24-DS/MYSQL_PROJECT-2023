-- PART2 
/* NULL values 
update 
delete
alter table 
drop column */

#create db 
create database customers; 
show databases;
use customers;

#create cust_info table :
create table cust_info(
id int auto_increment,
first_name varchar(20),
last_name varchar(20),
salary int ,
primary key(id)
);

# read datafrom cust_info table:
select *from cust_info;
show tables;

# INSERT VALUES/RECORDSin table
insert into cust_info(first_name,last_name,salary)
values
('John','Denny',50000),
('Kavi','Shah',60000),
('Danish','Gupta',70000),
('charu','Kumar',400000),
('Ankit','Sharma',NULL);

Select *from cust_info;
Select *from cust_info where salary is null;    #check null 
Select *from cust_info where salary is not null;  # all 4 records displayed

# REPLACE  null values using UPDATE:
update cust_info set salary=50000 where id=5; -- Update salary to 50000 for customer with ID 5

#Delete statemnt 
delete from cust_info where id=5; -- id 5 entirerow delete 

Select *from cust_info;

# Alter table:
## add cloumn in existing in table:

alter table cust_info add email varchar(25);
Select *from cust_info;
alter table cust_info add dod date;

# Alter table modify column :
alter table cust_info 
modify dod year;

#Alter table drop column :
alter table cust_info drop column email ;
Select *from cust_info;