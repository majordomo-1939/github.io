CREATE TABLE JFCoopEmployee (
EmployeeKey INT IDENTITY PRIMARY KEY,
FirstName varchar(50),
LastName varchar(50),
DepartmentName varchar(50),
Hiredate DATE,
DateofBirth DATE,
EmailAddress varchar(50),
MaritalStatus varchar(1),
Gender varchar(1),
EmployeeStatus varchar(20),
Vacationhours varchar(50),
Sickleave varchar(50),
Salary INT
);

ALTER TABLE [dbo].[JFCoopEmployee]
ADD TITLE Varchar(50);
SELECT* FROM [dbo].[JFCoopEmployee]

INSERT INTO [dbo].[JFCoopEmployee] (FirstName,LastName,DepartmentName,Hiredate,DateofBirth,EmailAddress,
MaritalStatus,Gender,EmployeeStatus,Vacationhours,Sickleave,Salary,TITLE)
VALUES
('OluwaToyin', 'Ajijola', 'Administration', '2010-01-01', '1990-03-01', 'tyajijola@joyfulfarmers.com', 'M', 'M', 'Active', 240, 40, 500000, 'CEO'),
('OluwaTosin', 'Oluwashina', 'IT/SQL Developer', '2010-01-01', '1974-07-10', 'titofash@joyfulfarmers.com', 'M', 'M', 'Active', 240, 40, 400000, 'IT Director'),
('Oloaoluwa', 'Owolawi', 'Logistics', '2010-02-13', '1990-10-15', 'olaoluwa@joyfulfarmers.com', 'M', 'M', 'Active', 210, 30, 300000, 'Logistic Manager'),
('OluwaTominiy', 'Adegunloye', 'Debt Retrieval', '2010-12-12', '1960-11-18', 'niyi@joyfulfarmers.com', 'M', 'M', 'Non Active', 210, 30, 300000, 'Manager'),
('Lanre', 'Bolarin', 'IT/Software', '2014-02-02', '1974-01-01', 'lanre@joyfulfarmers.com', 'M', 'M', 'Active', 210, 30, 300000, 'Manager'),
('Afolake', 'Olu Lawanson', 'Administration', '2014-03-01', '1964-09-29', 'afolake@joyfulfarmers.com', 'M', 'F', 'Active', 210, 30, 300000, 'Assistant Manager'),
('Olawanle', 'Jaji', 'Sales', '2014-02-01', '1958-05-19', 'jaji@joyfulfarmers.com', 'M', 'F', 'Active', 210, 30, 280000, 'Manager'),
('Mike', 'Ajayi-Isuku', 'Administration', '2015-02-04', '1990-04-04', 'mike@joyfulfarmers.com', 'M', 'M', 'Active', 210, 30, 290000, 'Secretary'),
('Collins', 'Ossai', 'Transportation', '2016-06-06', '1990-05-15', 'collins@joyfulfarmers.com', 'M', 'M', 'Active', 210, 30, 270000, 'Manager'),
('Adeoye', 'Ige', 'Transportation', '2014-03-03', '1955-08-07', 'adeoye@joyfulfarmers.com', 'M', 'M', 'Active', 210, 30, 280000, 'Supervisor');

SELECT* FROM [dbo].[JFCoopEmployee]

