/* 
1) 
calisanlar tablosu --> id, isim, maas 
'1001', 'Ahmet Aslan', 7000
'1002', 'Mehmet Yılmaz' ,12000
'1003', 'Meryem ', 7215
'1004', 'Veli Han', 5000

      aileler tablosu --> id, cocuk_sayisi, ek_gelir
'1001', 4, 2000
'1002', 2, 1500
'1003', 1, 2200
'1004', 3, 2400

 create ediniz
*/

create table calisanlar(
id char(4),
isim VARCHAR(50),
maas int(5),
CONSTRAINT id_pk primary key(id)
);
insert into calisanlar values('1001', 'Ahmet Aslan', 7000);
insert into calisanlar values('1002', 'Mehmet Yılmaz' ,12000);
insert into calisanlar values('1003', 'Meryem ', 7215);
insert into calisanlar values('1004', 'Veli Han', 5000);

create table aileler(
id char(4),
cocuk_sayisi CHAR(4),
ek_gelir int(5),
CONSTRAINT id_fk foreign key(id) references calisanlar(id)
);
insert into aileler values('1001', 4, 2000);
insert into aileler values('1002', 2, 1500);
insert into aileler values('1003', 1, 2200);
insert into aileler values('1004', 3, 2400);


 -- Query02: Veli Han'ın maaşına %20 zam yapınız.
 UPDATE calisanlar -- calisanlar tablosu update edildi
 set -- set komutu calisti
 maas=maas*1.2 -- maas columdaki data 1.2 ile çarpilraka set edildi
 where isim='Veli Han'; -- set edilecek columb raw satr değeri tanimlandi

 -- Query03: Maaşı ortalamanın altında olanlara %20 zam yapınız.
 UPDATE calisanlar -- calisanlar tablosu update edildi
 set -- set komutu calisti
 maas=maas*1.2 -- maas columdaki data 1.2 ile çarpilraka set edildi
 where maas<(select avg(maas) from calisanlar as ebikgabik);
 
     
 -- Query04: calisanların isim ve cocuk_sayisi'ni  sorguyu yazınız.
           -- 1. yol
        SELECT isim, cocuk_sayisi FROM calisanlar,aileler
        where calisanlar.id=aileler.id;
            -- 2. yol 
            select isim,(select cocuk_sayisi from aileler where calisanlar.id=aileler.id) as ebkgabk from calisanlar;
            
 -- Query05: calisanlar' ın  isim ve toplam_gelir'lerini gösteren bir sorgu yazınız. 
 -- toplam_gelir = calisanlar.maas + aileler.ek_gelir 
 SELECT id, isim ,
 (select maas+ek_gelir from aileler where calisanlar.id=aileler.id) as toplam_gelir 
 from calisanlar;
 



 -- Query06:) eğer bir ailenin kişi başı geliri 2000 TL den daha az ise o çalışanın  maaşına ek %10 aile yardım zammı yapınız. 
 -- kisi_basi_gelir = toplam_gelir / cocuk_sayisi + 2 (anne ve baba)
update calisanlar
set maas=maas*1.1
where (select (maas+ek_gelir)/(cocuk_sayisi+2) from aileler
where calisanlar.id=aileler.id)<5000;  