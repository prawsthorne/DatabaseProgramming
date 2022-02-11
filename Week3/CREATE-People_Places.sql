-- Table: public.People_Places

-- DROP TABLE public."People_Places";

CREATE TABLE public."People_Places"
(
    person_id integer NOT NULL,
    address_id integer NOT NULL,
    location_type character varying(8) COLLATE pg_catalog."default" NOT NULL,
    created_date integer NOT NULL
)

TABLESPACE pg_default;

ALTER TABLE public."People_Places"
    OWNER to postgres;