"""
Exercise. Create DataBase 'mydatabase'. Create table 'shop'
"""

CREATE DataBase mydatabase

CREATE TABLE shop (id INTEGER PRIMARY KEY, name TEXT, quantaty INT);

INSERT INTO shop (id, name, quantaty) VALUES
('1', 'Bananas', '10'),
('2', 'Lemons', '20'),
('3', 'Apples', '30'),
('4', 'Plams', '40'),
('5', 'Cherries', '50');

SELECT * FROM shop ORDER BY name;
