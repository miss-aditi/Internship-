-- Part A - Database & Table Creation
-- show databases;

-- Task 1: Create a database named banking_db.
-- create database banking_db;

-- Task 2: Use/select the banking_db database.
-- use banking_db;

-- Task 3: Create a table named accounts with the following columns:
-- create table accounts
-- (
-- account_id INT PRIMARY KEY,
-- account_number VARCHAR(20), 
-- customer_name VARCHAR(100), 
-- account_type VARCHAR(30), 
-- branch VARCHAR(50),
-- city VARCHAR(50), 
-- balance DECIMAL(12,2), 
-- credit_score INT,
-- status VARCHAR(20),
-- opened_date DATE
-- );

-- Task 4: Display the structure of the accounts table.
-- select * from accounts;

-- Task 5: Display all tables available inside banking_db.
-- show tables from banking_db;

-- Part B - INSERT Operations

-- Task 6: Insert: 1001, ACC10001, Aarav Sharma, Savings, FC Road, Pune, 85000, 780, Active, 2025-01-15
-- Task 7: Insert: 1002, ACC10002, Priya Patil, Current, Andheri, Mumbai, 145000, 810, Active, 2024-11-20
-- Task 8: Insert: 1003, ACC10003, Rohan Joshi, Savings, Baner, Pune, 42000, 735, Active, 2026-02-10
-- Task 9: Insert: 1004, ACC10004, Sneha Kulkarni, Salary, Nashik Road, Nashik, 67000, 760, Active, 2025-08-05 
-- Task 10: Insert: 1005, ACC10005, Vikram Deshmukh, Savings, Camp, Pune, 18500, 690, Dormant, 2023-06-18
-- Task 11: Insert: 1006, ACC10006, Neha More, Current, Thane, Mumbai, 225000, 825, Active, 2024-03-12

insert into accounts 
values
-- (1002, 'ACC10002', 'Priya Patil', 'Current', 'Andheri', 'Mumbai', '145000', 810, 'Active', '2024-11-20'),
-- (1003, 'ACC10003', 'Rohan Joshi', 'Savings', 'Baner', 'Pune', '42000', 735, 'Active', '2026-02-10'),
-- (1004, 'ACC10004', 'Sneha Kulkarni', 'Salary', 'Nashik Road', 'Nashik', '67000', 760, 'Active', '2025-08-05'),
-- (1005, 'ACC10005', 'Vikram Deshmukh', 'Savings', 'Camp', 'Pune', '18500', 690, 'Dormant', '2023-06-18'),
-- (1006, 'ACC10006', 'Neha More', 'Current', 'Thane', 'Mumbai', '225000', 825, 'Active', '2024-03-12');

-- Part C - DQL / SELECT Queries

-- Task 12: Display all records from accounts.
-- select * from accounts;

-- Task 13: Display only customer_name and account_number.
-- select customer_name, account_number from accounts;

-- Task 14: Display customer_name, account_type, balance and status.
-- select customer_name, account_type, balance, status from accounts;

-- Task 15: Display all Savings account holders.
-- select * from accounts where account_type = 'savings';

-- Task 16: Display all customers from Pune.
-- select * from accounts where city = 'pune';

-- Task 17: Display accounts having balance greater than 50000.
-- select customer_name, account_type from accounts where balance>50000;

-- Task 18: Display accounts having balance less than or equal to 50000.
-- select * from accounts where balance <= 50000;

-- Task 19: Display accounts having balance between 50000 and 200000.
-- select * from accounts where balance>50000 and balance<200000;

-- Task 20: Display accounts whose credit_score is greater than or equal to 750.
-- select * from accounts where credit_score >= 750;

-- Task 21: Display only Active accounts
-- select * from accounts where status = 'Active';

-- Task 22: Display accounts whose status is Dormant or Closed.
-- select * from accounts where status = 'dormant' or status = 'closed';

-- Task 23: Display accounts from Pune AND status = 'Active'.
-- select * from accounts where city = 'pune'and status = 'Active';

-- Task 24: Display accounts from Mumbai OR Nashik.
-- select * from accounts where city = 'nashik' or city = 'mumbai';

-- Task 25: Display accounts whose account_type is Savings OR Salary.
-- select * from accounts where account_type = 'saving' or account_type = 'salary';

-- Task 26: Display accounts whose balance is NOT BETWEEN 25000 AND 100000.
-- select * from accounts where balance not between 25000 And 100000;

-- Task 27: Display accounts whose customer_name starts with 'A'.
-- select * from accounts; where customer_name = 'A%';

-- Task 28: Display accounts whose customer_name ends with 'a'
-- select customer_name from accounts where customer_name like '%a';

-- Task 29: Display accounts whose branch contains the word 'Road'.
SELECT * FROM accounts WHERE branch LIKE '%Road%';

-- Task 30: Display the top 3 accounts having the highest balance using LIMIT.
select * from accounts order by balance desc limit 3;

-- Task 31: Display the first 5 accounts using LIMIT 5.
select * from accounts order by account_id  desc limit 4;

-- Task 32: Display 3 accounts starting from the 4th record using LIMIT 3, 3.
SELECT * FROM accounts LIMIT 3, 3;

