/* Bölüm 15 - T-SQL - 
Section 15 - T-SQL 
*/
--T-SQL DEĞİŞKENLER
--Declare @Sayi int
--set @Sayi = 24
--SELECT @Sayi as 'Sonuç'

--Declare @Kisi1 varchar(20)
--set @Kisi1 = 'Faruk'
--SELECT @Kisi1

--Declare @Sayi1 int,	@Sayi2 int, @toplam int
--set @Sayi1 = 20
--set @Sayi2 = 30
--set @toplam = @Sayi1 + @Sayi2
--select @toplam

--Ödev: 3 tane sınav notu girilen öğrencinin ortalamasını hesaplayan sorgu
--Declare @sinav1 float, @sinav2 float, @sinav3 float, @ortalama decimal(5,2)
--set @sinav1 = 55
--set @sinav2 = 58
--set @sinav3 = 76
--set @ortalama = (@sinav1+@sinav2+@sinav3) / 3
--select @ortalama as 'Ortalama'

--T-SQL DEĞİŞKENLER ÖRNEK ALGORİTMA SORUSU
--Sorgu kısmından gönderilen 3 basamaklı sayıyı basamaklarına ayıran sorguyu getiren ifadeyi yazınız ve bu basamakları toplayınız.
--Declare @sayi int, @yuzler int, @onlar int, @birler int, @toplam int
--set @sayi = 123
--set @yuzler = @sayi / 100
--set @onlar = (@sayi / 10) % 10
--set @birler = @sayi % 10
--set @toplam = @yuzler + @onlar + @birler
--select @yuzler as 'Yüzler', @onlar as 'Onlar', @birler as 'Birler'
--select @toplam as 'Basamakları Toplamı'

--T-SQL TABLO İÇİ DEĞİŞKENLER
--use SatisVT
--select * from TBLMUSTERI
--Declare @Bakiye int
--set @Bakiye = (select max(MUSTERIBAKIYE) from TBLMUSTERI)
--select @Bakiye

--select * from TBLURUNLER
--Declare @Stok int
--set @Stok = (select max(URUNSTOK) from TBLURUNLER)
--select @Stok
--select * from TBLURUNLER where URUNSTOK = @Stok

--SİSTEM FONKSİYONLARI
--select @@SERVERNAME, @@ERROR, @@DEFAULT_LANGID, @@LANGUAGE, @@MAX_CONNECTIONS, @@MICROSOFTVERSION, @@IDENTITY, @@TEXTSIZE, @@VERSION
--Use SatisVT

--PRINT KULLANIMI
--Print 'Merhaba'

--Declare	@s1 int, @s2 int, @sonuc int
--set @s1 = 4
--set @s2 = 8
--set @sonuc = @s1 * @s2
--print '4 ile 8 sayılarının çarpımı'
--print '***************************'
--print @sonuc

--TABLO TİPİ DEĞİŞKENLER
--Declare @Kisiler table
--(
--KisiID int identity(1,1),
--KisiAd varchar(10),
--KisiSehir varchar(15)
--)
--insert into @Kisiler (KisiAd,KisiSehir) values ('Faruk','Bursa')
--insert into @Kisiler (KisiAd,KisiSehir) values ('Ömer','Kocaeli')
--select * from @Kisiler where KisiSehir like '%f%'

--IF ELSE KULLANIMI
--if(1<5)
--print 'Merhaba'
--else
--print 'Selam'

--select * from TBLURUNLER
--if(select SUM(URUNSTOK) from TBLURUNLER) > 100
--print 'Toplam Ürün Sayısı 100 den Büyük'
--else
--print 'Toplam Ürün Sayısı 100 den Küçük'

--if(select COUNT(*) from TBLURUNLER) > 20
--print '20 den fazla çeşit ürün var'
--else
--print '20 den az çeşit ürün var'

--Declare @urun varchar(10)
--set @urun = (select SUM(URUNSTOK) from TBLURUNLER)
--if @urun > 100
--print 'Toplam Ürün Sayısı: ' + @urun + ' 100 den büyük'
--else
--print 'Toplam Ürün Sayısı: ' + @urun + ' 100 den küçük'

--CASE KULLANIMI
--select URUNAD, URUNMARKA, URUNDURUM =
--CASE URUNDURUM
--WHEN '1' THEN 'ÜRÜN VAR'
--WHEN '0' THEN 'ÜRÜN YOK'
--END
--from TBLURUNLER

--select URUNAD, URUNMARKA, KATEGORI =
--CASE KATEGORI
--WHEN '1' THEN 'LAPTOP'
--WHEN '2' THEN 'BEYAZ EŞYA'
--WHEN '3' THEN 'KÜÇÜK EV ALETİ'
--END
--from TBLURUNLER

--CASE İLE KRİTİK SEVİYE BULMAK
--CREATE PROCEDURE TEST4
--AS
--select URUNAD,URUNMARKA,URUNSTOK,URUNSTOK =
--CASE
--WHEN URUNSTOK >= 1 AND URUNSTOK <= 5 THEN 'KRİTİK SEVİYE'
--WHEN URUNSTOK >= 6 AND URUNSTOK <= 10 THEN 'TAKVİYE YAPILMALI'
--WHEN URUNSTOK > 10 THEN 'ÜRÜN STOK SAYISI YETERLİ'
--END
--from TBLURUNLER

--WHILE DÖNGÜSÜ
--Declare @sayac int
--set @sayac = 1
--while @sayac <= 5
--begin
--print 'Merhaba SQL Dersleri'
--set @sayac = @sayac + 1
--end

--Declare @sayi int
--set @sayi = 1
--while @sayi <= 10
--begin
--print @sayi
--set @sayi += 1
--end

--Declare @sayac int, @toplam int
--set @sayac = 1
--set @toplam = 0
--while (@sayac <= 10)
--begin
--set @toplam += @sayac
--set @sayac+=1
--end
--print '1 ile 10 Arasındaki Sayıların Toplamı'
--print '-------------------------------------'
--print @toplam

--select avg(URUNSATISFIYAT - URUNALISFIYAT) from TBLURUNLER

--while (select avg(URUNSATISFIYAT - URUNALISFIYAT) from TBLURUNLER where KATEGORI = 2) <= 450
--begin
--UPDATE TBLURUNLER set URUNSATISFIYAT += URUNSATISFIYAT * 10 / 100
--end
--select * from TBLURUNLER

--Toplam ürün sayısı (ürün stok) 200'ü geçene kadar her birine birer tane ürün ekleyen sorgu
--while (select SUM(URUNSTOK) from TBLURUNLER) <= 200
--begin
--update TBLURUNLER set URUNSTOK += 1
--end

--WAITFOR KULLANIMI
--waitfor delay '00:00:05'
--select * from TBLURUNLER

--waitfor delay '00:00:05'
--insert into TBLKATEGORI (KATEGORIAD) values ('DİĞER')
--select * from TBLKATEGORI