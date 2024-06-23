-- VIEWS : 
/* View is a virtual table based on the result set of sql query.
SQL views are virtual tables generated from a SELECT query and provide a way to simplify complex queries or restrict access to certain data.
 They don't store data themselves but provide a dynamic way to access data from one or more tables.
*/
use customers ;
create table students(
id int auto_increment,
first_name varchar(20) not null ,
last_name varchar(20) not null,
age int ,
primary key(id));
select *from students;
insert into students 
values( 1,"kavi",'shah',31),
( 12,"Ram",'Shah',30),
( 3,"Sam",'Joe',31);
select *from students;
#create table dept :
create table dept (
id int auto_increment,
dept_name varchar(25) not null ,
foreign key (id) references students(id) );
select *from students;
select *from dept;
insert into dept values
(1,'CS'),
(2,'ECE'),
(3,'CIVIL');
select *from dept;
# CREATE VIEW:
create view student_info  as 
select first_name ,last_name,age from students inner join dept using (id);
select *from student_info;