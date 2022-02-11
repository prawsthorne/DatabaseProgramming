DROP TABLE public."Addresses";

CREATE TABLE public."Addresses"
(
    address_id serial,
    addr_line1 character varying(64) NOT NULL,
    city_name character varying(64) NOT NULL,
    postal_code character varying(12) NOT NULL,
    country character varying(24) NOT NULL,
    CONSTRAINT "Addresses_pkey" PRIMARY KEY (address_id)
)
