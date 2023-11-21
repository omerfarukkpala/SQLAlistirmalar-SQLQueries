/*Bölüm 11 - Alt Sorgu Örnekleri - 
Section 11 - Subquery Examples
*/

--ALT SORGU ÖRNEKLERİ

--SELECT URUNAD,COUNT(*) AS 'ÜRÜN AD' FROM TBLHAREKET
--INNER JOIN TBLURUNLER ON TBLHAREKET.URUN = TBLURUNLER.URUNID
--GROUP BY URUNAD ORDER BY COUNT(*)

--SELECT * FROM TBLHAREKET WHERE URUN IN (SELECT URUNID FROM TBLURUNLER WHERE KATEGORI = 1)

--AZ ÖNCEKİ ÖRNEKTE KATEGORİ = 1 YERİNE BİLGİSAYAR OLARAK GETİREN SORGU
--SELECT * FROM TBLHAREKET WHERE URUN IN (SELECT URUNID FROM TBLURUNLER WHERE KATEGORI = 
--(SELECT KATEGORIID FROM TBLKATEGORI WHERE KATEGORIAD = 'BİLGİSAYAR'))

--İÇ İÇE 3 SORGU
--SELECT * FROM TBLHAREKET WHERE MUSTERI IN (SELECT MUSTERIID FROM TBLMUSTERI WHERE MUSTERISEHIR = 'ADANA')

--Beyaz eşya kategorisinde yapılan harcamaları getiren sorgu
--SELECT * FROM TBLHAREKET WHERE URUN IN (SELECT URUNID FROM TBLURUNLER WHERE KATEGORI = 
--(SELECT KATEGORIID FROM TBLKATEGORI WHERE KATEGORIAD='BEYAZ EŞYA'))

--ALT SORGULAR 3
--Adana veya Ankara'da müşterilere satılan ürünlerin toplam fiyatı
--SELECT SUM(TUTAR) FROM TBLHAREKET WHERE MUSTERI IN (SELECT MUSTERIID FROM TBLMUSTERI WHERE MUSTERISEHIR='ADANA' OR MUSTERISEHIR='ANKARA')

--SELECT * FROM TBLHAREKET WHERE URUN=1

--UPDATE TBLURUNLER SET URUNSTOK=URUNSTOK-(SELECT SUM(ADET) FROM TBLHAREKET WHERE URUN = 10) WHERE URUNID = 10

--KASA TABLOSU
--CREATE TABLE TBLKASA
--(
--TOPLAM decimal(18,2)
--)
--INSERT INTO TBLKASA VALUES (0)
--SELECT * FROM TBLKASA
UPDATE TBLKASA SET TOPLAM = (SELECT SUM(TUTAR) FROM TBLHAREKET)

--Section 11 - Subquery Examples
--SUBQUERY EXAMPLES

