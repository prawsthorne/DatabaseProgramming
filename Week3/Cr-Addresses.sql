INSERT INTO public."Addresses"(
	addr_line1, city_name, postal_code, address_id, country)
	VALUES ('234 main St.', 'Bedrock', 'A1G4K5', 2, 'Granite');
	
SELECT * FROM public."Addresses";

SELECT addr_line1, addr_line2, city_name, postal_code, address_id, country
	FROM public."Addresses";