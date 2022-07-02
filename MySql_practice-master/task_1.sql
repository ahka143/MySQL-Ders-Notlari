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
    
 