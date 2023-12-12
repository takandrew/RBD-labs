--
-- PostgreSQL database dump
--

-- Dumped from database version 14.3 (Debian 14.3-1.pgdg110+1)
-- Dumped by pg_dump version 14.3 (Debian 14.3-1.pgdg110+1)

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
-- Name: Laptop; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Laptop" (
    model integer NOT NULL,
    speed integer,
    "Ram" integer,
    "Hd" integer,
    "Rd" real,
    price integer
);


ALTER TABLE public."Laptop" OWNER TO postgres;

--
-- Name: PC; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."PC" (
    model integer NOT NULL,
    speed integer,
    "Ram" integer,
    "Hd" integer,
    "Rd" text,
    price integer
);


ALTER TABLE public."PC" OWNER TO postgres;

--
-- Name: Printer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Printer" (
    model integer NOT NULL,
    color text,
    type text,
    price integer
);


ALTER TABLE public."Printer" OWNER TO postgres;

--
-- Name: product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product (
    maker text NOT NULL,
    model integer NOT NULL,
    type text
);


ALTER TABLE public.product OWNER TO postgres;

--
-- Data for Name: Laptop; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Laptop" (model, speed, "Ram", "Hd", "Rd", price) FROM stdin;
2001	700	64	5	12.1	1448
2002	800	96	10	15.1	2584
2003	850	64	10	15.1	2738
2004	550	32	5	12.1	999
2005	600	64	6	12.1	2399
2006	800	96	20	15.7	2999
2007	850	128	20	15	3099
2008	650	64	10	12.1	1249
2009	750	256	20	15.1	2599
2010	366	64	10	12.1	1499
\.


--
-- Data for Name: PC; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."PC" (model, speed, "Ram", "Hd", "Rd", price) FROM stdin;
1001	700	64	10	48xCD	799
1002	1500	128	60	12xDVD	2499
1003	866	128	20	8xDVD	1999
1004	866	64	10	12xDVD	999
1005	1000	128	20	12xDVD	1499
1006	1300	256	40	16xDVD	2119
1007	1400	128	80	12xDVD	2299
1008	700	64	30	24xCD	999
1009	1200	128	80	16xDVD	1699
1010	750	64	30	40xCD	699
1011	1100	128	60	16xDVD	1299
1012	350	64	7	48xCD	799
1013	733	256	60	12xDVD	2499
\.


--
-- Data for Name: Printer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Printer" (model, color, type, price) FROM stdin;
3001	C	Ink-jet	261
3002	C	Ink-jet	267
3003	N	laser	390
3004	C	Ink-jet	439
3005	C	bubble	200
3006	C	laser	1999
3007	N	laser	350
\.


--
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product (maker, model, type) FROM stdin;
A	1001	Pc
A	1002	Pc
A	1003	Pc
A	2004	Laptop
A	2005	Laptop
A	2006	Laptop
B	1004	Pc
B	1005	Pc
B	1006	Pc
B	2001	Laptop
B	2002	Laptop
B	2003	Laptop
C	1007	Pc
C	1008	Pc
C	2008	Laptop
C	2009	Laptop
C	3002	Printer
C	3003	Printer
C	3006	Printer
D	1009	Pc
D	1010	Pc
D	1011	Pc
D	2007	Laptop
E	1012	Pc
E	1013	Pc
E	2010	Laptop
F	3001	Printer
F	3004	Printer
G	3005	Printer
H	3007	Printer
\.


--
-- Name: Laptop Laptop_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Laptop"
    ADD CONSTRAINT "Laptop_pkey" PRIMARY KEY (model);


--
-- Name: PC PC_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PC"
    ADD CONSTRAINT "PC_pkey" PRIMARY KEY (model);


--
-- Name: Printer Printer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Printer"
    ADD CONSTRAINT "Printer_pkey" PRIMARY KEY (model);


--
-- Name: product product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (maker, model);


--
-- PostgreSQL database dump complete
--

