-- bir üniversite ders kaydi db si tasarlanmak isteniyor.
-- öğrencilerin adi, soyadi, email, telefon, bölüm  bilgisi vardir.  
-- bu öğrencilere ders saati belli olan dersler kaydedilecektir.
-- bu bilgileri kaydedilmesini sağlayan veri tabanini tasarlayiniz...

create table ogrenci(
    ogrenciID   int auto_increment PRIMARY KEY,
    ad        varchar(30) not null,
    soyad   varchar(30) not null,
    eMail    varchar(50) DEFAULT'',
    telefon    varchar(10) DEFAULT'',
    bolumID    int not null DEFAULT 0
    );

create table bolum(
   bolumID    int PRIMARY KEY auto_increment ,
   bolumAD    varchar(50) 
    
);

create table ders(
    dersID   int PRIMARY KEY auto_increment,
    dersAD   VARCHAR(50),
    dersSAAT int
);

create table ogrDERS(
ogrenciID int not null,
dersID int not null,
PRIMARY KEY(ogrenciID,dersID)
);-- birden fazal PK için bu şekilde set ediliyor.

INSERT INTO ogrenci(ad,soyad,eMail,bolumID) 
SELECT first_name,last_name, email, store_id FROM sakila.customer LIMIT 100;

select * from ogrenci;

SELECT bolumID, count(*)
from ogrenci
group by bolumID;

sELECT * FROM bolum;

INSERT INTO `ts_hlk1`.`ders` (`dersAD`, `dersSAAT`) VALUES ('matematik', '3');
INSERT INTO `ts_hlk1`.`ders` (`dersAD`, `dersSAAT`) VALUES ('fizik', '2');
INSERT INTO `ts_hlk1`.`ders` (`dersAD`, `dersSAAT`) VALUES ('kimya', '2');
INSERT INTO `ts_hlk1`.`ders` (`dersAD`, `dersSAAT`) VALUES ('geometri', '3');
INSERT INTO `ts_hlk1`.`ders` (`dersAD`, `dersSAAT`) VALUES ('yazilim', '5'); -- tabloda neden çkmyor sor?
INSERT INTO `ts_hlk1`.`ders` (`dersAD`, `dersSAAT`) VALUES ('sdet', '4'); -- tabloda neden çkmyor sor?

 SELECT * from  ders;
 
INSERT INTO `ts_hlk1`.`ogrDERS` (`ogrenciID`, `dersID`) VALUES ('1', '2');
INSERT INTO `ts_hlk1`.`ogrDERS` (`ogrenciID`, `dersID`) VALUES ('3', '2');
INSERT INTO `ts_hlk1`.`ogrDERS` (`ogrenciID`, `dersID`) VALUES ('4', '3');
INSERT INTO `ts_hlk1`.`ogrDERS` (`ogrenciID`, `dersID`) VALUES ('4', '1');
INSERT INTO `ts_hlk1`.`ogrDERS` (`ogrenciID`, `dersID`) VALUES ('5', '1');
INSERT INTO `ts_hlk1`.`ogrDERS` (`ogrenciID`, `dersID`) VALUES ('3', '5');
INSERT INTO `ts_hlk1`.`ogrDERS` (`ogrenciID`, `dersID`) VALUES ('2', '2');
INSERT INTO `ts_hlk1`.`ogrDERS` (`ogrenciID`, `dersID`) VALUES ('6', '2');
INSERT INTO `ts_hlk1`.`ogrDERS` (`ogrenciID`, `dersID`) VALUES ('3', '1');
INSERT INTO `ts_hlk1`.`ogrDERS` (`ogrenciID`, `dersID`) VALUES ('4', '2');
INSERT INTO `ts_hlk1`.`ogrDERS` (`ogrenciID`, `dersID`) VALUES ('5', '3');
INSERT INTO `ts_hlk1`.`ogrDERS` (`ogrenciID`, `dersID`) VALUES ('7', '2');
INSERT INTO `ts_hlk1`.`ogrDERS` (`ogrenciID`, `dersID`) VALUES ('7', '3');
INSERT INTO `ts_hlk1`.`ogrDERS` (`ogrenciID`, `dersID`) VALUES ('1', '5');

SELECT * FROM ogrDERS;

-- -----------------------------------------------------------------------------

-- soru : öğrencilerin bölümlerini listeleyiniz.
SELECT ogrenci.* , bolum.bolumAD
FROM ogrenci
LEFT JOIN bolum
ON ogrenci.bolumID = bolum.bolumID; -- ogrenci bölüm bilgisi alindi.

SELECT ogrenci.* , ogrDERS.dersID, ders.dersAD
FROM ogrenci
LEFT JOIN bolum
ON ogrenci.bolumID = bolum.bolumID -- bölüm bilgisi için
LEFT JOIN ogrDERS
ON ogrenci.ogrenciID = ogrDERS.ogrenciID -- kaitli dersleri ulmak için
LEFT JOIN ders
ON ogrDERS.dersID = ders.dersID -- kayitli derslerşn isimlerini bulmak için
where ogrDERS.dersID  is not null; -- bütün ders isimleri ile birlikte ders kaydi yapmiş öğrenciler

-- soru :  hangi bölümden kaç ders kaydi olduğunu bulunuz.
SELECT dersID, count(*)
from ogrDERS
GROUP BY dersID;


-- soru :  hangi dersten kaç öğrenci kaydi olduğunu bulunuz.
SELECT ders.dersAD,count(*)
FROM ders
LEFT JOIN ogrenci
ON ogrenci;

-- soru :  herhangi bir derse kayitli olmayan öğrenci listesini yazdiriniz
SELECT ders.dersAD, ogrenci.ogrenciID


-- soru : hangi öğrencinin kaç derse kayit yaptirdiğini bulunuz.
-- soru : her bölümün kayitli olan toplam ders saatini bulunuz.
-- soru : en yüksek ders saatine sahip bölümü bulunuz.




