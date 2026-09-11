CREATE DATABASE capgemini;

USE capgemini;

CREATE TABLE emp
(
    id INT PRIMARY KEY NOT NULL,
    name VARCHAR(50) NOT NULL,
    profile VARCHAR(50),
    email VARCHAR(60),
    salary DECIMAL(10,2),
    age INT NOT NULL,
    experiance INT NOT NULL
);

INSERT INTO emp
(id, name, profile, email, salary, age, experiance)
VALUES
(1, 'Rani', 'dev', 'rani@gmail.com', 11000, 43, 27),
(2, 'Raj', 'test', 'raj@gmail.com', 21000, 33, 17),
(3, 'Radha', 'test', 'radha@gmail.com', 26000, 38, 21),
(4, 'Raj', 'dev', 'raj12@gmail.com', 51000, 32, 12),
(5, 'joh', 'dev', 'joh@gmail.com', 51000, 39, 27);
select * from emp;
alter table emp add column branch_location varchar(50);
UPDATE emp SET branch_location = 'pune' WHERE (`id` = '1');
UPDATE emp SET branch_location = 'mumbai' WHERE (`id` = '2');
UPDATE emp SET branch_location = 'pune' WHERE (`id` = '3');
UPDATE emp SET branch_location = 'mumbai' WHERE (`id` = '4');
UPDATE emp SET branch_location = 'pune' WHERE (`id` = '5');
SELECT SUM(salary) AS total_salary_expense
FROM employee;
select MIN(salary) as MIN_salary from emp where profile = 'test';
select avg(experiance) as avg_experiance from emp;
SELECT name, salary
FROM emp
WHERE salary = (SELECT MAX(salary) FROM emp);
SELECT name, salary
FROM emp
WHERE salary = (SELECT min(salary) FROM emp);
SELECT name, experience
FROM emp
WHERE salary = (SELECT MIN(salary) FROM emp);

SELECT COUNT(*) AS total_employees
FROM emp;

select name from emp where profile = 'test' and salary > 25000;

update emp set profile = 'support' where name = 'radha';

UPDATE emp
SET profile = 'support'
WHERE name = 'Radha' and id = 3;

SELECT MAX(salary) AS second_highest_salary
FROM emp
WHERE salary < (SELECT MAX(salary) FROM emp);

select max(salary) as second_highest_salary from emp where salary < (select max(salary) from emp );

select min(salary) as second_lowest_salary from emp where salary > (select min(salary) from emp);

select avg(salary) as avg_salary from emp where profile = 'dev';

select name , salary from emp where experience = (select min(eexperience) from emp);

DESCRIBE emp;

SELECT name, salary
FROM emp
WHERE exp = (SELECT MIN(exp) FROM emp);

SELECT name, salary, age
FROM emp
WHERE age = (SELECT MIN(age) FROM emp)
AND salary = (
    SELECT MAX(salary)
    FROM emp
    WHERE age = (SELECT MIN(age) FROM emp)
);

DELETE FROM emp;
