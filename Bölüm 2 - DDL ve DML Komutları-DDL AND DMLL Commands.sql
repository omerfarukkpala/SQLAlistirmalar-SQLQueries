--CREATE TABLE TBLDERSLER
--(
--DERSID tinyint,
--DERSAD varchar(20)
--)

--ALTER TABLE TBLDERSLER
--ADD KONTENJAN smallint

--ALTER TABLE TBLDERSLER
--DROP COLUMN KONTENJAN

--SELECT * FROM TBLOGRENCILER
--SELECT OGRAD,OGRSOYAD FROM TBLOGRENCILER
--SELECT OGRSEHIR FROM TBLOGRENCILER

--SELECT * FROM TBLOGRENCILER WHERE OGRAD = 'Ali'

--SELECT * FROM TBLOGRENCILER WHERE OGRSEHIR = 'Adana' AND OGRKULUP = 'Kitapl�k'
--SELECT * FROM TBLOGRENCILER WHERE OGRSEHIR = 'Adana' OR OGRKULUP = 'Satran�'

--Decimal(x,y)
--x: Virg�lden �nce Basamak Say�s�
--y: Virg�lden Sonra Basamak Say�s�
--Ortalama: 78,65 ** 100,00
--Decimal(5,2)

--SELECT * FROM TBLNOTLAR
--SELECT (SINAV1+SINAV2+SINAV3)/3 FROM TBLNOTLAR

--INSERT INTO TBLOGRENCILER (OGRAD,OGRSOYAD,OGRSEHIR) VALUES ('Baran','Y�ceda�','Elaz��')	
--SELECT * FROM TBLOGRENCILER

--INSERT INTO TBLNOTLAR (OGRENCI,DERS,SINAV1,SINAV3) VALUES (6,2,88,67)
--SELECT * FROM TBLNOTLAR

--DELETE FROM TBLDERSLER WHERE DERSID = 6
--DELETE FROM TBLDERSLER WHERE DERSAD = 'Algoritma'

--TRUNCATE TABLE TBLDERSLER

--UPDATE TBLOGRENCILER SET OGRCINSIYET = 'K�z' WHERE OGRID=2
--UPDATE TBLOGRENCILER SET OGRCINSIYET = 'K�z' WHERE OGRID=4 OR OGRID=5

--UPDATE TBLOGRENCILER SET OGRKULUP = 'Kitapl�k' WHERE OGRAD = 'Baran'

--UPDATE TBLNOTLAR SET DERS = 2

--INSERT INTO TBLNOTLAR (OGRENCI,DERS,SINAV1,SINAV2) VALUES (5,2,78,66)

--UPDATE TBLNOTLAR SET ORTALAMA = (SINAV1+SINAV2+SINAV3)/3

--UPDATE TBLNOTLAR SET DURUM = 1 WHERE ORTALAMA >= 50
UPDATE TBLNOTLAR SET DURUM = 0 WHERE ORTALAMA < 50


--For those who want to do it in English, here is the English version.
--ENGLISH
--CREATE TABLE TBLCOURSES
--(
--COURSEID tinyint,
--COURSENAME varchar(20)
--)

--ALTER TABLE TBLCOURSES
--ADD CAPACITY smallint

--ALTER TABLE TBLCOURSES
--DROP COLUMN CAPACITY

--SELECT * FROM TBLSTUDENTS
--SELECT STU_NAME, STU_SURNAME FROM TBLSTUDENTS
--SELECT STU_CITY FROM TBLSTUDENTS

--SELECT * FROM TBLSTUDENTS WHERE STU_NAME = 'Ali'

--SELECT * FROM TBLSTUDENTS WHERE STU_CITY = 'Adana' AND STU_CLUB = 'Library'
--SELECT * FROM TBLSTUDENTS WHERE STU_CITY = 'Adana' OR STU_CLUB = 'Chess'

--Decimal(x,y)
--x: Number of Digits Before the Decimal Point
--y: Number of Digits After the Decimal Point
--Average: 78.65 ** 100.00
--Decimal(5,2)

--SELECT * FROM TBLSGRADES
--SELECT (EXAM1+EXAM2+EXAM3)/3 FROM TBLSGRADES

--INSERT INTO TBLSTUDENTS (STU_NAME, STU_SURNAME, STU_CITY) VALUES ('Baran', 'Yücedağ', 'Elazığ')	
--SELECT * FROM TBLSTUDENTS

--INSERT INTO TBLSGRADES (STUDENT, COURSE, EXAM1, EXAM3) VALUES (6,2,88,67)
--SELECT * FROM TBLSGRADES

--DELETE FROM TBLCOURSES WHERE COURSEID = 6
--DELETE FROM TBLCOURSES WHERE COURSENAME = 'Algorithm'

--TRUNCATE TABLE TBLCOURSES

--UPDATE TBLSTUDENTS SET STU_GENDER = 'Female' WHERE STU_ID = 2
--UPDATE TBLSTUDENTS SET STU_GENDER = 'Female' WHERE STU_ID = 4 OR STU_ID = 5

--UPDATE TBLSTUDENTS SET STU_CLUB = 'Library' WHERE STU_NAME = 'Baran'

--UPDATE TBLSGRADES SET COURSE = 2

--INSERT INTO TBLSGRADES (STUDENT, COURSE, EXAM1, EXAM2) VALUES (5,2,78,66)

--UPDATE TBLSGRADES SET AVERAGE = (EXAM1+EXAM2+EXAM3)/3

--UPDATE TBLSGRADES SET STATUS = 1 WHERE AVERAGE >= 50
UPDATE TBLSGRADES SET STATUS = 0 WHERE AVERAGE < 50
