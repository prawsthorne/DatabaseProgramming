INSERT INTO public."People"(
	first_name, last_name, email)
	VALUES ('Gerald', 'Billson', 'gerry@billson.com');
	
--DELETE FROM public."People" WHERE person_id = 5
	
INSERT INTO public."Clothes"(
	person_id, clothing_type, name, count)
	VALUES (2, 'blouse', 'raptor', 2);
	
SELECT * FROM public."People"
SELECT * FROM public."Clothes"

SELECT first_name, last_name, clothing_type, name, count FROM public."People"
INNER JOIN public."Clothes" ON public."People".person_id = public."Clothes".person_id
-- WHERE clothing_type IS NULL

