USE sakila;
select * from sakila.city;
select * from city;
select * from employees;

-- SORU1 : City'deki her şeyi göster. Ancak sıralama country_id ' ye göre olsun ve baştan sona dogru sıralansın.
select * from city order by country_id ;

-- SORU2 : City'deki her şeyi göster. Ancak sıralama city_id ' ye göre olsun ve sondan başa dogru sıralansın.

select * from city group by city_id order by city_id desc ;

-- SORU3 : City'deki her şeyi göster. Ancak sıralama city ' ye göre olsun ve sondan başa dogru sıralansın.
select * from city group by city order by city desc ;

 -- SORU4 : City’lerin arasından A harfi ile başlayanları, city id lerine göre tersten yazdır. 
select city_id,city from city where city like 'A%'order by city_id desc; 

-- SORU5 :  city_id  , city , country_ id yi yazdırın. Koşul olarak country_id si 50 den büyük olanları yazdırın.country id ile tersten sıralayın.
select city_id, city , country_id from city where country_id>50 order by country_id desc;

-- SORU6 :  city_id  , city , country_id yi yazdırın. Koşul olarak country id si 20 ile 25 arasında olanları yazdır ve country id ye göre yazdır.

select city_id, city , country_id from city where country_id between 20 and 25 order by country_id ;



-- SORU : Bir Job_id içerisinde kaç kişi çalışıyor? Job id grubu oluşturarak yazalım.
select job_id, count(*)as calisan_sayisi from employees group by JOB_ID;

-- SORU : Yukarıdaki örneğe ek olarak, ismi T harfi ile biten job_id leri yazdırmasını isteyelim.
select job_id,first_name, count(*)as calisan_sayisi from employees where FIRST_NAME like '%T' group by JOB_ID;

-- Aynı soruyu where ile yapılısı:

select job_id,first_name, count(*)as calisan_sayisi from employees group by JOB_ID having FIRST_NAME like '%T' ;

-- SORU 1: job_ id lere göre her job id nin toplam maaşını görüntüle. Maaşların yazacağı kısmı ‘Total’ olarak nitelendir. Job id olarak gruplandır. 

select job_id, sum(salary) as total from employees group by JOB_ID; 
-- SORU2:  Bir manager_İd den kac adet oldugunu bul. Kaç kez kullanılmış ?Gruplandırma olarak ta manager id kullan.


-- SORU3:  Bir manager_id den kaç adet oldugunu bul. Kaç kez kullanılmış ? Ama 100'den fazla olanları manager_id olarak grupla. 
select manager_id , count(*) from employees group by MANAGER_ID having  MANAGER_ID>100 ;

-- SORU4 :   first_name ve salary'lerin toplamını yazdırın.
-- 2000 den büyük salary leri first_name ' e göre gruplandırın ve bu grupları first_name'in baş harfi D olanlar ile yapın.
select first_name , sum(salary) as toplam_maas from employees group by FIRST_NAME having FIRST_NAME like 'D%'; 

