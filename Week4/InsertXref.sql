--
-- PostgreSQL database dump
--

-- Dumped from database version 13.3
-- Dumped by pg_dump version 13.3

-- Started on 2021-09-23 14:02:50

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
-- TOC entry 2994 (class 0 OID 18021)
-- Dependencies: 206
-- Data for Name: People_xref_Addresses; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."People_xref_Addresses" (person_id, address_id, address_type) VALUES (1, 1, 'home');
INSERT INTO public."People_xref_Addresses" (person_id, address_id, address_type) VALUES (1, 3, 'work');
INSERT INTO public."People_xref_Addresses" (person_id, address_id, address_type) VALUES (1, 4, 'cabin');
INSERT INTO public."People_xref_Addresses" (person_id, address_id, address_type) VALUES (2, 1, 'home');
INSERT INTO public."People_xref_Addresses" (person_id, address_id, address_type) VALUES (3, 1, 'home');


-- Completed on 2021-09-23 14:02:50

--
-- PostgreSQL database dump complete
--

