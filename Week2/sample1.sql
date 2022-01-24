SELECT first_name, last_name FROM customer;
SELECT COUNT(*) AS customer_count FROM customer;

SELECT first_name 
	,last_name 
	,email
	,address_id
FROM customer;

SELECT c.first_name AS first
	,c.last_name AS last
	,addr.address
	,addr.district
FROM customer c LEFT JOIN address addr
ON c.address_id = addr.address_id;

