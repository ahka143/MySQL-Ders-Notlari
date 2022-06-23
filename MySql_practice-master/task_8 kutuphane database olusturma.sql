-- kutuphane database olusturma

CREATE TABLE ogrenci
(
ogrno int primary key,
ad VARCHAR(20),
soyad VARCHAR(20),
dtarih DATE	,
cinsiyet CHAR,
sinif CHAR(3),
puan int
);
​
create table siniflar
(
id int not null,
ad char(3)
);

INSERT INTO siniflar VALUES (1, '10A ');
INSERT INTO siniflar VALUES (2, '10B ');
INSERT INTO siniflar VALUES (3, '10C ');
INSERT INTO siniflar VALUES (4, '11A ');
INSERT INTO siniflar VALUES (5, '9A  ');
INSERT INTO siniflar VALUES (6, '9B  ');
INSERT INTO siniflar VALUES (7, '9C  ');
INSERT INTO siniflar VALUES (8, '11D ');
INSERT INTO siniflar VALUES (9, '11B ');
INSERT INTO siniflar VALUES (10, '11C ');
INSERT INTO siniflar VALUES (11, '10D ');
INSERT INTO siniflar VALUES (12, '11D ');
INSERT INTO siniflar VALUES (13, '12A ');
INSERT INTO siniflar VALUES (14, '12B ');
INSERT INTO siniflar VALUES (15, '12C ');
INSERT INTO siniflar VALUES (16, '12D ');
INSERT INTO siniflar VALUES (17, '11E ');
INSERT INTO siniflar VALUES (18, '12E ');
INSERT INTO siniflar VALUES (19, '10E ');
INSERT INTO siniflar VALUES (20, '9E  ');
INSERT INTO siniflar VALUES (21, '11F ');
INSERT INTO siniflar VALUES (22, '12F ');
INSERT INTO siniflar VALUES (23, '10F ');
INSERT INTO siniflar VALUES (24, '9F  ');


create table islem
(
islemno int not null,
ogrno INT,
kitapno INT,
atarih DATE,
vtarih DATE,
CONSTRAINT ogrno FOREIGN KEY(ogrno) REFERENCES ogrenci(ogrno)-- baglanti kodu
);

