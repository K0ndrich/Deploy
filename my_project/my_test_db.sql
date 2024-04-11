--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.2

-- Started on 2024-04-11 15:58:45

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
-- TOC entry 215 (class 1259 OID 16405)
-- Name: my_table; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.my_table (
    id integer NOT NULL,
    name character varying(64)
);


ALTER TABLE public.my_table OWNER TO postgres;

--
-- TOC entry 4778 (class 0 OID 16405)
-- Dependencies: 215
-- Data for Name: my_table; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.my_table (id, name) VALUES (1, 'max');
INSERT INTO public.my_table (id, name) VALUES (2, 'sana');
INSERT INTO public.my_table (id, name) VALUES (3, 'oleg');
INSERT INTO public.my_table (id, name) VALUES (4, 'home');
INSERT INTO public.my_table (id, name) VALUES (5, 'hello');


--
-- TOC entry 4634 (class 2606 OID 16409)
-- Name: my_table my_table_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.my_table
    ADD CONSTRAINT my_table_pkey PRIMARY KEY (id);


-- Completed on 2024-04-11 15:58:45

--
-- PostgreSQL database dump complete
--

