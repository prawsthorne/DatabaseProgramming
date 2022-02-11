SELECT staff_id, first_name, last_name, store_id, 
	FROM public.staff;
	
SELECT store_id, manager_staff_id, address_id
	FROM public.store;
	
SELECT address_id, address, district, city_id, postal_code
	FROM public.address;
	
SELECT aff.last_name, ore.address_id, ess.address FROM public.staff AS aff
INNER JOIN public.store AS ore ON aff.store_id = ore.store_id
INNER JOIN public.address AS ess ON ore.address_id = ess.address_id