-- DROP TABLE public."People";

CREATE TABLE public."People"
(
    person_id serial,
    first_name character varying(32)NOT NULL,
    last_name character varying(64) NOT NULL,
    email character varying(200),
    CONSTRAINT "People_pkey" PRIMARY KEY (person_id)
)