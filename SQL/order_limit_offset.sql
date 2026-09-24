show databases;
use company_db;
show tables from company_db;
select * from employees;
-- Agrigating functions 
select salary , employee_name from employees order by employee_name ASC;
update employees set salary = salary + (salary * 0.10) where city ='Pune'; 
select sum(salary) as total_salary from employees;
select avg(salary) as Avg_salary from employees;
select min(salary) as min_salary from employees;
select avg(salary) as Avg_salary from employees;
select max(salary) as max_salary from employees;

-- clauses  group by and having

select count(name) As employee_name, department,  sum(salary) as total_salary from employees group by department;
select deparment , sum(salary) as total_salary from employees group by department having  salary > 40000;
select employee_name, salary from employees where salary = (select max(salary) from employees);
select * from address;

