INSERT INTO public."People_Places"(
	person_id, address_id, location_type, created_date)
	VALUES (1, 2, 'work', 12/12/2021);
	
SELECT full_name, location_type, addr_line1, city_name
	FROM public."People_Places"
	INNER JOIN public."People"
	ON public."People_Places".person_id = public."People".person_id
	INNER JOIN public."Addresses"
	ON public."People_Places".address_id = public."Addresses".address_id;