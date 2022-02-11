-- Table: public.Addresses

DROP TABLE public."Addresses";

CREATE TABLE public."Addresses"
(
    address_id serial,
    room character varying(16),
    floor integer NOT NULL,
    addr_line1 character varying(64) NOT NULL,
    addr_line2 character varying(64),
    city_name character varying(64) NOT NULL,
    postal_code character varying(12) NOT NULL,
    country character varying(24) NOT NULL,
    CONSTRAINT "Addresses_pkey" PRIMARY KEY (address_id)
)

TABLESPACE pg_default;

ALTER TABLE public."Addresses"
    OWNER to postgres;