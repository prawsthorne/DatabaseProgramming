SELECT 	flm.title
	,COUNT(act.last_name) AS actor_count
	,flm.release_year
FROM actor AS act
LEFT JOIN film_actor AS fact
	ON act.actor_id = fact.actor_id
LEFT JOIN film AS flm
	ON fact.film_id = flm.film_id
WHERE flm.title LIKE 'B%'
GROUP BY flm.title, flm.release_year
ORDER BY title ASC