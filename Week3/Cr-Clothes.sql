INSERT INTO public."Clothes"(clothing_id
		,person_id
		,clothing_type
		,name
		,count)
VALUES (4,3,'hats', 'traveller', 2);

SELECT clothing_type, name, full_name FROM public."Clothes"
INNER JOIN public."People"
ON public."Clothes".person_id = public."People".person_id





