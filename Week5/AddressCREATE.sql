-- Table: public.Addresses

DROP TABLE public."Addresses";

CREATE TABLE public."Addresses"
(
    address_id serial,
    addr_line1 character varying(64) COLLATE pg_catalog."default" NOT NULL,
    city_name character varying(64) COLLATE pg_catalog."default" NOT NULL,
    province character varying(16) COLLATE pg_catalog."default" NOT NULL,
    postal_code character varying(12) COLLATE pg_catalog."default" NOT NULL,
    country character varying(24) COLLATE pg_catalog."default" NOT NULL,
)

TABLESPACE pg_default;

ALTER TABLE public."Addresses"
    OWNER to postgres;