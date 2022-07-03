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
use mysql_practice;

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
update calisanlar set maas=maas*1.2 where isim='Veli Han';

 -- Query03: Maaşı ortalamanın altında olanlara %20 zam yapınız.
 select isim from calisanlar where maas<(select avg(maas) from calisanlar) ;
 select avg(maas) from calisanlar;
update calisanlar set maas=maas*1.2 
where maas<(select avg(maas) from (select maas from calisanlar) as x);
 
     
 -- Query04: calisanların isim ve cocuk_sayisi'ni  sorguyu yazınız.
           -- 1. yol
           select isim,cocuk_sayisi from calisanlar,aileler where aileler.id=calisanlar.id;
           
    
            
 -- Query05: calisanlar' ın  isim ve toplam_gelir'lerini gösteren bir sorgu yazınız. 
 -- toplam_gelir = calisanlar.maas + aileler.ek_gelir 
 
select isim,maas+ek_gelir from aileler,calisanlar where aileler.id=calisanlar.id;


 -- Query06:) eğer bir ailenin kişi başı geliri 2000 TL den daha az ise o çalışanın  maaşına ek %10 aile yardım zammı yapınız. 
 -- kisi_basi_gelir = toplam_gelir / cocuk_sayisi + 2 (anne ve baba)

 update calisanlar set maas=maas*1.1
 where (select (maas+ek_gelir)/(cocuk_sayisi+2) from aileler
 where calisanlar.id=aileler.id)<2000;
 

 