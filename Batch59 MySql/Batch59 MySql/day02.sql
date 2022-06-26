use batch59;

create table ogrenciler
(
id int,
isim varchar(40),
adres varchar(100),
sinav_notu int
);

insert into ogrenciler values('120', 'Ali Can', 'Ankara', '75');
insert into ogrenciler values('121', 'Veli Mert', 'Trabzon', '85');
insert into ogrenciler values('122', 'Ayşe Tan', 'Bursa', '65');
insert into ogrenciler values('123', 'Derya Soylu', 'Istanbul', '95');
insert into ogrenciler values('124', 'Yavuz Bal', 'Ankara', '80');

select * from ogrenciler;

-- SELECT - WHERE
/*
Verileri SELECT komutu ile veritabanından çekerken filtreleme yapmak için
SELECT ile birlikte WHERE komutu kullanılır.
SELECT sutun1, sutun2 ....
FROM tablo adı WHERE koşul
*/

-- SORU01: Sınav notu 80'den büyük olan öğrencilerin bilgileri listele
select * from ogrenciler where sinav_notu>80;

-- SORU02: Adresi Ankara olan öğrencilerin isim ve adres bilgilerini listele
select * from ogrenciler where adres='Ankara';

-- SORU03: id’si 124 olan öğrencilerin tüm bilgilerini listele
select * from ogrenciler where id = 124;

-- SORU04: id’si 121 olan öğrencilerin adres ve sinav notunu listele
select adres, sinav_notu from ogrenciler where id=121;


create table personel
(
id char(4),
isim varchar(40),
maas int
);

insert into personel values('1001', 'Ali Can', '70000');
insert into personel values('1002', 'Veli Mert','85000');
insert into personel values('1003', 'Ayşe Tan', '65000');
insert into personel values('1004', 'Derya Soylu', '95000');
insert into personel values('1005', 'Yavuz Bal', '80000');
insert into personel values('1006', 'Sena Beyaz', '100000');

select * from personel;


/*
AND (ve): Belirtilen şartların her ikiside gerçekleşiyorsa o kayıt listelenir.
Bir tanesi gerçekleşmez ise listelemez.
*/

SELECT * FROM ogrenciler where matematik_sinav1> 50 AND sinav2 > 50;
-- Hem sinav1 hemde sinav2 alanı, 50'de büyük olan kayıtları listeler.

-- OR (veya): Belirtilen şartlardan biri gerçekleşirse, kayıt listelenir.

SELECT * FROM ogrenciler where matematik_sinav1> 50 OR sinav2 > 50;
-- Hem sinav1 veya sinav2 alanı, 50'de büyük olan kayıtları listeler.


-- BETWEEN
/*
Belirttiğimiz 2 veri arasindaki bilgileri listeler
Between de kullandiğimiz değerler de dahildir.
*/

-- SORU05: id'si 1002 ile 1005 arasında olan personel bilgilerini listele
select * from personel where id between 1002 and 1005;
select * from personel where id>=1002 and id<=1005;

-- SORU06: Derya Soylu ile Yavuz Bal arasındaki personel bilgilerini listele
select * from personel where isim between 'Derya Soylu' and 'Yavuz Bal';


-- SORU07: id'si 1001,1002 ve 1004 olan prsonel bilgilerini listele
select * from personel where id ='1001' or id='1002' or id='1004';
select * from personel where id in(1001,1002,1004);

-- SORU08: Maaşı sadece 70000 100000 olan personeli listele
select * from personel where maas in(70000, 100000);

-- in
-- birden fazla ifade ile tanimlayabileceğimiz durumlarda kullailir.


/*
SELECT - LIKE
LIKE: Sorgulama yaparken belirli patternleri kullanabilmezi sağlar

SELECT sutun1, sutun2, ...
FROM tablo_adı WHERE sutünN LIKE pattern

PATTERN İÇİN
% -> 0 veya daha fazla karakteri belirtir.
_ -> Tek bir karakteri belirtir.
*/

-- SORU09: İsmi A harfi ile başlayan personeli listele
select * from personel where isim like 'A%';

-- SORU10: İsmi N harfi ile biten personeli listele
select * from personel where isim like '%N';

-- SORU11: İsminin 2. harfi E olan personeli listeleyin
select * from personel where isim like '_E%';

-- SORU12: İsminin 2. harfi E olup diğer harflerinde Y olan personel
select * from personel where isim like '_E%Y%';

-- SORU13: İsminde A harfi olmayan personeli listeleyin
select * from personel where isim not like '%A%';

-- İsminde A harfi olanlar
select * from personel where isim like '%A%';


-- SORU14: Maaşı 6 haneli olan personeli listeleyin
select * from personel where maas like '______';


-- SORU15: 1. harfi A ve 7. harfi A olan personeli listeleyin
select * from personel where isim like 'A_____A%';




/* ====================== SELECT - REGEXP_LIKE ================================
    Daha karmaşık pattern ile sorgulama işlemi için REGEXP_LIKE kullanılabilir.  
     -- 'c' => case-sentisitive demektir
     -- 'i' => incase-sentisitive demektir ve default incase-sensitive aktiftir..
    Syntax:
    --------
    REGEXP_LIKE(sutun_adı, 'pattern[] ', 'c' ] )
           
/* ========================================================================== */