create table kitap
(
kitapno int not null,
ad varchar(100),
sayfasayisi int not null,
puan int not null,
yazarno int null,
sayi int 
);
INSERT INTO kitap VALUES (1, 'Sefiller', 200, 14, 45, 19);
INSERT INTO kitap VALUES (2, 'Beyaz Gemi', 291, 18, 9, 16);
INSERT INTO kitap VALUES (3, 'Dokuzuncu Hariciye Koğuşu', 378, 14, 22, 5);
INSERT INTO kitap VALUES (4, 'İnsan Ne İle Yaşar', 93, 32, 53, 11);
INSERT INTO kitap VALUES (5, 'Sergüzeşt', 200, 33, 6, 13);
INSERT INTO kitap VALUES (6, 'Vatan Yahut Silistre', 140, 38, 32, 19);
INSERT INTO kitap VALUES (7, 'Vadideki Zambak', 346, 28, 208, 3);
INSERT INTO kitap VALUES (8, 'Fatih Harbiye', 194, 17, 22, 5);
INSERT INTO kitap VALUES (9, 'Babalar ve Oğullar', 135, 24, 784, 18);
INSERT INTO kitap VALUES (10, 'Açlık', 305, 14, 399, 13);
INSERT INTO kitap VALUES (11, 'Define adası', 191, 39, 41, 13);
INSERT INTO kitap VALUES (12, 'Halime Kaptan', 176, 20, 43, 11);
INSERT INTO kitap VALUES (13, 'Oliver Twist', 190, 25, 4, 2);
INSERT INTO kitap VALUES (14, 'Çalıkuşu', 313, 21, 19, 11);
INSERT INTO kitap VALUES (15, 'İki Şehrin Hikayesi', 265, 18, 4, 12);
INSERT INTO kitap VALUES (16, 'Beyaz Diş', 336, 32, 182, 18);
INSERT INTO kitap VALUES (17, 'Bize Göre', 375, 36, 391, 11);
INSERT INTO kitap VALUES (18, 'Abide Şahsiyet Mehmet Akif Ersoy', 311, 17, 316, 1);
INSERT INTO kitap VALUES (19, 'Çağlayanlar', 227, 26, 804, 18);
INSERT INTO kitap VALUES (20, 'Robinson Crusoe', 97, 31, 728, 3);
INSERT INTO kitap VALUES (21, 'Faust', 137, 27, 659, 2);
INSERT INTO kitap VALUES (22, 'Ölü Canlar', 163, 22, 695, 16);
INSERT INTO kitap VALUES (23, 'Kiralık Konak', 278, 37, 120, 12);
INSERT INTO kitap VALUES (24, 'Yaban', 84, 27, 120, 12);
INSERT INTO kitap VALUES (25, 'Yalnız Efe', 359, 14, 47, 2);
INSERT INTO kitap VALUES (26, 'Yaprak Dökümü', 277, 25, 19, 15);
INSERT INTO kitap VALUES (27, 'Acımak', 265, 10, 19, 5);
INSERT INTO kitap VALUES (28, 'Küçük kadınlar', 261, 37, 64, 3);
INSERT INTO kitap VALUES (29, 'Vadideki Zambak', 193, 12, 196, 3);
INSERT INTO kitap VALUES (30, 'Nutuk', 188, 25, 397, 5);
INSERT INTO kitap VALUES (31, 'Şeker Portakalı', 230, 28, 451, 18);
INSERT INTO kitap VALUES (32, 'Tom sawyer', 213, 31, 541, 5);
INSERT INTO kitap VALUES (33, 'Benim Küçük Dostlarım', 139, 27, 551, 4);
INSERT INTO kitap VALUES (34, 'Gönül Hanım', 165, 21, 804, 9);
INSERT INTO kitap VALUES (35, 'Kuyucaklı Yusuf', 123, 15, 147, 6);
INSERT INTO kitap VALUES (36, 'Fareler Ve İnsanlar', 126, 31, 67, 18);
INSERT INTO kitap VALUES (37, 'Şehir Mektupları', 332, 10, 78, 15);
INSERT INTO kitap VALUES (38, 'Araba Sevdası', 240, 12, 82, 13);
INSERT INTO kitap VALUES (39, 'Suç ve Ceza', 219, 35, 88, 19);
INSERT INTO kitap VALUES (40, 'Şimdiki Çocuklar Harika', 94, 17, 97, 6);
INSERT INTO kitap VALUES (41, 'Ateşten Gömlek', 202, 32, 15, 4);
INSERT INTO kitap VALUES (42, 'Şu Çılgın Türkler', 199, 31, 7, 2);
INSERT INTO kitap VALUES (43, 'Toprak ana', 365, 18, 9, 4);
INSERT INTO kitap VALUES (44, 'Perili köşk', 136, 25, 47, 12);
INSERT INTO kitap VALUES (45, 'İntibah', 124, 25, 32, 19);
INSERT INTO kitap VALUES (46, 'Yüreğinin Götürdüğü Yere Git', 321, 24, 129, 1);
INSERT INTO kitap VALUES (47, 'Mai ve Siyah', 290, 10, 123, 8);
INSERT INTO kitap VALUES (48, 'Mesnevi''den Seçmeler', 240, 11, 85, 11);
INSERT INTO kitap VALUES (49, 'Değirmenden Mektuplar', 306, 32, 65, 9);
INSERT INTO kitap VALUES (50, 'Evliya Çelebi Seyahatnamesi''nden Seçmeler', 254, 11, 68, 9);
INSERT INTO kitap VALUES (51, 'Hacı Murat', 163, 34, 53, 3);
INSERT INTO kitap VALUES (52, '80 Günde Devr-i Alem', 265, 32, 242, 16);
INSERT INTO kitap VALUES (53, 'Altın ışık', 86, 32, 177, 18);
INSERT INTO kitap VALUES (54, 'Şermin', 306, 38, 650, 19);
INSERT INTO kitap VALUES (55, 'Kutadgu Bilig''den Seçmeler', 268, 25, 644, 11);
INSERT INTO kitap VALUES (56, 'Jane Eyre', 307, 33, 395, 10);
INSERT INTO kitap VALUES (57, 'Osmancık', 93, 17, 273, 2);
INSERT INTO kitap VALUES (58, 'Devlet', 340, 37, 318, 9);
INSERT INTO kitap VALUES (59, 'Milli Mücadelede Mehmet Akif', 273, 25, 310, 12);
INSERT INTO kitap VALUES (60, 'Şair Evlenmesi', 348, 30, 907, 8);
INSERT INTO kitap VALUES (61, 'Suç ve Ceza', 324, 13, 964, 12);
INSERT INTO kitap VALUES (62, 'Barbaros Hayrettin Paşa', 176, 14, 316, 1);
INSERT INTO kitap VALUES (63, 'Uçan Sınıf', 320, 26, 360, 8);
INSERT INTO kitap VALUES (64, 'İş Yaşamında Kadınlar', 148, 30, 378, 16);
INSERT INTO kitap VALUES (65, 'Robin Hood', 144, 38, 585, 6);
INSERT INTO kitap VALUES (66, 'Esir Şehrin İnsanları', 244, 10, 703, 2);
INSERT INTO kitap VALUES (67, 'Beyaz Yele', 306, 23, 729, 5);
INSERT INTO kitap VALUES (68, 'Çocuk Kalbi', 162, 33, 730, 15);
INSERT INTO kitap VALUES (69, 'Küçük Şeyler', 192, 25, 155, 11);
INSERT INTO kitap VALUES (70, 'Eylül', 180, 22, 200, 13);
INSERT INTO kitap VALUES (71, 'Felatun Bey ile Rakım Efendi', 267, 10, 248, 15);
INSERT INTO kitap VALUES (72, 'Balonla beş hafta', 148, 30, 242, 18);
INSERT INTO kitap VALUES (73, 'Simyacı', 226, 10, 60, 11);
INSERT INTO kitap VALUES (74, 'İnci', 105, 18, 67, 4);
INSERT INTO kitap VALUES (75, 'Savaş ve Barış', 81, 38, 53, 3);
INSERT INTO kitap VALUES (76, 'Mor Salkımlı Ev', 276, 26, 15, 1);
INSERT INTO kitap VALUES (77, 'Anadolu Notları', 110, 18, 19, 15);
INSERT INTO kitap VALUES (78, 'Büyük umutlar', 181, 12, 4, 18);
INSERT INTO kitap VALUES (79, 'Sinekli bakkal', 293, 16, 15, 18);
INSERT INTO kitap VALUES (80, 'Bu Hayat Sizin', 116, 10, 10, 5);
INSERT INTO kitap VALUES (81, 'Kamp Arkadaşları', 219, 21, 10, 10);
INSERT INTO kitap VALUES (82, 'Cemile Sultanmurat', 262, 19, 9, 19);
INSERT INTO kitap VALUES (83, 'Karartma geceleri', 272, 16, 43, 1);
INSERT INTO kitap VALUES (84, 'Düşün Yazıları', 187, 35, 46, 19);
INSERT INTO kitap VALUES (85, 'Beyaz Lale', 341, 17, 47, 2);
INSERT INTO kitap VALUES (86, 'Ferman', 133, 32, 47, 9);
INSERT INTO kitap VALUES (87, 'Çocukluk', 253, 19, 53, 11);
INSERT INTO kitap VALUES (88, 'Yılanların Öcü', 240, 24, 38, 16);
INSERT INTO kitap VALUES (89, 'Kendi Gök Kubbemiz', 298, 16, 33, 12);
INSERT INTO kitap VALUES (90, 'Değirmenimden Mektuplar', 308, 24, 65, 11);
INSERT INTO kitap VALUES (91, 'Ferrari''sini Satan Bilge', 358, 10, 69, 9);
INSERT INTO kitap VALUES (92, 'Kırmızı ve Siyah', 191, 23, 81, 9);
INSERT INTO kitap VALUES (93, 'İnce Memed', 215, 38, 84, 12);
INSERT INTO kitap VALUES (94, 'Yılanı öldürseler', 112, 19, 84, 13);
INSERT INTO kitap VALUES (95, 'Mesneviden Hikayeler', 339, 33, 85, 13);
INSERT INTO kitap VALUES (96, 'Ceyhude Ömrüm', 336, 13, 70, 15);
INSERT INTO kitap VALUES (97, 'Falaka', 376, 31, 78, 6);
INSERT INTO kitap VALUES (98, 'Türkçenin sırları', 372, 35, 128, 11);
INSERT INTO kitap VALUES (99, 'Edebiyat yazıları', 106, 36, 135, 10);
INSERT INTO kitap VALUES (100, 'Figan', 281, 28, 104, 9);

