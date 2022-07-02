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
  
  
    
 