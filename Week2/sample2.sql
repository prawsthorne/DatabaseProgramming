SELECT * FROM actor;
SELECT COUNT(*) FROM actor;
SELECT * FROM actor ORDER BY last_name ASC;



SELECT first_name
	,last_name 
FROM actor
-- WHERE last_name = 'Davis';
WHERE last_name LIKE 'S%' ORDER BY first_name DESC;

SELECT * FROM film;
SELECT COUNT(*) FROM film;
SELECT rating, COUNT(rating) from film GROUP BY rating ORDER BY COUNT(rating) DESC;
