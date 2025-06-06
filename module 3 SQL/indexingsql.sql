-- indexing in database

use varun;

create table indexingdb(
empid int auto_increment primary key,
name varchar(100),
depid int,
joining date,
salary int);

insert into indexingdb(name,depid,joining,salary) values
('ramesh',101,'2024-09-07',50000),
('daya',102,'2020-05-01',60000),
('koushik',103,'2015-04-17',55000),
('anik',104,'2000-05-13',65000),
('varun',101,'2001-06-22',70000),
('saski',101,'2001-06-22',75000),
('alli',108,'2001-06-22',77000),
('valli',106,'2001-06-22',60000),
('venky',108,'2001-06-22',80000);


-- single column index
create index idx_emp on indexingdb(joining);

show indexes from indexingdb;

create index emp_salary_date on indexingdb(salary,joining);

select * from indexingdb
where salary>60000 and joining>25-01-01;

-- clustered index