select * from kitap;

create table yazar
(
yazarno int not null,
ad varchar(50) null,
soyad varchar(50) null
);

INSERT INTO yazar VALUES (4, 'Charles', 'Dickens');
INSERT INTO yazar VALUES (6, 'Sami Paşazade',' Sezai');
INSERT INTO yazar VALUES (7, 'Turgut ', 'Özakman');
INSERT INTO yazar VALUES (9, 'Cengiz', ' Aytmotov');
INSERT INTO yazar VALUES (10, 'İpek', 'Ongun');
INSERT INTO yazar VALUES (11, 'M. Y.', 'Özbek');
INSERT INTO yazar VALUES (15, 'Halide Edip', 'Adıvar');
INSERT INTO yazar VALUES (18, 'J.', 'Steinbock');
INSERT INTO yazar VALUES (19, 'Reşat Nuri', 'Güntekin');
INSERT INTO yazar VALUES (21, 'E.', 'Haningway');
INSERT INTO yazar VALUES (22, 'Peyami', 'Safa');
INSERT INTO yazar VALUES (23, 'B.', 'Ağaoğlu');
INSERT INTO yazar VALUES (26, 'Server ', 'Tanilli');
INSERT INTO yazar VALUES (28, 'Dan', 'Brown');
INSERT INTO yazar VALUES (30, 'Amin', 'Maalouf');
INSERT INTO yazar VALUES (31, 'Şemsettin ', 'Sami');
INSERT INTO yazar VALUES (32, 'Namık', 'Kemal');
INSERT INTO yazar VALUES (33, 'Yahya', 'Kemal');
INSERT INTO yazar VALUES (35, 'Şevket Süreyya', 'Aydemir');
INSERT INTO yazar VALUES (36, 'Ömer', 'Hayyam');
INSERT INTO yazar VALUES (38, 'Fakir ', 'Baykurt');
INSERT INTO yazar VALUES (39, 'Refik Halid', 'Karay');
INSERT INTO yazar VALUES (41, 'Robert Louis', 'Stevenson');
INSERT INTO yazar VALUES (42, 'İsmail ', 'Arar');
INSERT INTO yazar VALUES (43, 'Rıfat ', 'Ilgaz');
INSERT INTO yazar VALUES (44, 'Behçet', 'Necatigil');
INSERT INTO yazar VALUES (45, 'Victor ', 'Hugo');
INSERT INTO yazar VALUES (46, 'Halikarnas', 'Balıkçısı');
INSERT INTO yazar VALUES (47, 'Ömer', 'Seyfettin');
INSERT INTO yazar VALUES (48, 'Ömer ', 'Seyfettin');
INSERT INTO yazar VALUES (50, 'Doğan', 'Cüceloğlu');
INSERT INTO yazar VALUES (52, 'Necip', 'Fazıl');
INSERT INTO yazar VALUES (53, 'Tolstoy', '');
INSERT INTO yazar VALUES (56, 'Nabizade', 'Nazım');
INSERT INTO yazar VALUES (58, 'Gülten', 'Dayıoğlu');
INSERT INTO yazar VALUES (59, 'Recep Şükrü', 'Apuhan');
INSERT INTO yazar VALUES (60, 'Paulo', 'Coelho');
INSERT INTO yazar VALUES (61, 'Orhan', 'Kemal');
INSERT INTO yazar VALUES (64, 'Louisa May', 'Alcott');
INSERT INTO yazar VALUES (65, 'Alphonse ', 'Daudet');
INSERT INTO yazar VALUES (66, 'Mustafa Necati', 'Karaer');
INSERT INTO yazar VALUES (67, 'John', 'Steinbeck');
INSERT INTO yazar VALUES (68, 'Evliya ', 'Çelebi');
INSERT INTO yazar VALUES (69, 'Robin S.', 'Sharma');
INSERT INTO yazar VALUES (70, 'Mustafa ', 'Kutlu');
INSERT INTO yazar VALUES (72, 'Yavuz', 'Bahadıroğlu');
INSERT INTO yazar VALUES (76, 'İpek ', 'Ongun');
INSERT INTO yazar VALUES (78, 'Ahmet ', 'Rasim');
INSERT INTO yazar VALUES (79, 'K.', 'Hogan');
INSERT INTO yazar VALUES (80, 'S.', 'Yılmaz');
INSERT INTO yazar VALUES (81, 'Stendhal', '');
INSERT INTO yazar VALUES (82, 'Recaizade Mahmud', 'Ekrem');
INSERT INTO yazar VALUES (83, 'Abdullah', 'Arıdoru');
INSERT INTO yazar VALUES (84, 'Yaşar ', 'Kemal');
INSERT INTO yazar VALUES (85, 'Mevlana', '');
INSERT INTO yazar VALUES (87, 'Emily', 'Bronte');
INSERT INTO yazar VALUES (88, 'F. M. ', 'Dostoyevski');
INSERT INTO yazar VALUES (91, 'Refik Halid', 'Karay');
INSERT INTO yazar VALUES (92, 'Olcay', 'Yazıcı');
INSERT INTO yazar VALUES (93, 'Süleyman', 'Kösmene');
INSERT INTO yazar VALUES (96, 'Moliere', '');
INSERT INTO yazar VALUES (97, 'Aziz ', 'Nesin');
INSERT INTO yazar VALUES (98, 'Canan', 'Tan');
INSERT INTO yazar VALUES (99, 'Hekimoğlu', 'İsmail');
INSERT INTO yazar VALUES (100, 'Rıfat', 'Ilgaz');

select * from yazar;

create table tur
(
turno int not null,
ad varchar(20)
);

-- SORU01: sayfa sayisi  200'den büyük olan kitaplari bilgileri listele

-- SORU02: yazar no 33 olan kitabin sayisi yazdirin

-- SORU03: yazar no su 4 ile 9 arasinda olan yazar isimleriniz yazdirin 

-- soru charles dickens ile turgut aytmatov arasindaki yazarlari listeleyin

-- sayfa sayisi 200 den buyuk kitap ismi 'beyaz dis' olan kitabin ismi puanini getir

-- kitap no su 98 54 21 76 olan kitapno ve isimlerini listlele


-- SORU09: İsmi A harfi ile başlayan yazarlari listele

-- SORU11: İsminin 2. harfi E olan yazarlari listeleyin


-- SORU12: İsminin 2. harfi E olup diğer harflerinde Y olan yazar


-- SORU13: isim ilk harfi r ile baslasin ikini harfi ne olursa olsun icinde k harfi bulunan isimleri listele

-- soru isminde a harfi olmayan 

-- SORU14: kitab adi 6 haneli olan kitablari listeleyin

-- SORU15: 1. harfi A ve 8. harfi A olan kitap listeleyin









