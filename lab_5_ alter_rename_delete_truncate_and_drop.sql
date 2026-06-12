--Alter, Rename Operation 

--Part – A: 
--Use Deposit table of lab-1. 
 SELECT * FROM DEPOSIT;
--From the above given tables perform the following queries (ALTER, RENAME Operation): 
--1. Add two more columns City VARCHAR (20) and Pincode INT. 
ALTER TABLE DEPOSIT ADD CITY VARCHAR(20), PINCODE INT;

--2. Add column state VARCHAR(20). 
ALTER TABLE DEPOSIT ADD STATE VARCHAR(20);

--3. Change the size of CNAME column from VARCHAR (50) to VARCHAR (35). 
ALTER TABLE DEPOSIT ALTER COLUMN CNAME VARCHAR(35);

--4. Change the data type DECIMAL to INT in amount Column. 
ALTER TABLE DEPOSIT ALTER COLUMN AMOUNT INT;

--5. Delete Column City from the DEPOSIT table. 
ALTER TABLE DEPOSIT DROP COLUMN CITY;

--6. Rename Column ActNo to ANO.
SP_RENAME 'DEPOSIT.ACTNO', 'ANO';

--7. Change name of table DEPOSIT to DEPOSIT_DETAIL.
SP_RENAME 'DEPOSIT', 'DEPOSIT_DETAIL';
SELECT * FROM DEPOSIT_DETAIL;

--Part – B: 
--1. Rename Column ADATE to AOPENDATE OF DEPOSIT_DETAIL table. 
SP_RENAME 'DEPOSIT_DETAIL.ADATE', 'AOPENDATE'; 

--2. Delete Column AOPENDATE from the DEPOSIT_DETAIL table. 
ALTER TABLE DEPOSIT_DETAIL DROP COLUMN AOPENDATE;

--3. Rename Column CNAME to CustomerName. 
SP_RENAME 'DEPOSIT_DETAIL.CNAME', 'CUSTOMERNAME';

--4. Add Column country.
--Part – C: 
--Create following table using query according to the definition.
--STUDENT_DETAIL 
--Column_Name DataType 
--Enrollment_No VARCHAR(20) 
--Name VARCHAR(25) 
--CPI DECIMAL(5,2) 
--Birthdate DATETIME 
CREATE TABLE STUDENT_DETAIL ()
--From the above given tables perform the following queries (ALTER, RENAME Operation): 
--1. Add two more columns City VARCHAR (20) (Not null) and Backlog INT (Null). 
--2. Add column department VARCHAR (20) Not Null. 
--3. Change the size of NAME column of student_detail from VARCHAR (25) to VARCHAR (35). 
--4. Change the data type DECIMAL to INT in CPI Column. 
--5. Delete Column City from the student_detail table. 
--6. Rename Column Enrollment_No to ENO. 
--7. Change name of table student_detail to STUDENT_MASTER. 
 
--DELETE, Truncate, Drop Operation 
--Part – A: 
--Use Deposit_Detail table (Altered table of DEPOSIT) 
 
--DEPOSIT_DETAIL 
--Column_Name DataType 
--ANO INT 
--CustomerName VARCHAR(35) 
--BNAME VARCHAR(50) 
--AMOUNT INT 
--PINCODE INT 
--1. Delete all the records of DEPOSIT_DETAIL table having amount less than and equals to 4000.  
--2. Delete all the accounts CHANDI BRANCH. 
--3. Delete all the accounts having account number (ANO) is greater than 102 and less than 105. 
--4. Delete all the accounts whose branch is ‘AJNI’ or ‘POWAI’ 
--5. Delete all the accounts whose account number is NULL. 
--6. Delete all the remaining records using Delete command. 
--7. Delete all the records of Deposit_Detail table. (Use Truncate) 
--8. Remove Deposit_Detail table. (Use Drop) 
 
--Part – B: 
--Create following table using query according to the definition. 
--EMPLOYEE_MASTER 
--Column_Name DataType 
--EmpNo INT 
--EmpName VARCHAR(25) 
--JoiningDate DATETIME 
--Salary DECIMAL (8,2) 
--City VARCHAR(20) 

--Insert the following records in the EMPLOYEE_MASTER table.  
--EmpNo EmpName JoiningDate Salary City 
--101 Keyur 5-1-02 12000.00 Rajkot 
--102 Hardik 15-2-04 14000.00 Ahmedabad 
--103 Kajal 14-3-06 15000.00 Baroda 
--104 Bhoomi 23-6-05 12500.00 Ahmedabad 
--105 Harmit 15-2-04 14000.00 Rajkot 
--106 Mitesh 25-9-01 5000.00 Jamnagar 
--107 Meera Null 7000.00 Morbi 
--108 Kishan 6-2-03 10000.00 NULL 
 
--From the above given tables perform the following queries (DELETE Operation): 
--1. Delete all the records of Employee_MASTER table having salary greater than and equals to 14000.  
--2. Delete all the Employees who belongs to ‘RAJKOT’ city. 
--3. Delete all the Employees who joined after 1-1-2007. 
--4. Delete the records of Employees whose joining date is null and Name is not null. 
--5. Delete the records of Employees whose salary is 50% of 20000. 
--6. Delete the records of Employees whose City Name is not empty. 
--7. Delete all the records of Employee_MASTER table. (Use Truncate) 
--8. Remove Employee_MASTER table. (Use Drop) 
--Part – C: 
--1. Summarize Delete, Truncate and Drop