/*Bölüm 5 - Birleştirme İşlemleri -
Section 5 - Join Operations
*/

--INNER JOIN KULLANIMI
--SELECT * FROM TBLNOTLAR
--INNER JOIN TBLOGRENCILER
--ON TBLOGRENCILER.OGRID = TBLNOTLAR.OGRENCI

--LEFT JOIN KULLANIMI
--SELECT * FROM TBLNOTLAR
--LEFT JOIN TBLOGRENCILER
--ON TBLOGRENCILER.OGRID = TBLNOTLAR.OGRENCI

--RIGHT JOIN KULLANIMI
--SELECT * FROM TBLNOTLAR
--RIGHT JOIN TBLOGRENCILER
--ON TBLOGRENCILER.OGRID = TBLNOTLAR.OGRENCI

--FULL JOIN KULLANIMI
--SELECT * FROM TBLNOTLAR
--FULL JOIN TBLOGRENCILER
--ON TBLOGRENCILER.OGRID = TBLNOTLAR.OGRENCI

--UNION
SELECT * FROM TBLKULUPLER UNION SELECT * FROM TBLDERSLER
--SELECT * FROM TBLDERSLER UNION SELECT * FROM TBLKULUPLER

--Section 5 - Join Operations
-- GRADEBOOK (TBLNOTLAR)
CREATE TABLE GRADEBOOK (
  GRADEID INT PRIMARY KEY,
  COURSE INT,
  STUDENT INT,
  EXAM1 INT,
  EXAM2 INT,
  EXAM3 INT,
  AVERAGE DECIMAL(5,2),
  STATUS INT
);

-- STUDENTS (TBLOGRENCILER)
CREATE TABLE STUDENTS (
  STUDENTID INT PRIMARY KEY,
  NAME VARCHAR(50),
  SURNAME VARCHAR(50),
  CLUB INT,
  CITY VARCHAR(50)
);

-- CLUBS (TBLKULUPLER)
CREATE TABLE CLUBS (
  CLUBID INT PRIMARY KEY,
  CLUBNAME VARCHAR(50)
);

-- Sample INNER JOIN
SELECT * FROM GRADEBOOK
INNER JOIN STUDENTS
ON STUDENTS.STUDENTID = GRADEBOOK.STUDENT;

-- Sample LEFT JOIN
SELECT * FROM GRADEBOOK
LEFT JOIN STUDENTS
ON STUDENTS.STUDENTID = GRADEBOOK.STUDENT;

-- Sample RIGHT JOIN
SELECT * FROM GRADEBOOK
RIGHT JOIN STUDENTS
ON STUDENTS.STUDENTID = GRADEBOOK.STUDENT;

-- Sample FULL JOIN
SELECT * FROM GRADEBOOK
FULL JOIN STUDENTS
ON STUDENTS.STUDENTID = GRADEBOOK.STUDENT;

-- Sample UNION
SELECT * FROM CLUBS UNION SELECT * FROM COURSES;
-- Alternatively, you can use UNION to combine the results of two SELECT statements
-- SELECT * FROM COURSES UNION SELECT * FROM CLUBS;
