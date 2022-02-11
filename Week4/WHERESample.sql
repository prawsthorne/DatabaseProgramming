SELECT * FROM film
WHERE film_id = 133

SELECT title, rating, description, release_year, length 
FROM film 
WHERE rental_duration <= 4 AND rating = 'G'

UPDATE public.film
	SET release_year=2008
	WHERE rental_duration = 6 AND rating = 'G'



