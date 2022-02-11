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
-- Data for Name: People; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."People" (person_id, first_name, last_name, email) VALUES (1, 'fred', 'flinstone', 'fred@bedrock.com');
INSERT INTO public."People" (person_id, first_name, last_name, email) VALUES (2, 'wilma', 'flinstone', 'wilma@bedrock.com');
INSERT INTO public."People" (person_id, first_name, last_name, email) VALUES (3, 'pebbles', 'flinstone', NULL);
INSERT INTO public."People" (person_id, first_name, last_name, email) VALUES (4, 'barney', 'rubble', 'barney@bedrock.com');
INSERT INTO public."People" (person_id, first_name, last_name, email) VALUES (5, 'betty', 'rubble', 'betty@bedrock.com');
INSERT INTO public."People" (person_id, first_name, last_name, email) VALUES (7, 'dino', 'flinstone', NULL);
INSERT INTO public."People" (person_id, first_name, last_name, email) VALUES (6, 'bambam', 'rubble', NULL);


--
-- Name: People_person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."People_person_id_seq"', 7, true);


--
-- PostgreSQL database dump complete
--

