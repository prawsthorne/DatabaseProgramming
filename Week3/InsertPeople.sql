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
-- Name: People; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."People" (
    person_id integer NOT NULL,
    first_name character varying(32) NOT NULL,
    last_name character varying(64) NOT NULL,
    email character varying(200)
);


ALTER TABLE public."People" OWNER TO postgres;

--
-- Name: People_person_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."People_person_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."People_person_id_seq" OWNER TO postgres;

--
-- Name: People_person_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."People_person_id_seq" OWNED BY public."People".person_id;


--
-- Name: People person_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."People" ALTER COLUMN person_id SET DEFAULT nextval('public."People_person_id_seq"'::regclass);


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
-- Name: People People_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."People"
    ADD CONSTRAINT "People_pkey" PRIMARY KEY (person_id);


--
-- PostgreSQL database dump complete
--

