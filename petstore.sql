--
-- PostgreSQL database dump
--

-- Dumped from database version 15.4
-- Dumped by pg_dump version 15.4

-- Started on 2025-08-01 07:31:06

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
-- TOC entry 215 (class 1259 OID 40986)
-- Name: accessory; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.accessory (
    id integer NOT NULL,
    accessory_name text,
    accessory_url text,
    accessory_prie money,
    in_stock boolean DEFAULT true
);


--
-- TOC entry 214 (class 1259 OID 40985)
-- Name: accessory_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.accessory_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3367 (class 0 OID 0)
-- Dependencies: 214
-- Name: accessory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.accessory_id_seq OWNED BY public.accessory.id;


--
-- TOC entry 221 (class 1259 OID 41033)
-- Name: bestseller; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.bestseller (
    id integer NOT NULL,
    bs_name text,
    bs_url text,
    bs_price money,
    in_stock boolean DEFAULT true
);


--
-- TOC entry 220 (class 1259 OID 41032)
-- Name: bestseller_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.bestseller_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3368 (class 0 OID 0)
-- Dependencies: 220
-- Name: bestseller_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.bestseller_id_seq OWNED BY public.bestseller.id;


--
-- TOC entry 224 (class 1259 OID 65555)
-- Name: cart; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cart (
    product_id integer NOT NULL,
    name text NOT NULL,
    price money NOT NULL,
    quantity integer DEFAULT 1
);


--
-- TOC entry 219 (class 1259 OID 41024)
-- Name: feeds; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feeds (
    id integer NOT NULL,
    feed_name text,
    feed_url text,
    feed_price money,
    in_stock boolean DEFAULT true
);


--
-- TOC entry 218 (class 1259 OID 41023)
-- Name: feeds_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.feeds_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3369 (class 0 OID 0)
-- Dependencies: 218
-- Name: feeds_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.feeds_id_seq OWNED BY public.feeds.id;


--
-- TOC entry 223 (class 1259 OID 57368)
-- Name: limitedstocks; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.limitedstocks (
    id integer NOT NULL,
    name text,
    url text,
    price money,
    in_stock boolean DEFAULT true
);


--
-- TOC entry 222 (class 1259 OID 57367)
-- Name: limitedstocks_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.limitedstocks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3370 (class 0 OID 0)
-- Dependencies: 222
-- Name: limitedstocks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.limitedstocks_id_seq OWNED BY public.limitedstocks.id;


--
-- TOC entry 217 (class 1259 OID 41005)
-- Name: pets; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pets (
    id integer NOT NULL,
    pet_name text,
    pet_url text,
    pet_price money,
    in_stock boolean DEFAULT true
);


--
-- TOC entry 216 (class 1259 OID 41004)
-- Name: pets_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3371 (class 0 OID 0)
-- Dependencies: 216
-- Name: pets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pets_id_seq OWNED BY public.pets.id;


--
-- TOC entry 3197 (class 2604 OID 40989)
-- Name: accessory id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.accessory ALTER COLUMN id SET DEFAULT nextval('public.accessory_id_seq'::regclass);


--
-- TOC entry 3203 (class 2604 OID 41036)
-- Name: bestseller id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bestseller ALTER COLUMN id SET DEFAULT nextval('public.bestseller_id_seq'::regclass);


--
-- TOC entry 3201 (class 2604 OID 41027)
-- Name: feeds id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feeds ALTER COLUMN id SET DEFAULT nextval('public.feeds_id_seq'::regclass);


--
-- TOC entry 3205 (class 2604 OID 57371)
-- Name: limitedstocks id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.limitedstocks ALTER COLUMN id SET DEFAULT nextval('public.limitedstocks_id_seq'::regclass);


--
-- TOC entry 3199 (class 2604 OID 41008)
-- Name: pets id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pets ALTER COLUMN id SET DEFAULT nextval('public.pets_id_seq'::regclass);


--
-- TOC entry 3209 (class 2606 OID 40993)
-- Name: accessory accessory_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.accessory
    ADD CONSTRAINT accessory_pkey PRIMARY KEY (id);


--
-- TOC entry 3215 (class 2606 OID 41040)
-- Name: bestseller bestseller_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bestseller
    ADD CONSTRAINT bestseller_pkey PRIMARY KEY (id);


--
-- TOC entry 3219 (class 2606 OID 65562)
-- Name: cart cart_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cart
    ADD CONSTRAINT cart_pkey PRIMARY KEY (product_id);


--
-- TOC entry 3213 (class 2606 OID 41031)
-- Name: feeds feeds_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feeds
    ADD CONSTRAINT feeds_pkey PRIMARY KEY (id);


--
-- TOC entry 3217 (class 2606 OID 57375)
-- Name: limitedstocks limitedstocks_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.limitedstocks
    ADD CONSTRAINT limitedstocks_pkey PRIMARY KEY (id);


--
-- TOC entry 3211 (class 2606 OID 41012)
-- Name: pets pets_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pets
    ADD CONSTRAINT pets_pkey PRIMARY KEY (id);


-- Completed on 2025-08-01 07:31:07

--
-- PostgreSQL database dump complete
--

