"""
Exarcise 2. Add new table 'clients' to database 'mydatabase'
"""

CREATE TABLE Clients (id INTEGER PRIMARY KEY, name TEXT, lastname TEXT, gender TEXT, contry TEXT, city TEXT,
  yearbirth INT, Account INT, VIPclient TEXT);

INSERT INTO Clients (id, name, lastname, gender, contry, city, yearbirth, Account, VIPclient) VALUES
('1', 'Antonio', 'Banderas', 'm', 'Poland', 'Warshawa', '2000', '1000', 'No'),
('2', 'Tonio', 'Deras', 'm', 'Russia', 'Moscow', '1970', '0', 'No'),
('3', 'Max', 'Korte', 'm','Ukraine', 'Kiev', '2004', '10045400', 'Yes'),
('4', 'Antonio', 'Rras', 'm', 'Poland', 'Warshawa', '1988', '356345', 'No'),
('5', 'Andre', 'Same', 'm', 'Poland', 'Poznan', '1956', '34', 'No'),
('6', 'Pedro', 'Kare', 'm', 'Cheh', 'Praha', '1957', '1', 'No'),
('7', 'Karol', 'Kare', 'm', 'Poland', 'Wroclaw', '1904', '144', 'No'),
('8', 'Koko', 'Banderas', 'w', 'Poland', 'Warshawa', '1978', '687', 'No'),
('9', 'Marcello', 'Opole', 'm', 'Russia', 'Moscow', '2010', '4595400', 'Yes'),
('10', 'Ludwik', 'Darko', 'm', 'Ukraine', 'Lviv', '1999', '498', 'Yes'),
('11', 'Leopold', 'Marko', 'm', 'Ukraine', 'Lviv', '1978', '34343400', 'No'),
('12', 'Wasul', 'Matoto',  'm',  'Poland', 'Katowice', '1979', '4958', 'No'),
('13', 'Max', 'Barsto', 'm',  'France', 'Paris', '1967', '304', 'No'),
('14', 'Wasyl', 'Grey', 'm',  'Germany', 'Drezden', '1979', '1000', 'No'),
('15', 'Marta', 'Wood', 'w', 'Germany', 'Drezno', '1980', '1000', 'No'),
('16', 'Maria', 'House', 'w', 'Poland', 'Wroclaw', '1966', '32323', 'No'),
('17', 'Olia', 'Alice', 'w', 'Ukraine', 'Kiev', '1924', '89890', 'No'),
('18', 'Olia', 'Broun', 'w', 'Ukraine', 'Doneck', '1945', '21000', 'Yes'),
('19', 'Marta', 'Woodpeker', 'w', 'Ukraine', 'Odessa', '1968', '2000', 'Yes'),
('20', 'Olimpia', 'Oil', 'm', 'Greate Britain', 'London', '2000', '3000', 'Yes');

select count(*) from Clients;

select count (*) from Clients where gender  = 'w';

select yearbirth, count(*) from Clients group by yearbirth;

select yearbirth, count (*) from Clients where yearbirth > 1980 group by yearbirth;

select SUM(Account) from Clients;

select contry, SUM(Account) from Clients group by contry;

select MAX(Account) from Clients;

SELECT AVG(yearbirth) FROM Clients;

SELECT yearbirth, ROUND(AVG(Account), 2) FROM Clients GROUP BY yearbirth;

SELECT Clients.name, Clients.yearbirth FROM Clients;

SELECT * FROM Clients JOIN shop ON Clients.id = shop.id;