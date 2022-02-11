SELECT first_name, last_name, clothing_type, name, count FROM public."People"
LEFT JOIN public."Clothes" ON public."People".person_id = public."Clothes".person_id
WHERE clothing_type IS NULL