use batch59;

CREATE TABLE kelimeler
(
id int UNIQUE,
kelime VARCHAR(50) NOT NULL,
harf_sayisi int
);
   
    INSERT INTO kelimeler VALUES (1001, 'hot', 3);
    INSERT INTO kelimeler VALUES (1002, 'hat', 3);
    INSERT INTO kelimeler VALUES (1003, 'hit', 3);
    INSERT INTO kelimeler VALUES (1004, 'hbt', 3);
    INSERT INTO kelimeler VALUES (1005, 'hct', 3);
    INSERT INTO kelimeler VALUES (1006, 'adem', 4);
    INSERT INTO kelimeler VALUES (1007, 'selim', 5);
    INSERT INTO kelimeler VALUES (1008, 'yusuf', 5);
    INSERT INTO kelimeler VALUES (1009, 'hip', 3);
    INSERT INTO kelimeler VALUES (1010, 'HOT', 3);
    INSERT INTO kelimeler VALUES (1011, 'hOt', 3);
    INSERT INTO kelimeler VALUES (1012, 'h9t', 3);
    INSERT INTO kelimeler VALUES (1013, 'hoot', 4);
    INSERT INTO kelimeler VALUES (1014, 'haaat', 5);
    INSERT INTO kelimeler VALUES (1015, 'hooooot', 5);
   
select * from kelimeler;
   
-- SORU16: İçerisinde 'ot' veya 'at' bulunan kelimeleri küçük harfe dikkat ederek listeleyiniz
-- VEYA işlemi için | karakteri kullanılır.
select * from kelimeler where regexp_like(kelime, 'ot|at', 'c');



-- SORU17: İçerisinde 'ot' veya 'at' bulunan kelimeleri büyük-küçük harfe dikkat etmeksizin listeleyeniz
select * from kelimeler where regexp_like(kelime, 'ot|at', 'i');
select * from kelimeler where regexp_like(kelime, 'ot|at');
-- i kullanmamiza gerek yok. default olarak i var zaten


-- SORU18: 'ho' veya 'hi' ile başlayan kelimeleri büyük-küçük harfe dikkat etmeksizin listeleyeniz
-- Başlangıcı göstermek için ^ karakteri kullanılır.
select * from kelimeler where regexp_like(kelime, '^ho|hi');
select * from kelimeler where regexp_like(kelime, '^ho|^hi');
select * from kelimeler where kelime like 'hi%' or  kelime like 'ho%' ;



-- SORU19: Sonu 't' veya 'm' ile bitenleri büyük-küçük harfe dikkat etmeksizin listeleyeniz.
-- Bitişi göstermek için $ karakteri kullanılır.
select * from kelimeler where regexp_like(kelime, 't$|m$');
select * from kelimeler where regexp_like(kelime, 't$|m');


   
-- SORU20: h ile başlayıp t ile biten 3 harfli kelimeleri (h ile t küçük harfli olanlari) listeleyeniz
select * from kelimeler where regexp_like (kelime, 'h[a-zA-Z0-9]t');
-- 3 HARF 'h[]t'
-- h 1. harf
-- [] 2. harf
-- t 3. harf

-- SORU21: h ile başlayıp t ile biten 4 harfli kelimeleri (h ile t küçük harfli olanlari) listeleyeniz
select * from kelimeler where regexp_like(kelime, 'h[a-zA-Z0-9][a-zA-Z0-9]t', 'c');
select * from kelimeler where regexp_like(kelime, 'h[a-z][a-z]t', 'c');


-- SORU22: İlk harfi h, son harfi t olup 2.harfi a veya i olan 3 harfli kelimelerin tüm bilgilerini sorgulayalım.
select * from kelimeler where regexp_like (kelime, 'h[a|i]t');


-- SORU23: İçinde m veya i veya e olan kelimelerin tüm bilgilerini listeleyiniz.
select * from kelimeler where regexp_like(kelime, 'i|e|m');
select * from kelimeler where regexp_like(kelime, '[mie]');


-- SORU24: a veya s ile başlayan kelimelerin tüm bilgilerini listeleyiniz.
select * from kelimeler where regexp_like(kelime, '^a|^s');
select * from kelimeler where regexp_like(kelime, '^[as]');


-- SORU25: içerisinde en az 2 adet oo barıdıran kelimelerin tüm bilgilerini listeleyiniz.
select * from kelimeler where regexp_like(kelime,'[o][o]');
select * from kelimeler where regexp_like(kelime,'[o]{2}');


-- SORU26: içerisinde en az 4 adet oooo barıdıran kelimelerin tüm bilgilerini listeleyiniz.
select * from kelimeler where regexp_like(kelime,'[o][o][o][o]');
select * from kelimeler where regexp_like(kelime,'[o]{4}');


-- SORU27: ilk harfi s veya b , 3. harfi l olan ve 5 harfli olan kelimelerin küçük harfe dikkat ederek listeleyiniz.
select * from kelimeler where regexp_like(kelime, '[sb][a-z]l[a-z][a-z]', 'c');