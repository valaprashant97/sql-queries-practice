--Part – A: 
--Create below table with following constraints 
--1. Do not allow SPI more than 10 
--2. Do not allow Bklog less than 0. 
--3. Enter the default value as ‘General’ in branch to all new records IF no other value is specified. 
--4. Try to update SPI of Raju from 8.80 to 12. 
--5. Try to update Bklog of Neha from 0 to -1

CREATE TABLE STU_MASTER (
    Rno INT PRIMARY KEY,
    Name VARCHAR(50),
    Branch VARCHAR(10),
    SPI DECIMAL(3,2),
    Bklog INT
);
INSERT INTO STU_MASTER VALUES
(101, 'Raju', 'CE', 8.80, 0),
(102, 'Amit', 'CE', 2.20, 3),
(103, 'Sanjay', 'ME', 1.50, 6),
(104, 'Neha', 'EC', 7.65, 0),
(105, 'Meera', 'EE', 5.52, 2),
(106, 'Mahesh', NULL, 4.50, 3);

SELECT * FROM STU_MASTER;

--Part – B: Create table as per following schema with proper validation and try to insert data which violate your 
--validation. 
--1. Emp_details(Eid, Ename, Did, Cid, Salary, Experience) 
--Dept_details(Did, Dname) 
--City_details(Cid, Cname) 

--Part – C: Create table as per following schema with proper validation and try to insert data which violate your 
--validation. 
--1. Emp_info(Eid, Ename, Did, Cid, Salary, Experience) 
--Dept_info(Did, Dname) 
--City_info(Cid, Cname, Did)) 
--District(Did, Dname, Sid) 
--State(Sid, Sname, Cid) 
--Country(Cid, Cname) 

--2. Insert 5 records in each table. 

--3. Display employeename, departmentname, Salary, Experience, City, District, State and country of all 
--employees.