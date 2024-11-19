--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: comets; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comets (
    comets_id integer NOT NULL,
    name character varying(50) NOT NULL,
    discovery_date date
);


ALTER TABLE public.comets OWNER TO freecodecamp;

--
-- Name: comets_comet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comets_comet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comets_comet_id_seq OWNER TO freecodecamp;

--
-- Name: comets_comet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comets_comet_id_seq OWNED BY public.comets.comets_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age_in_millions_of_years integer,
    type_of_galaxy text NOT NULL,
    dominant_element text
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
    name character varying(50) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    planet_id integer,
    diameter_km numeric
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
    name character varying(50) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth numeric,
    neighbour_planets text,
    has_life boolean,
    been_visited boolean,
    star_id integer
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
    name character varying(50) NOT NULL,
    age_in_millions_of_years integer,
    galaxy_id integer,
    temperature_kelvin numeric NOT NULL
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
-- Name: comets comets_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comets ALTER COLUMN comets_id SET DEFAULT nextval('public.comets_comet_id_seq'::regclass);


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
-- Data for Name: comets; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comets VALUES (1, 'Hale-Bop', NULL);
INSERT INTO public.comets VALUES (2, 'Borrelly', NULL);
INSERT INTO public.comets VALUES (3, 'Proxima_Comet', NULL);
INSERT INTO public.comets VALUES (4, 'Sirius_Comet', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (4, 'Whirlpool Galaxy', 11000, 'spiral', NULL);
INSERT INTO public.galaxy VALUES (5, 'Sombrero Galaxy', 12700, 'lenticular', NULL);
INSERT INTO public.galaxy VALUES (6, 'Large Magellanic', 13600, 'irregular', NULL);
INSERT INTO public.galaxy VALUES (1, 'Milky Way', NULL, 'spiral', 'hydrogen');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', NULL, 'spiral', 'hydrogen');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', NULL, 'spiral', 'helium');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'Caloris', 4500, 1, NULL);
INSERT INTO public.moon VALUES (3, 'Hemes', 4500, 1, NULL);
INSERT INTO public.moon VALUES (4, 'Aphro', 4500, 2, NULL);
INSERT INTO public.moon VALUES (5, 'Luna', 4500, 3, NULL);
INSERT INTO public.moon VALUES (6, 'Phobos', 4500, 4, NULL);
INSERT INTO public.moon VALUES (7, 'Deimos', 4500, 4, NULL);
INSERT INTO public.moon VALUES (9, 'Io', 4500, 7, NULL);
INSERT INTO public.moon VALUES (10, 'Europa', 4500, 7, NULL);
INSERT INTO public.moon VALUES (11, 'Ganymede', 4500, 7, NULL);
INSERT INTO public.moon VALUES (13, 'Titan', 4500, 8, NULL);
INSERT INTO public.moon VALUES (14, 'Enceladus', 4500, 8, NULL);
INSERT INTO public.moon VALUES (15, 'Mimas', 4500, 8, NULL);
INSERT INTO public.moon VALUES (16, 'Oberon', 4500, 9, NULL);
INSERT INTO public.moon VALUES (17, 'Titania', 4500, 9, NULL);
INSERT INTO public.moon VALUES (18, 'Ariel', 4500, 9, NULL);
INSERT INTO public.moon VALUES (19, 'Triton', 4500, 10, NULL);
INSERT INTO public.moon VALUES (20, 'Nereid', 4500, 10, NULL);
INSERT INTO public.moon VALUES (21, 'TRAPPIST-1e Alpha', 7500, 11, NULL);
INSERT INTO public.moon VALUES (22, 'TRAPPIST-1e Beta', 7500, 11, NULL);
INSERT INTO public.moon VALUES (23, 'TRAPPIST-1f Alpha', 7500, 12, NULL);
INSERT INTO public.moon VALUES (24, 'TRAPPIST-1f Beta', 7500, 12, NULL);
INSERT INTO public.moon VALUES (25, 'TRAPPIST-1f Gamma', 7500, 12, NULL);
INSERT INTO public.moon VALUES (1, 'Moon', 4500, 3, 3474.8);
INSERT INTO public.moon VALUES (12, 'Callisto', 4500, 7, 4820.6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 4600, NULL, 'Venus', false, false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 4600, NULL, 'Mercury, Earth', false, false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 4540, NULL, 'Venus, Mars', true, true, 1);
INSERT INTO public.planet VALUES (4, 'Proxima b', 5000, NULL, NULL, false, false, 2);
INSERT INTO public.planet VALUES (5, 'Sirius b', 10000, NULL, NULL, false, false, 3);
INSERT INTO public.planet VALUES (6, 'Jupiter', 4500, 638.73, 'Mars, Saturn', false, true, 1);
INSERT INTO public.planet VALUES (9, 'Saturn', 4500, 1275, 'Jupiter, Uranus', false, true, 1);
INSERT INTO public.planet VALUES (10, 'Uranus', 4500, 2722, 'Saturn, Neptune', false, false, 1);
INSERT INTO public.planet VALUES (11, 'Neptune', 4500, 4351, 'Uranus', false, false, 1);
INSERT INTO public.planet VALUES (12, 'TRAPPIST-1e', 7500, 39.5, 'TRAPPIST-1d, TRAPPIST-1f', false, false, 6);
INSERT INTO public.planet VALUES (13, 'TRAPPIST-1f', 7500, 39.5, 'TRAPPIST-1e, TRAPPIST-1g', false, false, 6);
INSERT INTO public.planet VALUES (14, 'Mars', 4500, 78.3, 'Earth, Jupiter', false, true, 1);
INSERT INTO public.planet VALUES (7, 'Gliese', 7000, 20.3, 'None', false, false, 2);
INSERT INTO public.planet VALUES (8, 'Kepler', 4200, 600, 'None', false, false, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', NULL, 1, 5778);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', NULL, 2, 3050);
INSERT INTO public.star VALUES (3, 'Sirius', NULL, 3, 9940);
INSERT INTO public.star VALUES (4, 'Rigel', 8, 1, 12100);
INSERT INTO public.star VALUES (5, 'Betelgeuse', 10, 1, 3500);
INSERT INTO public.star VALUES (6, 'TRAPPIST-1', 7500, 6, 4000);


--
-- Name: comets_comet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comets_comet_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 9, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 25, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: comets comet_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comets
    ADD CONSTRAINT comet_id_unique UNIQUE (comets_id);


--
-- Name: comets comets_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comets
    ADD CONSTRAINT comets_pkey PRIMARY KEY (comets_id);


--
-- Name: galaxy galaxy_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id_unique UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id_unique UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_unique UNIQUE (planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_unique UNIQUE (star_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_sta_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_sta_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

