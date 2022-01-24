SELECT act.first_name
	,act.last_name
	,flm.title
	,flm.release_year
FROM actor AS act
LEFT JOIN film_actor AS fact
	ON act.actor_id = fact.actor_id
LEFT JOIN film AS flm
	ON fact.film_id = flm.film_id
WHERE act.actor_id = 5
ORDER BY title ASC