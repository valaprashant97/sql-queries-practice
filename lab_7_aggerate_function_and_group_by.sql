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
--2. Display Total, and Average salary of all employees. Label the columns Total_Sal and Average_Sal, 
--respectively. 
--3. Find total number of employees of EMPLOYEE table. 
----4. Find highest salary from Rajkot city. 
--5. Give maximum salary from IT department. 
--6. Count employee whose joining date is after 8-feb-91. 
--7. Display average salary of Admin department. 
--8. Display total salary of HR department. 
--9. Count total number of cities of employee without duplication. 
--10. Count unique departments. 
--11. Give minimum salary of employee who belongs to Ahmedabad. 
--12. Find city wise highest salary. 
--13. Find department wise lowest salary. 
--14. Display city with the total number of employees belonging to each city. 
--15. Give total salary of each department of EMP table. 
--16. Give average salary of each department of EMP table without displaying the respective department 
--name. 
--17. Count the number of employees for each department in every city. 
--18. Calculate the total salary distributed to male and female employees. 
--19. Give city wise maximum and minimum salary of female employees. 
--20. Calculate department, city, and gender wise average salary. 

--Part – B: 
--1. Count the number of employees living in Rajkot. 
--2. Display the difference between the highest and lowest salaries. Label the column DIFFERENCE. 
--3. Display the total number of employees hired before 1st January, 1991. 

--Part – C: 
--1. Count the number of employees living in Rajkot or Baroda. 
--2. Display the total number of employees hired before 1st January, 1991 in IT department. 
--3. Find the Joining Date wise Total Salaries. 
--4. Find the Maximum salary department & city wise in which city name starts with ‘R’. 