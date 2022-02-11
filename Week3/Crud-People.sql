//CREATE POST
INSERT INTO public."People"(full_name, email_address)
VALUES ('fred flinstone', 'fred@bedrock.com');

//READ GET
Select * From public."People";  

//UPDATE PUT
UPDATE public."People"
SET full_name = 'sam rubble'
	,email_address = 'sam@bedrock.com'
WHERE person_id = 8

//DELETE
DELETE FROM public."People"
WHERE person_id = 5;



