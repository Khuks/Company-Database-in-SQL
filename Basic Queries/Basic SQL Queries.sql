-- **** CREATE A STUDENT TABLE INSIDE THE DATABASE ****----
drop table student;
CREATE TABLE student (
	student_id BIGSERIAL PRIMARY KEY,
	first_name VARCHAR(20) NOT NULL,
	major VARCHAR(20)
 );

 -- SUPPOSE WE WANT TO ADD ANOTHER COLUMN
 ALTER TABLE student ADD gpa DECIMAL(3,2);
 
 -- DROP COLUMN gpa
 ALTER TABLE student DROP COLUMN gpa;
 
 --INSERTING DATA INTO OUR STUDENT TABLEINSERT INTO student VALUES(1,'Jack','Biology');
INSERT INTO student(first_name,major) VALUES('Jack','Biology');
INSERT INTO student(first_name,major) VALUES('Kate','Sociology');
INSERT INTO student(first_name,major) VALUES('Claire','Chemistry');
INSERT INTO student(first_name,major) VALUES('Mike','Computer Science');
INSERT INTO student(first_name,major) VALUES('Jack','Biology');

-- UPDATING THE DATABASE AND CHANGE THE NAME OF RECORDS IN IT
-- For Biology
UPDATE student 
SET major= 'Biology'
WHERE major ='Bio';

-- For Computer Science
UPDATE student 
SET major= 'Computer Science'
WHERE major = 'Comp Sci';

---*** BASIC SQL QUERIES ***---

--Select all records from the student table and order then by student_id in Ascending order
SELECT *
FROM student
ORDER BY student_id ASC;

--Select all records and order them by two different columns
SELECT *
FROM student 
ORDER BY major,student_id ASC;

--We can also limit the number of records we want to select from a table
SELECT *
FROM student 
ORDER BY student_id DESC
LIMIT 2;

--We will use the 'WHERE ' clause to filter data
SELECT *
FROM student
WHERE major='Biology'
OR first_name='Jack';

-- We can also use the comparison operators like '<,|,<=,>=,<>,AND ,OR'
SELECT *
FROM student 
WHERE major <> 'Chemistry';

--The IN operator. To select all records where by the IN records are located 
SELECT *
FROM student 
WHERE first_name IN ('Claire','Kate','Mike')
AND student_id>2;
