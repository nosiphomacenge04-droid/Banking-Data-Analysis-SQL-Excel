create database BankDB 
use BankDB ;

create table Branches (
Branch_Code int  primary key,
Branch_Name varchar (50) not null,
Branch_Manager varchar(30), 
Branch_Address varchar(50),
City varchar(15),
Region varchar(20));

INSERT INTO Branches (Branch_Code, Branch_Name, Branch_Manager, Branch_Address, City, Region) VALUES
(101, 'Durban Central', 'Thandi Nkosi', '45 West Street', 'Durban', 'KZN'),
(102, 'Umhlanga Branch', 'John Smith', '12 Lagoon Drive', 'Durban', 'KZN'),
(103, 'Pinetown Branch', 'Sipho Dlamini', '20 Josiah Gumede Rd', 'Pinetown', 'KZN'),
(104, 'Johannesburg Main', 'Amanda Botha', '100 Main Street', 'Johannesburg', 'Gauteng'),
(105, 'Sandton Branch', 'Raj Patel', '5 Sandton Drive', 'Sandton', 'Gauteng'),
(106, 'Cape Town Central', 'Sarah Jones', 'Long Street 101', 'Cape Town', 'Western Cape'),
(107, 'Pretoria Branch', 'Peter Molefe', 'Church Square 5', 'Pretoria', 'Gauteng'),
(108, 'Ballito Branch', 'Linda Zulu', 'Ballito Junction', 'Ballito', 'KZN'),
(109, 'Chatsworth Branch', 'Devi Naidoo', 'Chatsworth Centre', 'Durban', 'KZN'),
(110, 'Westville Branch', 'Chris Brown', 'Westville Mall', 'Westville', 'KZN');

create table ClientRecords (
Account_Number int primary key,
First_Name Varchar(20) not null,
Surname Varchar(15) not null, 
Account_Type varchar (20),
Client_Address Varchar (30),
Date_Opened date,
Account_Status varchar(20),
Account_Balance decimal(8,2),
Branch_code int ,
Foreign key (Branch_Code) references branches(Branch_code));

INSERT INTO ClientRecords (Account_Number, First_Name, Surname, Account_Type, Client_Address, Date_Opened, Account_Status, Account_Balance, Branch_code) VALUES
(1001, 'Bongani', 'Zulu', 'Savings', '15 Musgrave Rd', '2023-01-15', 'Active', 15000.50, 109),
(1002, 'Thandokuhle', 'Mkhize', 'Current', '22 Umhlanga Rocks', '2022-06-20', 'Active', 45200.00, 105),
(1003, 'James', 'Smith', 'Savings', '8 Pinetown Ave', '2023-03-10', 'Active', 2300.75, 102),
(1004, 'Lerato', 'Mbeki', 'Business', 'JHB Central 45', '2021-11-05', 'Active', 125000.00, 104),
(1005, 'Fatima', 'Mdluli', 'Savings', 'Sandton 12', '2024-01-12', 'Active', 8750.30, 103),
(1006, 'David', 'Wilson', 'Current', 'Sea Point 99', '2022-09-30', 'Dormant', 5600.00, 108),
(1007, 'Noluthando', 'Dlamini', 'Savings', 'Pretoria East 10', '2023-07-22', 'Active', 34200.90, 106),
(1008, 'Asande', 'Masondo', 'Current', 'Ballito Bay 5', '2024-02-01', 'Active', 18500.00, 104),
(1009, 'Shannon', 'Pillay', 'Savings', 'Chatsworth 101', '2021-05-18', 'Active', 9500.25, 107),
(1010, 'Michael', 'Brown', 'Business', 'Westville 20', '2020-12-11', 'Active', 250000.00, 101),
(1011, 'Zanele', 'Khumalo', 'Savings', 'Durban North 3', '2023-10-10', 'Active', 11200.00, 105),
(1012, 'Jason', 'Govender', 'Current', 'Umhlanga 55', '2024-03-15', 'Active', 67800.45, 109);

