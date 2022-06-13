create database batch59;
-- create database: database olustururuz


-- aciklama yazabilmek icin  "--" kullanilir.alter

/*

javadaki gibi aciklama yazabiliriz
*/

use batch59;
-- birden fazla database'miz varsa "use" komutuyla database'i seceriz.



-- TABLO OLUSTURMA
create table student
(
id varchar(4),
name varchar(30),
age int
);


-- VERI GIRISI
insert into student values('1000','Ali Can','25');
insert into student values('1001','Veli Yaman','25');
insert into student values('1002','Ayse Tan','25');
insert into student values('1003','Derya Duman','25');

select * from student;
-- student tablosundaki herseyi getirir

select name from student;
-- student tablusundaki name sutununu getirir
select id from student;
-- student tablusundaki id sutununu getirir
select id, name from student;
-- student tablusundaki id ve name sutunlarini getirir









