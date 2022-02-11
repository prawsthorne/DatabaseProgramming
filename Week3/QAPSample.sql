1.	Reduce the number of columns displayed in the query result to four or less.

SELECT address_id, address, district, phone FROM address;

2.	Reduce the number of rows displayed in the query result using a WHERE clause.

SELECT address_id, address, district, phone FROM address
WHERE district = 'Alberta';
-- WHERE address_id = 3;

3.	Group the results using a GROUP BY clause.

SELECT * FROM film

SELECT rating, COUNT(rating) FROM film
GROUP BY rating;

SELECT release_year, COUNT(release_year) FROM film
GROUP BY release_year;

UPDATE film SET release_year = 2012 WHERE title LIKE 'B%'

4.	Order the results using an ORDER BY clause.

SELECT title, rating FROM film
ORDER BY rating DESC

SELECT rating, COUNT(rating) FROM film
GROUP BY rating
ORDER BY rating;

5.	Join two or more tables using a JOIN clause.

SELECT first_name, last_name, address, district, address.address_id FROM customer
INNER JOIN address ON customer.address_id = address.address_id