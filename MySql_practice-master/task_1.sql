create database MySql_Practice;
use MySql_practice;
/* ========================== HASTA PROJESI =================================*/   
  CREATE TABLE if not exists hastaneler(
  id char(5) primary key,
  isim char(50),
  sehir char(20),
  ozel char 
  );
  insert into hastaneler values('H101','ACI MADEM HASTANESI','ISTANBUL','Y');
  insert into hastaneler values('H102','HASZEKI HASTANESI','ISTANBUL','N');
  insert into hastaneler values('H103','MEDIKOL HASTANESI','IZMIR','Y');
  insert into hastaneler values('H104','NEMORYIL HASTANESI','ANKARA','Y');
  -- drop table hastaneler;
  
   CREATE TABLE if not exists hastalar(
  kimlik_no char(11) primary key,
  isim char(50),
  teshis char(20)
  );
  
insert into hastalar values('12345678901','Ali Can','Gizli Seker');
  insert into hastalar values('45678901121','Ayse Yilmaz','Hipertansiyon');
  insert into hastalar values('78901123451','Steve Jobs','Pankreatit');
  insert into hastalar values('12344321251','Tom Hanks','COVID19');
  
    CREATE TABLE if not exists bolumler(
  bolum_id char(11) primary key,
  bolum_adi char(50)
  );
  
  insert into bolumler values('DHL','Dahiliye');
  insert into bolumler values('KBB','Kulak-Burun-Bogaz');
  insert into bolumler values('NRJ','Noroloji');
  insert into bolumler values('GAST','Gastoroloji');
  insert into bolumler values('KARD','Kardioloji');
  insert into bolumler values('PSK','Psikiyatri');
  insert into bolumler values('GOZ','Goz Hastaliklari');
  
     CREATE TABLE if not exists Hasta_kayitlar(
  kimlik_no char(11) primary key,
  hast_isim char(50),
  hastane_adi char(20),
  bolum_adi char(20),
  teshis char(20)
  );
  
  insert into Hasta_kayitlar values(1111,'NONAME',null,null,null);
  insert into Hasta_kayitlar values(2222,'NONAME',null,null,null);
  insert into Hasta_kayitlar values(3333,'NONAME',null,null,null);
  
  update hasta_kayitlar 
  set hast_isim='Salvador Dali' , hastane_adi='Jhon Hopkins' 
  , bolum_adi='Noroloji' , teshis='Parkinson' 
  , kimlik_no='99991111222' where kimlik_no='3333';
  
    update hasta_kayitlar 
  set hast_isim=(select isim from hastalar where kimlik_no='12345678901')
  , hastane_adi=(select isim from hastaneler where id='H104')
  , bolum_adi=(select bolum_adi from bolumler where bolum_id='DHL') 
  , teshis=(select teshis from hastalar where isim='Ali Can')
  , kimlik_no=(select kimlik_no from hastalar where isim ='Ali Can') where kimlik_no='1111';
  
      update hasta_kayitlar 
  set hast_isim=(select isim from hastalar where isim='Ayse Yilmaz')
  , hastane_adi=(select isim from hastaneler where id='H103')
  , bolum_adi=(select bolum_adi from bolumler where bolum_id='KBB') 
  , teshis=(select teshis from hastalar where isim='Tom Hanks')
  , kimlik_no=(select kimlik_no from hastalar where isim ='Steve Jobs') where kimlik_no='2222';
  
  

  
    
 