-- Task 33: Display Active Savings accounts from Pune with balance greater than 50000.
SELECT FROM accounts  where status = 'active' and account_type = 'saving' and city = 'pune' and balance> 50000;

-- Part C - DQL / SELECT Queries (continued)

-- Task 34: Display accounts from Pune, Mumbai or Nashik having credit_score >= 750.
select * from accounts where city  in ('pune' ,'nashik', 'mumbai') and credit_score >= 750;

-- Task 35: Display accounts where balance > 100000 AND credit_score >= 800.
select * from accounts where balance > 100000 and credit_score >= 800;

-- Task 36: Display accounts where balance is between 50000 and 150000 OR credit_score > 800.
select * from accounts where balance  between 50000 and 150000 or credit_score > 800;

-- Task 37: Display accounts whose status is Active AND account_type is NOT Current. Task 
SELECT * FROM accounts WHERE status = 'Active' AND account_type != 'Current';

-- Task 38: Display accounts whose customer_name contains 'ar'.
select * from accounts where customer_name like '%ar%';

-- Part D - UPDATE Operations

-- Task 39: Update Aarav Sharma's balance from 85000 to 95000.
select account_id from accounts where  customer_name = 'Priya patil';
update accounts set balance = 95000 where account_id = 1002;
select * from accounts;

-- Task 40: Update Vikram Deshmukh's status from Dormant to Active.
select account_id from accounts where  customer_name = 'Vikram Deshmukh';
update accounts set status = 'Active' where account_id = 1005;
select * from accounts;

-- Task 41: Update Rohan Joshi's credit_score from 735 to 755.
select account_id from accounts where  customer_name = 'Rohan Joshi';
update accounts set credit_score = 755 where account_id = 1003;
select * from accounts;

-- Task 42: Update Sneha Kulkarni's branch from Nashik Road to College Road.
select account_id from accounts where  customer_name = 'Sneha Kulkarni';
update accounts set branch = 'collage road' where account_id = 1004;
select * from accounts;

-- Task 43: Update Priya Patil's account_type from Current to Premium Current.
select account_id from accounts where  customer_name = 'Priya Patil';
update accounts set account_type = 'Premium Current' where account_id = 1002;
select * from accounts;

-- Task 44: Increase the balance of account_id 1006 by 25000.
update accounts set balance = balance+2500 where account_id = 1006;
select * from accounts;

-- Task 45: Increase the balance of all Savings accounts by 5000.
select account_id from accounts where  account_type = 'Savings';
update accounts set balance = balance+5000 where account_id = (1003, 1005);
select * from accounts;

-- Task 46: Update all accounts from Pune branch locations to city = 'Pune City'.
select account_id from accounts where  city = 'Pune';
update accounts set branch = 'Pune City' where account_id = 1003 or  account_id = 1005;
select * from accounts;

-- Task 47: Increase credit_score by 10 for Active accounts having credit_score below 750. 
SET SQL_SAFE_UPDATES = 0;
UPDATE accounts
SET credit_score = credit_score + 10
WHERE status = 'Active'
  AND credit_score < 750;
SET SQL_SAFE_UPDATES = 1;

-- Task 48: Change status to Dormant for accounts whose balance is below 20000.
SET SQL_SAFE_UPDATES = 0;
UPDATE accounts
SET status = 'Dormant'
WHERE balance < 20000;
SET SQL_SAFE_UPDATES = 1;

-- Part E - DELETE Operations

-- Task 49: Delete the account whose account_id = 1005.
DELETE FROM accounts WHERE account_id = 1005;

-- Task 50: Delete the account whose account_number = 'ACC10004'.
DELETE FROM accounts 
WHERE account_number = 'ACC10004';

-- Task 51: Delete all accounts having status = 'Closed'.
select * from accounts where status = 'Closed';
delete from accounts where status = 'closed';

-- Task 52: Delete accounts whose balance is less than 10000 OR credit_score is less than 600.
delete from accounts where balance < 100000 and credit_score < 600;
 
-- Task 53: Delete accounts from a selected city where status is Dormant.
DELETE FROM accounts
WHERE city = 'Mumbai'
  AND status = 'Dormant';

-- Part F - ALTER TABLE / DDL Practice

-- Task 54: Add a new column: email VARCHAR(100).
alter table accounts add email varchar(100);

-- Task 55: Add a new column: mobile VARCHAR(15).
alter table accounts add column mobile varchar(15);

-- Task 56: Change the size of branch to VARCHAR(100).
alter table accounts modify branch varchar(100);

-- Task 57: Rename column customer_name to name. 
alter table accounts rename column customer_name to name;

-- Task 58: Delete the mobile column.
alter table accounts drop column mobile;

-- Part G - Table-Level DDL Practice

-- Task 59: Add a column: account_category VARCHAR(30), update at least two records, 
-- then rename the accounts table to bank_accounts.
select * from accounts;
alter table accounts add column  account_category varchar(30) ;
update accounts set balance = 500000 where account_id = 1003;
update accounts set status = 'close' where account_id = 1004;
rename table accounts to bank_accounts;
select * from bank_accounts;



-- Task 60: Display the structure of bank_accounts, then remove all records using TRUNCATE TABLE and finally 
-- delete the table using DROP TABLE.


