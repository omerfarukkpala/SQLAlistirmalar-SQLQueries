/*Bölüm 3 - Gruplandırmalar ve Operatörler - 
Section 3 - Groupings and Operators
*/

--Bölüm 3 - Gruplandırmalar ve Operatörler
--SELECT COUNT(*) AS 'Toplam Kayıt' FROM TBLOGRENCILER
--SELECT COUNT(*) AS 'Toplam Kişi' FROM TBLOGRENCILER WHERE OGRSEHIR = 'Adana'

--SELECT SUM(SINAV1),SUM(SINAV2),SUM(SINAV3) FROM TBLNOTLAR
--SELECT AVG(SINAV1),AVG(SINAV2),AVG(SINAV3) FROM TBLNOTLAR
--SELECT MAX(SINAV1),MAX(SINAV2),MAX(SINAV3) FROM TBLNOTLAR
--SELECT MIN(SINAV1),MIN(SINAV2),MIN(SINAV3) FROM TBLNOTLAR

--SELECT OGRSEHIR,COUNT(*) AS 'Toplam' FROM TBLOGRENCILER GROUP BY OGRSEHIR
--SELECT OGRCINSIYET,COUNT(*) AS 'Toplam' FROM TBLOGRENCILER GROUP BY OGRCINSIYET

--SELECT DURUM,COUNT(*) AS 'Sonuç' FROM TBLNOTLAR GROUP BY DURUM

--UPDATE TBLNOTLAR SET ORTALAMA=(SINAV1+SINAV2+SINAV3)/3
--UPDATE TBLNOTLAR SET DURUM=0 WHERE ORTALAMA<50
--UPDATE TBLNOTLAR SET DURUM=1 WHERE ORTALAMA>=50

--SELECT OGRKULUP,COUNT(*) FROM TBLOGRENCILER GROUP BY OGRKULUP

--SELECT OGRSEHIR,COUNT(*) AS 'SAYI' FROM TBLOGRENCILER GROUP BY OGRSEHIR HAVING COUNT(*)=2

--SELECT OGRKULUP,COUNT(*) FROM TBLOGRENCILER GROUP BY OGRKULUP HAVING OGRKULUP = 'Kitaplık'

--Ödev: Öğrencilerin ortalamasına göre geçenler ve kalanlar
--SELECT DURUM,COUNT(*) AS 'Geçti' FROM TBLNOTLAR GROUP BY DURUM HAVING DURUM = 1
--SELECT DURUM,COUNT(*) AS 'Kaldı' FROM TBLNOTLAR GROUP BY DURUM HAVING DURUM = 0

--SELECT * FROM TBLOGRENCILER WHERE OGRAD LIKE '%a%' OR OGRSOYAD LIKE '%a%'
--SELECT * FROM TBLOGRENCILER WHERE OGRAD LIKE 'a%' AND OGRCINSIYET = 'Erkek'
--SELECT * FROM TBLOGRENCILER WHERE OGRAD LIKE 'a%' AND OGRCINSIYET = 'Kız'
--SELECT * FROM TBLOGRENCILER WHERE OGRSEHIR LIKE '%a%'
--SELECT * FROM TBLOGRENCILER WHERE OGRKULUP NOT LIKE 'b%'

--SELECT DISTINCT OGRSEHIR FROM TBLOGRENCILER
--SELECT COUNT(DISTINCT(OGRSEHIR)) FROM TBLOGRENCILER

--SELECT DISTINCT OGRKULUP FROM TBLOGRENCILER
--SELECT COUNT(DISTINCT(OGRKULUP)) FROM TBLOGRENCILER

--SELECT * FROM TBLOGRENCILER ORDER BY OGRSEHIR
--SELECT DISTINCT OGRKULUP FROM TBLOGRENCILER ORDER BY OGRKULUP DESC

--SELECT * FROM TBLOGRENCILER WHERE OGRSEHIR LIKE '%an_%'

--SELECT * FROM TBLOGRENCILER WHERE OGRAD LIKE '%[N,I]'

--SELECT * FROM TBLOGRENCILER WHERE OGRKULUP LIKE '%[k-m]'

--SELECT TOP 4 * FROM TBLOGRENCILER ORDER BY OGRID DESC

--SELECT TOP 81 PERCENT * FROM TBLOGRENCILER

--SELECT * FROM TBLOGRENCILER WHERE OGRSEHIR = 'İzmir' OR OGRSEHIR = 'Ankara' OR OGRSEHIR = 'Adana'
--SELECT * FROM TBLOGRENCILER WHERE OGRSEHIR IN ('İzmir','Ankara','Adana')

--SELECT * FROM TBLNOTLAR WHERE SINAV1 IN (70,75,80,85,90)
--SELECT * FROM TBLNOTLAR WHERE SINAV1 NOT IN (70,75,80,85,90)

--SELECT * FROM TBLNOTLAR WHERE ORTALAMA BETWEEN 74 AND 100

SELECT * FROM TBLOGRENCILER WHERE OGRAD BETWEEN 'A' AND 'O'
SELECT * FROM TBLOGRENCILER WHERE OGRAD NOT BETWEEN 'A' AND 'N'



--Section 3 - Groupings and Operators