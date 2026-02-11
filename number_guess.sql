--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL,
    games_played integer DEFAULT 0,
    best_game integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (25, 'user_1770787704528', 5, 320);
INSERT INTO public.users VALUES (2, 'user_1770786178394', 2, 696);
INSERT INTO public.users VALUES (16, 'user_1770786495484', 2, 75);
INSERT INTO public.users VALUES (1, 'user_1770786178395', 5, 66);
INSERT INTO public.users VALUES (15, 'user_1770786495485', 5, 26);
INSERT INTO public.users VALUES (28, 'user_1770787786564', 2, 30);
INSERT INTO public.users VALUES (4, 'user_1770786189125', 2, 395);
INSERT INTO public.users VALUES (39, 'user_1770788008751', 2, 268);
INSERT INTO public.users VALUES (27, 'user_1770787786565', 5, 25);
INSERT INTO public.users VALUES (3, 'user_1770786189126', 5, 22);
INSERT INTO public.users VALUES (18, 'user_1770786548748', 2, 522);
INSERT INTO public.users VALUES (17, 'user_1770786548749', 5, 106);
INSERT INTO public.users VALUES (38, 'user_1770788008752', 5, 321);
INSERT INTO public.users VALUES (6, 'user_1770786243160', 2, 280);
INSERT INTO public.users VALUES (5, 'user_1770786243161', 5, 128);
INSERT INTO public.users VALUES (20, 'user_1770787094770', 2, 68);
INSERT INTO public.users VALUES (30, 'user_1770787801692', 2, 12);
INSERT INTO public.users VALUES (8, 'user_1770786295139', 2, 472);
INSERT INTO public.users VALUES (19, 'user_1770787094771', 5, 11);
INSERT INTO public.users VALUES (7, 'user_1770786295140', 5, 300);
INSERT INTO public.users VALUES (41, 'user_1770788193207', 2, 730);
INSERT INTO public.users VALUES (29, 'user_1770787801693', 5, 63);
INSERT INTO public.users VALUES (10, 'user_1770786337585', 2, 304);
INSERT INTO public.users VALUES (40, 'user_1770788193208', 5, 107);
INSERT INTO public.users VALUES (22, 'user_1770787472160', 2, 166);
INSERT INTO public.users VALUES (9, 'user_1770786337586', 5, 301);
INSERT INTO public.users VALUES (21, 'user_1770787472161', 5, 136);
INSERT INTO public.users VALUES (12, 'user_1770786378158', 2, 592);
INSERT INTO public.users VALUES (32, 'user_1770787811842', 2, 573);
INSERT INTO public.users VALUES (11, 'user_1770786378159', 5, 242);
INSERT INTO public.users VALUES (24, 'user_1770787570120', 2, 302);
INSERT INTO public.users VALUES (31, 'user_1770787811843', 5, 337);
INSERT INTO public.users VALUES (14, 'user_1770786382385', 2, 480);
INSERT INTO public.users VALUES (23, 'user_1770787570121', 5, 50);
INSERT INTO public.users VALUES (33, 'xxx', 1, 11);
INSERT INTO public.users VALUES (13, 'user_1770786382386', 5, 13);
INSERT INTO public.users VALUES (43, 'user_1770788262036', 2, 323);
INSERT INTO public.users VALUES (26, 'user_1770787704527', 2, 98);
INSERT INTO public.users VALUES (42, 'user_1770788262037', 5, 40);
INSERT INTO public.users VALUES (44, 'user_1770788351739', 0, NULL);
INSERT INTO public.users VALUES (35, 'user_1770787931025', 2, 293);
INSERT INTO public.users VALUES (45, 'user_1770788351738', 0, NULL);
INSERT INTO public.users VALUES (46, 'user_1770788479785', 0, NULL);
INSERT INTO public.users VALUES (34, 'user_1770787931026', 5, 148);
INSERT INTO public.users VALUES (47, 'user_1770788479784', 0, NULL);
INSERT INTO public.users VALUES (48, 'user_1770788611034', 0, NULL);
INSERT INTO public.users VALUES (49, 'user_1770788611033', 0, NULL);
INSERT INTO public.users VALUES (50, 'user_1770788669193', 0, NULL);
INSERT INTO public.users VALUES (51, 'user_1770788669192', 0, NULL);
INSERT INTO public.users VALUES (52, 'user_1770788720201', 0, NULL);
INSERT INTO public.users VALUES (53, 'user_1770788720200', 0, NULL);
INSERT INTO public.users VALUES (37, 'user_1770787972688', 2, 658);
INSERT INTO public.users VALUES (54, 'user_1770788817113', 0, NULL);
INSERT INTO public.users VALUES (55, 'user_1770788817112', 0, NULL);
INSERT INTO public.users VALUES (36, 'user_1770787972689', 5, 106);
INSERT INTO public.users VALUES (56, 'user_1770788853381', 0, NULL);
INSERT INTO public.users VALUES (57, 'user_1770788853380', 0, NULL);
INSERT INTO public.users VALUES (58, 'user_1770788921719', 0, NULL);
INSERT INTO public.users VALUES (59, 'user_1770788921718', 0, NULL);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 59, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- PostgreSQL database dump complete
--