create table Trans(
Transaction_id int Primary key,
Account_Number int ,
Branch_Code int ,
Transaction_date date,
Transaction_Classification varchar(50), 
Payment_method varchar(30),
Amount decimal(12,2),
Foreign key (Account_number) references clientRecords(Account_number),
Foreign key (branch_Code) references Branches(Branch_Code)
);

INSERT INTO Trans (Transaction_id, Account_Number, Branch_Code, Transaction_date, Transaction_Classification, Payment_method, Amount) VALUES
(1, 1001, 101, '2026-08-01', 'Deposit', 'Cash', 5000.00),
(2, 1001, 101, '2026-08-05', 'Withdrawal', 'ATM', 1000.00),
(3, 1002, 102, '2026-08-02', 'Deposit', 'EFT', 10000.00),
(4, 1002, 102, '2026-08-10', 'Purchase', 'Card', 2500.50),
(5, 1003, 103, '2026-08-03', 'Deposit', 'Cash', 1500.00),
(6, 1004, 104, '2026-07-20', 'Transfer In', 'EFT', 50000.00),
(7, 1004, 104, '2026-08-12', 'Withdrawal', 'Cheque', 20000.00),
(8, 1005, 105, '2026-08-11', 'Deposit', 'Cash', 3000.00),
(9, 1006, 106, '2026-08-01', 'Purchase', 'Card', 450.00),
(10,1007, 107, '2026-08-09', 'Deposit', 'EFT', 12000.00),
(11, 1008, 108, '2026-08-08', 'Withdrawal', 'ATM', 2000.00),
(12, 1009, 109, '2026-08-07', 'Deposit', 'Cash', 4000.00),
(13, 1010, 110, '2026-08-06', 'Transfer Out', 'EFT', 75000.00),
(14, 1011, 101, '2026-08-12', 'Deposit', 'Cash', 5000.00),
(15, 1012, 102, '2026-08-13', 'Purchase', 'Card', 1200.00),
(16, 1002, 101, '2026-08-14', 'Withdrawal', 'ATM', 3000.00),
(17, 1004, 104, '2026-08-15', 'Purchase', 'Card', 5500.75),
(18, 1007, 101, '2026-08-16', 'Deposit', 'EFT', 8000.00),
(19, 1010, 104, '2026-08-17', 'Deposit', 'EFT', 30000.00),
(20, 1001, 101, '2026-08-18', 'Purchase', 'Card', 750.25);

-- How many Accounts are in the bank?
select count(*) as Total_Accounts from ClientRecords;

-- How many Customers have each account type?
Select Account_Type, Count(*) As Number_of_Customers
from ClientRecords
Group by Account_Type;

-- What is average account balance?
select Avg(Account_Balance) as Average_Balance
from clientrecords;

-- what is the highest account balance?
select max(Account_balance) as Highest_balance
from ClientRecords;

--what is the lowest ccount balance?
select min(Account_Balance) as Lowest_balance
from ClientRecords;

--Which customers have an account balance abouve R50,000?
select First_Name,Surname,Account_balance,Account_Type
from ClientRecords
where Account_Balance >50000;

--How many accounts does each branch have?
select  b.Branch_Name,b.City,Count(c.Account_Number) As Total_Accounts
from Branches b
left Join ClientRecords c on b.Branch_Code=c.Branch_code
group by b.Branch_Name,b.City;

--what is the total account balance for each branch?
SELECT b.Branch_Name, SUM(c.Account_Balance) AS Total_Balance
FROM Branches b
JOIN ClientRecords c ON b.Branch_Code = c.Branch_code
GROUP BY b.Branch_Name;

--which branch has the highest total account balance:
SELECT Branch_Name, Total_Balance FROM (
    SELECT b.Branch_Name, SUM(c.Account_Balance) AS Total_Balance
    FROM Branches b
    JOIN ClientRecords c ON b.Branch_Code = c.Branch_code
    GROUP BY b.Branch_Name
) AS BranchTotals
WHERE Total_Balance = (
    SELECT MAX(Total_Bal) FROM (
        SELECT SUM(Account_Balance) AS Total_Bal 
        FROM ClientRecords GROUP BY Branch_code
    ) as x);

