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
    username character varying(22) NOT NULL,
    total_guesses integer NOT NULL
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
-- Name: players; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.players (
    player_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.players OWNER TO freecodecamp;

--
-- Name: players_player_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.players_player_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.players_player_id_seq OWNER TO freecodecamp;

--
-- Name: players_player_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.players_player_id_seq OWNED BY public.players.player_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: players player_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players ALTER COLUMN player_id SET DEFAULT nextval('public.players_player_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 'user_1695635595706', 929);
INSERT INTO public.games VALUES (2, 'user_1695635595706', 355);
INSERT INTO public.games VALUES (3, 'user_1695635595705', 400);
INSERT INTO public.games VALUES (4, 'user_1695635595705', 636);
INSERT INTO public.games VALUES (5, 'user_1695635595706', 594);
INSERT INTO public.games VALUES (6, 'user_1695635595706', 702);
INSERT INTO public.games VALUES (7, 'user_1695635595706', 969);
INSERT INTO public.games VALUES (8, 'user_1695635618489', 596);
INSERT INTO public.games VALUES (9, 'user_1695635618489', 618);
INSERT INTO public.games VALUES (10, 'user_1695635618488', 223);
INSERT INTO public.games VALUES (11, 'user_1695635618488', 453);
INSERT INTO public.games VALUES (12, 'user_1695635618489', 665);
INSERT INTO public.games VALUES (13, 'user_1695635618489', 711);
INSERT INTO public.games VALUES (14, 'user_1695635618489', 70);
INSERT INTO public.games VALUES (15, 'user_1695636282997', 605);
INSERT INTO public.games VALUES (16, 'user_1695636282997', 693);
INSERT INTO public.games VALUES (17, 'user_1695636282996', 237);
INSERT INTO public.games VALUES (18, 'user_1695636282996', 596);
INSERT INTO public.games VALUES (19, 'user_1695636282997', 829);
INSERT INTO public.games VALUES (20, 'user_1695636282997', 805);
INSERT INTO public.games VALUES (21, 'user_1695636282997', 264);
INSERT INTO public.games VALUES (22, 'user_1695636309479', 114);
INSERT INTO public.games VALUES (23, 'user_1695636309479', 836);
INSERT INTO public.games VALUES (24, 'user_1695636309478', 868);
INSERT INTO public.games VALUES (25, 'user_1695636309478', 433);
INSERT INTO public.games VALUES (26, 'user_1695636309479', 65);
INSERT INTO public.games VALUES (27, 'user_1695636309479', 137);
INSERT INTO public.games VALUES (28, 'user_1695636309479', 375);


--
-- Data for Name: players; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.players VALUES (1, 'user_1695633491234');
INSERT INTO public.players VALUES (2, 'user_1695633491233');
INSERT INTO public.players VALUES (3, 'user_1695633531355');
INSERT INTO public.players VALUES (4, 'user_1695633531354');
INSERT INTO public.players VALUES (5, 'user_1695634137945');
INSERT INTO public.players VALUES (6, 'user_1695634137944');
INSERT INTO public.players VALUES (7, 'user_1695634769516');
INSERT INTO public.players VALUES (8, 'user_1695634769515');
INSERT INTO public.players VALUES (9, 'user_1695634795712');
INSERT INTO public.players VALUES (10, 'user_1695634795711');
INSERT INTO public.players VALUES (11, 'user_1695634814303');
INSERT INTO public.players VALUES (12, 'user_1695634814302');
INSERT INTO public.players VALUES (13, 'user_1695634888447');
INSERT INTO public.players VALUES (14, 'user_1695634888446');
INSERT INTO public.players VALUES (15, 'user_1695635595706');
INSERT INTO public.players VALUES (16, 'user_1695635595705');
INSERT INTO public.players VALUES (17, 'user_1695635618489');
INSERT INTO public.players VALUES (18, 'user_1695635618488');
INSERT INTO public.players VALUES (19, 'user_1695636282997');
INSERT INTO public.players VALUES (20, 'user_1695636282996');
INSERT INTO public.players VALUES (21, 'user_1695636309479');
INSERT INTO public.players VALUES (22, 'user_1695636309478');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 28, true);


--
-- Name: players_player_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.players_player_id_seq', 22, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: players players_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_pkey PRIMARY KEY (player_id);


--
-- Name: players unique_username; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT unique_username UNIQUE (username);


--
-- Name: games games_username_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_username_fkey FOREIGN KEY (username) REFERENCES public.players(username);


--
-- PostgreSQL database dump complete
--

