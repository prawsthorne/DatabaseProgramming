INSERT INTO actor(actor_id, first_name, last_update, last_name)
VALUES (2345, 'bill', '12/12/21', 'murray');

SELECT * FROM actor
WHERE actor_id = 2345

UPDATE actor
SET first_name = 'Bilbo'
WHERE actor_id = 2345;

DELETE FROM actor
WHERE actor_id = 2345;

