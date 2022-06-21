/*============================= GROUP BY =====================================

    GROUP BY cümleciği bir SELECT ifadesinde satırları, sutunların değerlerine 
    göre özet olarak gruplamak için kullanılır. 
   
    GROUP BY cümleceği her grup başına bir satır döndürür. 
    
    GROUP BY genelde, AVG(),COUNT(),MAX(),MIN() ve SUM() gibi aggregate 
    fonksiyonları ile birlikte kullanılır.
==============================================================================*/ 
use batch59;
    
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

select * from manav;
    
    
-- SORU1: kisi ismine göre satılan toplam meyve miktarlarını gösteren sorguyu yazınız.



-- SORU2: satılan meyve türüne (urun_adi) göre urun alan kişi sayısını gösteren
-- sorguyu yazınız. NULL olarak girilen meyveyi listelemesin.



-- SORU3: satılan meyve türüne (urun_adi) göre satılan (urun_miktari )MIN ve 
-- MAX urun miktarlarini, MAX urun miktarina göre sıralayarak listeyen sorguyu yazınız.



 
-- SORU4: kisi ismine ve urun adına göre satılan ürünlerin toplamını gruplandıran ve isime göre ters sırasıda listeyen sorguyu yazınız.
