
-- Step 1: Existing database select karo
USE BankingDB;

-- Step 2: Customers table create karo
CREATE TABLE IF NOT EXISTS Customers (
    CustomerID INT,
    Firstname VARCHAR(50),
    Lastname VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(10)
);

-- Step 3: Table structure check karo
DESC Customers;

select * from Customers;


