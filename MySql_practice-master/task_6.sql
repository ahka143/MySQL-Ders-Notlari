-- Create işçi tablosu alanları worker_id,work_name,work_salary şeklindedir.
-- worker_id, worker_id_pk adında primary key sahip olacak
-- İşçiler tablosuna 4 kayıt ekleyin
-- Konsoldaki tabloya bakın


CREATE TABLE worker 
(

    worker_id char(3),
    worker_name VARCHAR(50),
    worker_salary int not null,
     CONSTRAINT worker_id_pk PRIMARY KEY (worker_id)

);

DROP TABLE worker;

INSERT INTO WORKER VALUES ('100','oli can', 1200);
INSERT INTO WORKER VALUES ('102','Veli Han', 2000);
INSERT INTO WORKER VALUES ('103','Ayse Kan', 7000);
INSERT INTO WORKER VALUES ('104', 'Angie Ocean', 8500);

SELECT * FROM WORKER ;

 

-- Veli Han'ın maaşını en yüksek maaştan yüzde 20 daha azına artırin
update worker 
set worker_salary=(select max(worker_salary)  
from (select worker_salary from worker) as x) *0.8 
where worker_name='Veli Han';


-- Ali Can'ın maaşını en düşük maaştan yüzde 30 daha fazla düşürun
update worker 
set worker_salary=(select min(worker_salary) from (select worker_salary from worker) as x)*1.3 
where worker_name='oli can';


-- Maaş ortalama maaştan düşükse maaşları 1000 artırın
update worker 
set worker_salary=worker_salary+1000
where worker_salary<(select avg(worker_salary) from (select worker_salary from worker) as x);


-- Maaşın ortalama maaştan az olması durumunda maaşları ortalama maaşa eşit artırın
update worker 
set worker_salary=worker_salary+(select avg(worker_salary) from (select worker_salary from worker) as x)
 where worker_salary<(select avg(worker_salary) from (select worker_salary from worker) as x);


CREATE TABLE people 
(

    ssn CHAR (9),
    name VARCHAR(50),
    address VARCHAR(80)

);

DROP TABLE PEOPLE;


INSERT INTO PEOPLE VALUES (123456789, 'Mark Star', 'Florida');
INSERT INTO PEOPLE VALUES (234567890, 'Angie Way', 'Virginia');
INSERT INTO PEOPLE VALUES (345678901, 'Marry Tien', 'New Jersey');
INSERT INTO PEOPLE (ssn, address) VALUES (456789012, 'Michigan');
INSERT INTO PEOPLE (ssn, address) VALUES (567890123, 'California');
INSERT INTO PEOPLE (ssn, name) VALUES (567890123, 'California');

SELECT * FROM PEOPLE ;


-- Boş adları "ad daha sonra eklenecek" olarak değiştirin
update people set name='ad daha sonra eklenecek' where name is null;

-- Boş adresleri 'Adres daha sonra eklenecek' olarak değiştirin
update people set address='Adres daha sonra eklenecek' where address is null;

-- people tablosunda 'Daha sonra eklenecek' tüm boş değerleri değiştirin -- COALESCE ALANLARA GİDER VE BOŞ DEĞERLERİ İKİNCİ PARAMETREYE DEĞİŞTİRİN