-- which branch has the most customers?
SELECT TOP 1 b.Branch_Name, COUNT(c.Account_Number) AS Customer_Count
FROM Branches b
JOIN ClientRecords c ON b.Branch_Code = c.Branch_code
GROUP BY b.Branch_Name
ORDER BY Customer_Count DESC;

-- what is the average account balance for each brance
select b.Branch_Name, avg(c.Account_Balance) as Average_Balance
from Branches b
join ClientRecords c on b.Branch_code = c.Branch_code
group by Branch_Name;

--Which city has the highest total customer balance?
SELECT Max( b.City) as City, SUM(c.Account_Balance) AS Total_City_Balance
FROM ClientRecords c
JOIN Branches b ON b.Branch_Code = c.Branch_code
GROUP BY b.City
ORDER BY Total_City_Balance DESC;

--what is the total transaction value?
SELECT SUM(Amount) AS Total_Transaction_Value FROM Trans;

--How many transactions have been made?
SELECT COUNT(*) AS Total_Transactions FROM Trans;

--What is the average transaction amount?
select AVG(Amount) as  average_transaction_amount
from Trans;
 --what is the lagest transaction?
 select Max(Amount) as  largest_transaction
 from Trans;
 
 --How many deposits,withdrawals and transferes were made?
 SELECT 
  Transaction_Classification,
  COUNT(*) AS Total_count
FROM trans
GROUP BY Transaction_Classification;

--Or
SELECT
  COUNT(CASE WHEN Transaction_Classification = 'deposit' THEN 1 END) AS total_deposits,
  COUNT(CASE WHEN Transaction_Classification = 'withdrawal' THEN 1 END) AS total_withdrawals,
  COUNT(CASE WHEN Transaction_Classification = 'transfer' THEN 1 END) AS total_transfers
FROM trans;

--what is the total amount deposit?
 select Sum(Amount) as Total_deposited 
 from Trans
 where Transaction_Classification ='Deposit';

--what is the total amount withdrawn?
 SELECT SUM(amount) AS Total_withdrawn
FROM trans
WHERE Transaction_Classification = 'withdrawal';

--which branch processes the most transactions?
SELECT top 1 b.Branch_Name, COUNT(t.Transaction_id) AS Transaction_count
FROM Branches b
join Trans t on b.Branch_Code = t.Branch_Code
GROUP BY b.Branch_Name
ORDER BY transaction_count DESC

-- or 
SELECT b.Branch_Name, COUNT(t.Transaction_id) AS Transaction_count
FROM Branches b
join Trans t on b.Branch_Code = t.Branch_Code
GROUP BY b.Branch_Name
ORDER BY transaction_count DESC

--Write a query to display records of all transactions showing the following details:Branch Code, Account Number, Transaction Classification, Date, Amount   
SELECT 
  b.Branch_Code, 
  c.Account_Number, 
  t.Transaction_Classification, 
  t.Transaction_Date, 
  t.Amount
FROM Trans t
JOIN Branches b ON t.Branch_Code = b.Branch_Code
JOIN ClientRecords c ON t.Account_Number = c.Account_Number;

--Given an Account Number =1007, write a query to show transactions captured for that client showing the Account Number, Branch Code, Branch Name, Transaction Classification, Date and the Amount. 
SELECT 
    c.Account_Number,
    b.Branch_Code,
    b.Branch_Name,
    t.Transaction_Classification,
    t.Transaction_date,
    t.Amount
FROM Branches b
JOIN ClientRecords c ON b.Branch_Code = c.Branch_code
JOIN Trans t ON c.Account_Number = t.Account_Number
WHERE c.Account_Number = 1007
ORDER BY t.Amount DESC;

--show each  transaction together with the customer's name
SELECT 
    t.Transaction_id,
    t.Transaction_date,
    t.Transaction_Classification,
    t.Amount,
    c.First_Name + ' ' + c.Surname AS Customer_Name,
    c.Account_Number
