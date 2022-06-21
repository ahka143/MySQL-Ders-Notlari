/*================================= GROUP BY =========================================

    GROUP BY, aynı değere sahip dataları bulup, özet olarak gruplamak için kullanılır. 
    
    GROUP BY genelde, AVG(),COUNT(),MAX(),MIN() ve SUM() gibi aggregate 
    fonksiyonları ile birlikte kullanılır.
    
    SYTAX:
    SELECT column_name(s)
	FROM table_name
	WHERE condition
	GROUP BY column_name(s)
	ORDER BY column_name(s);
    
====================================================================================*/ 

use batch59;

create table personel
(id int primary key,
ad varchar(20),
soyad varchar(20),
yas int,
cinsiyet char,
sehir varchar(20),
ulke varchar(20),
maas int
);

insert into personel values(100, 'Eymen',  'Bal', '25', 'E', 'Istanbul', 'Turkiye', '20000');
insert into personel values(101, 'Derya', 'Soylu', '35', 'K', 'Istanbul', 'Turkiye', '25000');
insert into personel values(102, 'Enes', 'Boz', '55', 'E', 'Istanbul', 'Turkiye', '22000');
insert into personel values(103, 'Nil', 'Naz', '45', 'K', 'Trabzon', 'Turkiye', '20000');
insert into personel values(104, 'Ali', 'Can', '28', 'E', 'Ankara', 'Turkiye', '15000');
insert into personel values(105, 'Yusuf', 'Cengiz', '46', 'E', 'Bolu', 'Turkiye', '30000');
insert into personel values(106, 'Ahmet', 'Aslan', '38', 'E', 'Adana', 'Turkiye', '28000');
insert into personel values(107, 'Mehmet', 'Aslan', '29', 'E', 'Gaziantep', 'Turkiye', '21000');
insert into personel values(108, 'Sena', 'Yavuz', '49', 'K', 'New York', 'USA', '40000');
insert into personel values(109, 'Zehra', 'Amber', '52', 'K', 'New York', 'USA', '45000');
insert into personel values(110, 'Fatma', 'Nur', '33', 'K', 'Berlin', 'Almanya', '35000');
insert into personel values(111, 'Mustafa', 'Bay', '44', 'E', 'Paris', 'Fransa', '34000');
insert into personel values(112, 'Murat', 'Kerem', '28', 'E', 'Istanbul', 'Turkiye', '29000');
insert into personel values(113, 'Sinan', 'Ay', '45', 'E', 'Izmir', 'Turkiye', '19000');
insert into personel values(114, 'Figen', 'Bal', '55', 'K', 'Istanbul', 'Turkiye', '25000');
insert into personel values(115, 'Serkan', 'Bayram', '36', 'E', 'Londra', 'Ingiltere', '50000');
insert into personel values(116, 'Hakan', 'Bacak', '29', 'E', 'Londra', 'Ingiltere', '55000');
insert into personel values(117, 'Zafer', 'Yanak', '47', 'E', 'Berlin', 'Almanya', '42000');
insert into personel values(118, 'Birol', 'Kara', '37', 'E', 'Paris', 'Fransa', '41000');
insert into personel values(119, 'Ayten', 'Tan', '32', 'K', 'Roma', 'Italya', '39000');

select * from personel;


-- SORU01: personelin calıştığı ülkeleri listeleyiniz




-- SORU02: Ülkelere göre ortalama maaşları listeleyiniz



-- SORU03: Her ülkede kaç çalışan olduğunu sorgulayınız.



-- SORU04: Maas ortalamasını bayanlar ve baylar olarak sorgulayınız



-- SORU05: Personelin, ulkelere göre ve şehirlere göre gruplayarak sorgulayın



-- SORU06: Personelin, ulkelere göre ve şehirler göre calışan sayısını sorgulayın.



-- SORU07: Her ulke için bay ve bayan çalışan sayısı ve yaş ortalamasını sorgulayınız.



-- SORU08: Her ulke için bay ve bayan çalışan sayısı ve yaş ortalamasını  ve maası 30000 den büyük olanları sorgulayınız.




-- SORU09: Her ulke için; bay ve bayan çalışan sayısı, yaş ortalamasını, maaşı 30000 den büyük olanları
-- ve ortalama yaşı büyükten küçüğe doğru sıralayınız.






CREATE TABLE manav 
(
	isim varchar(50), 
	urun_adi varchar(50), 
	urun_miktari int 
);
    
INSERT INTO manav VALUES( 'Ali', 'Elma', 5);
INSERT INTO manav VALUES( 'Ayse', 'Armut', 3);
INSERT INTO manav VALUES( 'Veli', 'Elma', 2);
INSERT INTO manav VALUES( 'Hasan', 'Uzum', 4);
INSERT INTO manav VALUES( 'Ali', 'Armut', 2);
INSERT INTO manav VALUES( 'Ayse', 'Elma', 3);
INSERT INTO manav VALUES( 'Veli', 'Uzum', 4);
INSERT INTO manav VALUES( 'Ali', 'Armut', 2);
INSERT INTO manav VALUES( 'Veli', 'Elma', 3);
INSERT INTO manav VALUES( 'Ayse', 'Uzum', 4);
INSERT INTO manav VALUES( 'Ali', null, 2);


-- SORU10: kisi ismine ve urun adına göre satılan ürünlerin toplamını
--  gruplandıran ve isime göre ters sırasıda listeyen sorguyu yazınız.


-- SORU11: Kişi ismine ve ürün adına göre (gruplayarak) satılan ürünleri toplamını bulan
-- ve bu toplam değeri 3 ve fazlası olan kayıtları, toplam ürün miktarına göre büyükten küçüğe listeleyiniz.



-- SORU12: Satılan urun_adi'na göre gruplayarak MAX ürün sayılarını sıralayarak listeleyen sorgu yazınız.
-- NOT: Sorgu sadece MAX urun_miktari MIN urun_miktari na eşit olmayan kayıtları listelemelidir.









/*==================================== DISTINCT ======================================

	DISTINCT , bir sorgu ifadesinde benzer olan satırları filtrelemek için kullanılır.
    Seçilen sütun yada sütunlar icin benzersiz veri içeren satırlar oluşturmaya yarar.
	
	SYTAX
    -----
    SELECT DISTINCT sütun_adı1, sütun_adı2 ...
    FROM tablo_adı;
======================================================================================= */

-- Satılan meyve türlerinin sayısını listeleyen sorgu



-- Satılan farklı meyve türlerinin sayısını listeleyen sorgu


-- satılan meyve + isimleri farklı olanları listeleyen sorgu



-- satılan meyvelerin urun_miktarlarının benzersiz olanlarının toplamlarını listeleyen sorgu

