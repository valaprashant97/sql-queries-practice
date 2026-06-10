USE SQL;

-- Create Table

CREATE TABLE Faculty (
    ID INT NULL,
    Name VARCHAR(50),
    Salary INT,
    City VARCHAR(30),
    Branch VARCHAR(30)
);

-- Insert Data

INSERT INTO Faculty (ID, Name, Salary, City, Branch) VALUES
(258, 'Ankit Patel', 50000, 'Jetpur', 'Electrical'),
(742, 'Ketan Parmar', 75000, 'Baroda', 'Computer'),
(325, 'Manan Doshi', 65000, 'Gondal', 'Civil'),
(125, 'Mitesh Manek', 55000, 'Rajkot', 'Computer'),
(312, 'Ketan Akbari', 28000, 'Rajkot', 'Civil'),
(NULL, 'Bhavin Patel', 35000, 'Jamnagar', 'Mechanical');

SELECT * FROM Faculty;

-- 1. Display highest salary.
SELECT MAX(Salary) AS [HIGHEST SALARY] FROM Faculty;

-- 2. Display lowest salary.
SELECT MIN(Salary) AS [LOWEST SALARY] FROM Faculty;

-- 3. Display average of salary.
SELECT AVG(Salary) AS [AVERAGE SALARY] FROM Faculty;

-- 4. Display total of all faculties salary.
SELECT SUM(Salary) AS [TOTAL SALARY] FROM Faculty;

-- 5. Count total record in the table.
SELECT COUNT(*) AS [TOTAL RECORD] FROM Faculty;

-- 6. Count total ID.
SELECT COUNT(ID) AS [TOTAL ID] FROM Faculty;

-- 7. Display highest salary from Computer department.
SELECT MAX(Salary) AS [HIGHEST SALARY] FROM Faculty WHERE Branch = 'Computer';

-- 8. Display minimum salary from Civil department.
SELECT MIN(Salary) AS [MINIMUM SALARY] FROM Faculty WHERE Branch = 'Civil';

-- 9. Display average salary from Rajkot city.
SELECT AVG(Salary) AS [AVG SALARY] FROM Faculty WHERE City = 'Rajkot';

-- 10. Display maximum, minimum, average and total salary.
SELECT MAX(Salary) AS [HIGHEST SALARY], MIN(Salary) AS [LOWEST SALARY], AVG(Salary) AS [AVERAGE SALARY], SUM(Salary) AS [TOTAL SALARY]  FROM Faculty;

-- 11. Display all the faculties whose salary is less than average salary.
SELECT * FROM Faculty WHERE Salary < (SELECT AVG(Salary) FROM Faculty);

-- 12. Count unique branches.
SELECT COUNT(DISTINCT Branch) AS [TOTAL BRANCHES] FROM Faculty;

-- DROPE TABLE
DROP TABLE Faculty;