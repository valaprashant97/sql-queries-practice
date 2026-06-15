--Part – A: 
--Create table and inset records as per below. 
CREATE TABLE EMP (
    EID INT,
    ENAME VARCHAR(50),
    DEPARTMENT VARCHAR(20),
    SALARY INT,
    JOININGDATE DATE,
    CITY VARCHAR(30),
    GENDER VARCHAR(10)
);

-- INSERT RECORDS
INSERT INTO EMP
(EID, ENAME, DEPARTMENT, SALARY, JOININGDATE, CITY, GENDER)
VALUES
(101, 'Rahul',  'Admin', 56000, '1990-01-01', 'Rajkot',    'Male'),
(102, 'Hardik', 'IT',    18000, '1990-09-25', 'Ahmedabad', 'Male'),
(103, 'Bhavin', 'HR',    25000, '1991-05-14', 'Baroda',    'Male'),
(104, 'Bhoomi', 'Admin', 39000, '1991-02-08', 'Rajkot',    'Female'),
(105, 'Rohit',  'IT',    17000, '1990-07-23', 'Jamnagar',  'Male'),
(106, 'Priya',  'IT',     9000, '1990-10-18', 'Ahmedabad', 'Female'),
(107, 'Bhoomi', 'HR',    34000, '1991-12-25', 'Rajkot',    'Female');

-- DISPLAY DATA
SELECT * FROM EMP;

--1. Display the Highest, Lowest, Label the columns Maximum, Minimum respectively. 
SELECT MAX(SALARY) AS MAXIMUM, MIN(SALARY) AS MINIMUM FROM EMP;

--2. Display Total, and Average salary of all employees. Label the columns Total_Sal and Average_Sal, 
--respectively. 
SELECT SUM(SALARY) AS TOTAL_SALARY, AVG(SALARY) AS AVERAGE_SAL FROM EMP;

--3. Find total number of employees of EMPLOYEE table. 
SELECT COUNT(EID) AS TOTAL_EMP FROM EMP;

----4. Find highest salary from Rajkot city. 
SELECT MAX(SALARY) AS MAX_SALARY FROM EMP WHERE CITY = 'RAJKOT';

--5. Give maximum salary from IT department. 
SELECT MAX(SALARY) AS MAX_SALARY FROM EMP WHERE DEPARTMENT = 'IT';

--6. Count employee whose joining date is after 8-feb-91.
SELECT COUNT(EID) AS EMP_COUNT FROM EMP WHERE JOININGDATE > '1991-02-08';

--7. Display average salary of Admin department. 
SELECT AVG(SALARY) AS AVG_SALARY_OF_ADMIN FROM EMP WHERE DEPARTMENT = 'ADMIN';

--8. Display total salary of HR department. 
SELECT SUM(SALARY) AS TOTAL_SALARY_OF_HR FROM EMP WHERE DEPARTMENT = 'HR';

--9. Count total number of cities of employee without duplication. 
SELECT COUNT(DISTINCT CITY) AS TOTAL_CITYS  FROM EMP;

--10. Count unique departments. 
SELECT COUNT(DISTINCT DEPARTMENT) AS NUMBER_OF_DEPARTMENTS FROM EMP;

--11. Give minimum salary of employee who belongs to Ahmedabad. 
SELECT MIN(SALARY) AS MIN_SALARY FROM EMP WHERE CITY = 'AHMEDABAD';
 
--12. Find city wise highest salary. 
SELECT CITY, MAX(SALARY) AS MAX_SALARY FROM EMP GROUP BY CITY;

--13. Find department wise lowest salary. 
SELECT DEPARTMENT, MIN(SALARY) AS MIN_SALARY FROM EMP GROUP BY DEPARTMENT;

--14. Display city with the total number of employees belonging to each city.
SELECT CITY, COUNT(EID) AS NUM_OF_EMP FROM EMP GROUP BY CITY;

--15. Give total salary of each department of EMP table. 
SELECT DEPARTMENT, SUM(SALARY) AS TOTAL_SALARY FROM EMP GROUP BY DEPARTMENT;

--16. Give average salary of each department of EMP table without displaying the respective department 
--name. 
SELECT AVG(SALARY) AS AVG_SALARY FROM EMP GROUP BY DEPARTMENT;

--17. Count the number of employees for each department in every city.
SELECT CITY, DEPARTMENT, COUNT(*) AS NUM_OF_EMP FROM EMP GROUP BY CITY, DEPARTMENT;

--18. Calculate the total salary distributed to male and female employees. 
SELECT GENDER, SUM(SALARY) AS SUM_SALARY FROM EMP GROUP BY GENDER;

--19. Give city wise maximum and minimum salary of female employees. 
SELECT CITY, MAX(SALARY) AS MAX_SALARY, MIN(SALARY) AS MIN_SALARY FROM EMP WHERE GENDER = 'FEMALE' GROUP BY CITY;

--20. Calculate department, city, and gender wise average salary.
SELECT DEPARTMENT, GENDER, CITY, AVG(SALARY) AS AVG_SALARY FROM EMP GROUP BY DEPARTMENT, GENDER, CITY;

--Part – B: 
--1. Count the number of employees living in Rajkot. 
SELECT COUNT(EID) AS NUM_OF_EMP_IN_RJ FROM EMP WHERE CITY = 'RAJKOT';

--2. Display the difference between the highest and lowest salaries. Label the column DIFFERENCE.
SELECT MAX(SALARY) - MIN(SALARY) AS DIFFERENCE FROM EMP;

--3. Display the total number of employees hired before 1st January, 1991. 
SELECT COUNT(EID) AS TOTAL_HIRED FROM EMP WHERE JOININGDATE > '1991-01-01';

--Part – C: 
--1. Count the number of employees living in Rajkot or Baroda. 
--2. Display the total number of employees hired before 1st January, 1991 in IT department. 
--3. Find the Joining Date wise Total Salaries. 
--4. Find the Maximum salary department & city wise in which city name starts with ‘R’. 