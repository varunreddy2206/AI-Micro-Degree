use tri;

create table employee(
emp_id int primary key auto_increment,
emp_name varchar(20),
first_name varchar(20),
last_name varchar(20),
salary int
);

insert into employee(emp_name,first_name,last_name,salary) values 
("varun",'bisa','reddy',20000),
("venkatesh",'enti','reddy',30000),
("divakar",'kevin','paul',50000),
("dayakar",'kevin','paul',50000);




select * FROM employee 
WHERE salary > 20000 AND last_name = 'reddy';


select * from employee
where salary>50000 or last_name ='paul';

select * from employee 
where salary not in (20000,30000);

select * from employee 
where last_name not like 'paul';


select * from employee 
where first_name='bisa'
and salary<=20000;

select * from employee 
where first_name='enti'
and salary>=20000;

select * from employee 
where first_name='kevin'
and salary<>30000;

SELECT * FROM employee
WHERE salary BETWEEN 20000 AND 30000;

select count(*) from employee;

