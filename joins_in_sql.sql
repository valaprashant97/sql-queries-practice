CREATE TABLE DEPT
(
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(30),
    DepartmentCode VARCHAR(10),
    Location VARCHAR(20)
);

INSERT INTO DEPT VALUES
(1,'Admin','Adm','A-Block'),
(2,'Computer','CE','C-Block'),
(3,'Civil','CI','G-Block'),
(4,'Electrical','EE','E-Block'),
(5,'Mechanical','ME','B-Block');


CREATE TABLE PERSON
(
    PersonID INT PRIMARY KEY,
    PersonName VARCHAR(50),
    DepartmentID INT,
    Salary INT,
    JoiningDate DATE,
    City VARCHAR(30),
    FOREIGN KEY (DepartmentID) REFERENCES DEPT(DepartmentID)
);

INSERT INTO PERSON VALUES
(101,'Rahul Tripathi',2,56000,'2000-01-01','Rajkot'),
(102,'Hardik Pandya',3,18000,'2001-09-25','Ahmedabad'),
(103,'Bhavin Kanani',4,25000,'2000-05-14','Baroda'),
(104,'Bhoomi Vaishnav',1,39000,'2005-02-08','Rajkot'),
(105,'Rohit Topiya',2,17000,'2001-07-23','Jamnagar'),
(106,'Priya Menpara',NULL,9000,'2000-10-18','Ahmedabad'),
(107,'Neha Sharma',2,34000,'2002-12-25','Rajkot'),
(108,'Nayan Goswami',3,25000,'2001-07-01','Rajkot'),
(109,'Mehul Bhundiya',4,13500,'2005-01-09','Baroda'),
(110,'Mohit Maru',5,14000,'2000-05-25','Jamnagar');

-- 1. Display person name and their department name.

SELECT PersonName, DepartmentName
FROM PERSON P
INNER JOIN DEPT D
ON P.DepartmentID = D.DepartmentID;

-- 2. Display person's department location.

SELECT PersonName, Location
FROM PERSON P
INNER JOIN DEPT D
ON P.DepartmentID = D.DepartmentID;

-- 3. Display Person's name, Department name, Salary and City.

SELECT PersonName, DepartmentName, Salary, City
FROM PERSON P
INNER JOIN DEPT D
ON P.DepartmentID = D.DepartmentID;

-- 4. Display person name, salary and department code.

SELECT PersonName, Salary, DepartmentCode
FROM PERSON P
INNER JOIN DEPT D
ON P.DepartmentID = D.DepartmentID;

-- 5. Display PersonID, Name, Joining Date and Department Name.

SELECT PersonID, PersonName, JoiningDate, DepartmentName
FROM PERSON P
INNER JOIN DEPT D
ON P.DepartmentID = D.DepartmentID;

-- 6. Display person name and department who belongs to Rajkot.

SELECT PersonName, DepartmentName
FROM PERSON P
INNER JOIN DEPT D
ON P.DepartmentID = D.DepartmentID
WHERE City = 'Rajkot';

-- 7. Display person name who is sitting in C-Block.

SELECT PersonName
FROM PERSON P
INNER JOIN DEPT D
ON P.DepartmentID = D.DepartmentID
WHERE Location = 'C-Block';

-- 8. Display person name and department whose salary is more than 20000.

SELECT PersonName, DepartmentName
FROM PERSON P
INNER JOIN DEPT D
ON P.DepartmentID = D.DepartmentID
WHERE Salary > 20000;

-- 9. Display person name and department code who does not belong to Baroda.

SELECT PersonName, DepartmentCode
FROM PERSON P
INNER JOIN DEPT D
ON P.DepartmentID = D.DepartmentID
WHERE City <> 'Baroda';

-- 10. Display person name who works in Computer department.

SELECT PersonName
FROM PERSON P
INNER JOIN DEPT D
ON P.DepartmentID = D.DepartmentID
WHERE DepartmentName = 'Computer';

-- 11. Display person's name who joined the Civil department after 1-Aug-2001.

SELECT PersonName
FROM PERSON P
INNER JOIN DEPT D
ON P.DepartmentID = D.DepartmentID
WHERE DepartmentName = 'Civil'
AND JoiningDate > '2001-08-01';

-- 12. Display person's name whose name starts from 'B' in Electrical department.

SELECT PersonName
FROM PERSON P
INNER JOIN DEPT D
ON P.DepartmentID = D.DepartmentID
WHERE DepartmentName = 'Electrical'
AND PersonName LIKE 'B%';

-- 13. Display person's name and department who lives in Ahmedabad and salary less than 20000.

SELECT PersonName, DepartmentName
FROM PERSON P
INNER JOIN DEPT D
ON P.DepartmentID = D.DepartmentID
WHERE City = 'Ahmedabad'
AND Salary < 20000;

