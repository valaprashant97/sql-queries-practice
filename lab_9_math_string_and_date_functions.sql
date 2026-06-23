--Math functions 
--Part – A: 
--1. Display the result of 5 multiply by 30. 
SELECT 5 * 30 AS RESULT;

--2. Find out the absolute value of -25, 25, -50 and 50.
SELECT ABS(-25) AS Abs1, ABS(25) AS Abs2, ABS(-50) AS Abs3, ABS(50) AS Abs4;

--3. Find smallest integer value that is greater than or equal to 25.2, 25.7 and -25.2.
SELECT CEILING(25.2) AS Value1, CEILING(25.7) AS Value2, CEILING(-25.2) AS Value3;

--4. Find largest integer value that is smaller than or equal to 25.2, 25.7 and -25.2.
SELECT FLOOR(25.2) AS Value1, FLOOR(25.7) AS Value2, FLOOR(-25.2) AS Value3;

--5. Find out remainder of 5 divided 2 and 5 divided by 3. 
SELECT 5 % 2 AS Remainder1, 5 % 3 AS Remainder2;

--6. Find out value of 3 raised to 2nd power and 4 raised 3rd power. 
SELECT POWER(3,2) AS Power1, POWER(4,3) AS Power2;

--7. Find out the square root of 25, 30 and 50. 
SELECT SQRT(25) AS Sqrt25, SQRT(30) AS Sqrt30, SQRT(50) AS Sqrt50;

--8. Find out the square of 5, 15, and 25. 
SELECT POWER(5,2) AS Square5, POWER(15,2) AS Square15, POWER(25,2) AS Square25;

--9. Find out the value of PI. 
SELECT PI() AS PI_Value;

--10. Find out round value of 157.732 for 2, 0 and -2 decimal points. 
SELECT ROUND(157.732,2) AS Round2, ROUND(157.732,0) AS Round0, ROUND(157.732,-2) AS RoundMinus2;

--11. Find out exponential value of 2 and 3. 
SELECT EXP(2) AS Exp2, EXP(3) AS Exp3;

--12. Find out logarithm having base e of 10 and 2. 
SELECT LOG(10) AS Log10, LOG(2) AS Log2;

--13. Find out logarithm having base b having value 10 of 5 and 100. 
SELECT LOG10(5) AS LogBase10_5, LOG10(100) AS LogBase10_100;

--14. Find sine, cosine and tangent of 3.1415.
SELECT SIN(3.1415) AS SineValue, COS(3.1415) AS CosineValue, TAN(3.1415) AS TangentValue;

--15. Find sign of -25, 0 and 25. 
SELECT SIGN(-25) AS Sign1, SIGN(0) AS Sign2, SIGN(25) AS Sign3;

--16. Generate random number using function.
SELECT RAND() AS Random_Number;

--Part – B: 
--Create and insert the following records in the EMP_MASTER table.  
CREATE TABLE EMP_MASTER (
    EmpNo INT,
    EmpName VARCHAR(50),
    JoiningDate DATE,
    Salary DECIMAL(10,2),
    Commission INT,
    City VARCHAR(30),
    Dept_Code VARCHAR(10)
);

INSERT INTO EMP_MASTER
(EmpNo, EmpName, JoiningDate, Salary, Commission, City, Dept_Code)
VALUES
(101, 'Keyur',  '2002-01-05', 12000.00, 4500, 'Rajkot',     '3@g'),
(102, 'Hardik', '2004-02-15', 14000.00, 2500, 'Ahmedabad',  '3@'),
(103, 'Kajal',  '2006-03-14', 15000.00, 3000, 'Baroda',     '3-GD'),
(104, 'Bhoomi', '2005-06-23', 12500.00, 1000, 'Ahmedabad',  '1A3D'),
(105, 'Harmit', '2004-02-15', 14000.00, 2000, 'Rajkot',     '312A');

SELECT * FROM EMP_MASTER;

--1. Display the result of Salary plus Commission.
SELECT EmpNo, EmpName,JoiningDate, Salary + Commission AS TOTAL_EARNING FROM EMP_MASTER; 

--2. Find smallest integer value that is greater than or equal to 55.2, 35.7 and -55.2.
SELECT CEILING(55.2) AS Value1, CEILING(35.7) AS Value2, CEILING(-55.2) AS Value3;

