SELECT * FROM public."Clothes"
WHERE clothing_type = 'pants'

SELECT * FROM public."Clothes"
ORDER BY count DESC

SELECT clothing_type, SUM(count) FROM public."Clothes"
GROUP BY clothing_type
ORDER BY sum DESC