-- 14. Display person's name whose PersonID is less than 105 and DepartmentCode is 'CI'.

SELECT PersonName
FROM PERSON P
INNER JOIN DEPT D
ON P.DepartmentID = D.DepartmentID
WHERE PersonID < 105
AND DepartmentCode = 'CI';

-- 15. Display person's name who belongs to Computer or Civil department.

SELECT PersonName
FROM PERSON P
INNER JOIN DEPT D
ON P.DepartmentID = D.DepartmentID
WHERE DepartmentName IN ('Computer','Civil');

-- 16. Display average salary of Computer department.

SELECT AVG(Salary) AS AverageSalary
FROM PERSON P
INNER JOIN DEPT D
ON P.DepartmentID = D.DepartmentID
WHERE DepartmentName = 'Computer';

-- 17. Display total salary of department located in 'A-Block'.

SELECT SUM(Salary) AS TotalSalary
FROM PERSON P
INNER JOIN DEPT D
ON P.DepartmentID = D.DepartmentID
WHERE Location = 'A-Block';

-- 18. Display department wise highest salary.

SELECT DepartmentName,
       MAX(Salary) AS HighestSalary
FROM PERSON P
INNER JOIN DEPT D
ON P.DepartmentID = D.DepartmentID
GROUP BY DepartmentName;

-- 19. Display total salaries in each department.

SELECT DepartmentName,
       SUM(Salary) AS TotalSalary
FROM PERSON P
INNER JOIN DEPT D
ON P.DepartmentID = D.DepartmentID
GROUP BY DepartmentName;

-- 20. Count employees per department.

SELECT DepartmentName,
       COUNT(*) AS EmployeeCount
FROM PERSON P
INNER JOIN DEPT D
ON P.DepartmentID = D.DepartmentID
GROUP BY DepartmentName;

-- 21. Display average salary for employees in Rajkot.

SELECT AVG(Salary) AS AverageSalary
FROM PERSON
WHERE City = 'Rajkot';

-- 22. Count employees per department who joined after the year 2000.

SELECT DepartmentName,
       COUNT(*) AS EmployeeCount
FROM PERSON P
INNER JOIN DEPT D
ON P.DepartmentID = D.DepartmentID
WHERE YEAR(JoiningDate) > 2000
GROUP BY DepartmentName;

-- 23. Average salary of employees in Computer department grouped by City.

SELECT City,
       AVG(Salary) AS AverageSalary
FROM PERSON P
INNER JOIN DEPT D
ON P.DepartmentID = D.DepartmentID
WHERE DepartmentName = 'Computer'
GROUP BY City;

-- 24. Sum of salaries for employees who joined before 2001, in each department.

SELECT DepartmentName,
       SUM(Salary) AS TotalSalary
FROM PERSON P
INNER JOIN DEPT D
ON P.DepartmentID = D.DepartmentID
WHERE YEAR(JoiningDate) < 2001
GROUP BY DepartmentName;

-- 25. Count employees per department with salaries above 25000.

SELECT DepartmentName,
       COUNT(*) AS EmployeeCount
FROM PERSON P
INNER JOIN DEPT D
ON P.DepartmentID = D.DepartmentID
WHERE Salary > 25000
GROUP BY DepartmentName;

-- 26. Total salary for each department, with departments having more than 2 employees.

SELECT DepartmentName,
       SUM(Salary) AS TotalSalary
FROM PERSON P
INNER JOIN DEPT D
ON P.DepartmentID = D.DepartmentID
GROUP BY DepartmentName
HAVING COUNT(*) > 2;

-- 27. Find all departments whose total salary exceeds 100000.

SELECT DepartmentName,
       SUM(Salary) AS TotalSalary
FROM PERSON P
INNER JOIN DEPT D
ON P.DepartmentID = D.DepartmentID
GROUP BY DepartmentName
HAVING SUM(Salary) > 100000;

-- 28. List all departments who have no person.

SELECT DepartmentName
FROM DEPT D
LEFT JOIN PERSON P
ON D.DepartmentID = P.DepartmentID
WHERE P.PersonID IS NULL;

-- 29. Count employees in each city per department.

SELECT DepartmentName,
       City,
       COUNT(*) AS EmployeeCount
FROM PERSON P
INNER JOIN DEPT D
ON P.DepartmentID = D.DepartmentID
GROUP BY DepartmentName, City;

-- 30. Produce output like:
-- Rahul Tripathi lives in Rajkot and works in Computer Department.

SELECT CONCAT(
    PersonName,
    ' lives in ',
    City,
    ' and works in ',
    DepartmentName,
    ' Department.'
) AS Details
FROM PERSON P
INNER JOIN DEPT D
ON P.DepartmentID = D.DepartmentID;



