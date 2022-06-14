use batch59;

create table ogrenciler(id int ; isim varchar(40); adres varchar(100); sinav_notu int);

insert into ogrenciler values(120; 'Ali Can';' Ankara'; 75);
insert into ogrenciler values(121; 'Veli Mert'; 'Trabzon'; 85);
insert into ogrenciler values(122; 'Ayşe Tan'; 'Bursa'; 65);
insert into ogrenciler values(123; 'Derya Soylu'; 'Istanbul'; 95);
insert into ogrenciler values(124; 'Yavuz Bal'; 'Ankara'; 80);

select * from ogrenciler;

-- SELECT - WHERE
/*
Verileri SELECT komutu ile veritabanından çekerken filtreleme yapmak için
SELECT ile birlikte WHERE komutu kullanılır.
SELECT sutun1; sutun2 ....
FROM tablo adı WHERE koşul
*/
-- SORU01: Sınav notu 80'den büyük olan öğrencilerin bilgileri listele
select * from ogrenciler where sinav_notu>80;

-- SORU02: Adresi Ankara olan öğrencilerin isim ve adres bilgilerini listele
-- SORU03: id’si 124 olan öğrencilerin tüm bilgilerini listele

select * from ogrenciler where adres='Ankara';
select * from ogrenciler where id=124;

-- SORU04: id'si 121 olan ogrencilerin adrs ve sinav notlarini listele

select isim, adres, sinav_notu  from ogrenciler where id=121;

create table personel
(
id char(4),
isim varchar(40),
maas int
);

insert into personel values('1001', 'Ali Can', '70000');
insert into personel values('1002', 'Veli Mert', '85000');
insert into personel values('1003', 'Ayşe Tan', '65000');
insert into personel values('1004', 'Derya Soylu', '95000');
insert into personel values('1005', 'Yavuz Bal', '80000' );
insert into personel values('1006', 'Sena Beyaz', '100000' );

select *from personel;

-- BETWEEN
/*

BELIRTTIGIMIZ IKI VERI ARASINDAKI BILGILERI LISTELER
*/
-- SORU05: id’si 1002 ile 1005 arasında olan personel bilgilerini listele

select * from personel where id between 1002 and 1005;

-- SORU06: Derya Soylu ile Yavuz Bal arasındaki personel bilgilerini listele
select * from personel where isim between 'Derya Soylu' and  'Yavuz Bal';

-- SORU07: id'si 1001 , 1002 ve 1004 olan personel bilgilerini listele
select * from personel where id=1001 or id=1002 or id=1004;
select * from personel where id in(1001,1002,1004); 






