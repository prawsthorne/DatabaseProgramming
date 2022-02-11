--
-- PostgreSQL database dump
--

-- Dumped from database version 13.3
-- Dumped by pg_dump version 13.3

-- Started on 2021-09-23 09:10:02

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
-- TOC entry 2993 (class 0 OID 17656)
-- Dependencies: 203
-- Data for Name: Clothes; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Clothes" (clothing_id, person_id, clothing_type, name, count) VALUES (1, 1, 'pants', 'raptor', 3);
INSERT INTO public."Clothes" (clothing_id, person_id, clothing_type, name, count) VALUES (2, 1, 'pants', 'sabertooth', 1);
INSERT INTO public."Clothes" (clothing_id, person_id, clothing_type, name, count) VALUES (3, 1, 'pants', 'bat', 1);
INSERT INTO public."Clothes" (clothing_id, person_id, clothing_type, name, count) VALUES (4, 1, 'socks', 'woolley', 8);
INSERT INTO public."Clothes" (clothing_id, person_id, clothing_type, name, count) VALUES (5, 1, 'underwear', 'lizard', 5);
INSERT INTO public."Clothes" (clothing_id, person_id, clothing_type, name, count) VALUES (6, 5, 'dress', 'broadleaf', 2);
INSERT INTO public."Clothes" (clothing_id, person_id, clothing_type, name, count) VALUES (7, 5, 'shirt', 'velociraptor', 3);
INSERT INTO public."Clothes" (clothing_id, person_id, clothing_type, name, count) VALUES (8, 6, 'pants', 'Tommy Hellfigre', 4);
INSERT INTO public."Clothes" (clothing_id, person_id, clothing_type, name, count) VALUES (9, 6, 'sweater', 'outer armour', 2);
INSERT INTO public."Clothes" (clothing_id, person_id, clothing_type, name, count) VALUES (10, 6, 'shoes', 'roughfitters', 2);


--
-- TOC entry 3000 (class 0 OID 0)
-- Dependencies: 202
-- Name: Clothes_clothing_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Clothes_clothing_id_seq"', 10, true);


-- Completed on 2021-09-23 09:10:02

--
-- PostgreSQL database dump complete
--