CRAETE TABLE JFCoopLoans (
EmployeeKey INT IDENTITY PRIMARY KEY,
Name varchar(50),
PhoneNumber INT,
Bank varchar(50),
AccountNumber INT,
Location varchar(50),
Sex varchar(10),
Amount INT,
---duplicate MergedTable
SELECT * INTO [dbo].[MergedTable_Copy]
FROM [dbo].[MergedTable];

SELECT* FROM[dbo].[MergedTable_Copy]
SELECT* FROM [dbo].[MemberLoans]

ALTER TABLE [dbo].[MemberLoans]
ADD 
    LoanType VARCHAR(50),         -- Assuming LoanType is a descriptive text column
    LoanAmount INT,               -- Assuming LoanAmount is a whole number
    InterestRate DECIMAL(5, 2),   -- Assuming InterestRate is a percentage with two decimal places
    RepaymentStatus VARCHAR(50);  -- Assuming RepaymentStatus is a descriptive text column
--Populate LoanType column
UPDATE [dbo].[MemberLoans]
SET LoanType ='Agriculture Loan';

UPDATE [dbo].[MemberLoans]
SET InterestRate=Amount* 0.0005;

--CREATE TABLE COOP-PRODUCTS
CREATE TABLE JFCoopProducts (
ProductID INT IDENTITY PRIMARY KEY,
ProductName varchar(50),
RetailPrice varchar(50),
DealerPrice varchar(50),
ProductStatus varchar(50),
ProductionDate DATE,
ExpiryDate DATE,
);


SELECT* FROM [JFCoop].[dbo].[JFCoopProducts]

ALTER TABLE [dbo].[JFCoopProducts]
ADD ProductID INT IDENTITY(1,1) PRIMARY KEY;


UPDATE [JFCoop].[dbo].[JFCoopProducts]
SET ProductName = CASE 
    WHEN ProductID = 1 THEN 'Apple'
    WHEN ProductID = 2 THEN 'Avocado Pear'
    WHEN ProductID = 3 THEN 'Banana'
    WHEN ProductID = 4 THEN 'Banana Flour'
    WHEN ProductID = 5 THEN 'Cashew'
    WHEN ProductID = 6 THEN 'Cashew Nut'
    WHEN ProductID = 7 THEN 'Cassava'
    WHEN ProductID = 8 THEN 'Cassava Flour'
    WHEN ProductID = 9 THEN 'Yam'
    WHEN ProductID = 10 THEN 'Yam Flour'
    WHEN ProductID = 11 THEN 'Potato'
    WHEN ProductID = 12 THEN 'Pumpkin'
    WHEN ProductID = 13 THEN 'Pumpkin Leaf'
    WHEN ProductID = 14 THEN 'Garri'
    WHEN ProductID = 15 THEN 'Cocoyam'
    WHEN ProductID = 16 THEN 'Garden Egg'
    WHEN ProductID = 17 THEN 'Scent Leaf'
    WHEN ProductID = 18 THEN 'Curry Leaf'
    WHEN ProductID = 19 THEN 'Sugar Cane'
    WHEN ProductID = 20 THEN 'Cowpea'
    WHEN ProductID = 21 THEN 'Beans'
    WHEN ProductID = 22 THEN 'Breadfruit'
    WHEN ProductID = 23 THEN 'Guava'
    WHEN ProductID = 24 THEN 'Sweet Potato'
    WHEN ProductID = 25 THEN 'Irish Potato'
    WHEN ProductID = 26 THEN 'Orange'
    WHEN ProductID = 27 THEN 'Lime'
    WHEN ProductID = 28 THEN 'Lemon'
    WHEN ProductID = 29 THEN 'Cherry'
    WHEN ProductID = 30 THEN 'Ugwu'
    WHEN ProductID = 31 THEN 'Sweet Corn'
    WHEN ProductID = 32 THEN 'Dry Corn'
    WHEN ProductID = 33 THEN 'Corn Flour'
    ELSE ProductName -- Keeps the original name if no match is found
END;
--Create Transaction table for [dbo].[MergerdTable]
CREATE TABLE [dbo].[MergedTableTransactions] (
    TransactionID INT IDENTITY(1,1) PRIMARY KEY,
NewPrimaryKey INT NOT NULL, -- Assuming MergedTable has a primary key or unique identifier
    DEPOSITS DECIMAL(18,2),
    WITHDRAWALS DECIMAL(18,2),
    TRANSFERS DECIMAL(18,2)
);
--STEP 2
INSERT INTO [dbo].[MergedTableTransactions] (NewPrimaryKey, DEPOSITS, WITHDRAWALS, TRANSFERS)
SELECT 
    NewPrimaryKey, -- Replace `ID` with the primary key column of `[dbo].[MergedTable]`
    RAND(CHECKSUM(NEWID())) * 1000 AS DEPOSITS,
    RAND(CHECKSUM(NEWID())) * 500 AS WITHDRAWALS,
    RAND(CHECKSUM(NEWID())) * 700 AS TRANSFERS
FROM [dbo].[MergedTable]
WHERE NewPrimaryKey <= 11017; -- Ensure only 11,017 rows are inserted

SELECT* FROM [dbo].[MergedTableTransactions]
--Join
SELECT MT.NAME,MT.ACCOUNTNUMBER,MT.AMOUNT,MTT.DEPOSITS,MTT.WITHDRAWALS,MTT.TRANSFERS
FROM [dbo].[MergedTable] AS MT
INNER JOIN [dbo].[MergedTableTransactions] AS MTT
ON MT.NewPrimaryKey=MTT.NewPrimaryKey




