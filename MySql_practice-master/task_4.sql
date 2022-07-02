USE sakila;
select * from sakila.city;
select * from city;

-- SORU1 : City'deki her şeyi göster. Ancak sıralama country_id ' ye göre olsun ve baştan sona dogru sıralansın.
select * from city order by country_id;

-- SORU2 : City'deki her şeyi göster. Ancak sıralama city_id ' ye göre olsun ve sondan başa dogru sıralansın.
select * from city order by city_id desc;


-- SORU3 : City'deki her şeyi göster. Ancak sıralama city ' ye göre olsun ve sondan başa dogru sıralansın.
select * from city order by city desc;

 -- SORU4 : City’lerin arasından A harfi ile başlayanları, city id lerine göre tersten yazdır. 
select * from city 
where city like 'A%' order by city_id desc;

-- SORU5 :  city_id  , city , country_ id yi yazdırın. Koşul olarak country_id si 50 den büyük olanları yazdırın.country id ile tersten sıralayın.
select * from city
where country_id > 50 ORDER BY country_id DESC;

-- SORU6 :  city_id  , city , country_ id yi yazdırın. Koşul olarak country id si 20 ile 25 arasında olanları yazdır ve country id ye göre yazdır.
select city_id, city, country_id from city
where country_id between 20 and 25 order by country_id;


SELECT * FROM company.employees;

-- SORU : Bir Job_id içerisinde kaç kişi çalışıyor? Job id grubu oluşturarak yazalım.
select JOB_ID , count(first_name) as calisanlar from employees 
group by JOB_ID 
order by calisanlar desc;

-- SORU : Yukarıdaki örneğe ek olarak, ismi T harfi ile biten job_id leri yazdırmasını isteyelim.
select JOB_ID , count(first_name) as calisanlar from employees 
group by JOB_ID
HAVING JOB_ID like '%T' 
ORDER BY calisanlar DESC;

-- Aynı soruyu where ile yapılısı:
select JOB_ID , count(first_name) as calisanlar from employees 
where JOB_ID like '%T'
group by JOB_ID
ORDER BY calisanlar DESC;

-- SORU 1: job_ id lere göre her job id nin toplam maaşını görüntüle. Maaşların yazacağı kısmı ‘Total’ olarak nitelendir. Job id olarak gruplandır. 
SELECT JOB_ID, sum(SALARY) AS Total FROM employees  
GROUP BY JOB_ID  ;

-- SORU2:  Bir manager_İd den kac adet oldugunu bul. Kaç kez kullanılmış ?Gruplandırma olarak ta manager id kullan.
SELECT MANAGER_ID, count(MANAGER_ID) AS count_MANEGER_ID FROM employees  
GROUP BY MANAGER_ID ;

-- SORU3:  Bir manager_id den kaç adet oldugunu bul. Kaç kez kullanılmış ? Ama 100'den fazla olanları manager_id olarak grupla. 
SELECT MANAGER_ID, count(MANAGER_ID) AS count_MANEGER_ID FROM employees  
WHERE manager_id >100
GROUP BY MANAGER_ID;

SELECT MANAGER_ID, count(MANAGER_ID) AS count_MANEGER_ID FROM employees  
GROUP BY MANAGER_ID
HAVING MANAGER_ID > 100;

-- SORU4 :   first_name ve salary'lerin toplamını yazdırın.
-- 2000 den büyük salary leri first_name ' e göre gruplandırın ve bu grupları first_name'in baş harfi D olanlar ile yapın.
SELECT first_name, sum(salary) AS Total_Salary 
FROM employees
WHERE salary > 2000
GROUP BY first_name
HAVING first_name LIKE 'D%';

