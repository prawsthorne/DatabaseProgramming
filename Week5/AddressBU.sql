--
-- PostgreSQL database dump
--

-- Dumped from database version 13.3
-- Dumped by pg_dump version 13.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: Addresses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Addresses" (
    address_id integer NOT NULL,
    addr_line1 character varying(64) NOT NULL,
    city_name character varying(64) NOT NULL,
    postal_code character varying(12) NOT NULL,
    country character varying(24) NOT NULL,
    province character varying(16)
);


ALTER TABLE public."Addresses" OWNER TO postgres;

--
-- Name: Addresses_address_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Addresses_address_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Addresses_address_id_seq" OWNER TO postgres;

--
-- Name: Addresses_address_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Addresses_address_id_seq" OWNED BY public."Addresses".address_id;


--
-- Name: Addresses address_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Addresses" ALTER COLUMN address_id SET DEFAULT nextval('public."Addresses_address_id_seq"'::regclass);


--
-- Data for Name: Addresses; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Addresses" (address_id, addr_line1, city_name, postal_code, country, province) VALUES (1, '235 Sandstone Way
', 'Bedrock', 'D5K1N5
', 'CANADA', 'NL');
INSERT INTO public."Addresses" (address_id, addr_line1, city_name, postal_code, country, province) VALUES (2, '247 Sandstone Way
', 'Bedrock', 'D5K1N5
', 'CANADA', 'NL');
INSERT INTO public."Addresses" (address_id, addr_line1, city_name, postal_code, country, province) VALUES (3, '57 Granite Quarry
', 'Bedrock', 'D6G3R9
', 'CANADA', 'NL');
INSERT INTO public."Addresses" (address_id, addr_line1, city_name, postal_code, country, province) VALUES (4, '7 Volcano View Road
', 'Village of Shale
', 'D8E4H1
', 'CANADA', 'NL');


--
-- Name: Addresses_address_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Addresses_address_id_seq"', 4, true);


--
-- Name: Addresses Addresses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Addresses"
    ADD CONSTRAINT "Addresses_pkey" PRIMARY KEY (address_id);


--
-- PostgreSQL database dump complete
--

