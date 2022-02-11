SELECT city_id, city, country, city.country_id FROM city
INNER JOIN country ON city.country_id = country.country_id
WHERE country = 'Canada'

INSERT INTO city (city, country_id) VALUES ('St. Johns',20 )

INSERT INTO city (city, country_id)
VALUES ('Brigus',21 ),('Cape Royal',21),('Port Rexton', 21)

UPDATE city SET city='Cape Broyle' WHERE city_id = 607

DELETE from city WHERE city_id = 607;

DELETE FROM address WHERE city_id = 363
SELECT * FROM city WHERE country_id = 21
DELETE FROM country where country_id = 21