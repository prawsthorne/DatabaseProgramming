SELECT first_name || ' ' || last_name AS full_name
--	,email
	,addr_line1 || ' ' || city_name || ' ' || country || ' ' || postal_code AS full_address
	,address_type
FROM people."People"
INNER JOIN people."People_xref_Addresses"
ON people."People".person_id = people."People_xref_Addresses".person_id
INNER JOIN people."Addresses"
ON people."Addresses".address_id = people."People_xref_Addresses".address_id
