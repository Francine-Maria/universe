--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer,
    amount numeric,
    comment text,
    favorite boolean,
    star_id integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer,
    amount numeric,
    comment text,
    favorite boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer,
    amount numeric,
    comment text,
    favorite boolean,
    moon_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer,
    amount numeric,
    comment text,
    favorite boolean,
    planet_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: world; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.world (
    world_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer
);


ALTER TABLE public.world OWNER TO freecodecamp;

--
-- Name: world_world_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.world_world_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.world_world_id_seq OWNER TO freecodecamp;

--
-- Name: world_world_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.world_world_id_seq OWNED BY public.world.world_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: world world_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.world ALTER COLUMN world_id SET DEFAULT nextval('public.world_world_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Talxy', 8099, 8990.00, 'A big galaxy', true, 1);
INSERT INTO public.galaxy VALUES (2, 'Kalxy', 700, 8993.90, 'A bigger star', true, 2);
INSERT INTO public.galaxy VALUES (3, 'Jalaxy', 40000, 780.90, 'A small galaxy', false, 3);
INSERT INTO public.galaxy VALUES (4, 'Salaxy', 9000, 8098.00, 'A smalish star', false, 4);
INSERT INTO public.galaxy VALUES (5, 'Galxy', 2000, 8990.34, 'A puny star', false, 5);
INSERT INTO public.galaxy VALUES (6, 'Olcxy', 80003, 6479.82, 'A tiny star', true, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 300, 500.50, 'A good moon', true);
INSERT INTO public.moon VALUES (2, 'Yuna', 100, 100.50, 'A bad moon', false);
INSERT INTO public.moon VALUES (3, 'Puna', 400, 400.50, 'A terible moon', false);
INSERT INTO public.moon VALUES (4, 'Tuna', 600, 600.60, 'A beautiful moon', true);
INSERT INTO public.moon VALUES (5, 'Kuna', 700, 700.00, 'An awesome moon', true);
INSERT INTO public.moon VALUES (6, 'Suna', 550, 550.50, 'An amazing moon', false);
INSERT INTO public.moon VALUES (7, 'Moone', 39839, 3498.23, 'Funny moon', true);
INSERT INTO public.moon VALUES (8, 'Boome', 23823, 23443.23, 'Sunr moon', true);
INSERT INTO public.moon VALUES (9, 'Bldk', 9238, 23.44, 'Dlka moon', true);
INSERT INTO public.moon VALUES (10, 'Mans', 44424, 343.34, 'ljkkja moon', false);
INSERT INTO public.moon VALUES (11, 'Djkw', 243423, 2342.23, 'Kbhahbfh moon', true);
INSERT INTO public.moon VALUES (12, 'Jfkjiu', 55632, 452345.34, 'Gfka moon', true);
INSERT INTO public.moon VALUES (13, 'Kkjajbbf', 234323, 232343.23, 'Hjaj moon', false);
INSERT INTO public.moon VALUES (14, 'KJha', 322323, 34323.23, 'Djhfhu moon', false);
INSERT INTO public.moon VALUES (15, 'Ejha', 4246, 234.56, 'Ianjkd moon', true);
INSERT INTO public.moon VALUES (16, 'Ubafbb', 8298939, 322321.98, 'Dawakh moon', false);
INSERT INTO public.moon VALUES (17, 'Jieiigay', 283934, 34333.22, 'Gakjeh moon', true);
INSERT INTO public.moon VALUES (18, 'Hahh', 78889, 98898.09, 'Hkjjh moon', true);
INSERT INTO public.moon VALUES (19, 'Yjhf', 39897, 9089.88, 'Ufbeff moon', false);
INSERT INTO public.moon VALUES (20, 'Efjha', 9098987, 899.33, 'Ufjfbjh moon', true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mars', 10000, 1000.50, 'A good planet', true, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 15000, 1400.50, 'A bad planet', false, 2);
INSERT INTO public.planet VALUES (3, 'Earth', 10000, 1200.50, 'A very good planet', true, 3);
INSERT INTO public.planet VALUES (4, 'Mercury', 4000, 4500.00, 'A terible planet', false, 4);
INSERT INTO public.planet VALUES (5, 'Jupiter', 6000, 6500.00, 'A just planet', true, 5);
INSERT INTO public.planet VALUES (6, 'Saturn', 4009, 3445.90, 'A suuny planet', true, 6);
INSERT INTO public.planet VALUES (7, 'Hola', 6404, 8933.09, 'Bully planet', true, NULL);
INSERT INTO public.planet VALUES (8, 'Gola', 6489, 8956.09, 'Sully planet', true, NULL);
INSERT INTO public.planet VALUES (9, 'Sunly', 3384, 89334.34, 'Nun planet', false, NULL);
INSERT INTO public.planet VALUES (10, 'Gkae', 28482, 2302.38, ' Hoai planet', true, NULL);
INSERT INTO public.planet VALUES (11, 'Khahu', 97922, 2393.21, 'Pkja planet', false, NULL);
INSERT INTO public.planet VALUES (12, 'Naen', 28923, 2332.24, 'Bjk planet', false, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Kone', 3000, 400.89, 'A shiny star', true, 1);
INSERT INTO public.star VALUES (2, 'Lone', 20000, 600.39, 'A bright star', true, 2);
INSERT INTO public.star VALUES (3, 'Done', 10000, 20098.83, 'A sunny star', false, 3);
INSERT INTO public.star VALUES (4, 'Tone', 5000, 8999.99, 'A stune star', false, 4);
INSERT INTO public.star VALUES (5, 'Sone', 66000, 4444.00, 'A cool star', false, 5);
INSERT INTO public.star VALUES (6, 'Hone', 7000, 5008.38, 'A sop star', false, 6);


--
-- Data for Name: world; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.world VALUES (1, 'Mine', 4);
INSERT INTO public.world VALUES (2, 'Your', 9);
INSERT INTO public.world VALUES (3, 'Their', 7);
INSERT INTO public.world VALUES (4, 'Our', 7);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: world_world_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.world_world_id_seq', 1, false);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: world world_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.world
    ADD CONSTRAINT world_name_key UNIQUE (name);


--
-- Name: world world_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.world
    ADD CONSTRAINT world_pkey PRIMARY KEY (world_id);


--
-- Name: galaxy galaxy_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: planet planet_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: star star_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- PostgreSQL database dump complete
--

