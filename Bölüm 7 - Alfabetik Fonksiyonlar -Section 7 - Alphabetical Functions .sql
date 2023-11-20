/*Bölüm 7 - Alfabetik Fonksiyonlar -
Section 7 - Alphabetical Functions 
*/

--UPPER VE LOWER FONKSİYONLARI

--SELECT UPPER('merhaba') AS 'Sütun'

--SELECT UPPER(OGRAD) AS 'ÖĞRENCİ ADI', upper(OGRSOYAD) as 'ÖĞRENCİ SOYADI', LOWER(OGRSEHIR) AS 'ŞEHİR' FROM TBLOGRENCILER

--Şehri Adana olan ve bilişim kulübünde bulunan öğrencilerin adını büyük soyadını küçük harf getiren sorguyu yazınız.
--SELECT UPPER(OGRAD) + ' ' + LOWER(OGRSOYAD) AS 'Adı Soyadı',OGRSEHIR AS 'Şehir',KULUPAD AS 'Kulüp' FROM TBLOGRENCILER
--INNER JOIN TBLKULUPLER ON TBLOGRENCILER.OGRKULUP = TBLKULUPLER.KULUPID
--WHERE OGRSEHIR = 'Adana' AND KULUPAD = 'Bilişim'

--SUBSTRING KOMUTU
--SELECT SUBSTRING(OGRAD,1,2) FROM TBLOGRENCILER
--SELECT SUBSTRING(OGRAD,3,2) FROM TBLOGRENCILER
--SELECT SUBSTRING(OGRAD,1,1) + '. ' + OGRSOYAD AS 'AD SOYAD', OGRKULUP FROM TBLOGRENCILER

--Öğrencinin kulübünün ilk 3 harfini getiren sorguyu yazınız.
--SELECT SUBSTRING(OGRAD,1,1) + '. ' + OGRSOYAD AS 'Adı Soyadı', SUBSTRING(KULUPAD,1,3) AS 'Kulüpler' FROM TBLOGRENCILER
--INNER JOIN TBLKULUPLER ON TBLOGRENCILER.OGRKULUP = TBLKULUPLER.KULUPID

--LEFT RIGHT FONKSİYONLARI
--SELECT LEFT('MERHABA DÜNYA',9), RIGHT('MERHABA İSTANBUL',2)
--SELECT LEFT(OGRAD,1) + '. ' + OGRSOYAD AS 'Ad Soyad' FROM TBLOGRENCILER

--SELECT LEFT(DERSAD,3),AVG(ORTALAMA) FROM TBLNOTLAR 
--INNER JOIN TBLDERSLER ON TBLDERSLER.DERSID = TBLNOTLAR.DERS
--GROUP BY DERSAD

----Ortalama kısmındaki virgülden sonraki 2 basamağı gösteren sorgu
--SELECT CAST(AVG(ORTALAMA) AS decimal(5,2)) FROM TBLNOTLAR

--LEN KULLANIMI
--SELECT LEN('Merhaba')
--SELECT OGRAD,LEN(OGRAD),OGRKULUP FROM TBLOGRENCILER WHERE OGRSEHIR = 'Adana'
--AND OGRKULUP = (SELECT KULUPID FROM TBLKULUPLER WHERE KULUPAD = 'Bilişim')

--SELECT * FROM TBLOGRENCILER WHERE LEN(OGRAD) = 4 OR LEN(OGRAD) = 3

--İsim + soyismin toplamı 3 ile 7 karakter arasında olan öğrencileri getiren sorguyu yazın.
--1. yol
--SELECT * FROM TBLOGRENCILER WHERE LEN(OGRAD) + LEN(OGRSOYAD) IN (3,7)
--2. yol
--SELECT * FROM TBLOGRENCILER WHERE (LEN(OGRAD + OGRSOYAD)) BETWEEN 3 AND 7

--LTRIM RTRIM REPLACE KOMUTLARI
--SELECT LTRIM('          Korkma Sönmez Bu Şafaklarda Yüzen Al Sancak          ')
--SELECT RTRIM('          Korkma Sönmez Bu Şafaklarda Yüzen Al Sancak          ')
--SELECT REPLACE('Faruk PALA','PALA','F.PALA')
--SELECT REPLACE('Merhaba bugün hava soğuk','a','e')
--1. Parametre Ana Kelime Cümle
--2. Parametre Bulunacak Değer
--3. Parametre Yeni Değer

--Birden fazla değeri değiştirmek için kullanılan sorgu
--SELECT REPLACE(REPLACE(REPLACE('Merhaba Bugün Hava Soğuk', 'ü', 'u'), 'ğ', 'g'), 'Soguk', 'Sıcak')

