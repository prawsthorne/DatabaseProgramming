-- Table: public.People

-- DROP TABLE public."People";

CREATE TABLE public."People"
(
    	person_id serial,
    	first_name character varying(32) NOT NULL,
	last_name character varying(32) NOT NULL,
    	email_address character varying(128) NOT NULL,
   	 CONSTRAINT "People_pkey" PRIMARY KEY (person_id)
)

ALTER TABLE public."People"
    OWNER to postgres;