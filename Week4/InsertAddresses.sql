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

--
-- Data for Name: Addresses; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Addresses" (address_id, addr_line1, city_name, postal_code, country) VALUES (1, '235 Sandstone Way
', 'Bedrock', 'D5K1N5
', 'CANADA');
INSERT INTO public."Addresses" (address_id, addr_line1, city_name, postal_code, country) VALUES (2, '247 Sandstone Way
', 'Bedrock', 'D5K1N5
', 'CANADA');
INSERT INTO public."Addresses" (address_id, addr_line1, city_name, postal_code, country) VALUES (3, '57 Granite Quarry
', 'Bedrock', 'D6G3R9
', 'CANADA');
INSERT INTO public."Addresses" (address_id, addr_line1, city_name, postal_code, country) VALUES (4, '7 Volcano View Road
', 'Village of Shale
', 'D8E4H1
', 'CANADA');


--
-- Name: Addresses_address_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Addresses_address_id_seq"', 4, true);


--
-- PostgreSQL database dump complete
--

