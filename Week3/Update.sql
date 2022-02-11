UPDATE public.customer
	SET activebool='T', active=18
	WHERE customer_id = 602;
	
SELECT * FROM customer where last_name = 'flinstone';
SELECT * FROM address where address_id = 15;

UPDATE customer SET address_id = 15 WHERE last_name = 'flinstone';