FROM Trans t
JOIN ClientRecords c ON t.Account_Number = c.Account_Number;

--which customers have made transactions?
SELECT DISTINCT c.Account_Number, c.First_Name, c.Surname
FROM ClientRecords c
JOIN Trans t ON c.Account_Number = t.Account_Number;

--which customers have never made a transaction
select c.Account_number,c.First_Name,c.Surname 
from ClientRecords c
join trans t on t.Account_Number = c.Account_Number
where t.Transaction_id is null

SELECT Account_Number, First_Name, Surname
FROM ClientRecords
WHERE Account_Number NOT IN (SELECT Account_Number FROM Trans);

--Write a query to show all transaction records in ascending order of the Account Number
SELECT * FROM Trans
ORDER BY Account_Number ASC

--which branch has no Transactions
SELECT Branch_Code, Branch_Name FROM Branches
WHERE Branch_Code NOT IN (SELECT Branch_Code FROM Trans);

--Find Customers who have both deposits and withdrawals
SELECT c.Account_Number, c.First_Name, c.Surname
FROM ClientRecords c
WHERE c.Account_Number IN (SELECT Account_Number FROM Trans WHERE Transaction_Classification = 'Deposit')
AND c.Account_Number IN (SELECT Account_Number FROM Trans WHERE Transaction_Classification = 'Withdrawal');

--find top 5 customers by total transaction
SELECT TOP 5 c.Account_Number, c.First_Name, c.Surname, SUM(t.Amount) AS Total_Transacted
FROM ClientRecords c
JOIN Trans t ON c.Account_Number = t.Account_Number
GROUP BY c.Account_Number, c.First_Name, c.Surname
ORDER BY Total_Transacted DESC;

--Find top 5 customers by account balance
SELECT TOP 5 Account_Number, First_Name, Surname, Account_Balance
FROM ClientRecords
ORDER BY Account_Balance DESC;

--which customers have made a balance greater than the average account balance ?
SELECT First_Name, Surname, Account_Balance
FROM ClientRecords
WHERE Account_Balance > (SELECT AVG(Account_Balance) FROM ClientRecords);

--which customers have made a transaction greater than the average transaction amaount?
SELECT DISTINCT c.First_Name, c.Surname, t.Amount
FROM ClientRecords c
JOIN Trans t ON c.Account_Number = t.Account_Number
WHERE t.Amount > (SELECT AVG(Amount) FROM Trans);

--which Account type has the highest average balance
SELECT TOP 1 Account_Type, AVG(Account_Balance) AS Avg_Balance
FROM ClientRecords
GROUP BY Account_Type
ORDER BY Avg_Balance DESC;

--what percentage of customers have a savings account
SELECT 
  (COUNT(CASE WHEN Account_Type = 'Savings' THEN 1 END) * 100.0 / COUNT(*)) AS Savings_Percentage
FROM ClientRecords;

--What percentage of transaction are withdrawals?
SELECT 
  (COUNT(CASE WHEN Transaction_Classification = 'Withdrawal' THEN 1 END) * 100.0 / COUNT(*)) AS Withdrawal_Percentage
FROM Trans;

--caregorise customers based on account balance
SELECT 
    First_Name, Surname, Account_Balance,
    CASE 
        WHEN Account_Balance < 10000 THEN 'Low Balance'
        WHEN Account_Balance BETWEEN 10000 AND 50000 THEN 'Medium Balance'
        ELSE 'High Balance'
    END AS Balance_Category
FROM ClientRecords
ORDER BY Account_Balance DESC;


CREATE VIEW vw_Dashboard AS
SELECT b.Branch_Code, b.Branch_Name, c.Account_Number, t.Transaction_Classification, t.Transaction_Date, t.Amount
FROM Trans t
JOIN Branches b ON t.Branch_Code = b.Branch_Code
JOIN ClientRecords c ON t.Account_Number = c.Account_Number;

