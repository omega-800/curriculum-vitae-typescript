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