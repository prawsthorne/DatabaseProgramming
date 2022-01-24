SELECT
 	first_name || ' ' || last_name full_name,
--	last_name,
	SUM (amount) amount
FROM
	payment
INNER JOIN customer USING (customer_id)    	
GROUP BY
	full_name
ORDER BY amount DESC;	

SELECT
	customer.customer_id, payment.customer_id, customer.last_name, payment.amount
FROM
	payment
INNER JOIN customer USING (customer_id)  