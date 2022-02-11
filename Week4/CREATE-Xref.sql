-- DROP TABLE public."People_xref_Addresses";

CREATE TABLE public."People_xref_Addresses"
(
    person_id integer NOT NULL,
    address_id integer NOT NULL,
    address_type character varying(8) NOT NULL,
    CONSTRAINT "People_xref_Addresses_pkey" PRIMARY KEY (person_id, address_id)
)
