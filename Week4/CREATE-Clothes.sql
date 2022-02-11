-- DROP TABLE public."Clothes";

CREATE TABLE public."Clothes"
(
    clothing_id serial,
    person_id integer NOT NULL,
    clothing_type character varying(16)NOT NULL,
    name character varying(32) NOT NULL,
    count integer NOT NULL,
    CONSTRAINT "Clothes_pkey" PRIMARY KEY (clothing_id)
)
