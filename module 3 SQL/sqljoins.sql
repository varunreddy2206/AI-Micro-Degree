-- sql joins

create database joins;

use joins;

create table employees(
emp_id int,
name varchar(50),
departmentid int,
salary int);

insert into employees(emp_id,name,departmentid,salary) values 
(1,'ramesh',101,100000),
(2,'daya',102,200000),
(3,'varun',103,300000),
(4,'koushik',104,350000),
(5,'vamshi',105,400000);


-- create another table

create table department(
depid int,
depname varchar(50));

insert into department(depid,depname) values
(102,'admin'),
(101,'hr'),
(104,'sales');

-- inner join

select E.name ,salary,d.depname from employees E
inner join department d on E.departmentid=d.depid;

select E.name ,salary,d.depname from employees E
left join department d on E.departmentid=d.depid;

select E.name ,salary,d.depname from employees E
right join department d on E.departmentid=d.depid;

select E.name ,salary,d.depname from employees E
cross join department d on E.departmentid=d.depid;

create table cricket(
cricket_id int,
cric_name varchar(50),
jersey_num int);

insert into cricket(cricket_id,cric_name,jersey_num) values
(102,'virat',18),
(108,'rohit',45),
(104,'dhoni',7);

create table state(
state_id int,
statename varchar(100));

insert into state(state_id,statename) values
(102,'delhi'),
(108,'mumbai');

create table employees2(
emp_id int,
name varchar(50),
departmentname varchar(50),
salary int);


insert into employees2(emp_id,name,departmentname,salary) values 
(1,'ramesh','tester',100000),
(2,'daya',"admin",200000),
(3,'varun',"admin",300000),
(4,'koushik','engineer',350000),
(5,'vamshi','hr',400000),
(6,'koushik','hr',500000);

select E.name,E.salary,d.depname
from employees E
cross join department d;

-- self join

select A.name,A.salary,B.name,B.salary
from employees2 A
join employees2 B 
on A.departmentname=B.departmentname
and A.emp_id<b.emp_id;









 