--3. Find largest integer value that is smaller than or equal to 55.2, 35.7 and -55.2. 
SELECT FLOOR(55.2) AS Value1, FLOOR(35.7) AS Value2, FLOOR(-55.2) AS Value3;

--4. Find out remainder of 55 divided 2 and 55 divided by 3. 
SELECT 55 % 2 AS Remainder1, 55 % 3 AS Remainder2;

--5. Find out value of 23 raised to 2nd power and 14 raised 3rd power. 
SELECT POWER(23,2) AS Power1, POWER(14,3) AS Power2;

--Part – C: 
--1. Retrieve the details of employees whose total earnings (Salary + Commission) are greater than 15000. 
SELECT * FROM EMP_MASTER WHERE Salary + Commission > 15000;

--2. Find the details of employees whose commission is more than 25% of their salary. 
SELECT * FROM EMP_MASTER WHERE Commission > Salary * 0.25;

--3. List the employees who joined before 2005 and whose total earnings (Salary + Commission) are greater 
--than 15000. 
SELECT * FROM EMP_MASTER WHERE JoiningDate < '2005-01-01' AND Salary + Commission > 15000;


--String functions 
--Part – A: 
--1. Find the length of following. (I) NULL    (II) ‘   hello     ’   (III)  Blank 
SELECT
    LEN(NULL) AS Null_Length,
    LEN('   hello     ') AS Hello_Length,
    LEN('') AS Blank_Length;

--2. Display your name in lower & upper case. 
SELECT
    LOWER('Prashant') AS Lower_Name,
    UPPER('Prashant') AS Upper_Name;

--3. Display first three characters of your name. 
SELECT LEFT('Prashant',3) AS First_Three;

--4. Display 3rd to 10th character of your name. 
SELECT SUBSTRING('Prashant',3,8) AS Characters_3_To_10;

--5. Write a query to convert ‘abc123efg’ to ‘abcXYZefg’ & ‘abcabcabc’ to ‘ab5ab5ab5’ using REPLACE. 
SELECT REPLACE('abc123efg','123','XYZ') AS Result1;
SELECT REPLACE('abcabcabc','c','5') AS Result2;

--6. Write a query to display ASCII code for ‘a’,’A’,’z’,’Z’, 0, 9. 
SELECT
    ASCII('a') AS a_Code,
    ASCII('A') AS A_Code,
    ASCII('z') AS z_Code,
    ASCII('Z') AS Z_Code,
    ASCII('0') AS Zero_Code,
    ASCII('9') AS Nine_Code;

--7. Write a query to display character based on number 97, 65,122,90,48,57. 
SELECT
    CHAR(97) AS Char1,
    CHAR(65) AS Char2,
    CHAR(122) AS Char3,
    CHAR(90) AS Char4,
    CHAR(48) AS Char5,
    CHAR(57) AS Char6;

--8. Write a query to remove spaces from left of a given string ‘ hello world  ‘. 
SELECT LTRIM(' hello world  ') AS Result;

--9. Write a query to remove spaces from right of a given string ‘ hello world  ‘
SELECT RTRIM(' hello world  ') AS Result;

--10. Write a query to display first 4 & Last 5 characters of ‘SQL Server’. 
SELECT
    LEFT('SQL Server',4) AS First4,
    RIGHT('SQL Server',5) AS Last5;

--11. Write a query to convert a string ‘1234.56’ to number (Use cast and convert function). 
SELECT CAST('1234.56' AS DECIMAL(10,2)) AS Number_Value;
SELECT CONVERT(DECIMAL(10,2),'1234.56') AS Number_Value;

--12. Write a query to convert a float 10.58 to integer (Use cast and convert function). 
SELECT CAST(10.58 AS INT) AS Integer_Value;
SELECT CONVERT(INT,10.58) AS Integer_Value;

--13. Put 10 space before your name using function. 
SELECT REPLICATE(' ',10) + 'Prashant' AS Result;

--14. Combine two strings using + sign as well as CONCAT (). 
SELECT 'Hello' + ' World' AS Result;

--15. Find reverse of “Darshan”. 
SELECT REVERSE('Darshan') AS Reverse_Name;

