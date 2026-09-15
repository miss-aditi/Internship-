-- show databases;
-- use startersql;
-- CREATE TABLE users
-- (
--     Id INT AUTO_INCREMENT PRIMARY KEY,
--     Name VARCHAR(50) NOT NULL,
--     Email VARCHAR(50) UNIQUE NOT NULL,
--     Gender ENUM('MALE', 'FEMALE', 'OTHER'),
--     Date_Of_Birth DATE,
--     Created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
-- );

-- INSERT INTO users (Id, Name, Email, Gender, Date_Of_Birth)
-- VALUES
-- (1, 'Aditi', 'aditi@gmail.com', 'FEMALE', '2004-05-15'),
-- (2, 'Rahul', 'rahul@gmail.com', 'MALE', '2003-08-21'),
-- (3, 'Sneha', 'sneha@gmail.com', 'FEMALE', '2004-02-10'),
-- (4, 'Amit', 'amit@gmail.com', 'MALE', '2002-11-18'),
-- (5, 'Priya', 'priya@gmail.com', 'FEMALE', '2003-06-25'),
-- (6, 'Rohit', 'rohit@gmail.com', 'MALE', '2004-01-12'),
-- (7, 'Neha', 'neha@gmail.com', 'FEMALE', '2003-09-30'),
-- (8, 'Vikas', 'vikas@gmail.com', 'MALE', '2002-04-17'),
-- (9, 'Pooja', 'pooja@gmail.com', 'FEMALE', '2004-07-08'),
-- (10, 'Karan', 'karan@gmail.com', 'MALE', '2003-12-22'),
-- (11, 'Anjali', 'anjali@gmail.com', 'FEMALE', '2004-03-14'),
-- (12, 'Sahil', 'sahil@gmail.com', 'MALE', '2002-10-05'),
-- (13, 'Kavita', 'kavita@gmail.com', 'FEMALE', '2003-05-19'),
-- (14, 'Nikhil', 'nikhil@gmail.com', 'MALE', '2004-08-27'),
-- (15, 'Riya', 'riya@gmail.com', 'FEMALE', '2003-01-31');

-- CREATE TABLE addresses (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     user_id INT,
--     street VARCHAR(255),
--     city VARCHAR(100),
--     state VARCHAR(100),
--     pincode VARCHAR(10),

--     CONSTRAINT fk_user
--     FOREIGN KEY (user_id)
--     REFERENCES users(Id)
--     ON DELETE CASCADE
-- );

-- INSERT INTO addresses (user_id, street, city, state, pincode)
-- VALUES
-- (1, 'MG Road', 'Amravati', 'Maharashtra', '444601'),
-- (2, 'Station Road', 'Nagpur', 'Maharashtra', '440001'),
-- (3, 'Main Road', 'Pune', 'Maharashtra', '411001'),
-- (4, 'Gandhi Chowk', 'Akola', 'Maharashtra', '444001'),
-- (5, 'Civil Lines', 'Nagpur', 'Maharashtra', '440006'),
-- (6, 'Shivaji Nagar', 'Pune', 'Maharashtra', '411005'),
-- (7, 'Camp Area', 'Amravati', 'Maharashtra', '444602'),
-- (8, 'Wardha Road', 'Nagpur', 'Maharashtra', '440015'),
-- (9, 'FC Road', 'Pune', 'Maharashtra', '411004'),
-- (10, 'Ramdas Peth', 'Nagpur', 'Maharashtra', '440010'),
-- (11, 'Rajapeth', 'Amravati', 'Maharashtra', '444605'),
-- (12, 'Market Road', 'Akola', 'Maharashtra', '444002'),
-- (13, 'Dharampeth', 'Nagpur', 'Maharashtra', '440010'),
-- (14, 'Kothrud Road', 'Pune', 'Maharashtra', '411038'),
-- (15, 'Badnera Road', 'Amravati', 'Maharashtra', '444701');
select * from users;
-- select * from addresses;
select * from user_admin;

select name from users
union
select name from users_admin;

select users.name, users.gender, addresses.city, addresses.street, addresses.state, addresses.id from users 
inner join addresses on users.id = addresses.user_id;