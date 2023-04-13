INSERT INTO skillCategory (name, description) VALUES
    ('Kunst',NULL),
    ('Pädagogik',NULL),
    ('Gesundheit',NULL),
    ('Informatik',NULL),
    ('Allgemein',NULL);

INSERT INTO skillSubCategory (name, description, skillCategory_id) VALUES
    ('Musik', NULL, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Kunst')),
    ('Gestalten', NULL, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Kunst')),
    ('Werken', NULL, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Kunst')),
    ('Nähen', NULL, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Kunst')),
    ('Schule', NULL, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Pädagogik')),
    ('Verein', NULL, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Pädagogik')),
    ('Einzelunterricht', NULL, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Pädagogik')),
    ('Natur', NULL, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Gesundheit')),
    ('Sport', NULL, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Gesundheit')),
    ('Ernährung', NULL, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Gesundheit')),
    ('Geist', NULL, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Gesundheit')),
    ('Frontend', 'Erstellung von benutzerorientierten Websites oder Webanwendungen unter Verwendung von Technologien wie HTML, CSS und JavaScript.', (SELECT skillCategory_id FROM skillCategory WHERE name = 'Informatik')),
    ('Backend', 'Erstellung von serverseitiger Logik und Integration von Datenbanken für Webanwendungen.', (SELECT skillCategory_id FROM skillCategory WHERE name = 'Informatik')),
    ('Mobile App Entwicklung', 'Erstellung von Anwendungen für mobile Geräte wie Smartphones und Tablets.', (SELECT skillCategory_id FROM skillCategory WHERE name = 'Informatik')),
    ('Spielentwicklung', 'Erstellung von Videospielen für Konsolen, PC oder mobile Geräte unter Verwendung verschiedener Programmiersprachen und Spiele-Engines.', (SELECT skillCategory_id FROM skillCategory WHERE name = 'Informatik')),
    ('Datenbankentwicklung', 'Entwurf und Implementierung von Datenbanken zur Speicherung und Organisation großer Datenmengen.', (SELECT skillCategory_id FROM skillCategory WHERE name = 'Informatik')),
    ('Datenmanagement', 'Entwurf und Implementierung von Anwendungen zur Manipulation und Organisation großer Datenmengen.', (SELECT skillCategory_id FROM skillCategory WHERE name = 'Informatik')),
    ('Bildbearbeitung', NULL, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Informatik')),
    ('Office', NULL, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Informatik')),
    ('SEO', NULL, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Informatik')),
    ('Datenbearbeitung', NULL, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Informatik')),
    ('Softskills', NULL, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Allgemein')),
    ('Sprachen', NULL, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Allgemein')),
    ('Wissen', NULL, (SELECT skillCategory_id FROM skillCategory WHERE name = 'Allgemein'));

INSERT INTO knowledge (name, description, knowledgePercent, hobby) VALUES
    ('Web Accessibility', NULL, 50, FALSE),
    ('SEO', NULL, 50, FALSE),
    ('Mathematik', NULL, 75, TRUE),
    ('Geschichte', NULL, 45, TRUE),
    ('Philosophie', NULL, 80, TRUE),
    ('Politik', NULL, 65, TRUE),
    ('Geographie', NULL, 50, FALSE),
    ('Biologie', NULL, 65, TRUE),
    ('Chemie', NULL, 60, TRUE),
    ('Physik', NULL, 55, FALSE),
    ('Hauswirtschaft', NULL, 95, TRUE);

INSERT INTO skill_skillSubCategory (skill_id, skillSubCategory_id) VALUES
    ((SELECT skill_id FROM skill WHERE name = 'SEO'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Frontend')),
    ((SELECT skill_id FROM skill WHERE name = 'SEO'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Backend')),
    ((SELECT skill_id FROM skill WHERE name = 'Web Accessibility'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Frontend')),
    ((SELECT skill_id FROM skill WHERE name = 'Mathematik'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Wissen')),
    ((SELECT skill_id FROM skill WHERE name = 'Geschichte'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Wissen')),
    ((SELECT skill_id FROM skill WHERE name = 'Philosophie'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Wissen')),
    ((SELECT skill_id FROM skill WHERE name = 'Politik'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Wissen')),
    ((SELECT skill_id FROM skill WHERE name = 'Geographie'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Wissen')),
    ((SELECT skill_id FROM skill WHERE name = 'Biologie'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Wissen')),
    ((SELECT skill_id FROM skill WHERE name = 'Chemie'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Wissen')),
    ((SELECT skill_id FROM skill WHERE name = 'Physik'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Wissen')),
    ((SELECT skill_id FROM skill WHERE name = 'Hauswirtschaft'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Wissen'));

INSERT INTO skill (name, description, knowledgePercent, hobby) VALUES
    ('Selbstständigkeit', NULL, 100, FALSE),
    ('Teamwork', NULL, 80, FALSE),
    ('Logisches Denken', NULL, 90, FALSE),
    ('Kritikfähigkeit', NULL, 95, FALSE),
    ('Kreativität', NULL, 100, FALSE),
    ('Kommunikation', NULL, 75, FALSE),
    ('Lernfähigkeit', NULL, 90, FALSE),
    ('Organisation', NULL, 65, FALSE),
    ('Empathie', NULL, 95, FALSE);

INSERT INTO skill_skillSubCategory (skill_id, skillSubCategory_id, hobby) VALUES
    ((SELECT skill_id FROM skill WHERE name = 'Selbstständigkeit'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Softskills')),
    ((SELECT skill_id FROM skill WHERE name = 'Teamwork'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Softskills')),
    ((SELECT skill_id FROM skill WHERE name = 'Logisches Denken'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Softskills')),
    ((SELECT skill_id FROM skill WHERE name = 'Kritikfähigkeit'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Softskills')),
    ((SELECT skill_id FROM skill WHERE name = 'Kreativität'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Softskills')),
    ((SELECT skill_id FROM skill WHERE name = 'Kommunikation'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Softskills')),
    ((SELECT skill_id FROM skill WHERE name = 'Lernfähigkeit'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Softskills')),
    ((SELECT skill_id FROM skill WHERE name = 'Organisation'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Softskills')),
    ((SELECT skill_id FROM skill WHERE name = 'Empathie'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Softskills'));

INSERT INTO language (name, description, shortName, knowledgePercent, proficiencyLevel) VALUES
    ('Deutsch', 'Seit Geburt', 'DE', 100, 'C2', FALSE),
    ('Englisch', 'Vatersprache', 'EN', 90, 'C1', FALSE),
    ('Russisch', 'Muttersprache', 'RU', 75, 'B2', FALSE),
    ('Französisch', 'Schulwissen', 'FR', 50, 'B1', FALSE);

INSERT INTO skill_skillSubCategory (skill_id, skillSubCategory_id) VALUES
    ((SELECT skill_id FROM skill WHERE name = 'Deutsch'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Sprachen')),
    ((SELECT skill_id FROM skill WHERE name = 'Englisch'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Sprachen')),
    ((SELECT skill_id FROM skill WHERE name = 'Russisch'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Sprachen')),
    ((SELECT skill_id FROM skill WHERE name = 'Französisch'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Sprachen'));

INSERT INTO country(name, shortName) VALUES 
    ('Schweiz', 'CH'), 
    ('Amerika', 'US'), 
    ('Russland', 'RU'), 
    ('Frankreich', 'FR');

INSERT INTO country_language (language_id, country_id) VALUES 
    ((SELECT language_id from language WHERE shortName = 'DE'), (SELECT country_id from country WHERE shortName = 'CH')),
    ((SELECT language_id from language WHERE shortName = 'EN'), (SELECT country_id from country WHERE shortName = 'US')),
    ((SELECT language_id from language WHERE shortName = 'RU'), (SELECT country_id from country WHERE shortName = 'RU')),
    ((SELECT language_id from language WHERE shortName = 'FR'), (SELECT country_id from country WHERE shortName = 'FR'));

INSERT INTO applicationType (name, name_e, description) VALUES
    ('Programmiersprache', 'Programming language',NULL),
    ('Umgebung', 'Environment',NULL),
    ('Applikation', 'Application',NULL),
    ('Rahmenwerk', 'Framework',NULL),
    ('Bibliothek', 'Library',NULL);

INSERT INTO operatingSystem (name, description, url) VALUES 
   ('Windows', 'Ein beliebtes Betriebssystem für Personalcomputer.', 'https://www.microsoft.com/windows'),
   ('macOS', 'Das Betriebssystem für Apples Macintosh-Reihe von Personalcomputern.', 'https://www.apple.com/macos'),
   ('Linux', 'Ein kostenloses und quelloffenes Betriebssystem, das viele Server und andere Geräte antreibt.', 'https://www.linux.org');


INSERT INTO application (hobby, name, description, alternateName, keywords, url, version, applicationType_id, knowledgePercent) VALUES
    (TRUE, 'Vim', 'Vim ist ein freier Texteditor für die Arbeit mit einer Vi-kompatiblen Befehlszeilenschnittstelle.', 'Vi IMproved', 'Vim, Texteditor, Vi, Befehlszeile', 'https://www.vim.org/', '8.2.3401', (SELECT applicationType_id FROM applicationType WHERE name = 'Applikation'), 75),
    (TRUE, 'GIMP', 'GIMP ist ein kostenloses, plattformübergreifendes Bildbearbeitungsprogramm für die Erstellung und Bearbeitung von digitalen Bildern.', 'GNU Image Manipulation Program', 'GIMP, Bildbearbeitung, Photoshop-Alternative', 'https://www.gimp.org/', '2.10.28', (SELECT applicationType_id FROM applicationType WHERE name = 'Applikation'), 80),
    (TRUE, 'Adobe Photoshop', 'Adobe Photoshop ist ein professionelles Bildbearbeitungsprogramm für Kreative.', 'Photoshop, Adobe Creative Suite', 'Bildbearbeitung, Grafikdesign, Kreativität, Adobe Creative Cloud', 'https://www.adobe.com/products/photoshop.html', '2022', (SELECT applicationType_id FROM applicationType WHERE name = 'Applikation'), 75),
    (TRUE, 'Inkscape', 'Inkscape ist ein professionelles Vektorgrafikprogramm, das eine kostenlose und Open-Source-Alternative zu Adobe Illustrator bietet.', 'Inkscape', 'Inkscape, Vektorgrafik, Open-Source, Adobe Illustrator', 'https://inkscape.org/', '1.1', (SELECT applicationType_id FROM applicationType WHERE name = 'Applikation'), 70),
    (TRUE, 'Unity', 'Unity ist eine plattformübergreifende Game Engine, die zur Entwicklung von Videospielen für PC, Konsolen, Mobilgeräte und Websites verwendet wird.', 'Unity3D', 'Unity, Unity3D, Game Engine, 3D Game Development', 'https://unity.com/', '2020.3.19f1', (SELECT applicationType_id FROM applicationType WHERE name = 'Applikation'), 65),
    (TRUE, 'Pygame', 'Pygame ist eine Sammlung von Python-Modulen, die für die Entwicklung von Videospielen entwickelt wurden.', 'Pygame-Bibliothek', 'Python, Pygame, Game Development, Game Programming, 2D-Spiele', 'https://www.pygame.org/', '2.0.1', (SELECT applicationType_id FROM applicationType WHERE name = 'Tool'), 45),
    (TRUE, 'Panda3D', 'Panda3D ist eine Game Engine, ein Framework für 3D-Rendering und Game Development für Python- und C++-Programme.', 'Panda3D-Engine', 'Python, Panda3D, Game Engine, Game Development, 3D-Spiele', 'https://www.panda3d.org/', '1.10.11', (SELECT applicationType_id FROM applicationType WHERE name = 'Tool'), 40),
    (TRUE, 'React', 'React ist eine JavaScript-Bibliothek zum Erstellen von Benutzeroberflächen.', 'ReactJS', 'React, ReactJS, JavaScript-Bibliothek, Front-End-Entwicklung', 'https://reactjs.org/', '17.0.2', (SELECT applicationType_id FROM applicationType WHERE name = 'Tool'), 60),
    (TRUE, 'Vue.js', 'Vue.js ist ein Open-Source-JavaScript-Framework zum Erstellen von Benutzeroberflächen und Single-Page-Anwendungen.', 'VueJS', 'Vue.js, VueJS, JavaScript-Framework, Front-End-Entwicklung', 'https://vuejs.org/', '3.2.29', (SELECT applicationType_id FROM applicationType WHERE name = 'Tool'), 45),
    (TRUE, 'Selenium', 'Selenium ist eine Suite von Tools zum Automatisieren von Webbrowsern auf vielen Plattformen.', 'Selenium WebDriver', 'Selenium, Selenium WebDriver, Automatisierte Tests, Webtests', 'https://www.selenium.dev/', '4.1.0', (SELECT applicationType_id FROM applicationType WHERE name = 'Tool'), 75),
    (FALSE, 'Swing', 'Swing ist ein GUI-Widget-Toolkit für Java, das die Erstellung von Desktop-Anwendungen mit grafischer Benutzeroberfläche ermöglicht.', 'Java Swing', 'Swing, Java, GUI, Bibliothek', 'https://docs.oracle.com/javase/tutorial/uiswing/', 'Java 16', (SELECT applicationType_id FROM applicationType WHERE name = 'Programmiersprache'), 40),
    (FALSE, 'GlassFish', 'GlassFish ist ein kostenloses und Open-Source-Application-Server für das Erstellen und Bereitstellen von Webanwendungen auf der Java-EE-Plattform.', 'GlassFish Server', 'GlassFish, Anwendungsserver, Java EE', 'https://javaee.github.io/glassfish/', '5.1.0', (SELECT applicationType_id FROM applicationType WHERE name = 'Umgebung'), 25),
    (FALSE, 'Tomcat7', 'Apache Tomcat 7 ist eine Open-Source-Softwareimplementierung der Java Servlet, JavaServer Pages, Java Expression Language und Java WebSocket-Technologien.', 'Apache Tomcat 7', 'Tomcat, Anwendungsserver, Servlet-Container', 'http://tomcat.apache.org/tomcat-7.0-doc/', '7.0.107', (SELECT applicationType_id FROM applicationType WHERE name = 'Umgebung'), 35),
    (TRUE, 'Word', 'Microsoft Word ist eine Textverarbeitungssoftware, die von Microsoft entwickelt und veröffentlicht wurde.', 'Microsoft Word', 'Microsoft Word, Textverarbeitung, Texteditor', 'https://www.microsoft.com/de-de/microsoft-365/word', 'Microsoft Word 2021', (SELECT applicationType_id FROM applicationType WHERE name = 'Applikation'), 95),
    (TRUE, 'Excel', 'Microsoft Excel ist eine Tabellenkalkulationssoftware, die von Microsoft entwickelt und veröffentlicht wurde.', 'Microsoft Excel', 'Microsoft Excel, Tabellenkalkulation, Berechnung, Datenanalyse', 'https://www.microsoft.com/de-de/microsoft-365/excel', 'Microsoft Excel 2021', (SELECT applicationType_id FROM applicationType WHERE name = 'Applikation'), 85),
    (FALSE, 'PowerPoint', 'Microsoft PowerPoint ist eine Präsentationssoftware, die von Microsoft entwickelt und veröffentlicht wurde.', 'Microsoft PowerPoint', 'Microsoft PowerPoint, Präsentation, Slideshow', 'https://www.microsoft.com/de-de/microsoft-365/powerpoint', 'Microsoft PowerPoint 2021', (SELECT applicationType_id FROM applicationType WHERE name = 'Applikation'), 95),
    (FALSE, 'Access', 'Microsoft Access ist ein Datenbankmanagementsystem, das von Microsoft entwickelt und veröffentlicht wurde.', 'Microsoft Access', 'Microsoft Access, Datenbankmanagementsystem, relationale Datenbank', 'https://www.microsoft.com/de-de/microsoft-365/access', 'Microsoft Access 2021', (SELECT applicationType_id FROM applicationType WHERE name = 'Applikation'), 20),
    (TRUE, 'HTML', 'HTML (Hypertext Markup Language) ist eine Auszeichnungssprache, die zur Erstellung der Struktur und des Inhalts von Webseiten verwendet wird.', 'Hypertext Markup Language', 'HTML, Hypertext Markup Language, Webentwicklung', 'https://developer.mozilla.org/de/docs/Web/HTML', 'HTML5', (SELECT applicationType_id FROM applicationType WHERE name = 'Programmiersprache'), 100),
    (TRUE, 'CSS', 'CSS (Cascading Style Sheets) ist eine Formatierungssprache, die verwendet wird, um die Darstellung eines in HTML oder XML geschriebenen Dokuments zu beschreiben.', 'Cascading Style Sheets', 'CSS, Cascading Style Sheets, Formatierungssprache, Webentwicklung', 'https://developer.mozilla.org/de/docs/Web/CSS', 'CSS3', (SELECT applicationType_id FROM applicationType WHERE name = 'Programmiersprache'), 100),
    (TRUE, 'SCSS', 'SCSS (Sassy CSS) ist eine Vorverarbeitungsskriptsprache, die eine Erweiterung von CSS darstellt und Funktionen wie Variablen, Mixins und Verschachtelung hinzufügt.', 'Syntactically Awesome Style Sheets', 'SCSS, Sassy CSS, Formatierungssprache, Webentwicklung', 'https://sass-lang.com/documentation', 'SCSS', (SELECT applicationType_id FROM applicationType WHERE name = 'Programmiersprache'), 90),
    (TRUE, 'JavaScript', 'JavaScript ist eine objektorientierte, höhere Programmiersprache, die verwendet wird, um interaktive Effekte in Webbrowsern zu erzeugen.', 'JS', 'JavaScript, JS, Programmiersprache, Webentwicklung', 'https://developer.mozilla.org/de/docs/Web/JavaScript', 'ES12', (SELECT applicationType_id FROM applicationType WHERE name = 'Programmiersprache'), 65),
    (TRUE, 'TypeScript', 'TypeScript ist ein typisierter Überbau von JavaScript, der zu normalem JavaScript kompiliert.', 'TS', 'TypeScript, TS, Programmiersprache, Webentwicklung', 'https://www.typescriptlang.org/', '4.4', (SELECT applicationType_id FROM applicationType WHERE name = 'Frontend'), 60),
    (FALSE, 'PHP', 'PHP (Hypertext Preprocessor) ist eine serverseitige Skriptsprache, die zur Erstellung dynamischer Webseiten verwendet wird.', 'Hypertext Preprocessor', 'PHP, Hypertext Preprocessor, Programmiersprache, Webentwicklung', 'https://www.php.net/', '8.1', (SELECT applicationType_id FROM applicationType WHERE name = 'Programmiersprache'), 50),
    (TRUE, 'Java', 'Java ist eine objektorientierte Programmiersprache, die darauf ausgelegt ist, so wenige Implementierungsabhängigkeiten wie möglich zu haben.', 'Java SE', 'Java, Java SE, Programmiersprache, Softwareentwicklung', 'https://www.java.com/de/', '17', (SELECT applicationType_id FROM applicationType WHERE name = 'Programmiersprache'), 80),
    (TRUE, 'Python', 'Python ist eine interpretierte Hochsprachen-Programmiersprache, die Code-Lesbarkeit und Benutzerfreundlichkeit betont.', 'Python 3', 'Python, Python 3, Programmiersprache, Softwareentwicklung', 'https://www.python.org/', '3.10', (SELECT applicationType_id FROM applicationType WHERE name = 'Programmiersprache'), 80),
    (TRUE, 'MySQL', 'MySQL ist ein beliebtes, Open-Source-Relationales-Datenbankmanagementsystem.', 'Structured Query Language', 'MySQL, Strukturierte Abfragesprache, Datenbankmanagementsystem, Softwareentwicklung', 'https://www.mysql.com/', '8.0', (SELECT applicationType_id FROM applicationType WHERE name = 'Programmiersprache'), 90),
    (TRUE, 'C#', 'C# ist eine moderne, multiparadigmatische Programmiersprache, die von Microsoft entwickelt wurde.', 'C Sharp', 'C#, C Sharp, Programmiersprache, Softwareentwicklung', 'https://docs.microsoft.com/de-de/dotnet/csharp/', '10.0', (SELECT applicationType_id FROM applicationType WHERE name = 'Programmiersprache'), 65),
    (TRUE, 'Bash', 'Bash ist ein Shell-Programm für Unix-ähnliche Betriebssysteme, das Benutzern ermöglicht, Befehle einzugeben, um mit dem Betriebssystem zu interagieren.', 'Bourne-Again SHell', 'Bash, Shell, Befehlszeilenschnittstelle, CLI, Unix-ähnlich', 'https://www.gnu.org/software/bash/', 'Bash 5.1.8', (SELECT applicationType_id FROM applicationType WHERE name = 'Programmiersprache'), 45),
    (FALSE, 'FreeMarker', 'FreeMarker ist ein Template-Engine, die die Erstellung dynamischer Webseiten durch die Generierung von Textausgaben auf der Grundlage von Vorlagen ermöglicht.', 'Apache FreeMarker', 'FreeMarker, Template Engine, Java', 'https://freemarker.apache.org/', '2.3.31', (SELECT applicationType_id FROM applicationType WHERE name = 'Programmiersprache'), 85),
    (TRUE, 'PostgreSQL', 'PostgreSQL ist ein leistungsstarkes Open-Source-Relationales-Datenbankmanagementsystem.', 'Postgres', 'PostgreSQL, Postgres, Strukturierte Abfragesprache, Datenbankmanagementsystem, Softwareentwicklung', 'https://www.postgresql.org/', '14.0', (SELECT applicationType_id FROM applicationType WHERE name = 'Programmiersprache'), 45),
    (TRUE, 'Ableton Live 10', 'Ableton Live 10 ist eine digitale Audio-Workstation für macOS und Windows. Es wird hauptsächlich zum Komponieren, Aufnehmen, Remixen und Arrangieren von Musik verwendet.', 'Ableton', 'Ableton Live 10, DAW, Musikproduktion, Audio-Workstation', 'https://www.ableton.com/de/live/', '10.1.30', (SELECT applicationType_id FROM applicationType WHERE name = 'Applikation'), 85),
    (TRUE, 'FL Studio', 'FL Studio ist eine digitale Audio-Workstation für Windows. Es wird hauptsächlich zum Erstellen und Produzieren von Musik verwendet.', 'FruityLoops', 'FL Studio, FruityLoops, DAW, Musikproduktion, Audio-Workstation', 'https://www.image-line.com/flstudio/', '20.8.4', (SELECT applicationType_id FROM applicationType WHERE name = 'Applikation'), 60);

/*INSERT INTO application_operatingSystem (application_id, operatingSystem_id) VALUES
    ((SELECT application_id FROM application WHERE name = 'Vim'), (SELECT operatingSystem_id FROM operatingSystem WHERE name = 'Windows'));*/

INSERT INTO skill_skillSubCategory (skill_id, skillSubCategory_id) VALUES
    ((SELECT skill_id FROM skill WHERE name = 'Vim'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Datenmanagement')),
    ((SELECT skill_id FROM skill WHERE name = 'GIMP'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Bildbearbeitung')),
    ((SELECT skill_id FROM skill WHERE name = 'Adobe Photoshop'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Bildbearbeitung')),
    ((SELECT skill_id FROM skill WHERE name = 'Inkscape'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Bildbearbeitung')),
    ((SELECT skill_id FROM skill WHERE name = 'Unity'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Spielentwicklung')),
    ((SELECT skill_id FROM skill WHERE name = 'Pygame'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Spielentwicklung')),
    ((SELECT skill_id FROM skill WHERE name = 'Panda3D'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Spielentwicklung')),
    ((SELECT skill_id FROM skill WHERE name = 'React'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Backend')),
    ((SELECT skill_id FROM skill WHERE name = 'React'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Frontend')),
    ((SELECT skill_id FROM skill WHERE name = 'Vue.js'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Frontend')),
    ((SELECT skill_id FROM skill WHERE name = 'Selenium'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Frontend')),
    ((SELECT skill_id FROM skill WHERE name = 'Swing'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Frontend')),
    ((SELECT skill_id FROM skill WHERE name = 'GlassFish'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Backend')),
    ((SELECT skill_id FROM skill WHERE name = 'Tomcat7'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Backend')),
    ((SELECT skill_id FROM skill WHERE name = 'Word'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Office')),
    ((SELECT skill_id FROM skill WHERE name = 'Excel'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Office')),
    ((SELECT skill_id FROM skill WHERE name = 'PowerPoint'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Office')),
    ((SELECT skill_id FROM skill WHERE name = 'Access'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Office')),
    ((SELECT skill_id FROM skill WHERE name = 'HTML'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Frontend')),
    ((SELECT skill_id FROM skill WHERE name = 'CSS'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Frontend')),
    ((SELECT skill_id FROM skill WHERE name = 'SCSS'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Frontend')),
    ((SELECT skill_id FROM skill WHERE name = 'JavaScript'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Frontend')),
    ((SELECT skill_id FROM skill WHERE name = 'TypeScript'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Frontend')),
    ((SELECT skill_id FROM skill WHERE name = 'JavaScript'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Backend')),
    ((SELECT skill_id FROM skill WHERE name = 'TypeScript'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Backend')),
    ((SELECT skill_id FROM skill WHERE name = 'PHP'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Backend')),
    ((SELECT skill_id FROM skill WHERE name = 'Java'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Softskills')),
    ((SELECT skill_id FROM skill WHERE name = 'Java'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Backend')),
    ((SELECT skill_id FROM skill WHERE name = 'Java'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Mobile App Entwicklung')),
    ((SELECT skill_id FROM skill WHERE name = 'Python'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Datenmanagement')),
    ((SELECT skill_id FROM skill WHERE name = 'Python'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Spielentwicklung')),
    ((SELECT skill_id FROM skill WHERE name = 'Python'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Backend')),
    ((SELECT skill_id FROM skill WHERE name = 'MySQL'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Datenbankentwicklung')),
    ((SELECT skill_id FROM skill WHERE name = 'C#'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Backend')),
    ((SELECT skill_id FROM skill WHERE name = 'C#'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Spielentwicklung')),
    ((SELECT skill_id FROM skill WHERE name = 'Bash'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Datenmanagement')),
    ((SELECT skill_id FROM skill WHERE name = 'FreeMarker'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Backend')),
    ((SELECT skill_id FROM skill WHERE name = 'FreeMarker'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Frontend')),
    ((SELECT skill_id FROM skill WHERE name = 'PostgreSQL'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Datenbankentwicklung')),
    ((SELECT skill_id FROM skill WHERE name = 'Ableton Live 10'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Musik')),
    ((SELECT skill_id FROM skill WHERE name = 'FL Studio'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Musik'));


INSERT INTO activity (name, knowledgePercent, hobby) VALUES
    ('Origami', 90, TRUE),
    ('Zeichnen', 85, TRUE),
    ('Graffiti', 70, TRUE),
    ('Holzarbeit', 65, TRUE),
    ('Nähen', 85, TRUE),
    ('Gitarre', 45, TRUE),
    ('Bass', 40, TRUE),
    ('Schlagzeug', 30, TRUE),
    ('Produzieren', 65, TRUE),
    ('Hort', 50, TRUE),
    ('Fahrrad', 80, TRUE),
    ('Volleyball', 65, TRUE),
    ('Skateboard', 45, TRUE),
    ('Tischtennis', 80, TRUE),
    ('Wandern', 80, TRUE),
    ('CEVI', 70, TRUE),
    ('Englischunterricht', 80, TRUE),
    ('Mathematikunterricht', 80, TRUE),
    ('Informatikunterricht', 80, TRUE);

INSERT INTO skill_skillSubCategory (skill_id, skillSubsCategory_id) VALUES
    ((SELECT skill_id FROM skill WHERE name = 'Origami'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Gestalten')),
    ((SELECT skill_id FROM skill WHERE name = 'Zeichnen'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Gestalten')),
    ((SELECT skill_id FROM skill WHERE name = 'Graffiti'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Gestalten')),
    ((SELECT skill_id FROM skill WHERE name = 'Holzarbeit'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Werken')),
    ((SELECT skill_id FROM skill WHERE name = 'Nähen'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Nähen')),
    ((SELECT skill_id FROM skill WHERE name = 'Gitarre'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Musik')),
    ((SELECT skill_id FROM skill WHERE name = 'Bass'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Musik')),
    ((SELECT skill_id FROM skill WHERE name = 'Schlagzeug'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Musik')),
    ((SELECT skill_id FROM skill WHERE name = 'Produzieren'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Musik')),
    ((SELECT skill_id FROM skill WHERE name = 'Englischunterricht'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Einzelunterricht')),
    ((SELECT skill_id FROM skill WHERE name = 'Mathematikunterricht'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Einzelunterricht')),
    ((SELECT skill_id FROM skill WHERE name = 'Informatikunterricht'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Einzelunterricht')),
    ((SELECT skill_id FROM skill WHERE name = 'Englischunterricht'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Sprachen')),
    ((SELECT skill_id FROM skill WHERE name = 'Mathematikunterricht'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Wissen')),
    ((SELECT skill_id FROM skill WHERE name = 'Informatikunterricht'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Wissen')),
    ((SELECT skill_id FROM skill WHERE name = 'Hort'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Schule')),
    ((SELECT skill_id FROM skill WHERE name = 'Fahrrad'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Sport')),
    ((SELECT skill_id FROM skill WHERE name = 'Volleyball'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Sport')),
    ((SELECT skill_id FROM skill WHERE name = 'Skateboard'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Sport')),
    ((SELECT skill_id FROM skill WHERE name = 'Tischtennis'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Sport')),
    ((SELECT skill_id FROM skill WHERE name = 'Wandern'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Natur')),
    ((SELECT skill_id FROM skill WHERE name = 'Wandern'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Sport')),
    ((SELECT skill_id FROM skill WHERE name = 'CEVI'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Natur')),
    ((SELECT skill_id FROM skill WHERE name = 'CEVI'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Verein')),
    ((SELECT skill_id FROM skill WHERE name = 'Wandern'), (SELECT skillSubCategory_id FROM skillSubCategory WHERE name = 'Sport'));

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



/*INSERT INTO project (name, description, thumbnail, image, url, github, date, client_id) VALUES
();*/