--HW1
SELECT title, description FROM film;
SELECT * FROM film WHERE length > 60 AND length < 75;
SELECT * FROM film WHERE rental_rate = 0.99 AND (replacement_cost = 12.99 OR replacement_cost = 28.99);
SELECT last_name FROM customer WHERE first_name = 'Mary'; --"Smith"
SELECT * FROM film WHERE NOT length > 50 AND (rental_rate = 2.99 OR rental_rate = 4.99);

--HW2
SELECT * FROM film WHERE replacement_cost BETWEEN 12.99 AND 16.99;
SELECT first_name, last_name FROM actor WHERE first_name IN ('Penelope', 'Nick', 'Ed');
SELECT * FROM film WHERE rental_rate IN (0.99, 2.99, 4.99) AND replacement_cost IN (12.99, 15.99, 28.99);

--HW3
SELECT * FROM country WHERE country LIKE 'A%a';
SELECT * FROM country WHERE LENGTH(country) >= 6 AND country LIKE '%n';
SELECT * FROM film WHERE title ILIKE '%t%';
SELECT * FROM film WHERE title LIKE 'C%' AND length > 90 AND rental_rate = 2.99;

--HW4
SELECT DISTINCT replacement_cost FROM film;
SELECT COUNT (DISTINCT replacement_cost) from film;
SELECT COUNT (*) FROM film WHERE title LIKE 'T%' AND rating = 'G'; 
SELECT COUNT (*) FROM country WHERE LENGTH(country)=5;
SELECT COUNT (*) FROM city WHERE city ILIKE '%r';

--HW5
SELECT * FROM film WHERE title LIKE '%n' ORDER BY length DESC LIMIT 5;
SELECT * FROM film WHERE title LIKE '%n' ORDER BY length ASC OFFSET 5 LIMIT 5;
SELECT * FROM customer WHERE store_id = 1 ORDER BY last_name DESC LIMIT 4;

--HW6
SELECT AVG(rental_rate) FROM film;
SELECT COUNT (*) FROM film where title LIKE ('C%');
SELECT MAX (length) FROM film WHERE rental_rate = 0.99;
SELECT COUNT (DISTINCT replacement_cost) FROM film WHERE length>150; 

--HW7
SELECT rating FROM film GROUP BY rating; 
SELECT replacement_cost, COUNT(*) FROM film GROUP BY replacement_cost HAVING COUNT(*)>50;
SELECT COUNT (*) FROM customer GROUP BY store_id;
SELECT country_id, COUNT(*) FROM city GROUP BY country_id ORDER BY COUNT(*) DESC LIMIT 1;

--HW8
CREATE TABLE employee (id INTEGER NOT NULL, name VARCHAR(50) NOT NULL, birthday DATE, email VARCHAR(100));

