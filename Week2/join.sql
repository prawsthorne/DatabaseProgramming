SELECT actor.first_name
	,actor.last_name
    ,film.title
    ,film.release_year
FROM actor
LEFT JOIN film_actor
	ON actor.actor_id = film_actor.actor_id
LEFT JOIN film
	ON film_actor.film_id = film.film_id
WHERE actor.actor_id = 7
ORDER BY title ASC