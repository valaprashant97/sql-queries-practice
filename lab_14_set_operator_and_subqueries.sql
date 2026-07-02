--Sub Queries 
CREATE TABLE STUDENT_DATA (
    RNo INT PRIMARY KEY,
    Name VARCHAR(50),
    City VARCHAR(50),
    DID INT
);
INSERT INTO STUDENT_DATA VALUES
(101, 'Raju', 'Rajkot', 10),
(102, 'Amit', 'Ahmedabad', 20),
(103, 'Sanjay', 'Baroda', 40),
(104, 'Neha', 'Rajkot', 20),
(105, 'Meera', 'Ahmedabad', 30),
(106, 'Mahesh', 'Baroda', 10);

CREATE TABLE DEPARTMENT (
    DID INT PRIMARY KEY,
    DName VARCHAR(50)
);
INSERT INTO DEPARTMENT VALUES
(10, 'Computer'),
(20, 'Electrical'),
(30, 'Mechanical'),
(40, 'Civil');

CREATE TABLE ACADEMIC (
    RNO INT,
    SPI DECIMAL(3,1),
    BKLOG INT
);
INSERT INTO ACADEMIC VALUES
(101, 8.8, 0),
(102, 9.2, 2),
(103, 7.6, 1),
(104, 8.2, 4),
(105, 7.0, 2),
(106, 8.9, 3);

SELECT * FROM STUDENT_DATA;
SELECT * FROM DEPARTMENT;
SELECT * FROM ACADEMIC;

--Part – A: 
--1. Display details of students who are from computer department. 
--2. Displays name of students whose SPI is more than 8. 
--3. Display details of students of computer department who belongs to Rajkot city.
--4. Find total number of students of electrical department. 
--5. Display name of student who is having maximum SPI. 
--6. Display details of students having more than 1 backlog.

--Part – B: 
--1. Display name of students who are either from computer department or from mechanical department. 
--2. Display name of students who are in same department as 102 studying in. 

--Part – C: 
--1. Display name of students whose SPI is more than 9 and who is from electrical department. 
--2. Display name of student who is having second highest SPI. 
--3. Display city names whose students SPI is 9.2 
--4. Find the names of students who have more than the average number of backlogs across all students. 
--5. Display the names of students who are in the same department as the student with the highest SPI. 


--SET Operators 

--Part – A: 
--Create below two tables as per following data. 
CREATE TABLE COMPUTER (
    RollNo INT PRIMARY KEY,
    Name VARCHAR(50)
);
INSERT INTO COMPUTER VALUES
(101, 'Ajay'),
(109, 'Haresh'),
(115, 'Manish');

CREATE TABLE ELECTRICAL (
    RollNo INT PRIMARY KEY,
    Name VARCHAR(50)
);  
INSERT INTO ELECTRICAL VALUES
(105, 'Ajay'),
(107, 'Mahesh'),
(115, 'Manish');

SELECT * FROM COMPUTER;
SELECT * FROM ELECTRICAL;

--1. Display name of students who is either in Computer or in Electrical. 
--2. Display name of students who is either in Computer or in Electrical including duplicate data. 
--3. Display name of students who is in both Computer and Electrical. 
--4. Display name of students who are in Computer but not in Electrical. 
--5. Display name of students who are in Electrical but not in Computer. 
--6. Display all the details of students who are either in Computer or in Electrical. 
--7. Display all the details of students who are in both Computer and Electrical. 

--Part – B: 
--Create below two tables as per following data.
CREATE TABLE EMP_DATA (
    EID INT PRIMARY KEY,
    Name VARCHAR(50)
);
INSERT INTO EMP_DATA VALUES
(1, 'Ajay'),
(9, 'Haresh'),
(5, 'Manish');

CREATE TABLE CUSTOMER (
    CID INT,
    Name VARCHAR(50)
);
INSERT INTO CUSTOMER VALUES
(5, 'Ajay'),
(7, 'Mahesh'),
(5, 'Manish');

SELECT * FROM EMP_DATA;
SELECT * FROM CUSTOMER;

--1. Display name of persons who is either Employee or Customer. 
--2. Display name of persons who is either Employee or Customer including duplicate data. 
--3. Display name of persons who is both Employee as well as Customer. 
--4. Display name of persons who are Employee but not Customer. 
--5. Display name of persons who are Customer but not Employee. 

--Part – C:  
--1. Perform all the queries of Part-B but display ID and Name columns instead of Name only. 