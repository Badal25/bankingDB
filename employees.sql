CREATE TABLE employees (
		emp_id SERIAL PRIMARY KEY,
		name VARCHAR(100) NOT NULL,
		position VARCHAR(20),
		department VARCHAR(50),
		hired_date DATE,
		Salary 	NUMERIC(10,2)	
);
ALTER TABLE employees
ALTER COLUMN name TYPE VARCHAR(100),
ALTER COLUMN name SET NOT NULL,
ALTER COLUMN position TYPE VARCHAR(50),
ALTER COLUMN department TYPE VARCHAR(50);



SELECT * FROM EMPLOYEES;

INSERT INTO employees(name,position,department,hired_date,Salary)
values ('Ajit Sharma', 'Data Analyst', 'Data Science', '2022-05-15', 40000.00),
('Badal Wasnik', 'Data Scientist', 'Data Science', '2023-06-14', 65000.00),
('Priya Verma', 'Machine Learning Engineer', 'AI & Analytics', '2021-11-20', 80000.00),
('Rahul Deshmukh', 'Data Engineer', 'Data Engineering', '2022-08-10', 55000.00),
('Sneha Nair', 'Business Intelligence Analyst', 'Business Intelligence', '2024-01-05', 45000.00),
('Vikram Singh', 'Senior Data Scientist', 'Data Science', '2020-03-18', 95000.00);

TRUNcate table employees;
TRUNCAte table employees restart identity;


Create TABLE employee2(
emp_id INT PRIMARY KEY,
name VARCHAR(100) NOT NULL,
position VARCHAR(50),
department VARCHAR(50),
hired_date DATE,
salary NUMERIC(10,2)
);

SELECT * FROM employee2;

INSERT INTO employee2(emp_id,name,position,department,hired_date,Salary)
values (1000,'Ajit Sharma', 'Data Analyst', 'Data Science', '2022-05-15', 40000.00),
(1001,'Badal Wasnik', 'Data Scientist', 'Data Science', '2023-06-14', 65000.00),
(1002,'Priya Verma', 'Machine Learning Engineer', 'AI & Analytics', '2021-11-20', 80000.00),
(1003,'Rahul Deshmukh', 'Data Engineer', 'Data Engineering', '2022-08-10', 55000.00),
(1004,'Sneha Nair', 'Business Intelligence Analyst', 'Business Intelligence', '2024-01-05', 45000.00),
(1005,'Vikram Singh', 'Senior Data Scientist', 'Data Science', '2020-03-18', 95000.00);

DELETE FROM employee2 /* ROW DELETE KARNE KE LIYE DELETE USE KARTE HAI */
WHERE emp_id = 1000;

/* COLUMN DELETE KARNE KE LIYE DROP USE KARTE HAI  TABLE AND DATABASE DELETE KARNE KE LIYE USE KARTE HAI */
ALTER TABLE employee2
DROP COLUMN salary;

ALTER TABLE employee2
ADD COLUMN salary NUMERIC(10,2); /* JO COLUME DELETTE KI THI USE ADD KARNE KE LIYE USE KIYA HAI */

TRUNCATE employee2; /* TABLE KE ANDAR KA PURA DATA DELETE KARNE KE LIYE USE KARTE HAI TRUNCATE */

DROP TABLE IF EXISTS employee2; /* AGAR TABALE EXISTS KARTA HAI TO DELETE KAR DO TABLE DELETE KARNE KE LIYE */

DROP TABLE employee2;

CREATE TABLE users (
user_id INT PRIMARY KEY, /* PRIMARY KEY CONATRAIN */
name VARCHAR(100) NOT NULL, /* NOT NULL CONSTARINT */
email VARCHAR(50) UNIQUE , /* UNIQUE CONSTRAINT */
age INT CHECK (AGE>=18),
reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

SELECT * FROM USERS;

INSERT INTO users(user_id,name, email, age)
VALUES(1,'Badal','wasnikbadal@gmail.com',19);

-- UPDATE QUEARY --
/* DROP THE TABLE IS ALREADY EXISTS */
DROP TABLE users;
/* CREATE USERS TABLES */
CREATE TABLE users(
user_id INT PRIMARY KEY,
username VARCHAR (100) NOT NULL,
useremail VARCHAR (50) NOT NULL,
age INT,
city VARCHAR (50)
);

SELECT * FROM users;

-- INSERT FIVE SAMPLE INTO THE TABLES
INSERT INTO users (user_id, username, useremail, age, city)
VALUES 
(1, 'Aarav Sharma', 'aarav@example.com', 25, 'Mumbai'),
(2, 'Priya Patel', 'priya@example.com', 28, 'Delhi'),
(3, 'Rohan Verma', 'rohan@example.com', 30, 'Bengaluru'),
(4, 'Sneha Nair', 'sneha@example.com', 24, 'Pune'),
(5, 'Vikram Singh', 'vikram@example.com', 32, 'Hyderabad');


-- update quarys use 

UPDATE users
SET age = 26
WHERE user_id = 1;

