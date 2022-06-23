/*
 bolumler  tablosu --> bolum_id, bolum_isim, konum      
       
10,'MUHASABE','IST'
20,'MUDURLUK','ANKARA'
30,'SATIS','IZMIR'
40,'ISLETME','BURSA'
50,'DEPO', 'YOZGAT'
    
​ 
personel tablosu --> personel_id, personel_pk, personel_isim, meslek, mudur_id, ise_baslama, maas, bolum_id      
    
7369,'AHMET','KATIP',7902,'1980-12-17',800,20
7499,'BAHATTIN','SATIS',7698,'1981-2-21',1600,30
7521,'NESE','SATIS',7698,'1981-2-22',1250,30
7566,'MUZAFFER','MUDUR',7839,'1981-4-2',2975,20
7654,'MUHAMMET','SATIS',7698,'1981-9-28',1250,30
7698,'EMINE','MUDUR',7839,'1981-5-1',2850,30
7782,'HARUN','MUDUR',7839,'1981-6-9', 2450,10
7788,'MESUT','ANALIST',7566,'1987-7-13',3000,20
7839,'SEHER','BASKAN',NULL,'1981-11-17',5000,10
7844,'DUYGU','SATIS',7698,'1981-9-8',1500,30
7876,'ALI','KATIP',7788,'1987-6-15',1100,20
7900,'MERVE','KATIP',7698,'1981-12-3',950,30
7902,'NAZLI','ANALIST',7566,'1981-11-23',3000,20
7934,'EBRU','KATIP',7782,'1982-4-25',1300,10
7956,'SIBEL','MIMAR',7782,'1991-2-28',3300,60
7933,'ZEKI','MUHENDIS',7782,'1987-6-1',4300,60
      create ediniz...
 */

  CREATE TABLE bolumler (
      bolum_id   int PRIMARY KEY,
      bolum_isim VARCHAR(14),
      konum      VARCHAR(13)
    );
    
    INSERT INTO bolumler VALUES (10,'MUHASEBE','IST');
    INSERT INTO bolumler VALUES (20,'MUDURLUK','ANKARA');
    INSERT INTO bolumler VALUES (30,'SATIS','IZMIR');
    INSERT INTO bolumler VALUES (40,'ISLETME','BURSA');
    INSERT INTO bolumler VALUES (50,'DEPO', 'YOZGAT');

    CREATE TABLE personel (
      personel_id   int PRIMARY KEY,
      personel_isim VARCHAR(10),
      meslek        VARCHAR(9),
      mudur_id      int,
      maas          int,
      bolum_id      int
    );
    
   SELECT * FROM personel;
  
    INSERT INTO personel VALUES (7369,'AHMET','KATIP',1111,800,20);
    INSERT INTO personel VALUES (7499,'BAHATTIN','SATISE',1222,1600,30);
    INSERT INTO personel VALUES (7521,'NESE','SATISE',1222,1250,30);
    INSERT INTO personel VALUES (1111,'MUZAFFER','MUDUR',7839,2975,20);
    INSERT INTO personel VALUES (7654,'MUHAMMET','SATISE',1222,1250,30);
    INSERT INTO personel VALUES (1222,'EMINE','MUDUR',7839,2850,30);
    INSERT INTO personel VALUES (1333,'HARUN','MUDUR',7839, 2450,10);
    INSERT INTO personel VALUES (7788,'MESUT','ANALIST',1111,3000,20);
    INSERT INTO personel VALUES (7839,'SEHER','BASKAN',NULL,5000,10);
    INSERT INTO personel VALUES (7844,'DUYGU','SATISE',1222,1500,30);
    INSERT INTO personel VALUES (7876,'ALI','KATIP',1111,1100,20);
    INSERT INTO personel VALUES (7900,'MERVE','KATIP',1222,950,30);
    INSERT INTO personel VALUES (7902,'NAZLI','ANALIST',1111,3000,20);
    INSERT INTO personel VALUES (7934,'EBRU','KATIP',1333,1300,10);
    INSERT INTO personel VALUES (7956,'SIBEL','MIMAR',1333,3300,60);
    INSERT INTO personel VALUES (7933,'ZEKI','MUHENDIS',1333,4300,60);

/* -----------------------------------------------------------------------------
  ORNEK1: SATIS ve MUHASEBE bolumlerinde calisan personelin isimlerini ve 
  bolumlerini, once bolum sonra isim sıralı olarak listeleyiniz
------------------------------------------------------------------------------*/ 




/* -----------------------------------------------------------------------------
  ORNEK2: SATIS,ISLETME ve DEPO bolumlerinde calisan personelin isimlerini,  
  bolumlerini  isim sıralı olarak listeleyiniz. 
  NOT: calisani olmasa bile bolum ismi gosterilmelidir.
------------------------------------------------------------------------------*/  


/* -----------------------------------------------------------------------------
  ORNEK3: Tüm bolumlerde calisan personelin isimlerini, bolum isimlerini ve 
  maaslarini bolum ters ve maas sirali listeleyiniz. 
  NOT: calisani olmasa bile bolum ismi gosterilmelidir.
------------------------------------------------------------------------------*/  




/* -----------------------------------------------------------------------------
  ORNEK4: SATIS ve MUDURLUK bolumlerinde calisan personelin maaslari 2000'den 
  buyuk olanlarinin isim,bolum ve maas bilgilerini bolume ve isme gore
  siralayarak listeleyiniz.
------------------------------------------------------------------------------*/   



/* -----------------------------------------------------------------------------
  ORNEK5: MUDUR'u Harun veya Emine olan personelin bolumlerini,isimlerini,  
  maaslarini ve ayrica MUDUR isimlerini 
  (emine kimin müdürüyse onun satirinda yazsin) 
 
------------------------------------------------------------------------------*/   




	