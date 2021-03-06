DROP TABLE "shows";
DROP TABLE "times";
DROP TABLE "users";
DROP TABLE "shows_users";

CREATE TABLE "shows" (
  "id" serial8 primary key, 
  "created_at" date, 
  "name" varchar(255), 
  "price" decimal);

INSERT INTO "shows" VALUES (1, '2016-08-23 20:09:41.969902', 'Le Haggis', 12.99);
INSERT INTO "shows" VALUES (2, '2016-08-23 20:09:41.972179', 'Shitfaced Shakespeare', 16.50);
INSERT INTO "shows" VALUES (3, '2016-08-23 20:09:41.972999', 'Camille O''Sullivan', 17.99);
INSERT INTO "shows" VALUES (4, '2016-08-23 20:09:41.971545', 'Game of Thrones - The Musical', 16.50);
INSERT INTO "shows" VALUES (5, '2016-08-23 20:09:41.975610', 'Paul Dabek Mischief ', 12.99);
INSERT INTO "shows" VALUES (6, '2016-08-23 20:09:41.979784', 'Joe Stilgoe: Songs on Film – The Sequel', 16.50);
INSERT INTO "shows" VALUES (7, '2016-08-23 20:09:41.981653', 'Aaabeduation – A Magic Show', 17.99);
INSERT INTO "shows" VALUES (8, '2016-08-23 20:09:41.983556', 'Edinburgh Royal Tattoo', 32.99);
INSERT INTO "shows" VALUES (9, '2016-08-23 20:09:41.987003', 'Best of Burlesque', 7.99);
INSERT INTO "shows" VALUES (10, '2016-08-23 20:09:41.989455', 'Two become One', 8.50);
INSERT INTO "shows" VALUES (11, '2016-08-23 20:09:41.991271', 'Urinetown', 8.50);
INSERT INTO "shows" VALUES (12, '2016-08-23 20:09:41.992358', 'Two girls, one cup of comedy', 6.00);
INSERT INTO "shows" VALUES (13, '2016-08-23 20:09:41.996721', 'Balletronics', 32.00);
-----------------------------------------------------------------------

CREATE TABLE "times" (
  "id" serial8 primary key, 
  "time" varchar(255), 
  "show_id" int2);

INSERT INTO "times" (time, show_id) VALUES ('13:30', 1);
INSERT INTO "times" (time, show_id) VALUES ('19:30', 2);
INSERT INTO "times" (time, show_id) VALUES ('17:15', 3);
INSERT INTO "times" (time, show_id) VALUES ('19:30', 4);
INSERT INTO "times" (time, show_id) VALUES ('12:45', 5);
INSERT INTO "times" (time, show_id) VALUES ('17:15', 6);
INSERT INTO "times" (time, show_id) VALUES ('12:45', 7);
INSERT INTO "times" (time, show_id) VALUES ('22:00', 8);
INSERT INTO "times" (time, show_id) VALUES ('19:30', 9);
INSERT INTO "times" (time, show_id) VALUES ('14:15', 10);
INSERT INTO "times" (time, show_id) VALUES ('20:00', 11);
INSERT INTO "times" (time, show_id) VALUES ('12:45', 12);
INSERT INTO "times" (time, show_id) VALUES ('20:00', 13);

-----------------------------------------------------------------------

CREATE TABLE "users" (
  "id" serial8 primary key, 
  "name" varchar(255));

INSERT INTO "users" (name) VALUES 
('Keith Douglas'), 
('Craig Morton'), 
('Sandy McMillan');

INSERT INTO "users" (name) VALUES
('Adrian Tuckwell'),
('Alex Bazlinton'),
('Bertie Coll'),
('Bobby Ross'),
('Carlos Pereira'),
('Claudia Menting'),
('Cookie Lacson'),
('Cyrus Balsara'),
('David OLeary'),
('Diana Man'),
('Euan Ramsay'),
('Josephine Elder'),
('Kate Manson'),
('Kyle Grenell'),
('Matthew Jeorrett'),
('Max Veasey'),
('Paul Milne'),
('Pavlos MacDonald-Kosmidis'),
('Ross Loggie'),
('Thomas Crines'),
('Tom Benham');
-----------------------------------------------------------------------

CREATE TABLE "shows_users" (
  "id" serial8 primary key, 
  "show_id" int8, 
  "user_id" int8);