--CHARINDEX VE REVERSE KOMUTLARI
--SELECT CHARINDEX('a','SQL Derslerine Devam Ediyoruz')
--SELECT CHARINDEX('x','SQL Derslerine Devam Ediyoruz')
--SELECT CHARINDEX('e','SQL Derslerine Devam Ediyoruz')
--SELECT CHARINDEX('a','SQL Derslerine Devam Ediyoruz',15)
--SELECT LEN('SQL Derslerine Devam Ediyoruz')

--SELECT CHARINDEX('a',OGRAD) FROM TBLOGRENCILER
--SELECT REVERSE('Faruk')

--SELECT REVERSE(DERSAD) FROM TBLDERSLER

--Section 7 - Alphabetical Functions
--UPPER AND LOWER FUNCTIONS

--SELECT UPPER('hello') AS 'Column'

--SELECT UPPER(NAME) AS 'STUDENT NAME', LOWER(SURNAME) AS 'STUDENT SURNAME', LOWER(CITY) AS 'CITY' FROM STUDENTS

--Query to retrieve the name in uppercase and surname in lowercase of students from Adana in the IT club.
--SELECT UPPER(NAME) + ' ' + LOWER(SURNAME) AS 'Full Name', CITY AS 'City', CLUBNAME AS 'Club' FROM STUDENTS
--INNER JOIN CLUBS ON STUDENTS.CLUB = CLUBS.CLUBID
--WHERE CITY = 'Adana' AND CLUBNAME = 'IT'

--SUBSTRING COMMAND
--SELECT SUBSTRING(NAME,1,2) FROM STUDENTS
--SELECT SUBSTRING(NAME,3,2) FROM STUDENTS
--SELECT SUBSTRING(NAME,1,1) + '. ' + SURNAME AS 'FULL NAME', CLUBID FROM STUDENTS

--Query to retrieve the first 3 letters of the club of a student.
--SELECT SUBSTRING(NAME,1,1) + '. ' + SURNAME AS 'Full Name', SUBSTRING(CLUBNAME,1,3) AS 'Clubs' FROM STUDENTS
--INNER JOIN CLUBS ON STUDENTS.CLUB = CLUBS.CLUBID

--LEFT RIGHT FUNCTIONS
--SELECT LEFT('HELLO WORLD',9), RIGHT('HELLO ISTANBUL',2)
--SELECT LEFT(NAME,1) + '. ' + SURNAME AS 'Full Name' FROM STUDENTS

--SELECT LEFT(COURSENAME,3),AVG(AVERAGE) FROM EXAMS 
--INNER JOIN COURSES ON EXAMS.COURSE = COURSES.COURSEID
--GROUP BY COURSENAME

----Query to display two decimal places in the average part.
--SELECT CAST(AVG(AVERAGE) AS decimal(5,2)) FROM EXAMS

--LEN USAGE
--SELECT LEN('Hello')
--SELECT NAME,LEN(NAME),CLUBID FROM STUDENTS WHERE CITY = 'Adana'
--AND CLUBID = (SELECT CLUBID FROM CLUBS WHERE CLUBNAME = 'IT')

--SELECT * FROM STUDENTS WHERE LEN(NAME) = 4 OR LEN(NAME) = 3

--Query to retrieve students with a total of names + surnames between 3 and 7 characters.
--1st method
--SELECT * FROM STUDENTS WHERE LEN(NAME) + LEN(SURNAME) IN (3,7)
--2nd method
--SELECT * FROM STUDENTS WHERE (LEN(NAME + SURNAME)) BETWEEN 3 AND 7

--LTRIM RTRIM REPLACE COMMANDS
--SELECT LTRIM('          Embrace the Dawn with Unfading Banners          ')
--SELECT RTRIM('          Embrace the Dawn with Unfading Banners          ')
--SELECT REPLACE('Faruk PALA','PALA','F.PALA')
--SELECT REPLACE('Hello today is cold','a','e')
--1st Parameter Main Sentence
--2nd Parameter Value to be Found
--3rd Parameter New Value

--Query to replace multiple values
--SELECT REPLACE(REPLACE(REPLACE('Hello Today is Cold', 'ü', 'u'), 'ğ', 'g'), 'Cold', 'Warm')

--CHARINDEX AND REVERSE COMMANDS
--SELECT CHARINDEX('a','SQL Lessons Continue')
--SELECT CHARINDEX('x','SQL Lessons Continue')
--SELECT CHARINDEX('e','SQL Lessons Continue')
--SELECT CHARINDEX('a','SQL Lessons Continue',15)
--SELECT LEN('SQL Lessons Continue')

--SELECT CHARINDEX('a',NAME) FROM STUDENTS
--SELECT REVERSE('Faruk')

--SELECT REVERSE(COURSENAME) FROM COURSES 