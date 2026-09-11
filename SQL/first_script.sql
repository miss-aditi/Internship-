CREATE DATABASE startersql;
USE startersql;
CREATE TABLE Users
(
Id INT auto_increment PRIMARY KEY,
Name varchar(50) NOT NULL,
Email varchar(50) unique NOT NULL,
Gender ENUM('MALE', 'FEMELE', 'OTHER'),
Date_Of_Birth DATE,
Created_at timestamp default current_timestamp
);
select * from Users;
RENAME TABLE USERS TO PROGRAMMERS;
select * from PROGRAMMERS;
RENAME TABLE PROGRAMMERS TO USERS;
ALTER TABLE USERS ADD COLUMN IS_ACTIVE boolean default TRUE;
select * FROM USERS;
ALTER TABLE USERS DROP COLUMN IS_ACTIVE;
SELECT name, email FROM users;
use startersql;
select * from users;
select name, email from users;
rename table users to customers;
rename table customers to users;
alter table users add column is_active boolean default true;
alter table users add column area_of_work varchar(50) not null;
alter table users drop area_of_work;
alter table users modify name varchar(150) not null;
alter table users modify email varchar(50) first;
alter table users add column user_name varchar(60) unique not null;
alter table users modify user_name varchar(60) first;
alter table users modify column Date_Of_Birth DATE after name;
alter table users drop user_name;
alter table users modify column  Gender ENUM('MALE', 'FEMELE', 'OTHER') after name;
