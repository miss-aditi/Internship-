-- create database company_db;
-- use company_db;
-- create table employees 
-- (
-- employee_id INT PRIMARY KEY,
-- employee_name VARCHAR(100),
-- department VARCHAR(50),
-- salary DECIMAL(10,2),
-- city VARCHAR(50),
-- joining_date DATE,
-- status VARCHAR(20)
-- );
-- select * from employees;
INSERT INTO `company_db`.`employees` (`employee_id`, `employee_name`, `department`, `salary`, `city`, `joining_date`, `status`) VALUES ('101', 'Rahul Patil', 'Devlopment', '45000', 'Pune', '2026-01-10', 'Active');
INSERT INTO `company_db`.`employees` (`employee_id`, `employee_name`, `department`, `salary`, `city`, `joining_date`, `status`) VALUES ('102', 'Priya Sharma', 'Testing', '38000', 'Mumbai', '2026-02-15', 'Active');
INSERT INTO `company_db`.`employees` (`employee_id`, `employee_name`, `department`, `salary`, `city`, `joining_date`, `status`) VALUES ('103', 'Amit Joshi', 'Development', '52000', 'pune', '2025-12-05', 'Active');
INSERT INTO `company_db`.`employees` (`employee_id`, `employee_name`, `department`, `salary`, `city`, `joining_date`, `status`) VALUES ('104', 'Sneha Kulkarni', 'HR', '35000', 'Nashik', '2026-03-20', 'Active');
INSERT INTO `company_db`.`employees` (`employee_id`, `employee_name`, `department`, `salary`, `city`, `joining_date`, `status`) VALUES ('105', 'Rohan Deshmukh', 'Support', '30000', 'Mumbai', '2026-04-01', 'InActive');
INSERT INTO `company_db`.`employees` (`employee_id`, `employee_name`, `department`, `salary`, `city`, `joining_date`, `status`) VALUES ('106', 'Anjali more', 'Testing', '42000', 'Pune', '2026-05-12', 'Active');
-- -- Part C - Basic SELECT Queries
select * from employees;
select  employee_id from employees;
select employee_id, salary from employees;
select employee_name, salary from employees;
select employee_name, city , department from employees;
select * from  employees where city = 'Pune';
select * from employees where city = 'mumbai';
select * from employees where department = 'Development';
select * from employees where department = 'Testing';
select * from employees where status = 'Active';
select * from employees where status = 'InActive';
select * from employees where employee_id = 103;
select * from employees where salary>40000;
select * from employees where salary<40000;
select * from employees where salary=35000;
select * from employees where salary>=42000;
select * from employees where city = 'pune'  and status = 'Active';
select * from employees where department= 'Devlopment' and salary>= 45000 ;
select * from employees where city = 'pune' or city = 'mumbai';
select * from employees where employee_id = 104;
-- -- update operation
use company_db;
UPDATE employees
SET salary = 48000
WHERE employee_Id = 101 AND salary = 45000;
select * from employees;
update employees 
set status = 'Active'
where employee_id = 105 and status = 'InActive';
select * from employees;
update employees
set city = 'Pune'
where employee_id = 104 and city = 'Nashik';
select * from employees;
update employees
set department = 'devlopment'
where employee_id = 102 and department = 'Testing';
select * from employees;
update employees
set salary = 45000
where employee_id = 106 ;
select * from employees;
update employees
set salary = salary + 3000
where employee_id = 103;
select * from employees;
update employees
set salary = salary + 2000
where department = 'Testing';
select * from employees;
select employee_id from employees where department = 'testing';
update employees
set salary = salary + 2000
where employee_id = 106;
select * from employees;
UPDATE employees
SET city = 'Mumbai Branch'
WHERE  employee_id = (102 and 105) and city = 'Mumbai' ;
select * from employees;

--   -- Part E - DELETE Operations

delete from employees where employee_id = 103;
delete from employees where employee_id = 105;
delete from employees where status = 'InActive';
select * from employees; 
delete from employees where salary < 30000;
delete from employees where employee_id = 104;


 --  --  Part F - ALTER TABLE / DDL Practice
Task 44: Add a new column: email VARCHAR(100).
Task 45: Add a new column: mobile VARCHAR(15).
Task 46: Change the size of city to VARCHAR(100).
Task 47: Rename column employee_name to name.
Task 48: Delete the mobile column.
Task 49: Add a column: experience INT.
Task 50: Update experience for one employee.
alter table employees add column  email VARCHAR(100) not null;
alter table employees add column mobile VARCHAR(15);
Alter table employees modify column city  VARCHAR(100);
ALTER TABLE employees
RENAME COLUMN name TO employee_name;

ALTER TABLE employees
DROP COLUMN mobile;

ALTER TABLE employees
ADD experience INT;

UPDATE employees
SET experience = 3
WHERE employee_id = 101;

SELECT * FROM employees;

-- Part G - Table-Level DDL Practice
-- Task 51: Create another table named departments with the structure shown below.
create table departments
(
department_id INT PRIMARY KEY,
department_name  VARCHAR(100),
location VARCHAR(100)
);
insert into departments
(
department_id,
department_name,
location
)
values
('100', 'CSE', 'Amaravti'),
('102', 'IT', 'Pune'),
('103', 'EXTC', 'Nagpur');

-- department_id      INT PRIMARY KEY department_name    VARCHAR(100) location           VARCHAR(100) 
-- Task 52: Insert 3 department records.
insert into departments
(
department_id,
department_name,
location
)
values
('100', 'CSE', 'Amaravti'),
('102', 'IT', 'Pune'),
('103', 'EXTC', 'Nagpur');

-- Task 53: Display all department records.
select * from departments;

-- Task 54: Update one department location.
update departments set location = 'mumbai' where department_id = 103;

-- Task 55: Delete one department record.
delete  from departments where department_id = 103;

-- Task 56: Rename departments table to company_departments.
rename table departments to company_departments;

-- Task 57: Display the structure of company_departments.
DESC company_departments;

-- Task 58: Remove all records from company_departments while keeping the table.
TRUNCATE TABLE company_departments;

-- Task 59: Delete the company_departments table completely.
DROP TABLE company_departments;

-- Task 60: Display all remaining tables in the database.
SHOW TABLES;
