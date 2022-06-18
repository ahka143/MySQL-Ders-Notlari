-- UPDATE - SET  

use batch59;

CREATE TABLE tedarikciler -- parent
(
vergi_no int PRIMARY KEY,
firma_ismi VARCHAR(50),
irtibat_ismi VARCHAR(50)
);
    
INSERT INTO tedarikciler VALUES (101, 'IBM', 'Kim Yon');
INSERT INTO tedarikciler VALUES (102, 'Huawei', 'Çin Li');
INSERT INTO tedarikciler VALUES (103, 'Erikson', 'Maki Tammen');
INSERT INTO tedarikciler VALUES (104, 'Apple', 'Adam Eve');

select * from tedarikciler;
    
CREATE TABLE urunler -- child
(
ted_vergino int, 
urun_id int, 
urun_isim VARCHAR(50), 
musteri_isim VARCHAR(50),
CONSTRAINT fk_urunler FOREIGN KEY(ted_vergino) REFERENCES tedarikciler(vergi_no)
on delete cascade
);    
    
INSERT INTO urunler VALUES(101, 1001,'Laptop', 'Ayşe Can');
INSERT INTO urunler VALUES(102, 1002,'Phone', 'Fatma Aka');
INSERT INTO urunler VALUES(102, 1003,'TV', 'Ramazan Öz');
INSERT INTO urunler VALUES(102, 1004,'Laptop', 'Veli Han');
INSERT INTO urunler VALUES(103, 1005,'Phone', 'Canan Ak');
INSERT INTO urunler VALUES(104, 1006,'TV', 'Ali Bak');
INSERT INTO urunler VALUES(104, 1007,'Phone', 'Aslan Yılmaz');
    
SELECT * FROM urunler;

-- SORU1: İki tabloyu birleştirerek listeleyiniz.



-- UPDATE - SET     
-- SYNTAX
-- UPDATE tablo_adı
-- SET sutun1 = yeni_deger1, sutun2 = yeni_deger2,...  
-- WHERE koşul;


-- SORU2: vergi_no’su 102 olan tedarikcinin (firma) ismini 'Vestel' olarak güncelleyeniz.



--  SORU3: Tedarikciler tablosundaki tüm firma isimlerini 'CASPER' olarak güncelleyeniz. 



-- SORU4: vergi_no’su 101 olan tedarikcinin ismini 'casper' ve irtibat_ismi’ni 'Ali Veli' olarak güncelleyiniz.

 
    
-- SORU5: firma_ismi casper olan tedarikcinin irtibat_ismini 'Bill Gates' olarak güncelleyiniz.



-- SORU6: urunler tablosundaki 'Phone' değerlerini 'Telefon' olarak güncelleyiniz.



-- SORU7: urunler tablosundaki urun_id değeri 1004'ten büyük olanların urun_id 1 arttrn.


-- SORU8: urunler tablosundaki tüm ürünlerin urun_id değerini ted_vergino sutun değerleri ile toplayarak güncelleyiniz.



-- SORU9: urunler tablosundan Ali Bak’in aldigi urunun ismini, tedarikci  tablosunda irtibat_ismi 
-- 'Adam Eve' olan firmanın ismi (firma_ismi) ile degistiriniz.
-- 9. soruyu çözmeden önce, tabloları eski haline getireceğiz.



 -- SORU10: Laptop satin alan musterilerin ismini, firma_ismi Apple’in irtibat_isim'i ile degistirin.
