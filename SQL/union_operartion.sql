-- create table user_admin(
-- id int primary key,
-- name varchar(100),
-- email varchar(100),
-- gender enum('male', 'femele', 'other'),
-- date_of_birth date,
-- salary int
-- );

-- INSERT INTO user_admin (id, name, email, gender, date_of_birth, salary)
-- VALUES
-- (1, 'Aditi', 'aditi@gmail.com', 'femele', '2004-05-15', 35000),
-- (2, 'Rahul', 'rahul@gmail.com', 'male', '2003-08-21', 42000),
-- (3, 'Sneha', 'sneha@gmail.com', 'femele', '2004-02-10', 38000),
-- (4, 'Amit', 'amit@gmail.com', 'male', '2002-11-18', 50000),
-- (5, 'Priya', 'priya@gmail.com', 'femele', '2003-06-25', 45000),
-- (6, 'Rohit', 'rohit@gmail.com', 'male', '2004-01-12', 32000),
-- (7, 'Neha', 'neha@gmail.com', 'femele', '2003-09-30', 48000),
-- (8, 'Vikas', 'vikas@gmail.com', 'male', '2002-04-17', 55000),
-- (9, 'Pooja', 'pooja@gmail.com', 'femele', '2004-07-08', 36000),
-- (10, 'Karan', 'karan@gmail.com', 'male', '2003-12-22', 60000),
-- (11, 'Anjali', 'anjali@gmail.com', 'femele', '2004-03-14', 41000),
-- (12, 'Sahil', 'sahil@gmail.com', 'male', '2002-10-05', 47000),
-- (13, 'Kavita', 'kavita@gmail.com', 'femele', '2003-05-19', 39000),
-- (14, 'Nikhil', 'nikhil@gmail.com', 'male', '2004-08-27', 52000),
-- (15, 'Riya', 'riya@gmail.com', 'femele', '2003-01-31', 44000),
-- (16, 'Arjun', 'arjun@gmail.com', 'male', '2002-07-11', 58000),
-- (17, 'Meena', 'meena@gmail.com', 'femele', '2004-09-16', 37000),
-- (18, 'Suresh', 'suresh@gmail.com', 'male', '2001-12-03', 65000),
-- (19, 'Simran', 'simran@gmail.com', 'femele', '2003-04-28', 46000),
-- 
INSERT INTO user_admin (id, name, email, gender, date_of_birth, salary)
VALUES
(21, 'priti', 'priti@gmail.com', 'femele', '2002-06-09', 54000);

rename table user_admin to users_admin;
-- select * from user_admin;
show tables from startersql;
use startersql;
select * from users;
select * from addresses;
select * from users_admin;

SELECT name, email, Date_Of_Birth ,'users' as role FROM users
UNION 
SELECT name, email,Date_Of_Birth, 'users_admin' as role FROM users_admin;
order by date_of_birth asc;
