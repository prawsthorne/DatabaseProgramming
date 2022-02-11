-- Using the film table in the dvdrental database write a SQL SELECT statement WHERE you filter on the 
-- rating and length. Use this WHERE clause to update the film table.

SELECT title, release_year, length, rating FROM film 
WHERE release_year = 2014 AND rating = 'PG' AND length < 100

-- Using the address table in the dvdrental database write a 
-- SQL SELECT statement using the ORDER BY clause to order by district.

SELECT address, district, postal_code, phone FROM address
ORDER BY district

-- Using the film table in the dvdrental database write a SQL SELECT statement using the 
-- GROUP BY clause to get a count of all the movies for each rating.

SELECT rating, COUNT(rating) FROM film
GROUP BY rating