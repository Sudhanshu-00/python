--use myyfile

--for crate table 
/*create table studentInfo(
Roll_no INT primary key,
Name varchar(30),
Address varchar(100),
Contact BIGINT NOT NULL,
Age INT );*/

-- -- for update 
-- alter table studentInfo
-- alter column Contact BIGINT

-- --add column
-- alter table studentInfo
-- add Pincode INT;

-- for insert data in table

INSERT INTO studentInfo(Roll_no, Name, Address, Contact, Age) VALUES
(1, 'Ankit Sharma', 'New Delhi, India', 9876543210, 23),
(2, 'Priya Gupta', 'Mumbai, India', 8765432109, 22),
(3, 'Rahul Kumar', 'Bangalore, India',8765445649, 24),
(4, 'Neha Singh', 'Hyderabad, India', 9182736455, 21),
(5, 'Amit Choudhary', 'Chennai, India', 9871236540, 25),
(6, 'Sneha Patel', 'Ahmedabad, India', 9172638475, 23),
(7, 'Arjun Rai', 'Kolkata, India', 9123456789, 22),
(8, 'Simran Kaur', 'Chandigarh, India', 9098765432, 24),
(9, 'Manish Yadav', 'Jaipur, India', 8987654321, 26),
(10, 'Pooja Mehta', 'Pune, India', 8876543210, 21),
(11, 'Rohit Verma', 'Lucknow, India', 8787654321, 22),
(12, 'Isha Roy', 'Patna, India', 8676543210, 23),
(13, 'Karan Malhotra', 'Thiruvananthapuram, India', 8576543210, 25),
(14, 'Aisha Khan', 'Guwahati, India', 8476543210, 22),
(15, 'Rakesh Das', 'Bhubaneswar, India', 8376543210, 24),
(16, 'Kavita Tiwari', 'Agra, India', 8276543210, 23),
(17, 'Siddharth Jain', 'Nagpur, India', 8176543210, 22),
(18, 'Anjali Deshmukh', 'Indore, India', 8076543210, 23),
(19, 'Vivek Pandey', 'Surat, India', 7976543210, 24),
(20, 'Meera Nair', 'Kochi, India', 7876543210, 26);

-- -- to show the detail of table
-- select * from studentInfo

-- -- short in descending order
-- select * from studentInfo
-- order by Roll_no desc;

-- -- short in Aescending order
-- select * from studentInfo
-- order by Roll_no asc;

-- select * from studentInfo
-- order by Name asc;

SELECT * FROM studentInfo
WHERE Roll_no = 15

-- SELECT MIN(age) as find FROM studentInfo
-- COUNT,MAX,Sum,Avg,Min these are aggregate function
-- SELECT COUNT(Age) as find FROM studentInfo

SELECT Age, count(Age) as [group of age] FROM studentInfo
GROUP by Age;   -- this is used to count the number of age in table
SELECT Age, AVG(Age) as [group of age] FROM studentInfo
GROUP by Age; -- this is used to find the average of age in table
SELECT Age, MIN(Age) as [group of age] FROM studentInfo
GROUP by Age; -- this is used to find the minimum age in table
SELECT Age, MAX(Age) as [group of age] FROM studentInfo
GROUP by Age; -- this is used to find the maximum age in table
SELECT Age, SUM(Age) as [group of age] FROM studentInfo
GROUP by Age; -- this is used to find the sum of age in table
-- SELECT * FROM studentInfo    
-- WHERE Roll_no BETWEEN 1 AND 5; -- this is used to find the roll no between 1 to 5
-- SELECT * FROM studentInfo    
