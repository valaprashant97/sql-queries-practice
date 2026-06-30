-- STU_INFO
CREATE TABLE STU_INFO (
    RNo INT PRIMARY KEY,
    Name VARCHAR(50),
    Branch VARCHAR(10)
);

INSERT INTO STU_INFO (RNo, Name, Branch)
VALUES
(101, 'Raju', 'CE'),
(102, 'Amit', 'CE'),
(103, 'Sanjay', 'ME'),
(104, 'Neha', 'EC'),
(105, 'Meera', 'EE'),
(106, 'Mahesh', 'ME');

-- RESULT
CREATE TABLE RESULT (
    RNo INT,
    SPI DECIMAL(3,1),
);

INSERT INTO RESULT (RNo, SPI)
VALUES
(101, 8.8),
(102, 9.2),
(103, 7.6),
(104, 8.2),
(105, 7.0),
(107, 8.9);

-- EMPLOYEE_MASTER
CREATE TABLE EMPLOYEE_MASTER (
    EmployeeNo VARCHAR(10) PRIMARY KEY,
    Name VARCHAR(50),
    ManagerNo VARCHAR(10)
);

INSERT INTO EMPLOYEE_MASTER
(EmployeeNo, Name, ManagerNo)
VALUES
('E01', 'Tarun', NULL),
('E02', 'Rohan', 'E02'),
('E03', 'Priya', 'E01'),
('E04', 'Milan', 'E03'),
('E05', 'Jay', 'E01'),
('E06', 'Anjana', 'E04');

SELECT * FROM STU_INFO;
SELECT * FROM RESULT;
SELECT * FROM EMPLOYEE_MASTER;

--Part – A: 
--1. Combine information from student and result table using cross join or Cartesian product.
SELECT * FROM STU_INFO CROSS jOIN RESULT;

--2. Perform inner join on Student and Result tables.
SELECT * FROM  STU_INFO INNER JOIN RESULT 
ON STU_INFO.RNo = RESULT.RNo;

--3. Perform the left outer join on Student and Result tables. 
SELECT * FROM STU_INFO LEFT JOIN RESULT
ON STU_INFO.RNo = RESULT.RNo;

--4. Perform the right outer join on Student and Result tables. 
SELECT * FROM STU_INFO AS S RIGHT JOIN RESULT AS R
ON S.RNo = R.RNo;

--5. Perform the full outer join on Student and Result tables.  
SELECT * FROM STU_INFO AS S FULL OUTER JOIN RESULT AS R
ON S.RNo = R.RNo;

--6. Display Rno, Name, Branch and SPI of all students. 
SELECT S.Rno, S.Name, S.Branch, R.SPI FROM 
STU_INFO AS S LEFT JOIN RESULT AS R
ON S.RNo = R.RNo;

--7. Display Rno, Name, Branch and SPI of CE branch’s student only. 
SELECT S.Rno, S.Name, S.Branch, R.SPI FROM 
STU_INFO AS S LEFT JOIN RESULT AS R
ON S.RNo = R.RNo
WHERE S.Branch = 'CE';


--8. Display Rno, Name, Branch and SPI of other than EC branch’s student only. 
SELECT S.Rno, S.Branch, R.SPI FROM
STU_INFO AS S LEFT JOIN RESULT AS R
ON S.RNo = R.RNo
WHERE S.Branch <> 'EC';

--9. Display average result of each branch.
SELECT S.Branch, AVG(R.SPI) AS AVG_RESULT FROM
STU_INFO AS S INNER JOIN RESULT AS R
ON S.Rno = R.RNO 
GROUP BY S.Branch;

--10. Display average result of CE and ME branch. 
SELECT S.Branch, AVG(R.SPI) AS AVG_RESULT FROM
STU_INFO AS S INNER JOIN RESULT AS R 
ON S.RNo = R.RNo
WHERE S.Branch IN ('CE', 'ME')
GROUP BY S.Branch;

--11. Display Maximum and Minimum SPI of each branch. 
SELECT S.Branch, MAX(R.SPI) AS MAX_SPI, MIN(R.SPI) AS MIN_SPI
FROM STU_INFO AS S INNER JOIN RESULT AS R
ON S.RNo = R.RNo
GROUP BY S.Branch;

--12. Display branch wise student’s count in descending order.
SELECT S.Branch, COUNT(*) AS STUDENT_COUNT
FROM STU_INFO AS S
GROUP BY Branch
ORDER BY STUDENT_COUNT DESC;

--Part – B: 
--1. Display average result of each branch and sort them in ascending order by SPI. 
SELECT S.Branch, AVG(R.SPI) AS AVG_RESULT 
FROM STU_INFO AS S INNER JOIN RESULT AS R
ON S.RNo = R.RNo
GROUP BY Branch
ORDER BY AVG_RESULT ASC;

--2. Display highest SPI from each branch and sort them in descending order. 
SELECT s.Branch, MAX(R.SPI) AS MAX_SPI 
FROM STU_INFO AS S INNER JOIN RESULT AS R
ON S.RNo = R.RNo
GROUP BY Branch
ORDER BY MAX_SPI DESC;


--Part – C: 
--1. Retrieve the names of employee along with their manager’s name from the Employee table. 
SELECT E.Name, M.Name
FROM EMPLOYEE_MASTER E
LEFT JOIN EMPLOYEE_MASTER M
ON E.ManagerNo = M.EmployeeNo;