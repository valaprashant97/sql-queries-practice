-- use database
USE SQL;

-- Create Table
CREATE TABLE Faculty (
    ID INT,
    Name VARCHAR(50),
    Mobile VARCHAR(15),
    City VARCHAR(30),
    Branch VARCHAR(30)
);

-- Insert Data

INSERT INTO Faculty (ID, Name, Mobile, City, Branch) VALUES
(258, 'Ankit Patel', 8325845127, 'Jetpur', 'Electrical'),
(742, 'Ketan Parmar', 9123141578, 'Baroda', 'Computer'),
(325, 'Manan Doshi', 9223251578, 'Gondal', 'Civil'),
(125, 'Mitesh Manek', 7878454512, 'Rajkot', 'Computer'),
(312, 'Ketan Akbari', 9824485641, 'Rajkot', 'Civil'),
(457, 'Bhavin Patel', 9825411111, 'Jamnagar', 'Mechanical');

-- 1. Display names starts with 'K'
SELECT * FROM Faculty WHERE Name LIKE 'K%';

-- 2. Display names starts with 'M'
SELECT * FROM Faculty WHERE Name LIKE 'M%';

-- 3. Display branch ends with 'L'
SELECT * FROM Faculty WHERE Name LIKE '%l';

-- 4. Display names ends with 'ri'
SELECT * FROM Faculty WHERE Name LIKE '%ri';

-- 5. Display cities contains 'ro'
SELECT * FROM Faculty WHERE City LIKE '%ro%';

-- 6. Display names contains 'sh'
SELECT * FROM Faculty WHERE Name LIKE '%sh%';

-- 7. Display cities having length 6
SELECT * FROM Faculty WHERE LEN(City) = 6;

-- 8. Display cities having length 8 and starts with 'J'
SELECT * FROM Faculty WHERE Name LIKE 'J%' and len(City) = 8;

-- 9. Display branch starts with 'C' and having 5 character
SELECT * 
FROM Faculty
WHERE Branch LIKE 'C%' AND LEN(Branch) = 5;

-- 10. Display cities whose second character is 'a'
SELECT * 
FROM Faculty
WHERE City LIKE '_a%';

-- 11. Display cities whose second character is 'o'
--     AND last character is 'L'
SELECT * 
FROM Faculty
WHERE City LIKE '_o%L';


-- 12. Display branch starts with EITHER 'C', 'E', OR 'M'
SELECT * 
FROM Faculty
WHERE Branch LIKE 'C%' OR Branch LIKE 'E%' OR Branch LIKE 'M%';

-- 13. Display name starts with A to K
SELECT * 
FROM Faculty
WHERE Branch LIKE '[A-K]%';


-- 14. Display name whose second character is vowel
SELECT * 
FROM Faculty
WHERE Name LIKE '_A%'
   OR Name LIKE '_E%'
   OR Name LIKE '_I%'
   OR Name LIKE '_O%'
   OR Name LIKE '_U%'
   OR Name LIKE '_a%'
   OR Name LIKE '_e%'
   OR Name LIKE '_i%'
   OR Name LIKE '_o%'
   OR Name LIKE '_u%';

-- 15. Display branch starts with 'C' and ends with 'l'
SELECT * 
FROM Faculty
WHERE Branch LIKE 'C%l';

-- 16. Display cities not starts with 'R'
SELECT * 
FROM Faculty
WHERE City NOT LIKE 'R%';

--- drop table
drop table Faculty;

--'A%'      -- Starts with A
--'%A'      -- Ends with A
--'%A%'     -- Contains A
--'_A%'     -- Second character A
--'A____'   -- Starts with A, total 5 chars
--'_____'   -- Exactly 5 chars
--'[A-K]%'  -- Starts A to K (SQL Server)
--'[^A-K]%' -- Not starts A to K (SQL Server)

--% = any number of characters
--_ = exactly one character
--[A-H] = range
--[^A-H] = not in range
--LEN(column) = string length
--IS NULL / IS NOT NULL website check ke liye use hota hai.