INSERT INTO "shows_users" (show_id, user_id) VALUES (1, 1);
INSERT INTO "shows_users" (show_id, user_id) VALUES (1, 2);
INSERT INTO "shows_users" (show_id, user_id) VALUES (1, 5);
INSERT INTO "shows_users" (show_id, user_id) VALUES (1, 7);
INSERT INTO "shows_users" (show_id, user_id) VALUES (1, 8);
INSERT INTO "shows_users" (show_id, user_id) VALUES (1, 10);
INSERT INTO "shows_users" (show_id, user_id) VALUES (1, 12);
INSERT INTO "shows_users" (show_id, user_id) VALUES (1, 13);
INSERT INTO "shows_users" (show_id, user_id) VALUES (1, 14);
INSERT INTO "shows_users" (show_id, user_id) VALUES (2, 3);
INSERT INTO "shows_users" (show_id, user_id) VALUES (2, 4);
INSERT INTO "shows_users" (show_id, user_id) VALUES (2, 6);
INSERT INTO "shows_users" (show_id, user_id) VALUES (2, 7);
INSERT INTO "shows_users" (show_id, user_id) VALUES (2, 9);
INSERT INTO "shows_users" (show_id, user_id) VALUES (2, 11);
INSERT INTO "shows_users" (show_id, user_id) VALUES (2, 14);
INSERT INTO "shows_users" (show_id, user_id) VALUES (3, 1);
INSERT INTO "shows_users" (show_id, user_id) VALUES (3, 3);
INSERT INTO "shows_users" (show_id, user_id) VALUES (3, 5);
INSERT INTO "shows_users" (show_id, user_id) VALUES (3, 8);
INSERT INTO "shows_users" (show_id, user_id) VALUES (3, 9);
INSERT INTO "shows_users" (show_id, user_id) VALUES (3, 13);
INSERT INTO "shows_users" (show_id, user_id) VALUES (3, 15);
INSERT INTO "shows_users" (show_id, user_id) VALUES (4, 3);
INSERT INTO "shows_users" (show_id, user_id) VALUES (4, 9);
INSERT INTO "shows_users" (show_id, user_id) VALUES (4, 10);
INSERT INTO "shows_users" (show_id, user_id) VALUES (4, 12);
INSERT INTO "shows_users" (show_id, user_id) VALUES (4, 14);
INSERT INTO "shows_users" (show_id, user_id) VALUES (5, 2);
INSERT INTO "shows_users" (show_id, user_id) VALUES (5, 6);
INSERT INTO "shows_users" (show_id, user_id) VALUES (5, 9);
INSERT INTO "shows_users" (show_id, user_id) VALUES (5, 10);
INSERT INTO "shows_users" (show_id, user_id) VALUES (6, 11);
INSERT INTO "shows_users" (show_id, user_id) VALUES (6, 12);
INSERT INTO "shows_users" (show_id, user_id) VALUES (6, 13);
INSERT INTO "shows_users" (show_id, user_id) VALUES (6, 10);
INSERT INTO "shows_users" (show_id, user_id) VALUES (6, 14);
INSERT INTO "shows_users" (show_id, user_id) VALUES (7, 2);
INSERT INTO "shows_users" (show_id, user_id) VALUES (7, 4);
INSERT INTO "shows_users" (show_id, user_id) VALUES (7, 6);
INSERT INTO "shows_users" (show_id, user_id) VALUES (7, 7);
INSERT INTO "shows_users" (show_id, user_id) VALUES (7, 8);
INSERT INTO "shows_users" (show_id, user_id) VALUES (7, 11);
INSERT INTO "shows_users" (show_id, user_id) VALUES (7, 15);
INSERT INTO "shows_users" (show_id, user_id) VALUES (7, 14);
INSERT INTO "shows_users" (show_id, user_id) VALUES (8, 1);
INSERT INTO "shows_users" (show_id, user_id) VALUES (8, 3);
INSERT INTO "shows_users" (show_id, user_id) VALUES (8, 5);
INSERT INTO "shows_users" (show_id, user_id) VALUES (8, 9);
INSERT INTO "shows_users" (show_id, user_id) VALUES (8, 10);
INSERT INTO "shows_users" (show_id, user_id) VALUES (8, 12);
INSERT INTO "shows_users" (show_id, user_id) VALUES (8, 14);
INSERT INTO "shows_users" (show_id, user_id) VALUES (8, 15);
INSERT INTO "shows_users" (show_id, user_id) VALUES (9, 3);
INSERT INTO "shows_users" (show_id, user_id) VALUES (9, 7);
INSERT INTO "shows_users" (show_id, user_id) VALUES (9, 13);
INSERT INTO "shows_users" (show_id, user_id) VALUES (9, 15);
INSERT INTO "shows_users" (show_id, user_id) VALUES (10, 1);
INSERT INTO "shows_users" (show_id, user_id) VALUES (10, 2);
INSERT INTO "shows_users" (show_id, user_id) VALUES (10, 9);
INSERT INTO "shows_users" (show_id, user_id) VALUES (10, 12);
INSERT INTO "shows_users" (show_id, user_id) VALUES (10, 14);
INSERT INTO "shows_users" (show_id, user_id) VALUES (10, 15);
INSERT INTO "shows_users" (show_id, user_id) VALUES (11, 4);
INSERT INTO "shows_users" (show_id, user_id) VALUES (11, 11);
INSERT INTO "shows_users" (show_id, user_id) VALUES (11, 10);
INSERT INTO "shows_users" (show_id, user_id) VALUES (11, 13);
INSERT INTO "shows_users" (show_id, user_id) VALUES (11, 15);
INSERT INTO "shows_users" (show_id, user_id) VALUES (12, 2);
INSERT INTO "shows_users" (show_id, user_id) VALUES (12, 4);
INSERT INTO "shows_users" (show_id, user_id) VALUES (12, 5);
INSERT INTO "shows_users" (show_id, user_id) VALUES (12, 8);
INSERT INTO "shows_users" (show_id, user_id) VALUES (12, 11);
INSERT INTO "shows_users" (show_id, user_id) VALUES (13, 1);
INSERT INTO "shows_users" (show_id, user_id) VALUES (13, 3);
INSERT INTO "shows_users" (show_id, user_id) VALUES (13, 6);
INSERT INTO "shows_users" (show_id, user_id) VALUES (13, 8);
INSERT INTO "shows_users" (show_id, user_id) VALUES (13, 9);
INSERT INTO "shows_users" (show_id, user_id) VALUES (13, 12);
INSERT INTO "shows_users" (show_id, user_id) VALUES (13, 15);
INSERT INTO "shows_users" (show_id, user_id) VALUES (13, 14);
INSERT INTO "shows_users" (show_id, user_id) VALUES (5, 17);
INSERT INTO "shows_users" (show_id, user_id) VALUES (1, 18);
INSERT INTO "shows_users" (show_id, user_id) VALUES (13, 19);
INSERT INTO "shows_users" (show_id, user_id) VALUES (12, 20);
INSERT INTO "shows_users" (show_id, user_id) VALUES (11, 21);
-----------------------------------------------------------------------