--16. Repeat your name 3 times. 
SELECT REPLICATE('Prashant ',3) AS Result;

--Part – B: Perform following queries on EMP_MASTER table. 
--1. Find the length of EMP Name and City columns. 
SELECT
    EmpName,
    LEN(EmpName) AS Name_Length,
    City,
    LEN(City) AS City_Length
FROM EMP_MASTER;

--2. Display EMP Name and City columns in lower & upper case. 
SELECT
    LOWER(EmpName) AS Lower_Name,
    UPPER(EmpName) AS Upper_Name,
    LOWER(City) AS Lower_City,
    UPPER(City) AS Upper_City
FROM EMP_MASTER;

--3. Display first three characters of EMP Name column.
SELECT
    EmpName,
    LEFT(EmpName,3) AS First_Three
FROM EMP_MASTER;

--4. Display 3rd to 10th character of city column. 
SELECT
    City,
    SUBSTRING(City,3,8) AS Characters_3_To_10
FROM EMP_MASTER;

--5. Write a query to display first 4 & Last 5 characters of EMP Name column. 
SELECT
    EmpName,
    LEFT(EmpName,4) AS First4,
    RIGHT(EmpName,5) AS Last5
FROM EMP_MASTER;

--Part – C: Perform following queries on EMP_MASTER table. 
--1. Put 10 space before EMP Name using function. 
SELECT
    REPLICATE(' ',10) + EmpName AS Result
FROM EMP_MASTER;

--2. Combine EMP Name and city columns using + sign as well as CONCAT ().
--Using +
SELECT EmpName + ' ' + City AS Result
FROM EMP_MASTER;

-- Using CONCAT
SELECT CONCAT(EmpName,' ',City) AS Result
FROM EMP_MASTER;

--3. Combine all columns using + sign as well as CONCAT (). 
--Using +
SELECT
CAST(EmpNo AS VARCHAR) + ' ' +
EmpName + ' ' +
CAST(JoiningDate AS VARCHAR) + ' ' +
CAST(Salary AS VARCHAR) + ' ' +
CAST(Commission AS VARCHAR) + ' ' +
City + ' ' +
Dept_Code AS Result
FROM EMP_MASTER;

-- Using CONCAT
SELECT CONCAT(
    EmpNo,' ',
    EmpName,' ',
    JoiningDate,' ',
    Salary,' ',
    Commission,' ',
    City,' ',
    Dept_Code
) AS Result
FROM EMP_MASTER;

--4. Combine the result as < EMP Name > Lives in <City>. 
SELECT
    EmpName + ' Lives in ' + City AS Result
FROM EMP_MASTER;

--5. Combine the result as ‘EMP no of < EMP Name> is <EmpNo> . 
SELECT
    'EMP no of ' + EmpName + ' is ' +
    CAST(EmpNo AS VARCHAR) AS Result
FROM EMP_MASTER;

--6. Retrieve the names of all employee where the third character of the Name is a vowel. 
SELECT EmpName
FROM EMP_MASTER
WHERE SUBSTRING(EmpName,3,1) IN ('A','E','I','O','U','a','e','i','o','u');

--7. Concatenate the name and city of students who have a name that ends with the letter 'r' and a city that 
--starts with 'R'. 
SELECT
    CONCAT(EmpName,' ',City) AS Result
FROM EMP_MASTER
WHERE EmpName LIKE '%r'
  AND City LIKE 'R%';


--Date Functions 
--Part – A: 
--1. Write a query to display the current date & time. Label the column Today_Date. 
SELECT GETDATE() AS Today_Date;

--2. Write a query to find new date after 365 day with reference to today. 
SELECT DATEADD(DAY, 365, GETDATE()) AS New_Date;

--3. Display the current date in a format that appears as may 5 1994 12:00AM. 
SELECT FORMAT(GETDATE(),'MMM d yyyy hh:mmtt') AS Formatted_Date;

--4. Display the current date in a format that appears as 03 Jan 1995. 
SELECT FORMAT(GETDATE(),'dd MMM yyyy') AS Formatted_Date;

--5. Display the current date in a format that appears as Jan 04, 96. 
SELECT FORMAT(GETDATE(),'MMM dd, yy') AS Formatted_Date;

