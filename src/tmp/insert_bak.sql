INSERT INTO skillCategory (name, description) VALUES
('Sprachen',NULL),
('Entwicklung',NULL),
('Allgemeinbildung',NULL),
('Persönlich',NULL);

INSERT INTO skill (name, description, knowledgePercent, skillCategory_id) VALUES
('Selbstständigkeit', NULL, 100, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Persönlich')),
('Teamwork', NULL, 80, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Persönlich')),
('Logisches Denken', NULL, 90, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Persönlich')),
('Kritikfähigkeit', NULL, 95, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Persönlich')),
('Kreativität', NULL, 100, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Persönlich')),
('Kommunikation', NULL, 75, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Persönlich')),
('Lernfähigkeit', NULL, 90, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Persönlich')),
('Organisation', NULL, 65, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Persönlich')),
('Empathie', NULL, 95, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Persönlich')),
('Empathie', NULL, 95, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Persönlich')),
('SEO', NULL, 50, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Entwicklung')),
('Mathematik', NULL, 75, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Allgemeinbildung')),
('Geschichte', NULL, 45, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Allgemeinbildung')),
('Philosophie', NULL, 80, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Allgemeinbildung')),
('Politik', NULL, 65, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Allgemeinbildung')),
('Geographie', NULL, 50, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Allgemeinbildung')),
('Biologie', NULL, 65, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Allgemeinbildung')),
('Chemie', NULL, 60, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Allgemeinbildung')),
('Physik', NULL, 55, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Allgemeinbildung')),
('Hauswirtschaft', NULL, 95, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Allgemeinbildung'));

INSERT INTO country(name, shortName) VALUES 
('Schweiz', 'CH'), 
('Amerika', 'US'), 
('Russland', 'RU'), 
('Frankreich', 'FR');

INSERT INTO language (name, description, shortName, knowledgePercent, proficiencyLevel, skillCategory_id) VALUES
('Deutsch', 'Seit Geburt', 'DE', 100, 'C2', (SELECT skillCategory_id FROM skillCategory WHERE name = 'Sprachen')),
('Englisch', 'Vatersprache', 'EN', 90, 'C1', (SELECT skillCategory_id FROM skillCategory WHERE name = 'Sprachen')),
('Russisch', 'Muttersprache', 'RU', 75, 'B2', (SELECT skillCategory_id FROM skillCategory WHERE name = 'Sprachen')),
('Französisch', 'Schulwissen', 'FR', 50, 'B1', (SELECT skillCategory_id FROM skillCategory WHERE name = 'Sprachen'));

INSERT INTO country_language (language_id, country_id) VALUES 
((SELECT language_id from language WHERE shortName = 'DE'), (SELECT country_id from country WHERE shortName = 'CH')),
((SELECT language_id from language WHERE shortName = 'EN'), (SELECT country_id from country WHERE shortName = 'US')),
((SELECT language_id from language WHERE shortName = 'RU'), (SELECT country_id from country WHERE shortName = 'RU')),
((SELECT language_id from language WHERE shortName = 'FR'), (SELECT country_id from country WHERE shortName = 'FR'));

INSERT INTO address(street, city, zip, country_id) VALUES
('Stettbachstrasse 129G','Zürich',8051,(SELECT country_id FROM country WHERE shortName = 'CH')),
('Barzloostrasse 20','Pfäffikon ZH',8033,(SELECT country_id FROM country WHERE shortName = 'CH')),
('Lochackerstrasse 4','Embrach',8424,(SELECT country_id FROM country WHERE shortName = 'CH')),
('Stettbachstrasse 88','Zürich',8051,(SELECT country_id FROM country WHERE shortName = 'CH')),
('Promenadengasse 11','Zürich',8001,(SELECT country_id FROM country WHERE shortName = 'CH')),
('Herzogenmühlestrasse 60','Zürich',8051,(SELECT country_id FROM country WHERE shortName = 'CH')),
('Minervastrasse 14','Zürich',8090,(SELECT country_id FROM country WHERE shortName = 'CH')),
('Seestrasse 110','Horgen',8810,(SELECT country_id FROM country WHERE shortName = 'CH'));

INSERT INTO contactPoint(name, phone, email) VALUES 
('info point', 0552565758, 'info@inteco.ch'),
('Web support', NULL, 'webmaster@inteco.ch'),
('Technik support', NULL, 'support@inteco.ch'),
('WEGAS support', NULL, 'wegas@inteco.ch'),
('info point', 0525502773, 'swissoffice@ernesto-vargas.com'),
('Sekretariat', 0444133080, NULL),
('Sekretariat', 0442446464, 'sekretariat@kshp.ch'),
('Schulleitung', 0444133100, 'kurt.bauer@schulen.zuerich.ch'),
('Sekretariat', 0442665757, 'hottingen@ksh.ch'),
('Sekretariat', 0447274600, NULL),
('me', 0772156436, 'gshevoroshkin@gmail.com'),
('mom', 0762240414, NULL),
('dad', 0786081068, 'alexshev@yahoo.com'),
('niki', 0787280585, NULL),
('michi', 0786237232, NULL),
('betina', NULL, 'betina.hiestand@inteco.ch');

INSERT INTO workplace (description, name, legalName, url, logo, foundingDate, founder, address_id) VALUES 
(NULL, 'Inteco', 'inteco edv ag', 'https://www.inteco.ch/', 'https://u.jimcdn.com/cms/o/s2be375c9b7b44441/userlayout/img/logo.png', '1978-01-01','Walter Tuchschmid', (SELECT address_id from address WHERE street = 'Barzloostrasse 20')),
(NULL, 'Ernesto Vargas', 'Ernesto Vargas®', 'https://www.ernesto-vargas.com', 'https://www.ernesto-vargas.com/shop/wp-content/uploads/2017/03/ev-logo2.png', '1978-01-01','Bernd Schoop', (SELECT address_id from address WHERE street = 'Lochackerstrasse 4'));

INSERT INTO workplace_contactPoint (workplace_id, contactPoint_id) VALUES
((SELECT workplace_id FROM workplace WHERE name = 'Inteco'),(SELECT contactPoint_id FROM contactPoint WHERE email = 'info@inteco.ch')),
((SELECT workplace_id FROM workplace WHERE name = 'Inteco'),(SELECT contactPoint_id FROM contactPoint WHERE email = 'webmaster@inteco.ch')),
((SELECT workplace_id FROM workplace WHERE name = 'Inteco'),(SELECT contactPoint_id FROM contactPoint WHERE email = 'support@inteco.ch')),
((SELECT workplace_id FROM workplace WHERE name = 'Inteco'),(SELECT contactPoint_id FROM contactPoint WHERE email = 'wegas@inteco.ch')),
((SELECT workplace_id FROM workplace WHERE name = 'Ernesto Vargas'),(SELECT contactPoint_id FROM contactPoint WHERE email = 'swissoffice@ernesto-vargas.com'));

INSERT INTO school (description, name, url, logo, image, type, address_id) VALUES (NULL, 'Probstei', 'https://www.stadt-zuerich.ch/schulen/de/probstei.html', NULL, NULL, 'primarschule', (SELECT address_id from address WHERE street = 'Stettbachstrasse 88')),
(NULL, 'Hohe Promenade', 'https://www.kshp.ch/', NULL, NULL, 'gymnasium', (SELECT address_id from address WHERE street = 'Promenadengasse 11')),
(NULL, 'Herzogenmühle', 'https://www.schule-herzli.ch/', NULL, NULL, 'sekundarschule', (SELECT address_id from address WHERE street = 'Herzogenmühlestrasse 60')),
(NULL, 'Hottingen', 'https://www.ksh.ch/angebot/informatikmittelschule', NULL, NULL, 'Informatikmittelschule', (SELECT address_id from address WHERE street = 'Minervastrasse 14')),
(NULL, 'Berufsbildungszentrum Zürichsee', 'https://www.bzz.ch/berufslehre/informatik-mediamatik/informatikerin-efz-informatiker-in-efz-ims/', NULL, NULL, 'Informatikmittelschule', (SELECT address_id from address WHERE street = 'Seestrasse 110'));

INSERT INTO school_contactPoint (school_id, contactPoint_id) VALUES
((SELECT school_id FROM school WHERE name = 'Probstei'),(SELECT contactPoint_id FROM contactPoint WHERE phone = 0444133080)),
((SELECT school_id FROM school WHERE name = 'Hohe Promenade'),(SELECT contactPoint_id FROM contactPoint WHERE phone = 0442446464)),
((SELECT school_id FROM school WHERE name = 'Herzogenmühle'),(SELECT contactPoint_id FROM contactPoint WHERE phone = 0444133100)),
((SELECT school_id FROM school WHERE name = 'Hottingen'),(SELECT contactPoint_id FROM contactPoint WHERE phone = 0442665757)),
((SELECT school_id FROM school WHERE name = 'Berufsbildungszentrum Zürichsee'),(SELECT contactPoint_id FROM contactPoint WHERE phone = 0447274600));

INSERT INTO career (name, description, yearfrom, yearto, workplace_id, school_id) VALUES 
('inteco',NULL,2022,2023,(SELECT workplace_id FROM workplace WHERE name = 'Inteco'),NULL),
('ernesto vargas',NULL,2020,2021,(SELECT workplace_id FROM workplace WHERE name = 'Ernesto Vargas'),NULL),
('bzz',NULL,2017,2020,NULL,(SELECT school_id FROM school WHERE name = 'Berufsbildungszentrum Zürichsee')),
('ims',NULL,2017,2020,NULL,(SELECT school_id FROM school WHERE name = 'Hottingen')),
('sek',NULL,2016,2017,NULL,(SELECT school_id FROM school WHERE name = 'Herzogenmühle')),
('hopro',NULL,2014,2016,NULL,(SELECT school_id FROM school WHERE name = 'Hohe Promenade')),
('probstei',NULL,2008,2014,NULL,(SELECT school_id FROM school WHERE name = 'Probsteis'));

INSERT INTO personCategory (name, description) VALUES 
('me', NULL),
('familie',NULL),
('berufsbildner',NULL),
('lehrer',NULL);
 
INSERT INTO person (firstName, lastName, birthDate, birthPlace, jobTitle, gender, image, thumbnail, relation, description, address_id, workplace_id, school_id, personCategory_id, contactPoint_id) VALUES
('Georgiy', 'Shevoroshkin', '2002-06-18', 'Zürich, ZH', 'Applikationsentwickler', 'M', 'content/profilepic/profilepic.jpg', NULL, 'myself', NULL,(SELECT address_id FROM address WHERE street = 'Stettbachstrasse 129G'),(SELECT workplace_id FROM workplace WHERE name = 'Inteco'), NULL, (SELECT personCategory_id FROM personCategory WHERE name = 'me'), (SELECT contactPoint_id FROM contactPoint WHERE name = 'me')),
('Tatiana', 'Chirokikh', '1967-04-14', 'St. Petersburg', 'Ernährungsberaterin', 'F', NULL, NULL, 'Mutter', NULL,(SELECT address_id FROM address WHERE street = 'Stettbachstrasse 129G'), NULL, NULL, (SELECT personCategory_id FROM personCategory WHERE name = 'familie'), (SELECT contactPoint_id FROM contactPoint WHERE name = 'mom')),
('Alexey', 'Shevoroshkin', '1966-05-08', 'Moscow', 'Applikationsentwickler', 'M', NULL, NULL, 'Vater', NULL,(SELECT address_id FROM address WHERE street = 'Stettbachstrasse 129G'), NULL, NULL, (SELECT personCategory_id FROM personCategory WHERE name = 'familie'), (SELECT contactPoint_id FROM contactPoint WHERE name = 'dad')),
('Nikolay', 'Shevoroshkin', '2006-08-05', 'Zürich, ZH', 'Schüler', 'M', NULL, NULL, 'Bruder', NULL,(SELECT address_id FROM address WHERE street = 'Stettbachstrasse 129G'), NULL, NULL, (SELECT personCategory_id FROM personCategory WHERE name = 'familie'), (SELECT contactPoint_id FROM contactPoint WHERE name = 'niki')),
('Michail', 'Shevoroshkin', '2004-11-22', 'Zürich, ZH', 'Tiermedizinischer Praxisassistent', 'M', NULL, NULL, 'Bruder', NULL,(SELECT address_id FROM address WHERE street = 'Stettbachstrasse 129G'), NULL, NULL, (SELECT personCategory_id FROM personCategory WHERE name = 'familie'), (SELECT contactPoint_id FROM contactPoint WHERE name = 'michi')),
('Betina', 'Hiestand', NULL, NULL, 'Applikationsentwicklerin', 'F', NULL, NULL, 'Berufsbildnerin', NULL, NULL, (SELECT workplace_id FROM workplace WHERE name = 'Inteco'), NULL, (SELECT personCategory_id FROM personCategory WHERE name = 'berufsbildner'), (SELECT contactPoint_id FROM contactPoint WHERE name = 'betina'));

INSERT INTO person_country (person_id, country_id) VALUES
((SELECT person_id FROM person WHERE firstName = 'Georgiy'),(SELECT country_id FROM country WHERE shortName = 'CH')),
((SELECT person_id FROM person WHERE firstName = 'Georgiy'),(SELECT country_id FROM country WHERE shortName = 'US')),
((SELECT person_id FROM person WHERE firstName = 'Georgiy'),(SELECT country_id FROM country WHERE shortName = 'RU')),
((SELECT person_id FROM person WHERE firstName = 'Nikolay'),(SELECT country_id FROM country WHERE shortName = 'CH')),
((SELECT person_id FROM person WHERE firstName = 'Nikolay'),(SELECT country_id FROM country WHERE shortName = 'US')),
((SELECT person_id FROM person WHERE firstName = 'Nikolay'),(SELECT country_id FROM country WHERE shortName = 'RU')),
((SELECT person_id FROM person WHERE firstName = 'Michail'),(SELECT country_id FROM country WHERE shortName = 'CH')),
((SELECT person_id FROM person WHERE firstName = 'Michail'),(SELECT country_id FROM country WHERE shortName = 'US')),
((SELECT person_id FROM person WHERE firstName = 'Michail'),(SELECT country_id FROM country WHERE shortName = 'RU')),
((SELECT person_id FROM person WHERE firstName = 'Alexey'),(SELECT country_id FROM country WHERE shortName = 'CH')),
((SELECT person_id FROM person WHERE firstName = 'Alexey'),(SELECT country_id FROM country WHERE shortName = 'US')),
((SELECT person_id FROM person WHERE firstName = 'Alexey'),(SELECT country_id FROM country WHERE shortName = 'RU')),
((SELECT person_id FROM person WHERE firstName = 'Tatiana'),(SELECT country_id FROM country WHERE shortName = 'CH')),
((SELECT person_id FROM person WHERE firstName = 'Tatiana'),(SELECT country_id FROM country WHERE shortName = 'RU'));
/*
INSERT INTO applicationCategory (name, description) VALUES
('Frontend Web Development', 'Creating user-facing websites or web applications using technologies such as HTML, CSS, and JavaScript.'),
('Backend Web Development', 'Creating server-side logic and database integration for web applications.'),
('Mobile App Development', 'Creating applications for mobile devices such as smartphones and tablets.'),
('Game Development', 'Creating video games for consoles, PC, or mobile devices using various programming languages and game engines.'),
('Database Development', 'Designing and implementing databases for storing and organizing large amounts of data.'),
('Data Management', 'Designing and implementing Applications for manipulating and organizing large amounts of data.');
*/

INSERT INTO applicationCategory (name, description) VALUES
('Frontend', 'Erstellung von benutzerorientierten Websites oder Webanwendungen unter Verwendung von Technologien wie HTML, CSS und JavaScript.'),
('Backend', 'Erstellung von serverseitiger Logik und Integration von Datenbanken für Webanwendungen.'),
('Mobile App Entwicklung', 'Erstellung von Anwendungen für mobile Geräte wie Smartphones und Tablets.'),
('Spielentwicklung', 'Erstellung von Videospielen für Konsolen, PC oder mobile Geräte unter Verwendung verschiedener Programmiersprachen und Spiele-Engines.'),
('Datenbankentwicklung', 'Entwurf und Implementierung von Datenbanken zur Speicherung und Organisation großer Datenmengen.'),
('Datenmanagement', 'Entwurf und Implementierung von Anwendungen zur Manipulation und Organisation großer Datenmengen.'),
('Bildbearbeitung', NULL),
('Office', NULL),
('Musik', NULL),
('Datenbearbeitung', NULL);

INSERT INTO applicationType (name, description) VALUES
('Programmiersprache',NULL),
('Umgebung',NULL),
('Applikation',NULL),
('Tool',NULL);

INSERT INTO application (name, description, alternateName, operatingSystem, keywords, url, version, applicationCategory_id, applicationType_id, knowledgePercent, skillCategory_id) VALUES
('Vim', 'Vim ist ein freier Texteditor für die Arbeit mit einer Vi-kompatiblen Befehlszeilenschnittstelle.', 'Vi IMproved', 'Windows, macOS, Linux', 'Vim, Texteditor, Vi, Befehlszeile', 'https://www.vim.org/', '8.2.3401', (SELECT applicationCategory_id FROM applicationCategory WHERE name = 'Datenbearbeitung'), (SELECT applicationType_id FROM applicationType WHERE name = 'Applikation'), 75, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Entwicklung')),
('GIMP', 'GIMP ist ein kostenloses, plattformübergreifendes Bildbearbeitungsprogramm für die Erstellung und Bearbeitung von digitalen Bildern.', 'GNU Image Manipulation Program', 'Windows, macOS, Linux', 'GIMP, Bildbearbeitung, Photoshop-Alternative', 'https://www.gimp.org/', '2.10.28', (SELECT applicationCategory_id FROM applicationCategory WHERE name = 'Bildbearbeitung'), (SELECT applicationType_id FROM applicationType WHERE name = 'Applikation'), 80, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Entwicklung')),
('Adobe Photoshop', 'Adobe Photoshop ist ein professionelles Bildbearbeitungsprogramm für Kreative.', 'Photoshop, Adobe Creative Suite', 'Cross-platform', 'Bildbearbeitung, Grafikdesign, Kreativität, Adobe Creative Cloud', 'https://www.adobe.com/products/photoshop.html', '2022', (SELECT applicationCategory_id FROM applicationCategory WHERE name = 'Bildbearbeitung'), (SELECT applicationType_id FROM applicationType WHERE name = 'Applikation'), 75, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Entwicklung')),
('Inkscape', 'Inkscape ist ein professionelles Vektorgrafikprogramm, das eine kostenlose und Open-Source-Alternative zu Adobe Illustrator bietet.', 'Inkscape', 'Cross-platform', 'Inkscape, Vektorgrafik, Open-Source, Adobe Illustrator', 'https://inkscape.org/', '1.1', (SELECT applicationCategory_id FROM applicationCategory WHERE name = 'Bildbearbeitung'), (SELECT applicationType_id FROM applicationType WHERE name = 'Applikation'), 70, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Entwicklung')),
('Unity', 'Unity ist eine plattformübergreifende Game Engine, die zur Entwicklung von Videospielen für PC, Konsolen, Mobilgeräte und Websites verwendet wird.', 'Unity3D', 'Windows, macOS, Linux, Android, iOS, WebGL', 'Unity, Unity3D, Game Engine, 3D Game Development', 'https://unity.com/', '2020.3.19f1', (SELECT applicationCategory_id FROM applicationCategory WHERE name = 'Spielentwicklung'), (SELECT applicationType_id FROM applicationType WHERE name = 'Applikation'), 65, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Entwicklung')),
('Pygame', 'Pygame ist eine Sammlung von Python-Modulen, die für die Entwicklung von Videospielen entwickelt wurden.', 'Pygame-Bibliothek', 'Windows, macOS, Linux', 'Python, Pygame, Game Development, Game Programming, 2D-Spiele', 'https://www.pygame.org/', '2.0.1', (SELECT applicationCategory_id FROM applicationCategory WHERE name = 'Spielentwicklung'), (SELECT applicationType_id FROM applicationType WHERE name = 'Tool'), 45, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Entwicklung')),
('Panda3D', 'Panda3D ist eine Game Engine, ein Framework für 3D-Rendering und Game Development für Python- und C++-Programme.', 'Panda3D-Engine', 'Windows, macOS, Linux', 'Python, Panda3D, Game Engine, Game Development, 3D-Spiele', 'https://www.panda3d.org/', '1.10.11', (SELECT applicationCategory_id FROM applicationCategory WHERE name = 'Spielentwicklung'), (SELECT applicationType_id FROM applicationType WHERE name = 'Tool'), 40, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Entwicklung')),
('React', 'React ist eine JavaScript-Bibliothek zum Erstellen von Benutzeroberflächen.', 'ReactJS', 'Plattformübergreifend', 'React, ReactJS, JavaScript-Bibliothek, Front-End-Entwicklung', 'https://reactjs.org/', '17.0.2', (SELECT applicationCategory_id FROM applicationCategory WHERE name = 'Frontend'), (SELECT applicationType_id FROM applicationType WHERE name = 'Tool'), 60, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Entwicklung')),
('Vue.js', 'Vue.js ist ein Open-Source-JavaScript-Framework zum Erstellen von Benutzeroberflächen und Single-Page-Anwendungen.', 'VueJS', 'Plattformübergreifend', 'Vue.js, VueJS, JavaScript-Framework, Front-End-Entwicklung', 'https://vuejs.org/', '3.2.29', (SELECT applicationCategory_id FROM applicationCategory WHERE name = 'Frontend'), (SELECT applicationType_id FROM applicationType WHERE name = 'Tool'), 45, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Entwicklung')),
('Selenium', 'Selenium ist eine Suite von Tools zum Automatisieren von Webbrowsern auf vielen Plattformen.', 'Selenium WebDriver', 'Plattformübergreifend', 'Selenium, Selenium WebDriver, Automatisierte Tests, Webtests', 'https://www.selenium.dev/', '4.1.0', (SELECT applicationCategory_id FROM applicationCategory WHERE name = 'Frontend'), (SELECT applicationType_id FROM applicationType WHERE name = 'Tool'), 75, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Entwicklung')),
('Swing', 'Swing ist ein GUI-Widget-Toolkit für Java, das die Erstellung von Desktop-Anwendungen mit grafischer Benutzeroberfläche ermöglicht.', 'Java Swing', 'Plattformübergreifend', 'Swing, Java, GUI, Bibliothek', 'https://docs.oracle.com/javase/tutorial/uiswing/', 'Java 16', (SELECT applicationCategory_id FROM applicationCategory WHERE name = 'Backend'), (SELECT applicationType_id FROM applicationType WHERE name = 'Programmiersprache'), 40, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Entwicklung')),
('GlassFish', 'GlassFish ist ein kostenloses und Open-Source-Application-Server für das Erstellen und Bereitstellen von Webanwendungen auf der Java-EE-Plattform.', 'GlassFish Server', 'Cross-Plattform', 'GlassFish, Anwendungsserver, Java EE', 'https://javaee.github.io/glassfish/', '5.1.0', (SELECT applicationCategory_id FROM applicationCategory WHERE name = 'Backend'), (SELECT applicationType_id FROM applicationType WHERE name = 'Umgebung'), 25, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Entwicklung')),
('Tomcat7', 'Apache Tomcat 7 ist eine Open-Source-Softwareimplementierung der Java Servlet, JavaServer Pages, Java Expression Language und Java WebSocket-Technologien.', 'Apache Tomcat 7', 'Cross-Plattform', 'Tomcat, Anwendungsserver, Servlet-Container', 'http://tomcat.apache.org/tomcat-7.0-doc/', '7.0.107', (SELECT applicationCategory_id FROM applicationCategory WHERE name = 'Backend'), (SELECT applicationType_id FROM applicationType WHERE name = 'Umgebung'), 35, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Entwicklung')),
('Word', 'Microsoft Word ist eine Textverarbeitungssoftware, die von Microsoft entwickelt und veröffentlicht wurde.', 'Microsoft Word', 'Windows, macOS, iOS, Android', 'Microsoft Word, Textverarbeitung, Texteditor', 'https://www.microsoft.com/de-de/microsoft-365/word', 'Microsoft Word 2021', (SELECT applicationCategory_id FROM applicationCategory WHERE name = 'Office'), (SELECT applicationType_id FROM applicationType WHERE name = 'Applikation'), 95, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Entwicklung')),
('Excel', 'Microsoft Excel ist eine Tabellenkalkulationssoftware, die von Microsoft entwickelt und veröffentlicht wurde.', 'Microsoft Excel', 'Windows, macOS, iOS, Android', 'Microsoft Excel, Tabellenkalkulation, Berechnung, Datenanalyse', 'https://www.microsoft.com/de-de/microsoft-365/excel', 'Microsoft Excel 2021', (SELECT applicationCategory_id FROM applicationCategory WHERE name = 'Office'), (SELECT applicationType_id FROM applicationType WHERE name = 'Applikation'), 85, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Entwicklung')),
('PowerPoint', 'Microsoft PowerPoint ist eine Präsentationssoftware, die von Microsoft entwickelt und veröffentlicht wurde.', 'Microsoft PowerPoint', 'Windows, macOS, iOS, Android', 'Microsoft PowerPoint, Präsentation, Slideshow', 'https://www.microsoft.com/de-de/microsoft-365/powerpoint', 'Microsoft PowerPoint 2021', (SELECT applicationCategory_id FROM applicationCategory WHERE name = 'Office'), (SELECT applicationType_id FROM applicationType WHERE name = 'Applikation'), 95, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Entwicklung')),
('Access', 'Microsoft Access ist ein Datenbankmanagementsystem, das von Microsoft entwickelt und veröffentlicht wurde.', 'Microsoft Access', 'Windows', 'Microsoft Access, Datenbankmanagementsystem, relationale Datenbank', 'https://www.microsoft.com/de-de/microsoft-365/access', 'Microsoft Access 2021', (SELECT applicationCategory_id FROM applicationCategory WHERE name = 'Office'), (SELECT applicationType_id FROM applicationType WHERE name = 'Applikation'), 20, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Entwicklung')),
('HTML', 'HTML (Hypertext Markup Language) ist eine Auszeichnungssprache, die zur Erstellung der Struktur und des Inhalts von Webseiten verwendet wird.', 'Hypertext Markup Language', 'plattformübergreifend', 'HTML, Hypertext Markup Language, Webentwicklung', 'https://developer.mozilla.org/de/docs/Web/HTML', 'HTML5', (SELECT applicationCategory_id FROM applicationCategory WHERE name = 'Frontend'), (SELECT applicationType_id FROM applicationType WHERE name = 'Programmiersprache'), 100, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Entwicklung')),
('CSS', 'CSS (Cascading Style Sheets) ist eine Formatierungssprache, die verwendet wird, um die Darstellung eines in HTML oder XML geschriebenen Dokuments zu beschreiben.', 'Cascading Style Sheets', 'plattformübergreifend', 'CSS, Cascading Style Sheets, Formatierungssprache, Webentwicklung', 'https://developer.mozilla.org/de/docs/Web/CSS', 'CSS3', (SELECT applicationCategory_id FROM applicationCategory WHERE name = 'Frontend'), (SELECT applicationType_id FROM applicationType WHERE name = 'Programmiersprache'), 100, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Entwicklung')),
('SCSS', 'SCSS (Sassy CSS) ist eine Vorverarbeitungsskriptsprache, die eine Erweiterung von CSS darstellt und Funktionen wie Variablen, Mixins und Verschachtelung hinzufügt.', 'Syntactically Awesome Style Sheets', 'plattformübergreifend', 'SCSS, Sassy CSS, Formatierungssprache, Webentwicklung', 'https://sass-lang.com/documentation', 'SCSS', (SELECT applicationCategory_id FROM applicationCategory WHERE name = 'Frontend'), (SELECT applicationType_id FROM applicationType WHERE name = 'Programmiersprache'), 90, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Entwicklung')),
('JavaScript', 'JavaScript ist eine objektorientierte, höhere Programmiersprache, die verwendet wird, um interaktive Effekte in Webbrowsern zu erzeugen.', 'JS', 'plattformübergreifend', 'JavaScript, JS, Programmiersprache, Webentwicklung', 'https://developer.mozilla.org/de/docs/Web/JavaScript', 'ES12', (SELECT applicationCategory_id FROM applicationCategory WHERE name = 'Frontend'), (SELECT applicationType_id FROM applicationType WHERE name = 'Programmiersprache'), 65, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Entwicklung')),
('TypeScript', 'TypeScript ist ein typisierter Überbau von JavaScript, der zu normalem JavaScript kompiliert.', 'TS', 'plattformübergreifend', 'TypeScript, TS, Programmiersprache, Webentwicklung', 'https://www.typescriptlang.org/', '4.4', (SELECT applicationCategory_id FROM applicationCategory WHERE name = 'Office'), (SELECT applicationType_id FROM applicationType WHERE name = 'Frontend'), 60, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Entwicklung')),
('PHP', 'PHP (Hypertext Preprocessor) ist eine serverseitige Skriptsprache, die zur Erstellung dynamischer Webseiten verwendet wird.', 'Hypertext Preprocessor', 'plattformübergreifend', 'PHP, Hypertext Preprocessor, Programmiersprache, Webentwicklung', 'https://www.php.net/', '8.1', (SELECT applicationCategory_id FROM applicationCategory WHERE name = 'Backend'), (SELECT applicationType_id FROM applicationType WHERE name = 'Programmiersprache'), 50, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Entwicklung')),
('Java', 'Java ist eine objektorientierte Programmiersprache, die darauf ausgelegt ist, so wenige Implementierungsabhängigkeiten wie möglich zu haben.', 'Java SE', 'plattformübergreifend', 'Java, Java SE, Programmiersprache, Softwareentwicklung', 'https://www.java.com/de/', '17', (SELECT applicationCategory_id FROM applicationCategory WHERE name = 'Backend'), (SELECT applicationType_id FROM applicationType WHERE name = 'Programmiersprache'), 80, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Entwicklung')),
('Python', 'Python ist eine interpretierte Hochsprachen-Programmiersprache, die Code-Lesbarkeit und Benutzerfreundlichkeit betont.', 'Python 3', 'plattformübergreifend', 'Python, Python 3, Programmiersprache, Softwareentwicklung', 'https://www.python.org/', '3.10', (SELECT applicationCategory_id FROM applicationCategory WHERE name = 'Backend'), (SELECT applicationType_id FROM applicationType WHERE name = 'Programmiersprache'), 80, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Entwicklung')),
('MySQL', 'MySQL ist ein beliebtes, Open-Source-Relationales-Datenbankmanagementsystem.', 'Structured Query Language', 'Cross-platform', 'MySQL, Strukturierte Abfragesprache, Datenbankmanagementsystem, Softwareentwicklung', 'https://www.mysql.com/', '8.0', (SELECT applicationCategory_id FROM applicationCategory WHERE name = 'Datenbankentwicklung'), (SELECT applicationType_id FROM applicationType WHERE name = 'Programmiersprache'), 90, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Entwicklung')),
('C#', 'C# ist eine moderne, multiparadigmatische Programmiersprache, die von Microsoft entwickelt wurde.', 'C Sharp', 'Windows', 'C#, C Sharp, Programmiersprache, Softwareentwicklung', 'https://docs.microsoft.com/de-de/dotnet/csharp/', '10.0', (SELECT applicationCategory_id FROM applicationCategory WHERE name = 'Backend'), (SELECT applicationType_id FROM applicationType WHERE name = 'Programmiersprache'), 65, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Entwicklung')),
('Bash', 'Bash ist ein Shell-Programm für Unix-ähnliche Betriebssysteme, das Benutzern ermöglicht, Befehle einzugeben, um mit dem Betriebssystem zu interagieren.', 'Bourne-Again SHell', 'Unix-ähnlich', 'Bash, Shell, Befehlszeilenschnittstelle, CLI, Unix-ähnlich', 'https://www.gnu.org/software/bash/', 'Bash 5.1.8', (SELECT applicationCategory_id FROM applicationCategory WHERE name = 'Datenbearbeitung'), (SELECT applicationType_id FROM applicationType WHERE name = 'Programmiersprache'), 45, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Entwicklung')),
('FreeMarker', 'FreeMarker ist ein Template-Engine, die die Erstellung dynamischer Webseiten durch die Generierung von Textausgaben auf der Grundlage von Vorlagen ermöglicht.', 'Apache FreeMarker', 'Cross-platform', 'FreeMarker, Template Engine, Java', 'https://freemarker.apache.org/', '2.3.31', (SELECT applicationCategory_id FROM applicationCategory WHERE name = 'Backend'), (SELECT applicationType_id FROM applicationType WHERE name = 'Programmiersprache'), 85, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Entwicklung')),
('PostgreSQL', 'PostgreSQL ist ein leistungsstarkes Open-Source-Relationales-Datenbankmanagementsystem.', 'Postgres', 'Cross-platform', 'PostgreSQL, Postgres, Strukturierte Abfragesprache, Datenbankmanagementsystem, Softwareentwicklung', 'https://www.postgresql.org/', '14.0', (SELECT applicationCategory_id FROM applicationCategory WHERE name = 'Datenbankentwicklung'), (SELECT applicationType_id FROM applicationType WHERE name = 'Programmiersprache'), 45, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Entwicklung')),
('Ableton Live 10', 'Ableton Live 10 ist eine digitale Audio-Workstation für macOS und Windows. Es wird hauptsächlich zum Komponieren, Aufnehmen, Remixen und Arrangieren von Musik verwendet.', 'Ableton', 'macOS, Windows', 'Ableton Live 10, DAW, Musikproduktion, Audio-Workstation', 'https://www.ableton.com/de/live/', '10.1.30', (SELECT applicationCategory_id FROM applicationCategory WHERE name = 'Musik'), (SELECT applicationType_id FROM applicationType WHERE name = 'Applikation'), 85, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Persönlich')),
('FL Studio', 'FL Studio ist eine digitale Audio-Workstation für Windows. Es wird hauptsächlich zum Erstellen und Produzieren von Musik verwendet.', 'FruityLoops', 'Windows', 'FL Studio, FruityLoops, DAW, Musikproduktion, Audio-Workstation', 'https://www.image-line.com/flstudio/', '20.8.4', (SELECT applicationCategory_id FROM applicationCategory WHERE name = 'Musik'), (SELECT applicationType_id FROM applicationType WHERE name = 'Applikation'), 60, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Persönlich'));

INSERT INTO hobbyCategory (name, description) VALUES
('Kunst',NULL),
('Musik',NULL),
('Pädagogik',NULL),
('Sport',NULL),
('Informatik',NULL),
('Natur',NULL);

INSERT INTO hobby (name, knowledgePercent, skillCategory_id) VALUES
('Origami', 90, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Persönlich')),
('Zeichnen', 85, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Persönlich')),
('Graffiti', 70, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Persönlich')),
('Holzarbeit', 65, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Persönlich')),
('Nähen', 85, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Persönlich')),
('Gitarre', 45, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Persönlich')),
('Bass', 40, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Persönlich')),
('Schlagzeug', 30, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Persönlich')),
('Produzieren', 65, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Persönlich')),
('Hort', 50, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Persönlich')),
('Fahrrad', 80, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Persönlich')),
('Volleyball', 65, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Persönlich')),
('Skateboard', 45, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Persönlich')),
('Tischtennis', 80, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Persönlich')),
('Wandern', 80, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Persönlich')),
('CEVI', 70, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Persönlich')),
('Webentwicklung', 85, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Persönlich')),
('Spielentwicklung', 50, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Persönlich')),
('Bildbearbeitung', 45, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Persönlich')),
('Englischunterricht', 80, (SELECT category_id FROM category WHERE name = 'Persönlich')),
('Mathematikunterricht', 80, (SELECT category_id FROM category WHERE name = 'Persönlich')),
('Informatikunterricht', 80, (SELECT category_id FROM category WHERE name = 'Persönlich')),;

INSERT INTO hobby_hobbyCategory (hobby_id, hobbyCategory_id) VALUES
((SELECT hobby_id FROM hobby WHERE name = 'Origami'), (SELECT hobbyCategory_id FROM hobbyCategory WHERE name = 'Kunst')),
((SELECT hobby_id FROM hobby WHERE name = 'Zeichnen'), (SELECT hobbyCategory_id FROM hobbyCategory WHERE name = 'Kunst')),
((SELECT hobby_id FROM hobby WHERE name = 'Graffiti'), (SELECT hobbyCategory_id FROM hobbyCategory WHERE name = 'Kunst')),
((SELECT hobby_id FROM hobby WHERE name = 'Holzarbeit'), (SELECT hobbyCategory_id FROM hobbyCategory WHERE name = 'Kunst')),
((SELECT hobby_id FROM hobby WHERE name = 'Nähen'), (SELECT hobbyCategory_id FROM hobbyCategory WHERE name = 'Kunst')),
((SELECT hobby_id FROM hobby WHERE name = 'Gitarre'), (SELECT hobbyCategory_id FROM hobbyCategory WHERE name = 'Musik')),
((SELECT hobby_id FROM hobby WHERE name = 'Bass'), (SELECT hobbyCategory_id FROM hobbyCategory WHERE name = 'Musik')),
((SELECT hobby_id FROM hobby WHERE name = 'Schlagzeug'), (SELECT hobbyCategory_id FROM hobbyCategory WHERE name = 'Musik')),
((SELECT hobby_id FROM hobby WHERE name = 'Ableton'), (SELECT hobbyCategory_id FROM hobbyCategory WHERE name = 'Musik')),
((SELECT hobby_id FROM hobby WHERE name = 'Ableton'), (SELECT hobbyCategory_id FROM hobbyCategory WHERE name = 'Informatik')),
((SELECT hobby_id FROM hobby WHERE name = 'Englischunterricht'), (SELECT hobbyCategory_id FROM hobbyCategory WHERE name = 'Pädagogik')),
((SELECT hobby_id FROM hobby WHERE name = 'Mathematikunterricht'), (SELECT hobbyCategory_id FROM hobbyCategory WHERE name = 'Pädagogik')),
((SELECT hobby_id FROM hobby WHERE name = 'Informatikunterricht'), (SELECT hobbyCategory_id FROM hobbyCategory WHERE name = 'Pädagogik')),
((SELECT hobby_id FROM hobby WHERE name = 'Informatikunterricht'), (SELECT hobbyCategory_id FROM hobbyCategory WHERE name = 'Informatik')),
((SELECT hobby_id FROM hobby WHERE name = 'Hort'), (SELECT hobbyCategory_id FROM hobbyCategory WHERE name = 'Pädagogik')),
((SELECT hobby_id FROM hobby WHERE name = 'Fahrrad'), (SELECT hobbyCategory_id FROM hobbyCategory WHERE name = 'Sport')),
((SELECT hobby_id FROM hobby WHERE name = 'Volleyball'), (SELECT hobbyCategory_id FROM hobbyCategory WHERE name = 'Sport')),
((SELECT hobby_id FROM hobby WHERE name = 'Skateboard'), (SELECT hobbyCategory_id FROM hobbyCategory WHERE name = 'Sport')),
((SELECT hobby_id FROM hobby WHERE name = 'Tischtennis'), (SELECT hobbyCategory_id FROM hobbyCategory WHERE name = 'Sport')),
((SELECT hobby_id FROM hobby WHERE name = 'Wandern'), (SELECT hobbyCategory_id FROM hobbyCategory WHERE name = 'Natur')),
((SELECT hobby_id FROM hobby WHERE name = 'Wandern'), (SELECT hobbyCategory_id FROM hobbyCategory WHERE name = 'Sport')),
((SELECT hobby_id FROM hobby WHERE name = 'CEVI'), (SELECT hobbyCategory_id FROM hobbyCategory WHERE name = 'Natur')),
((SELECT hobby_id FROM hobby WHERE name = 'Wandern'), (SELECT hobbyCategory_id FROM hobbyCategory WHERE name = 'Sport')),
((SELECT hobby_id FROM hobby WHERE name = 'Webentwicklung'), (SELECT hobbyCategory_id FROM hobbyCategory WHERE name = 'Informatik')),
((SELECT hobby_id FROM hobby WHERE name = 'Spielentwicklung'), (SELECT hobbyCategory_id FROM hobbyCategory WHERE name = 'Informatik')),
((SELECT hobby_id FROM hobby WHERE name = 'Bildbearbeitung'), (SELECT hobbyCategory_id FROM hobbyCategory WHERE name = 'Informatik')),
((SELECT hobby_id FROM hobby WHERE name = 'Bildbearbeitung'), (SELECT hobbyCategory_id FROM hobbyCategory WHERE name = 'Kunst'));

INSERT INTO project (name, description, thumbnail, image, url, github, date, client_id) VALUES
();