-- Homework answers 
-- Section 1
-- 1.
-- SELECT name FROM users;

-- 2.
-- SELECT name FROM shows WHERE price < 15.00;

-- 3.
-- INSERT INTO "users" (name) VALUES 
-- ('Val Gibson');
-- SELECT name FROM users;

-- 4.
-- INSERT INTO "shows_users"(show_id, user_id) VALUES
-- (12,25);
-- SELECT * FROM users;

-- 5.
-- UPDATE users SET name = 'Valerie Gibson' WHERE id = 25 AND name = 'Val Gibson';
-- SELECT * FROM users;

-- 6.
-- DELETE FROM users WHERE name = 'Valerie Gibson';
-- SELECT * FROM users;

-- 7.
-- DELETE FROM shows_users WHERE user_id = 25;
-- SELECT * FROM shows_users;

-- Section 2
-- 1.
SELECT name, price FROM shows ORDER BY price ASC;

-- 2.

SELECT AVG(price) FROM shows;

-- 3.
SELECT MIN(price) FROM shows;

-- 4.
SELECT SUM(price) FROM shows;

-- 5.
SELECT SUM(price) FROM shows WHERE price < 20.00;

-- 6.


-- 7.

-- 8.
SELECT name FROM users WHERE name LIKE 'C%';

-- 9.
SELECT name FROM users WHERE name LIKE '%er%';

-- Section 3
-- select time for edinb royal tatoo
-- 1.
SELECT time FROM times INNER JOIN shows ON shows.id = times.show_id WHERE shows.id = 12;

-- 2.
-- select no of user who want to see shitfaced shakespeare
SELECT COUNT(shows_users.user_id) FROM shows_users INNER JOIN users ON users.id = shows_users.user_id WHERE shows_users.show_id = 2; 

-- 3.
-- Select all the users and the count of shows they are going to see
SELECT name, COUNT(name) FROM users INNER JOIN shows_users ON shows_users.user_id = users.id GROUP BY name ORDER BY count DESC; 

-- 4.
-- Select all users going to a show at 17:15
-- users -> shows_users -> shows -> times
SELECT users.name FROM users INNER JOIN shows_users ON users.id = shows_users.user_id INNER JOIN shows ON shows_users.show_id = shows.id INNER JOIN times ON shows.id = times.show_id WHERE times.time = '17:15';














