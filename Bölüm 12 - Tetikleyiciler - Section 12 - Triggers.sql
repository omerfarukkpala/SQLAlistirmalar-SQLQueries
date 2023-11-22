/*Bölüm 12 - Tetikleyiciler - 
Section 12 - Triggers */

--CREATE TABLE TBLSAYAC
--(
--ISLEM int
--)

--INSERT INTO TBLSAYAC VALUES (0)

--UPDATE TBLSAYAC SET ISLEM = (SELECT COUNT(*) FROM TBLHAREKET)

--CREATE TRIGGER ISLEMARTIS
--ON TBLHAREKET
--AFTER INSERT
--AS
--UPDATE TBLSAYAC SET ISLEM = ISLEM + 1

--CREATE TABLE TBLTOPLAMKATEGORI
--(
--ADET tinyint
--)

--UPDATE TBLTOPLAMKATEGORI SET ADET = (SELECT COUNT(*) FROM TBLKATEGORI)

--CREATE TRIGGER KATEGORIARTIS
--ON TBLKATEGORI
--AFTER INSERT
--AS
--UPDATE TBLTOPLAMKATEGORI SET ADET += 1

--CREATE TRIGGER KATEGORIAZALIS
--ON TBLKATEGORI
--AFTER DELETE
--AS
--UPDATE TBLTOPLAMKATEGORI SET ADET -= 1

--Section 12 - Triggers