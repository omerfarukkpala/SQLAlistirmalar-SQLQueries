/*Bölüm 22 - Index  - 
Section 22 - Index */

--Clustered Index(Kümelenmiş İndex)
--İndexlerin belirli bir düzene ve sıraya sahip olduğu durumda clustered indexten bahsedilir. Tablodaki alana Primary key atandığı anda clustered 
--index oluşturulmuş olur. Örneğin dışarıdan sisteme yeni bir kayıt girildiğinde en son bilgiler ona göre index değeri alır. Veriler farklı farklı 
--kümelerde tutulmuştur ve bir kümenin bitiş sırasında diğer küme index sırasına göre düzenlenmiştir. Clustered index’e sahip olduğumuzda sistem 
--Clustered index taraması yapabilir, bu tarama yöntem page okuma sayısını azaltmaya yardımcı olur yani performans sağlar. Her tablo sadece bir 
--clustered index’e sahip olabilir.

--Non-Clustered Index
--Bu tip indexi yukarıda da bahsettiğimiz kitap örneğinden devam ettirelim. Non-clustered index kitap sayfa sayılarına benzer. Bu index türü olduğu 
--zaman, sistem tüm sayfaları tek tek aramakla vakit geçirmez. İndex numarasına göre istenilen kitap sayfasına gider ve istenilen veriyi bulur. 
--Burada İndex verinin bir kopyasıdır ve index’in sahip olduğu veri çekilir. Clustered indexe göre daha yavaştır. Tablolarda çok sayıda 
--oluşturulabilir.

----KAYNAK: https://www.datasciencearth.com/

--250 BİN DATALI TABLO OLUŞTURMA
--CREATE TABLE TABLO1
--(
--ID INT IDENTITY(1,1),
--AD VARCHAR(20)
--)

--DECLARE @SAYAC INT=1
--WHILE @SAYAC < 250001
--BEGIN
--INSERT TABLO1
--SELECT 'KİTAP' + CAST(@SAYAC AS varchar(20))
--SET @SAYAC = @SAYAC + 1
--END
--SELECT COUNT(*) FROM TABLO1

--210 BİNİNCİ DATAYI SORGULAMA
--SELECT * FROM TABLO1 WHERE ID=210387

--SET STATISTICS IO ON
--SET STATISTICS TIME ON
--SELECT * FROM TABLO1 WHERE ID=210387

--CLUSTERED INDEX İLE 210 BİNİNCİ DATAYI SORGULAMA
--CREATE CLUSTERED INDEX TABLOKAYITGETIR
--ON TABLO1(ID)
SELECT * FROM TABLO1 WHERE ID=210387

--Section 22 - Index 
--Clustered Index:
--When indexes have a specific order and sequence, it is referred to as a clustered index. A clustered index is created when a Primary Key is assigned to a field in the table. For example, when a new record is entered into the system from the outside, the latest information takes its index value accordingly. Data is stored in different clusters, and at the end of one cluster, the other cluster is arranged according to the index order. With a clustered index, the system can perform a clustered index scan, reducing the number of page reads and improving performance. Each table can have only one clustered index.

--Non-Clustered Index:
--Let's continue with the book example mentioned above for this type of index. A non-clustered index is similar to page numbers in a book. When this type of index is present, the system doesn't have to search through all pages one by one. It can directly go to the desired page based on the index number. Here, the index is a copy of the data, and the data is retrieved from the index. It is slower compared to a clustered index. Multiple non-clustered indexes can be created on tables.

--Source: https://www.datasciencearth.com

--Creating a Table with 250,000 Records:
CREATE TABLE TABLO1
(
ID INT IDENTITY(1,1),
AD VARCHAR(20)
)

DECLARE @COUNTER INT=1
WHILE @COUNTER < 250001
BEGIN
INSERT TABLO1
SELECT 'BOOK' + CAST(@COUNTER AS varchar(20))
SET @COUNTER = @COUNTER + 1
END
SELECT COUNT(*) FROM TABLO1

--Querying the 210,000th Data:

SELECT * FROM TABLO1 WHERE ID=210387


--Enabling IO and Time Statistics:
SET STATISTICS IO ON
SET STATISTICS TIME ON
SELECT * FROM TABLO1 WHERE ID=210387


--Querying the 210,000th Data with a Clustered Index:
CREATE CLUSTERED INDEX TABLOKAYITGETIR
ON TABLO1(ID)
SELECT * FROM TABLO1 WHERE ID=210387

