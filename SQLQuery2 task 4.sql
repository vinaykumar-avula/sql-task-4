use vinaykumar
go

create table employees
(id int primary key,firstname varchar(50),lastname varchar(50),age int,department varchar(50),salary float)
 
insert into employees (id,firstname,lastname,age ,department,salary) values (1,'vinay','kumar',23,'HR',23000)
insert into employees(id,firstname,lastname,age ,department,salary) values (2,'uday','kiran',22,'it',21000)
insert into employees (id,firstname,lastname,age ,department,salary) values (3,'sunil','kranthi',24,'sales',20000)
insert into employees (id,firstname,lastname,age ,department,salary) values (4,'vijay','sagar',23,'sales',21500)

select*from employees
Select count(id) as Employees_count from employees 
 
 Select min(salary) as lowest_salary from employees 

  Select max(salary) as highest_salary from employees

   Select sum(salary) as total_salary from employees

    Select avg(age) as average_age from employees


	2)use group by

	--group employees by department and count the number in each department

	SELECT department,count(*) FROM employees group by department

	--group employees by department and calculate the average salary in each department

	select department,avg(salary)  as average_salary from employees group by department


	3)filter groups and having

	--find  department with an average salary greater than 20000

	select department, avg(salary) as average_salary from employees group by department having avg(salary)>21000

	select department,count(*)as department_count from employees group by department having count(*)>1