insert into employee (id, name, birthday, email) values (1, 'Anneliese McBoyle', '1971-08-16', 'amcboyle0@tripadvisor.com');
insert into employee (id, name, birthday, email) values (2, 'Hyatt Malacrida', '1986-01-20', 'hmalacrida1@friendfeed.com');
insert into employee (id, name, birthday, email) values (3, 'Laure Keys', '1972-05-19', 'lkeys2@about.com');
insert into employee (id, name, birthday, email) values (4, 'Nadiya McGrady', '2007-07-07', 'nmcgrady3@biglobe.ne.jp');
insert into employee (id, name, birthday, email) values (5, 'Nobie Chantrell', '1978-02-21', 'nchantrell4@vkontakte.ru');
insert into employee (id, name, birthday, email) values (6, 'Atlante Lowndesbrough', '1992-01-15', 'alowndesbrough5@marriott.com');
insert into employee (id, name, birthday, email) values (7, 'Chan Binton', '1977-01-01', null);
insert into employee (id, name, birthday, email) values (8, 'Deloris Reedy', '2007-11-04', 'dreedy7@cdc.gov');
insert into employee (id, name, birthday, email) values (9, 'Delinda Irlam', '2018-04-16', 'dirlam8@loc.gov');
insert into employee (id, name, birthday, email) values (10, 'Vail Wooddisse', null, 'vwooddisse9@ifeng.com');
insert into employee (id, name, birthday, email) values (11, 'Morlee Torri', '1991-08-15', 'mtorria@arstechnica.com');
insert into employee (id, name, birthday, email) values (12, 'Lenore Clace', '1976-01-11', 'lclaceb@ebay.com');
insert into employee (id, name, birthday, email) values (13, 'Ronny Sparham', '1987-07-05', 'rsparhamc@oracle.com');
insert into employee (id, name, birthday, email) values (14, 'Mohandas Key', '1988-07-06', 'mkeyd@nationalgeographic.com');
insert into employee (id, name, birthday, email) values (15, 'Katinka Sneezum', '1995-06-29', 'ksneezume@newyorker.com');
insert into employee (id, name, birthday, email) values (16, 'Gonzalo Smales', '1981-07-09', 'gsmalesf@pbs.org');
insert into employee (id, name, birthday, email) values (17, 'Bili Robken', '1988-04-29', 'brobkeng@arizona.edu');
insert into employee (id, name, birthday, email) values (18, 'Kean Lippiello', '2022-02-27', 'klippielloh@dedecms.com');
insert into employee (id, name, birthday, email) values (19, 'Jan Gillitt', '1973-05-30', 'jgillitti@ox.ac.uk');
insert into employee (id, name, birthday, email) values (20, 'Griffith Poytheras', '1998-11-02', 'gpoytherasj@sun.com');
insert into employee (id, name, birthday, email) values (21, 'Laurianne Sheryne', '2016-02-24', null);
insert into employee (id, name, birthday, email) values (22, 'Nichole Sor', '2014-12-28', 'nsorl@samsung.com');
insert into employee (id, name, birthday, email) values (23, 'Maire Jacklin', '1992-05-27', 'mjacklinm@posterous.com');
insert into employee (id, name, birthday, email) values (24, 'Ethelind Schwartz', '1981-04-22', 'eschwartzn@meetup.com');
insert into employee (id, name, birthday, email) values (25, 'Bertrando Goly', '1983-02-26', 'bgolyo@acquirethisname.com');
insert into employee (id, name, birthday, email) values (26, 'Fanya Keoghan', '2010-10-27', 'fkeoghanp@dmoz.org');
insert into employee (id, name, birthday, email) values (27, 'Glory Housegoe', '1973-04-17', 'ghousegoeq@about.com');
insert into employee (id, name, birthday, email) values (28, 'Sandi Kubacek', '1992-02-21', 'skubacekr@miitbeian.gov.cn');
insert into employee (id, name, birthday, email) values (29, 'Katharina Cosby', '1991-12-05', 'kcosbys@webeden.co.uk');
insert into employee (id, name, birthday, email) values (30, 'Boot Imlin', null, 'bimlint@posterous.com');
insert into employee (id, name, birthday, email) values (31, 'Nathanial Wulfinger', '2022-05-30', null);
insert into employee (id, name, birthday, email) values (32, 'Ruth Trodler', '2023-08-14', 'rtrodlerv@github.io');
insert into employee (id, name, birthday, email) values (33, 'Zaccaria Turfitt', '2021-07-07', 'zturfittw@php.net');
insert into employee (id, name, birthday, email) values (34, 'Son Vanderplas', '2010-10-21', 'svanderplasx@mlb.com');
insert into employee (id, name, birthday, email) values (35, 'Albrecht Doubrava', '2006-03-03', null);
insert into employee (id, name, birthday, email) values (36, 'Kariotta Insoll', '1977-04-23', 'kinsollz@posterous.com');
insert into employee (id, name, birthday, email) values (37, 'Chryste Davidovich', '2013-12-26', 'cdavidovich10@wikipedia.org');
insert into employee (id, name, birthday, email) values (38, 'Gloriana Carmody', '1992-07-15', 'gcarmody11@friendfeed.com');
insert into employee (id, name, birthday, email) values (39, 'Michale Jilliss', '1998-09-24', 'mjilliss12@weibo.com');
insert into employee (id, name, birthday, email) values (40, 'Culver Grotty', '2017-04-23', null);
insert into employee (id, name, birthday, email) values (41, 'Dan Brisley', '2000-10-11', 'dbrisley14@naver.com');
insert into employee (id, name, birthday, email) values (42, 'Nariko Gatrill', '1974-08-10', 'ngatrill15@bbc.co.uk');
insert into employee (id, name, birthday, email) values (43, 'Kattie Baseke', null, 'kbaseke16@mayoclinic.com');
insert into employee (id, name, birthday, email) values (44, 'Quentin Muttock', '1981-07-05', 'qmuttock17@vinaora.com');
insert into employee (id, name, birthday, email) values (45, 'Mallorie Mellers', '2006-11-09', null);
insert into employee (id, name, birthday, email) values (46, 'Tedman Mussard', '2002-12-23', 'tmussard19@microsoft.com');
insert into employee (id, name, birthday, email) values (47, 'Tisha Kestin', '2016-04-06', 'tkestin1a@canalblog.com');
insert into employee (id, name, birthday, email) values (48, 'George Easthope', '1988-03-16', 'geasthope1b@sphinn.com');
insert into employee (id, name, birthday, email) values (49, 'Walton Smallacombe', '1998-08-21', 'wsmallacombe1c@theglobeandmail.com');
insert into employee (id, name, birthday, email) values (50, 'Bernita Blench', '2002-12-12', 'bblench1d@berkeley.edu');

UPDATE employee SET name = 'Ali Yılmaz' email='ali@ali.com' birthday = '2010-10-10' WHERE id = 4;
UPDATE employee SET email = 'abc.com' WHERE id = 34;
UPDATE employee SET birthday = '2000-01-01' WHERE id = 2;
UPDATE employee SET name = 'Veli Yılmaz' email = 'veli@veli.com' WHERE id = 25;
UPDATE employee SET name = 'Ayse Yılmaz' email = 'ayse@ayse.com' WHERE id = 1; 

DELETE FROM employee WHERE id = 4;
DELETE FROM employee WHERE name = 'Ali Yılmaz';
DELETE FROM employee WHERE id = 5;
DELETE FROM employee WHERE id = 7;
DELETE FROM employee WHERE id = 12;

--HW9
SELECT city, country FROM country
  INNER JOIN city ON city.country_id = country.country_id;

SELECT payment_id, first_name, last_name FROM customer
  INNER JOIN payment ON payment.customer_id = customer.customer_id;

SELECT rental_id, first_name, last_name FROM customer
  INNER JOIN rental ON rental.customer_id = customer.customer_id;

--HW10
SELECT city.city, country.country FROM CITY LEFT JOIN COUNTRY ON city.country_id = country.country_id;

SELECT payment.payment_id, customer.first_name, customer.last_name FROM customer RIGHT JOIN payment ON payment.customer_id = customer.customer_id;

SELECT rental.rental_id, customer.first_name, customer.last_name FROM customer FULL JOIN rental ON customer.customer_id = rental.customer_id;








