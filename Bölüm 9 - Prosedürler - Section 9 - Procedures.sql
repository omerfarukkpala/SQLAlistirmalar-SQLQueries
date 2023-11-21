/* Bölüm 9 - Prosedürler - 
Section 9 - Procedures
*/

--PROSEDÜR KULLANIMI

--CREATE PROCEDURE HAREKETLER
--AS
--SELECT HAREKETID,URUNAD,MUSTERIAD + ' ' + MUSTERISOYAD 'AD SOYAD',PERSONELADSOYAD,ADET,TUTAR,TARIH FROM TBLHAREKET 
--INNER JOIN TBLURUNLER ON TBLHAREKET.URUN = TBLURUNLER.URUNID
--INNER JOIN TBLMUSTERI ON TBLHAREKET.MUSTERI = TBLMUSTERI.MUSTERIID
--INNER JOIN TBLPERSONEL ON TBLHAREKET.PERSONEL = TBLPERSONEL.PERSONELID

--EXECUTE HAREKETLER

--PROSEDÜR SİLME VE GÜNCELLEME (DROP & AFTER)
--CREATE PROCEDURE DENEME
--AS
--SELECT * FROM TBLURUNLER WHERE URUNSTOK>10
--EXEC DENEME
--DROP PROCEDURE DENEME

--ALTER PROCEDURE [dbo].[HAREKETLER]
--AS
--SELECT HAREKETID,URUNAD,LEFT(MUSTERIAD,1) + '. ' + MUSTERISOYAD 'AD SOYAD',PERSONELADSOYAD,ADET,TUTAR,TARIH FROM TBLHAREKET 
--INNER JOIN TBLURUNLER ON TBLHAREKET.URUN = TBLURUNLER.URUNID
--INNER JOIN TBLMUSTERI ON TBLHAREKET.MUSTERI = TBLMUSTERI.MUSTERIID
--INNER JOIN TBLPERSONEL ON TBLHAREKET.PERSONEL = TBLPERSONEL.PERSONELID
--EXEC HAREKETLER

--PARAMETRELİ PROSEDÜR KULLANIMI
--ALTER PROCEDURE URUNGETIR
--@Deger varchar(50)='BUZDOLABI'
--AS
--SELECT URUNAD,URUNSTOK,URUNMARKA FROM TBLURUNLER
--WHERE URUNAD=@Deger

--EXECUTE URUNGETIR @Deger = 'LAPTOP'

--STOK SAYISI DIŞARIDAN GİRİLEN 10'DAN BÜYÜK OLANLARI GETİREN PROSEDÜRÜ YAZIN.
CREATE PROCEDURE DERS46ODEV
@Deger smallint = 0
AS
SELECT URUNID,URUNAD,URUNMARKA,KATEGORIAD,URUNALISFIYAT,URUNSATISFIYAT,URUNSTOK,URUNDURUM
FROM TBLURUNLER INNER JOIN TBLKATEGORI ON TBLURUNLER.KATEGORI = TBLKATEGORI.KATEGORIID
WHERE URUNSTOK > @DEGER
EXECUTE DERS46ODEV @Deger = 9


--Section 9 - Procedures
--PROCEDURE USAGE

--CREATE PROCEDURE MOVEMENTS
--AS
--SELECT MOVEMENTID,PRODUCTNAME,CUSTOMERNAME + ' ' + CUSTOMERSURNAME AS 'FULL NAME',EMPLOYEEFULLNAME,QUANTITY,AMOUNT,DATE FROM TRANSACTIONTABLE 
--INNER JOIN PRODUCTTABLE ON TRANSACTIONTABLE.PRODUCT = PRODUCTTABLE.PRODUCTID
--INNER JOIN CUSTOMERTABLE ON TRANSACTIONTABLE.CUSTOMER = CUSTOMERTABLE.CUSTOMERID
--INNER JOIN EMPLOYEETABLE ON TRANSACTIONTABLE.EMPLOYEE = EMPLOYEETABLE.EMPLOYEEID

--EXECUTE MOVEMENTS

--PROCEDURE DELETION AND UPDATE (DROP & AFTER)
--CREATE PROCEDURE TEST
--AS
--SELECT * FROM PRODUCTTABLE WHERE PRODUCTSTOCK > 10
--EXEC TEST
--DROP PROCEDURE TEST

--ALTER PROCEDURE [dbo].[MOVEMENTS]
--AS
--SELECT MOVEMENTID,PRODUCTNAME,LEFT(CUSTOMERNAME,1) + '. ' + CUSTOMERSURNAME AS 'FULL NAME',EMPLOYEEFULLNAME,QUANTITY,AMOUNT,DATE FROM TRANSACTIONTABLE 
--INNER JOIN PRODUCTTABLE ON TRANSACTIONTABLE.PRODUCT = PRODUCTTABLE.PRODUCTID
--INNER JOIN CUSTOMERTABLE ON TRANSACTIONTABLE.CUSTOMER = CUSTOMERTABLE.CUSTOMERID
--INNER JOIN EMPLOYEETABLE ON TRANSACTIONTABLE.EMPLOYEE = EMPLOYEETABLE.EMPLOYEEID
--EXEC MOVEMENTS

--PARAMETERIZED PROCEDURE USAGE
--ALTER PROCEDURE GETPRODUCT
--@Value varchar(50)='REFRIGERATOR'
--AS
--SELECT PRODUCTNAME,PRODUCTSTOCK,PRODUCTBRAND FROM PRODUCTTABLE
--WHERE PRODUCTNAME=@Value

--EXECUTE GETPRODUCT @Value = 'LAPTOP'

--PROCEDURE TO RETRIEVE ITEMS WITH STOCK GREATER THAN 10 ENTERED FROM OUTSIDE.
CREATE PROCEDURE ASSIGNMENT46
@Value smallint = 0
AS
SELECT PRODUCTID,PRODUCTNAME,PRODUCTBRAND,CATEGORYNAME,PRODUCTPURCHASEPRICE,PRODUCTSALEPRICE,PRODUCTSTOCK,PRODUCTSTATUS
FROM PRODUCTTABLE INNER JOIN CATEGORYTABLE ON PRODUCTTABLE.CATEGORY = CATEGORYTABLE.CATEGORYID
WHERE PRODUCTSTOCK > @Value
EXECUTE ASSIGNMENT46 @Value = 9