--6. Write a query to find out total number of months between 31-Dec-08 and 31-Mar-09.
SELECT DATEDIFF(MONTH,'2008-12-31','2009-03-31') AS Total_Months;

--7. Write a query to find out total number of hours between 25-Jan-12 7:00 and 26-Jan-12 10:30.
SELECT DATEDIFF(HOUR, '2012-01-25 07:00:00', '2012-01-26 10:30:00') AS Total_Hours;

--8. Write a query to extract Day, Month, Year from given date 12-May-16. 
SELECT
    DAY('2016-05-12') AS Day_Value,
    MONTH('2016-05-12') AS Month_Value,
    YEAR('2016-05-12') AS Year_Value;

--9. Write a query that adds 5 years to current date. 
SELECT DATEADD(YEAR,5,GETDATE()) AS New_Date;

--10. Write a query to subtract 2 months from current date. 
SELECT DATEADD(MONTH,-2,GETDATE()) AS New_Date;

--11. Extract month from current date using datename () and datepart () function.
SELECT DATENAME(MONTH,GETDATE()) AS Month_Name, DATEPART(MONTH,GETDATE()) AS Month_Number;

--12. Write a query to find out last date of current month. 
SELECT EOMONTH(GETDATE()) AS Last_Date;

--13. Calculate your age in years and months. 
SELECT
    DATEDIFF(YEAR,'2004-01-01',GETDATE()) AS Age_Years,
    DATEDIFF(MONTH,'2004-01-01',GETDATE()) % 12 AS Age_Months;

--Part – B: Perform following queries on EMP_MASTER table.  
--1. Write a query to find new date after 365 days with reference to JoiningDate. 
SELECT
    EmpNo,
    EmpName,
    JoiningDate,
    DATEADD(DAY,365,JoiningDate) AS New_Date
FROM EMP_MASTER;

--2. Write a query to find out total number of months between JoiningDate and 31-Mar-09. 
SELECT
    EmpNo,
    EmpName,
    DATEDIFF(MONTH,JoiningDate,'2009-03-31') AS Total_Months
FROM EMP_MASTER;

--3. Write a query to find out total number of years between JoiningDate and 14-Sep-10. 
SELECT
    EmpNo,
    EmpName,
    DATEDIFF(YEAR,JoiningDate,'2010-09-14') AS Total_Years
FROM EMP_MASTER;

--Part – C: Perform following queries on EMP_MASTER table. 
--1. Write a query to extract Day, Month, Year from JoiningDate.
SELECT
    EmpNo,
    EmpName,
    DAY(JoiningDate) AS Day_Value,
    MONTH(JoiningDate) AS Month_Value,
    YEAR(JoiningDate) AS Year_Value
FROM EMP_MASTER;

--2. Write a query that adds 5 years to JoiningDate. 
SELECT
    EmpNo,
    EmpName,
    JoiningDate,
    DATEADD(YEAR,5,JoiningDate) AS New_Date
FROM EMP_MASTER;

--3. Write a query to subtract 2 months from JoiningDate. 
SELECT
    EmpNo,
    EmpName,
    DATEADD(MONTH,-2,JoiningDate) AS New_Date
FROM EMP_MASTER;

--4. Extract month from JoiningDate using datename () and datepart () function. 
SELECT
    EmpNo,
    EmpName,
    DATENAME(MONTH,JoiningDate) AS Month_Name,
    DATEPART(MONTH,JoiningDate) AS Month_Number
FROM EMP_MASTER;

--5. Select employee who joined between the 1st and 15th of any month in any year. 
SELECT *
FROM EMP_MASTER
WHERE DAY(JoiningDate) BETWEEN 1 AND 15;

--6. Find employee whose JoiningDate is the last day of any month. 
SELECT *
FROM EMP_MASTER
WHERE JoiningDate = EOMONTH(JoiningDate);

--7. List employee whose JoiningDate is during a leap year.
SELECT *
FROM EMP_MASTER
WHERE (
        YEAR(JoiningDate) % 400 = 0
     OR (YEAR(JoiningDate) % 4 = 0
         AND YEAR(JoiningDate) % 100 <> 0)
      );