
-- Step 1: Existing database select karo
USE BankingDB;

-- Step 2: Customers table create karo
CREATE TABLE IF NOT EXISTS Customers (
    CustomerID INT,
    Firstname VARCHAR(50),
    Lastname VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(10),
   
);

 -- Step : Table ko modified karo or add karo
 
 -- Prinary key add karo
ALTER table Customers -- Coloum add kiya hai 
ADD AccountCreationDate Date;
alter table customers -- Coloume are added Date Of Birth Of Coustoners
Add DateOfBirth date;
alter table customers -- Phone number data type modifyed karne ke liye
modify Phone varchar(20);

alter table customers -- Ish me primary Key add ki hai
Add	constraint Pk_CoustomerID primary key (CustomerID);

-- not Null Constraint are added 
alter table Customers
modify Firstname VARCHAR(50) Not Null;

-- Unique key 
alter table Customers
Add Constraint Ug_EMail Unique (Email);

-- default values\
alter table Customers
Alter Column Lastname set default 'NA';

-- Step 4: Account table create karo
 create table Accounts (
 AccountID int,
 AccountType varchar(20),
 Balance decimal(10,2)
 );
 
  -- Step : Table ko modified karo or add karo
  
   -- Prinary key add karo
  alter table accounts
  add constraint PK_Account_ID primary key (AccountID);
  
   -- Foregin key add karo
ALTER TABLE Accounts
ADD CustomerID INT;

ALTER TABLE Accounts
ADD CONSTRAINT FK_Accounts_Customers
FOREIGN KEY (CustomerID)
REFERENCES Customers(CustomerID);

Alter TABLE Accounts
ADD BranchID int;

ALTER TABLE Accounts
ADD CONSTRAINT FK_BranchID
FOREIGN KEY (BranchID)
REFERENCES Branches( BranchID );

alter table accounts   -- balance check karne ke liye use kiya hai
add constraint check_mini_balance
check ( Balance >= 1000);





-- Step 5: transaction table create karo
create table Transactions (
TransactionID int,
TransactionDate date,
Amount decimal(10,2),
TransactionType varchar(15)
);

-- Step : Table ko modified karo or add karo
 -- Prinary key add karo
  alter table transactions
  add constraint PK_Transaction_ID primary key (TransactionID);
  
  -- Foregin Key
  Alter TABLE transactions
ADD AccountID int;

ALTER TABLE transactions
ADD CONSTRAINT FK_AccountID
FOREIGN KEY (AccountID)
REFERENCES accounts( AccountID );

  

-- Step 6: branches table create karo
Create table Branches (
BranchID int,
BranchName varchar(100),
BranchAddress varchar(200),
BranchPhone varchar(15)
);
-- Step : Table ko modified karo or add karo
 -- Prinary key add karo
  alter table branches
  add constraint PK_Branches_ID primary key (BranchID);
  
  
  
  

-- Step 7: Account branches table create karo
create table AccountBranches(
AssignmentDate date
);
drop table accountbranches; -- table delete karne ke liye drop queary

-- Step 8: Loans table create karo
 create table Loans (
 LoanID int,
 LoanAmount decimal(10,2),
 InterestRate decimal(5,2),
 StartDate date,
 EndDate date
 );
 -- Step : Table ko modified karo or add karo
  -- Prinary key add karo
  alter table loans
  add constraint PK_loan_ID primary key (LoanID);
  
   -- Foregin Key
  Alter TABLE loans
ADD CustomerID int;

ALTER TABLE loans
ADD CONSTRAINT FK_CustomerID
FOREIGN KEY (CustomerID)
REFERENCES customers( CustomerID );
  
 
 -- Step 9: Table structure check karo

DESC Customers;
desc accounts;
desc accountbranches;
desc branches;
desc loans;
desc transactions;

select * from Customers;
select * from accounts;
select * from accountbranches;
select * from branches;
select * from loans;
select * from transactions;
