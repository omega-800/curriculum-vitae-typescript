INSERT INTO country(name, shortName) VALUES 
('Schweiz', 'CH'), 
('Amerika', 'US'), 
('Russland', 'RU');

INSERT INTO language (name, shortName) VALUES
('Deutsch', 'DE'),
('Englisch', 'EN'),
('Russisch', 'RU');

INSERT INTO country_language (language_id, country_id) VALUES 
((SELECT language_id from language WHERE shortName = 'DE'), (SELECT country_id from country WHERE shortName = 'CH')),
((SELECT language_id from language WHERE shortName = 'EN'), (SELECT country_id from country WHERE shortName = 'US')),
((SELECT language_id from language WHERE shortName = 'RU'), (SELECT country_id from country WHERE shortName = 'RU'));

INSERT INTO address(street, city, zip, country_id) VALUES
('Stettbachstrasse 129G','Zürich',8051,(SELECT country_id from country WHERE shortName = 'CH')),
('Barzloostrasse 20','Pfäffikon ZH',8033,(SELECT country_id from country WHERE shortName = 'CH')),
('Lochackerstrasse 4','Embrach',8424,(SELECT country_id from country WHERE shortName = 'CH')),
('Stettbachstrasse 88','Zürich',8051,(SELECT country_id from country WHERE shortName = 'CH')),
('Promenadengasse 11','Zürich',8001,(SELECT country_id from country WHERE shortName = 'CH')),
('Herzogenmühlestrasse 60','Zürich',8051,(SELECT country_id from country WHERE shortName = 'CH')),
('Minervastrasse 14','Zürich',8090,(SELECT country_id from country WHERE shortName = 'CH')),
('Seestrasse 110','Horgen',8810,(SELECT country_id from country WHERE shortName = 'CH'));

INSERT INTO contactPoint(name, phone, email) VALUES 
('info point', 0552565758, 'info@inteco.ch'),
('Web support', 0, 'webmaster@inteco.ch'),
('Technik support', 0, 'support@inteco.ch'),
('WEGAS support', 0, 'wegas@inteco.ch'),
('info point', 0525502773, 'swissoffice@ernesto-vargas.com'),
('Sekretariat', 0444133080, ''),
('Sekretariat', 0442446464, 'sekretariat@kshp.ch'),
('Schulleitung', 0444133100, 'kurt.bauer@schulen.zuerich.ch'),
('Sekretariat', 0442665757, 'hottingen@ksh.ch'),
('Sekretariat', 0447274600, ''),
('me', 0772156436, 'gshevoroshkin@gmail.com'),
('mom', 0762240414, ''),
('dad', 0786081068, 'alexshev@yahoo.com'),
('niki', 0787280585, ''),
('michi', 0786237232, '');

INSERT INTO workplace (description, name, legalName, url, logo, foundingDate, founders, address_id) VALUES 
('', 'Inteco', 'inteco edv ag', 'https://www.inteco.ch/', 'https://u.jimcdn.com/cms/o/s2be375c9b7b44441/userlayout/img/logo.png', '1978-01-01','Walter Tuchschmid', (SELECT address_id from address WHERE street = 'Barzloostrasse 20')),
('', 'Ernesto Vargas', 'Ernesto Vargas®', 'https://www.ernesto-vargas.com', 'https://www.ernesto-vargas.com/shop/wp-content/uploads/2017/03/ev-logo2.png', '1978-01-01','Bernd Schoop', (SELECT address_id from address WHERE street = 'Lochackerstrasse 4'));

INSERT INTO workplace_contactPoint (workplace_id, contactPoint_id) VALUES
((SELECT workplace_id FROM workplace WHERE name = 'Inteco'),(SELECT contactPoint_id FROM contactPoint WHERE email = 'info@inteco.ch')),
((SELECT workplace_id FROM workplace WHERE name = 'Inteco'),(SELECT contactPoint_id FROM contactPoint WHERE email = 'webmaster@inteco.ch')),
((SELECT workplace_id FROM workplace WHERE name = 'Inteco'),(SELECT contactPoint_id FROM contactPoint WHERE email = 'support@inteco.ch')),
((SELECT workplace_id FROM workplace WHERE name = 'Inteco'),(SELECT contactPoint_id FROM contactPoint WHERE email = 'wegas@inteco.ch')),
((SELECT workplace_id FROM workplace WHERE name = 'Ernesto Vargas'),(SELECT contactPoint_id FROM contactPoint WHERE email = 'swissoffice@ernesto-vargas.com'));

INSERT INTO school (description, name, url, logo, image, type, address_id) VALUES ('', 'Probstei', 'https://www.stadt-zuerich.ch/schulen/de/probstei.html', '', '', 'primarschule', (SELECT address_id from address WHERE street = 'Stettbachstrasse 88')),
('', 'Hohe Promenade', 'https://www.kshp.ch/', '', '', 'gymnasium', (SELECT address_id from address WHERE street = 'Promenadengasse 11')),
('', 'Herzogenmühle', 'https://www.schule-herzli.ch/', '', '', 'sekundarschule', (SELECT address_id from address WHERE street = 'Herzogenmühlestrasse 60')),
('', 'Hottingen', 'https://www.ksh.ch/angebot/informatikmittelschule', '', '', 'Informatikmittelschule', (SELECT address_id from address WHERE street = 'Minervastrasse 14')),
('', 'Berufsbildungszentrum Zürichsee', 'https://www.bzz.ch/berufslehre/informatik-mediamatik/informatikerin-efz-informatiker-in-efz-ims/', '', '', 'Informatikmittelschule', (SELECT address_id from address WHERE street = 'Seestrasse 110'));

INSERT INTO school_contactPoint (school_id, contactPoint_id) VALUES
((SELECT school_id FROM school WHERE name = 'Probstei'),(SELECT contactPoint_id FROM contactPoint WHERE phone = 0444133080)),
((SELECT school_id FROM school WHERE name = 'Hohe Promenade'),(SELECT contactPoint_id FROM contactPoint WHERE phone = 0442446464)),
((SELECT school_id FROM school WHERE name = 'Herzogenmühle'),(SELECT contactPoint_id FROM contactPoint WHERE phone = 0444133100)),
((SELECT school_id FROM school WHERE name = 'Hottingen'),(SELECT contactPoint_id FROM contactPoint WHERE phone = 0442665757)),
((SELECT school_id FROM school WHERE name = 'Berufsbildungszentrum Zürichsee'),(SELECT contactPoint_id FROM contactPoint WHERE phone = 0447274600));

INSERT INTO career (name, description, yearfrom, yearto, workplace_id, school_id) VALUES 
('inteco','','2022','2023',(SELECT workplace_id FROM workplace WHERE name = 'Inteco'),''),
('ernesto vargas','','2020','2021',(SELECT workplace_id FROM workplace WHERE name = 'Ernesto Vargas'),''),
('bzz','','2017','2020','',(SELECT school_id FROM school WHERE name = 'Berufsbildungszentrum Zürichsee')),
('ims','','2017','2020','',(SELECT school_id FROM school WHERE name = 'Hottingen')),
('sek','','2016','2017','',(SELECT school_id FROM school WHERE name = 'Herzogenmühle')),
('hopro','','2014','2016','',(SELECT school_id FROM school WHERE name = 'Hohe Promenade')),
('probstei','','2008','2014','',(SELECT school_id FROM school WHERE name = 'Probsteis'));
