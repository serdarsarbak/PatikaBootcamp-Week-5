--HW1
SELECT title, description FROM film;
SELECT * FROM film WHERE length > 60 AND length < 75;
SELECT * FROM film WHERE rental_rate = 0.99 AND (replacement_cost = 12.99 OR replacement_cost = 28.99);
SELECT last_name FROM customer WHERE first_name = 'Mary'; --"Smith"
SELECT * FROM film WHERE NOT length > 50 AND (rental_rate = 2.99 OR rental_rate = 4.99);

--HM2
SELECT * FROM film WHERE replacement_cost BETWEEN 12.99 AND 16.99;
SELECT first_name, last_name FROM actor WHERE first_name IN ('Penelope', 'Nick', 'Ed');
SELECT * FROM film WHERE rental_rate IN (0.99, 2.99, 4.99) AND replacement_cost IN (12.99, 15.99, 28.99);

--HM3
SELECT * FROM country WHERE country LIKE 'A%a';
SELECT * FROM country WHERE LENGTH(country) >= 6 AND country LIKE '%n';
SELECT * FROM film WHERE title ILIKE '%t%';
SELECT * FROM film WHERE title LIKE 'C%' AND length > 90 AND rental_rate = 2.99;

--HM4
SELECT DISTINCT replacement_cost FROM film;
SELECT COUNT (DISTINCT replacement_cost) from film;
SELECT COUNT (*) FROM film WHERE title LIKE 'T%' AND rating = 'G'; 
SELECT COUNT (*) FROM country WHERE LENGTH(country)=5;
SELECT COUNT (*) FROM city WHERE city ='%r';

