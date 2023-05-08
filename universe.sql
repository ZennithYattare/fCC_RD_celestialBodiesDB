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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying NOT NULL,
    type character varying,
    is_hazardous boolean NOT NULL
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    size integer NOT NULL,
    age numeric NOT NULL,
    has_black_hole boolean NOT NULL,
    has_dark_matter boolean NOT NULL,
    description text
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
    name character varying NOT NULL,
    radius numeric NOT NULL,
    mass numeric NOT NULL,
    is_inhabited boolean NOT NULL,
    planet_id integer NOT NULL
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
    name character varying NOT NULL,
    radius numeric NOT NULL,
    mass numeric NOT NULL,
    is_habitable boolean NOT NULL,
    star_id integer NOT NULL
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
    name character varying NOT NULL,
    age integer NOT NULL,
    mass numeric NOT NULL,
    is_main_sequence boolean NOT NULL,
    galaxy_id integer NOT NULL
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
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


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
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'Ceres', 'Dwarf planet', false);
INSERT INTO public.asteroid VALUES (2, 'Vesta', 'Asteroid', true);
INSERT INTO public.asteroid VALUES (3, 'Bennu', 'Near Earth Object', true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 220000, 10000, true, true, 'A spiral galaxy located approximately 2.5 million light-years from Earth.');
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 100000, 13000, true, true, 'A barred spiral galaxy that contains our Solar System.');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 50000, 6000, false, true, 'A small spiral galaxy located approximately 3 million light-years from Earth.');
INSERT INTO public.galaxy VALUES (4, 'Canis Major Dwarf', 25000, 12000, false, true, 'A dwarf galaxy located approximately 25,000 light-years from Earth.');
INSERT INTO public.galaxy VALUES (5, 'Small Magellanic Cloud', 7000, 20000, false, true, 'A dwarf galaxy located approximately 200,000 light-years from Earth.');
INSERT INTO public.galaxy VALUES (6, 'Large Magellanic Cloud', 14000, 13000, false, true, 'A dwarf galaxy located approximately 160,000 light-years from Earth.');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 1737.1, 73420000000000000000000, false, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 11.1, 10720000000000000, false, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 6.2, 1476200000000000, false, 2);
INSERT INTO public.moon VALUES (4, 'Io', 1821.6, 89319000000000000000000, false, 3);
INSERT INTO public.moon VALUES (5, 'Europa', 1560.8, 47998000000000000000000, false, 3);
INSERT INTO public.moon VALUES (6, 'Ganymede', 2634.1, 148190000000000000000000, false, 3);
INSERT INTO public.moon VALUES (7, 'Callisto', 2410.3, 107590000000000000000000, false, 3);
INSERT INTO public.moon VALUES (8, 'Phoebe', 106.6, 8292000000000000000, false, 4);
INSERT INTO public.moon VALUES (9, 'Hyperion', 135, 5620000000000000000, false, 4);
INSERT INTO public.moon VALUES (10, 'Iapetus', 735.6, 1805500000000000000000, false, 4);
INSERT INTO public.moon VALUES (11, 'Titan', 2575, 134520000000000000000000, false, 4);
INSERT INTO public.moon VALUES (12, 'Rhea', 764.5, 2306500000000000000000, false, 4);
INSERT INTO public.moon VALUES (13, 'Mimas', 198.2, 37500000000000000000, false, 5);
INSERT INTO public.moon VALUES (14, 'Enceladus', 252.1, 108020000000000000000, false, 5);
INSERT INTO public.moon VALUES (15, 'Tethys', 531.1, 617490000000000000000, false, 5);
INSERT INTO public.moon VALUES (16, 'Dione', 561.7, 1095452000000000000000, false, 5);
INSERT INTO public.moon VALUES (17, 'Charon', 606, 1520000000000000000000, false, 6);
INSERT INTO public.moon VALUES (18, 'Nix', 23, 45000000000000000, false, 6);
INSERT INTO public.moon VALUES (19, 'Hydra', 33, 82000000000000000, false, 6);
INSERT INTO public.moon VALUES (20, 'Styx', 10, 750000000000000, false, 6);
INSERT INTO public.moon VALUES (21, 'Kerberos', 12, 1630000000000000, false, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 2439.7, 0.330, false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 6051.8, 4.87, false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 6371.0, 5.97, true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 3389.5, 0.642, false, 2);
INSERT INTO public.planet VALUES (5, 'Jupiter', 69911, 1898, false, 3);
INSERT INTO public.planet VALUES (6, 'Saturn', 58232, 568, false, 3);
INSERT INTO public.planet VALUES (7, 'Uranus', 25362, 86.8, false, 4);
INSERT INTO public.planet VALUES (8, 'Neptune', 24622, 102, false, 4);
INSERT INTO public.planet VALUES (9, 'Pluto', 1188.3, 0.0146, false, 5);
INSERT INTO public.planet VALUES (10, 'Kepler-22b', 12000, 0.22, false, 6);
INSERT INTO public.planet VALUES (11, 'HD 209458 b', 15000, 0.69, false, 6);
INSERT INTO public.planet VALUES (12, 'Gliese 876 d', 18000, 6.5, false, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4600, 1.9885, true, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 5330, 0.123, true, 1);
INSERT INTO public.star VALUES (3, 'Alpha Centauri A', 6100, 1.1, true, 1);
INSERT INTO public.star VALUES (4, 'Alpha Centauri B', 6000, 0.907, true, 1);
INSERT INTO public.star VALUES (5, 'Sirius A', 25000, 2.063, true, 1);
INSERT INTO public.star VALUES (6, 'Sirius B', 25000, 1.018, false, 1);
INSERT INTO public.star VALUES (7, 'Vega', 455, 2.135, true, 2);
INSERT INTO public.star VALUES (8, 'Betelgeuse', 8000, 20, false, 2);
INSERT INTO public.star VALUES (9, 'Rigel', 8000, 23.2, false, 2);
INSERT INTO public.star VALUES (10, 'Canopus', 31000, 8.56, false, 2);
INSERT INTO public.star VALUES (11, 'Antares', 6000, 17, false, 3);
INSERT INTO public.star VALUES (12, 'Pollux', 7240, 1.8, true, 3);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 12, true);


--
-- Name: asteroid asteroid_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_name_unique UNIQUE (name);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_unique UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_unique UNIQUE (name);


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
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

