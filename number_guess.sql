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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer,
    best_game integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22)
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
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (247, 88, 10);
INSERT INTO public.games VALUES (248, 88, 228);
INSERT INTO public.games VALUES (249, 89, 813);
INSERT INTO public.games VALUES (250, 89, 964);
INSERT INTO public.games VALUES (251, 88, 324);
INSERT INTO public.games VALUES (252, 88, 601);
INSERT INTO public.games VALUES (253, 88, 452);
INSERT INTO public.games VALUES (254, 90, 97);
INSERT INTO public.games VALUES (255, 90, 486);
INSERT INTO public.games VALUES (256, 91, 526);
INSERT INTO public.games VALUES (257, 91, 851);
INSERT INTO public.games VALUES (258, 90, 880);
INSERT INTO public.games VALUES (259, 90, 215);
INSERT INTO public.games VALUES (260, 90, 443);
INSERT INTO public.games VALUES (261, 92, 343);
INSERT INTO public.games VALUES (262, 92, 875);
INSERT INTO public.games VALUES (263, 93, 913);
INSERT INTO public.games VALUES (264, 93, 449);
INSERT INTO public.games VALUES (265, 92, 59);
INSERT INTO public.games VALUES (266, 92, 809);
INSERT INTO public.games VALUES (267, 92, 352);
INSERT INTO public.games VALUES (268, 94, 283);
INSERT INTO public.games VALUES (269, 94, 287);
INSERT INTO public.games VALUES (270, 95, 822);
INSERT INTO public.games VALUES (271, 95, 221);
INSERT INTO public.games VALUES (272, 94, 367);
INSERT INTO public.games VALUES (273, 94, 846);
INSERT INTO public.games VALUES (274, 94, 27);
INSERT INTO public.games VALUES (275, 96, 508);
INSERT INTO public.games VALUES (276, 96, 194);
INSERT INTO public.games VALUES (277, 97, 128);
INSERT INTO public.games VALUES (278, 97, 266);
INSERT INTO public.games VALUES (279, 96, 880);
INSERT INTO public.games VALUES (280, 96, 70);
INSERT INTO public.games VALUES (281, 96, 874);
INSERT INTO public.games VALUES (282, 98, 13);
INSERT INTO public.games VALUES (283, 98, 824);
INSERT INTO public.games VALUES (284, 99, 455);
INSERT INTO public.games VALUES (285, 99, 507);
INSERT INTO public.games VALUES (286, 98, 300);
INSERT INTO public.games VALUES (287, 98, 21);
INSERT INTO public.games VALUES (288, 98, 464);
INSERT INTO public.games VALUES (289, 100, 904);
INSERT INTO public.games VALUES (290, 100, 418);
INSERT INTO public.games VALUES (291, 101, 926);
INSERT INTO public.games VALUES (292, 101, 806);
INSERT INTO public.games VALUES (293, 100, 143);
INSERT INTO public.games VALUES (294, 100, 417);
INSERT INTO public.games VALUES (295, 100, 450);
INSERT INTO public.games VALUES (296, 102, 755);
INSERT INTO public.games VALUES (297, 102, 332);
INSERT INTO public.games VALUES (298, 103, 122);
INSERT INTO public.games VALUES (299, 103, 933);
INSERT INTO public.games VALUES (300, 102, 258);
INSERT INTO public.games VALUES (301, 102, 213);
INSERT INTO public.games VALUES (302, 102, 148);
INSERT INTO public.games VALUES (303, 104, 526);
INSERT INTO public.games VALUES (304, 104, 478);
INSERT INTO public.games VALUES (305, 105, 959);
INSERT INTO public.games VALUES (306, 105, 528);
INSERT INTO public.games VALUES (307, 104, 105);
INSERT INTO public.games VALUES (308, 104, 741);
INSERT INTO public.games VALUES (309, 104, 496);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (88, 'user_1720448363032');
INSERT INTO public.users VALUES (89, 'user_1720448363031');
INSERT INTO public.users VALUES (90, 'user_1720448365209');
INSERT INTO public.users VALUES (91, 'user_1720448365208');
INSERT INTO public.users VALUES (92, 'user_1720448368386');
INSERT INTO public.users VALUES (93, 'user_1720448368385');
INSERT INTO public.users VALUES (94, 'user_1720448370580');
INSERT INTO public.users VALUES (95, 'user_1720448370579');
INSERT INTO public.users VALUES (96, 'user_1720448372620');
INSERT INTO public.users VALUES (97, 'user_1720448372619');
INSERT INTO public.users VALUES (98, 'user_1720448374803');
INSERT INTO public.users VALUES (99, 'user_1720448374802');
INSERT INTO public.users VALUES (100, 'user_1720448378942');
INSERT INTO public.users VALUES (101, 'user_1720448378941');
INSERT INTO public.users VALUES (102, 'user_1720448542087');
INSERT INTO public.users VALUES (103, 'user_1720448542086');
INSERT INTO public.users VALUES (104, 'user_1720448576558');
INSERT INTO public.users VALUES (105, 'user_1720448576557');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 309, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 105, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


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
-- Name: games fk_user_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

