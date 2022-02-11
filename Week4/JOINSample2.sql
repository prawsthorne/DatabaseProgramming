SELECT first_name
	,last_name
	,email
	,address_type
	,addr_line1
	,city_name
	,country
	,postal_code
FROM public."People"
INNER JOIN public."People_xref_Addresses"
ON public."People".person_id = public."People_xref_Addresses".person_id
INNER JOIN public."Addresses"
ON public."Addresses".address_id = public."People_xref_Addresses".address_id
