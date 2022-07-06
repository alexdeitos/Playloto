--
-- PostgreSQL database cluster dump
--

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Drop databases (except postgres and template1)
--





--
-- Drop roles
--

DROP ROLE postgres;


--
-- Roles
--

CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'md53175bce1d3201d16594cebf9d7eb3f9d';






--
-- Databases
--

--
-- Database "template1" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 13.7 (Debian 13.7-1.pgdg110+1)
-- Dumped by pg_dump version 13.7 (Debian 13.7-1.pgdg110+1)

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

UPDATE pg_catalog.pg_database SET datistemplate = false WHERE datname = 'template1';
DROP DATABASE template1;
--
-- Name: template1; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE template1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';


ALTER DATABASE template1 OWNER TO postgres;

\connect template1

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

--
-- Name: DATABASE template1; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE template1 IS 'default template for new databases';


--
-- Name: template1; Type: DATABASE PROPERTIES; Schema: -; Owner: postgres
--

ALTER DATABASE template1 IS_TEMPLATE = true;


\connect template1

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

--
-- Name: DATABASE template1; Type: ACL; Schema: -; Owner: postgres
--

REVOKE CONNECT,TEMPORARY ON DATABASE template1 FROM PUBLIC;
GRANT CONNECT ON DATABASE template1 TO PUBLIC;


--
-- PostgreSQL database dump complete
--

--
-- Database "postgres" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 13.7 (Debian 13.7-1.pgdg110+1)
-- Dumped by pg_dump version 13.7 (Debian 13.7-1.pgdg110+1)

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

DROP DATABASE postgres;
--
-- Name: postgres; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';


ALTER DATABASE postgres OWNER TO postgres;

\connect postgres

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

--
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: apploto_meusjogos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.apploto_meusjogos (
    id bigint NOT NULL,
    data_sorteio date NOT NULL,
    "B1" smallint NOT NULL,
    "B2" smallint NOT NULL,
    "B3" smallint NOT NULL,
    "B4" smallint NOT NULL,
    "B5" smallint NOT NULL,
    "B6" smallint NOT NULL,
    "B7" smallint NOT NULL,
    "B8" smallint NOT NULL,
    "B9" smallint NOT NULL,
    "B10" smallint NOT NULL,
    "B11" smallint NOT NULL,
    "B12" smallint NOT NULL,
    "B13" smallint NOT NULL,
    "B14" smallint NOT NULL,
    "B15" smallint NOT NULL,
    concurso bigint NOT NULL
);


ALTER TABLE public.apploto_meusjogos OWNER TO postgres;

--
-- Name: apploto_sorteio; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.apploto_sorteio (
    concurso bigint NOT NULL,
    data_sorteio date NOT NULL,
    "B1" smallint NOT NULL,
    "B2" smallint NOT NULL,
    "B3" smallint NOT NULL,
    "B4" smallint NOT NULL,
    "B5" smallint NOT NULL,
    "B6" smallint NOT NULL,
    "B7" smallint NOT NULL,
    "B8" smallint NOT NULL,
    "B9" smallint NOT NULL,
    "B10" smallint NOT NULL,
    "B11" smallint NOT NULL,
    "B12" smallint NOT NULL,
    "B13" smallint NOT NULL,
    "B14" smallint NOT NULL,
    "B15" smallint NOT NULL,
    qtd_ganhadores_15 text NOT NULL
);


ALTER TABLE public.apploto_sorteio OWNER TO postgres;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id bigint NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: users_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users_user (
    id bigint NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.users_user OWNER TO postgres;

--
-- Name: users_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users_user_groups (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.users_user_groups OWNER TO postgres;

--
-- Name: users_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_groups_id_seq OWNER TO postgres;

--
-- Name: users_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_user_groups_id_seq OWNED BY public.users_user_groups.id;


--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO postgres;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users_user.id;


--
-- Name: users_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users_user_user_permissions (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.users_user_user_permissions OWNER TO postgres;

--
-- Name: users_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: users_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_user_user_permissions_id_seq OWNED BY public.users_user_user_permissions.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: users_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user ALTER COLUMN id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Name: users_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_groups ALTER COLUMN id SET DEFAULT nextval('public.users_user_groups_id_seq'::regclass);


--
-- Name: users_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.users_user_user_permissions_id_seq'::regclass);


--
-- Data for Name: apploto_meusjogos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.apploto_meusjogos (id, data_sorteio, "B1", "B2", "B3", "B4", "B5", "B6", "B7", "B8", "B9", "B10", "B11", "B12", "B13", "B14", "B15", concurso) FROM stdin;
\.


--
-- Data for Name: apploto_sorteio; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.apploto_sorteio (concurso, data_sorteio, "B1", "B2", "B3", "B4", "B5", "B6", "B7", "B8", "B9", "B10", "B11", "B12", "B13", "B14", "B15", qtd_ganhadores_15) FROM stdin;
1	2003-09-29	2	3	5	6	9	10	11	13	14	16	18	20	23	24	25	5
2	2003-10-06	1	4	5	6	7	9	11	12	13	15	16	19	20	23	24	1
3	2003-10-13	1	4	6	7	8	9	10	11	12	14	16	17	20	23	24	2
4	2003-10-20	1	2	4	5	8	10	12	13	16	17	18	19	23	24	25	1
5	2003-10-27	1	2	4	8	9	11	12	13	15	16	19	20	23	24	25	2
6	2003-11-03	1	2	4	5	6	7	10	12	15	16	17	19	21	23	25	2
7	2003-11-10	1	4	7	8	10	12	14	15	16	18	19	21	22	23	25	9
8	2003-11-17	1	5	6	8	9	10	13	15	16	17	18	19	20	22	25	1
9	2003-11-24	3	4	5	9	10	11	13	15	16	17	19	20	21	24	25	3
10	2003-12-01	2	3	4	5	6	8	9	10	11	12	14	19	20	23	24	0
11	2003-12-08	2	6	7	8	9	10	11	12	16	19	20	22	23	24	25	0
12	2003-12-15	1	2	4	5	7	8	9	10	11	12	14	16	17	24	25	1
13	2003-12-22	3	5	6	7	8	9	10	11	13	14	15	16	17	19	23	3
14	2003-12-29	1	2	5	6	7	9	13	14	15	18	19	20	21	23	25	3
15	2004-01-05	1	2	4	6	8	10	12	15	16	18	19	21	23	24	25	22
16	2004-01-12	2	5	6	7	8	10	12	13	15	17	19	21	23	24	25	9
17	2004-01-19	1	2	3	5	6	7	9	13	14	16	17	18	19	20	21	1
18	2004-01-26	2	6	7	8	10	11	14	15	17	18	19	20	22	23	24	3
19	2004-02-02	2	5	6	7	8	10	11	13	14	15	16	17	20	23	24	10
20	2004-02-09	3	4	6	7	8	9	10	14	16	17	18	19	20	23	24	9
21	2004-02-16	1	2	4	5	8	11	14	16	18	19	20	22	23	24	25	3
22	2004-02-25	1	2	3	4	5	6	7	9	10	12	13	14	15	22	25	1
23	2004-03-01	1	3	4	5	6	8	10	11	12	14	16	17	18	19	20	1
24	2004-03-08	1	2	3	5	7	10	11	14	17	19	20	21	23	24	25	2
25	2004-03-15	1	2	3	4	5	6	7	9	13	14	16	20	22	23	24	0
26	2004-03-22	5	7	8	9	10	11	13	14	16	17	19	20	21	22	23	3
27	2004-03-29	3	6	8	10	11	12	13	14	15	18	20	21	22	24	25	2
28	2004-04-05	1	3	7	9	10	11	12	13	14	16	17	18	19	20	21	2
29	2004-04-12	1	4	5	6	8	9	13	14	16	17	19	20	21	22	24	5
30	2004-04-19	1	2	3	4	6	7	8	11	14	17	19	20	21	22	23	2
31	2004-04-26	1	2	3	4	9	13	14	15	17	19	20	21	22	24	25	3
32	2004-05-03	1	2	4	6	7	9	10	11	14	15	16	17	20	22	23	2
33	2004-05-10	1	2	5	7	8	10	11	12	14	16	19	20	21	23	24	9
34	2004-05-17	1	2	4	7	8	9	10	11	15	16	18	19	20	21	23	0
35	2004-05-24	1	4	5	6	11	12	13	14	16	17	19	21	22	23	25	1
36	2004-05-31	1	4	5	7	8	10	11	14	17	19	20	21	22	23	24	6
37	2004-06-07	1	3	4	5	8	9	10	11	13	15	20	21	22	23	24	1
38	2004-06-14	1	2	3	6	7	8	9	10	13	14	15	16	22	24	25	0
39	2004-06-21	2	7	8	9	11	13	14	15	17	18	19	21	22	23	24	3
40	2004-06-28	1	2	5	7	8	10	12	13	14	16	17	20	21	22	24	9
41	2004-07-05	2	3	4	9	12	13	15	16	17	18	19	20	21	23	25	5
42	2004-07-12	1	3	4	5	6	8	11	12	14	15	17	21	22	24	25	1
43	2004-07-19	1	3	6	7	8	9	10	14	17	18	19	20	22	23	24	2
44	2004-07-26	3	4	5	6	10	11	12	13	14	18	19	21	23	24	25	0
45	2004-08-02	1	2	3	5	7	9	14	16	17	18	19	21	23	24	25	4
46	2004-08-09	1	2	4	5	6	8	10	11	14	18	19	21	23	24	25	4
47	2004-08-16	1	2	3	4	5	6	8	10	11	13	15	18	20	22	25	16
48	2004-08-23	2	5	6	7	11	13	15	16	17	18	19	20	21	22	23	2
49	2004-08-30	2	4	5	6	8	11	13	15	16	19	20	21	22	23	24	0
50	2004-09-06	1	2	3	6	7	9	10	11	12	13	19	20	21	23	25	1
51	2004-09-13	1	3	5	6	7	8	11	13	14	16	17	20	21	22	23	2
52	2004-09-20	1	2	4	8	9	11	12	13	15	16	21	22	23	24	25	3
53	2004-09-27	1	2	3	6	7	9	11	12	14	17	18	19	20	23	24	4
54	2004-10-04	2	4	5	6	7	8	9	12	14	16	18	20	21	22	24	27
55	2004-10-11	2	3	4	5	6	7	8	9	12	13	15	16	18	19	25	6
56	2004-10-18	1	2	5	9	12	13	14	15	16	17	19	20	22	23	24	0
57	2004-10-25	1	2	3	4	6	7	8	11	12	17	19	20	21	22	25	1
58	2004-11-01	3	4	5	6	11	12	13	14	15	16	17	18	19	20	22	6
59	2004-11-08	1	3	5	6	7	8	10	11	13	14	15	19	20	23	25	2
60	2004-11-16	1	2	3	4	5	8	11	16	17	18	19	22	23	24	25	3
61	2004-11-22	1	4	5	9	11	12	13	14	15	16	19	20	22	23	25	2
62	2004-11-29	1	3	7	8	9	11	13	14	15	16	17	18	20	24	25	5
63	2004-12-06	4	8	9	10	11	12	13	16	17	19	20	21	22	24	25	2
64	2004-12-13	1	2	3	6	7	8	9	10	13	14	17	18	20	23	25	4
65	2004-12-20	1	2	4	7	10	15	16	17	18	19	20	21	22	23	25	0
66	2004-12-27	1	2	4	8	10	11	14	15	16	17	20	21	22	23	24	8
67	2005-01-03	5	7	8	9	10	11	12	13	15	16	20	21	22	23	24	4
68	2005-01-10	1	2	3	5	6	7	8	9	10	12	16	17	22	23	25	2
69	2005-01-17	1	4	7	8	9	10	11	15	17	18	19	20	21	23	24	4
70	2005-01-24	1	2	3	5	6	9	10	12	14	15	16	19	20	24	25	6
71	2005-01-31	1	3	5	6	8	9	11	13	14	15	16	18	21	22	23	4
72	2005-02-09	1	2	5	7	8	11	12	13	15	16	17	18	23	24	25	2
73	2005-02-14	1	2	5	7	10	11	13	14	15	16	17	18	19	21	25	3
74	2005-02-21	1	2	3	4	5	6	8	11	13	15	16	18	22	23	25	7
75	2005-02-28	1	3	4	5	6	7	8	10	11	13	15	16	17	20	25	2
76	2005-03-07	1	3	5	8	9	10	12	13	15	16	17	19	21	23	25	13
77	2005-03-14	2	3	4	6	8	9	11	14	17	18	20	21	22	24	25	4
78	2005-03-21	1	2	3	5	6	7	8	12	13	15	16	17	18	20	23	1
79	2005-03-28	1	2	3	5	9	12	14	15	17	18	20	22	23	24	25	1
80	2005-04-04	1	2	3	4	5	7	9	10	14	15	17	18	20	22	25	1
81	2005-04-11	1	2	3	4	5	6	7	10	11	13	15	16	17	19	21	6
82	2005-04-18	1	4	5	6	8	9	12	13	15	17	18	19	20	22	23	4
83	2005-04-25	1	2	3	5	6	8	10	11	12	13	14	20	23	24	25	3
84	2005-05-02	1	2	4	6	8	12	15	16	17	19	20	22	23	24	25	2
85	2005-05-09	1	2	5	7	8	9	11	13	14	15	16	18	21	22	23	13
86	2005-05-16	2	4	5	6	8	9	12	13	14	17	18	19	23	24	25	14
87	2005-05-23	1	2	3	5	8	9	10	11	13	15	18	20	22	24	25	14
88	2005-05-30	1	2	4	5	8	9	10	11	12	14	17	18	19	24	25	5
89	2005-06-06	1	6	11	12	13	15	16	17	19	20	21	22	23	24	25	2
90	2005-06-13	1	2	3	8	10	11	12	15	17	20	21	22	23	24	25	4
91	2005-06-20	1	4	9	10	11	12	13	14	15	16	17	20	22	23	25	2
92	2005-06-27	1	2	4	6	8	12	13	14	15	17	18	19	21	22	24	5
93	2005-07-04	2	4	5	6	7	9	10	13	17	18	19	20	21	23	24	6
94	2005-07-11	2	4	8	9	11	12	13	15	16	17	18	21	22	23	24	2
95	2005-07-18	1	2	3	4	5	10	11	12	14	15	17	18	19	20	22	2
96	2005-07-25	3	4	6	9	10	12	14	16	17	18	19	21	22	23	24	1
97	2005-08-02	3	4	6	10	12	13	14	15	17	19	20	22	23	24	25	4
98	2005-08-08	1	2	5	6	8	10	11	15	17	18	20	22	23	24	25	5
99	2005-08-15	1	2	3	4	7	10	11	13	14	16	17	20	21	24	25	4
100	2005-08-22	1	3	4	8	9	10	11	12	13	14	16	17	22	23	25	6
101	2005-08-29	1	3	6	7	9	10	13	14	16	17	19	20	21	23	24	9
102	2005-09-05	1	2	3	4	7	9	10	11	12	18	19	21	22	23	25	5
103	2005-09-12	1	2	3	4	5	7	8	10	11	16	17	18	22	23	25	5
104	2005-09-19	5	6	7	10	11	13	14	15	16	18	19	21	22	24	25	2
105	2005-09-26	4	6	7	8	9	10	11	12	13	15	17	19	21	22	25	2
106	2005-10-03	1	2	3	4	5	6	10	12	13	14	15	17	22	23	25	3
107	2005-10-10	1	3	4	6	7	8	9	11	12	15	17	18	21	24	25	1
108	2005-10-17	1	2	4	7	8	9	11	12	14	15	16	18	22	23	25	8
109	2005-10-24	1	3	5	7	9	11	12	13	16	18	20	21	23	24	25	14
110	2005-10-31	1	3	4	5	6	12	13	14	17	19	20	21	22	23	25	2
111	2005-11-07	1	5	6	10	11	12	13	15	17	18	19	21	22	24	25	1
112	2005-11-14	1	2	3	4	6	10	11	14	15	17	18	19	20	21	23	1
113	2005-11-21	1	2	4	5	6	8	11	12	13	14	19	20	21	24	25	3
114	2005-11-28	1	2	3	6	7	8	9	10	11	14	20	21	22	24	25	0
115	2005-12-05	1	4	5	6	7	9	11	12	13	16	17	18	20	21	25	1
116	2005-12-12	1	2	9	10	11	12	13	14	16	18	19	20	21	23	25	2
117	2005-12-19	5	6	7	9	10	11	12	13	14	15	17	18	20	23	25	3
118	2005-12-27	2	4	5	6	8	12	13	14	15	18	19	21	22	23	24	4
119	2006-01-02	1	4	6	8	9	10	11	15	17	18	20	21	22	23	24	1
120	2006-01-09	1	3	5	7	8	11	12	13	15	16	18	19	20	21	24	2
121	2006-01-16	1	2	4	5	7	9	10	11	12	16	17	18	23	24	25	3
122	2006-01-23	1	2	4	5	8	9	10	13	15	17	18	20	22	23	25	8
123	2006-01-30	4	5	6	7	11	12	13	17	18	19	20	21	22	23	24	4
124	2006-02-06	2	3	4	6	7	9	14	15	16	18	19	20	21	24	25	2
125	2006-02-13	2	3	4	6	7	9	10	11	12	15	16	21	22	24	25	2
126	2006-02-20	1	2	3	4	6	7	8	13	14	16	18	21	22	24	25	0
127	2006-03-01	1	2	3	4	5	7	10	11	12	13	18	19	22	23	25	5
128	2006-03-06	2	3	4	6	11	13	14	15	16	17	19	20	21	23	25	2
129	2006-03-13	2	5	6	7	9	11	13	15	18	19	20	21	22	23	25	3
130	2006-03-20	2	3	4	5	6	9	10	12	13	15	17	19	23	24	25	3
131	2006-03-27	2	4	5	6	7	8	11	12	13	15	19	20	22	23	25	1
132	2006-04-03	1	3	4	5	7	9	10	11	14	15	16	17	22	23	25	10
133	2006-04-10	1	3	4	5	8	9	11	13	15	18	19	20	21	22	23	5
134	2006-04-17	1	3	5	7	8	10	11	12	13	14	16	17	19	22	25	4
135	2006-04-24	1	2	5	7	8	10	13	14	15	18	19	20	21	22	25	7
136	2006-05-02	1	2	3	5	6	9	12	13	14	15	17	21	22	23	24	2
137	2006-05-08	2	6	8	9	10	11	12	13	16	17	18	19	20	21	25	2
138	2006-05-15	2	3	4	5	7	8	11	13	15	16	17	21	22	24	25	3
139	2006-05-22	1	2	7	9	12	14	15	16	17	18	19	21	22	23	24	1
140	2006-05-29	1	2	3	6	9	10	12	13	15	18	19	20	22	24	25	7
141	2006-06-05	1	3	7	8	9	10	12	13	16	17	18	19	20	24	25	2
142	2006-06-12	1	2	4	5	6	7	9	15	16	17	18	19	22	23	24	1
143	2006-06-19	1	2	8	9	11	13	15	16	17	19	21	22	23	24	25	5
144	2006-06-26	1	2	4	7	9	11	12	14	17	19	20	21	22	24	25	36
145	2006-07-03	1	2	3	9	10	11	13	14	15	17	18	20	22	24	25	3
146	2006-07-10	1	2	5	8	10	11	12	13	14	16	17	22	23	24	25	6
147	2006-07-17	1	2	4	5	6	10	11	12	13	16	19	21	22	23	25	3
148	2006-07-24	1	2	4	5	8	9	12	13	16	17	20	21	22	24	25	17
149	2006-08-01	2	5	7	9	10	13	15	16	17	18	19	20	23	24	25	5
150	2006-08-07	1	3	5	6	7	8	9	11	14	19	21	22	23	24	25	1
151	2006-08-14	3	4	5	7	9	10	11	12	13	14	16	18	20	23	24	5
152	2006-08-21	3	4	5	6	7	8	13	15	17	19	20	22	23	24	25	3
153	2006-08-28	1	2	4	5	8	11	12	13	17	18	20	21	23	24	25	8
154	2006-09-04	1	2	3	5	6	9	10	11	13	14	15	16	18	23	24	1
155	2006-09-11	2	4	5	8	10	11	14	15	16	18	19	20	21	22	24	0
156	2006-09-18	1	3	4	8	9	10	11	12	13	14	15	19	20	22	23	7
157	2006-09-25	1	2	4	6	7	9	10	12	14	16	18	19	21	24	25	9
158	2006-10-02	2	7	8	9	10	11	12	15	16	17	18	19	20	22	23	2
159	2006-10-09	1	2	3	4	5	6	8	10	11	14	15	17	20	24	25	2
160	2006-10-16	1	3	4	9	10	11	12	14	15	16	17	19	20	21	24	3
161	2006-10-19	1	5	8	11	13	15	16	17	18	20	21	22	23	24	25	0
162	2006-10-23	1	2	3	4	5	6	8	11	12	13	16	18	20	23	24	5
163	2006-10-26	1	2	3	5	6	7	9	13	14	15	20	21	23	24	25	3
164	2006-10-30	1	2	3	5	6	8	10	11	14	15	18	21	22	23	24	1
165	2006-11-03	1	2	4	6	8	9	12	13	14	15	17	18	19	22	25	2
166	2006-11-06	2	3	4	8	9	10	13	14	15	18	19	20	21	22	23	39
167	2006-11-09	1	2	3	6	8	9	10	13	14	16	18	19	22	23	24	3
168	2006-11-13	1	2	3	4	7	10	12	15	16	17	19	20	22	23	24	1
169	2006-11-16	1	4	5	6	7	8	9	10	11	12	15	16	20	21	24	0
170	2006-11-21	1	3	4	5	6	7	8	10	13	16	18	20	22	23	25	1
171	2006-11-23	1	3	4	10	11	12	13	15	16	17	21	22	23	24	25	4
172	2006-11-27	1	2	4	6	7	9	10	11	12	13	18	20	21	22	25	1
173	2006-11-30	2	3	4	5	7	8	11	15	19	20	21	22	23	24	25	0
174	2006-12-04	1	2	4	7	9	10	11	12	13	15	17	20	23	24	25	11
175	2006-12-07	2	3	5	6	7	11	12	13	14	15	16	18	19	21	24	2
176	2006-12-11	2	4	10	11	12	13	15	16	17	18	21	22	23	24	25	1
177	2006-12-14	2	6	7	8	10	11	13	15	16	17	19	20	21	23	24	2
178	2006-12-18	2	3	4	6	8	9	10	14	16	19	20	21	23	24	25	1
179	2006-12-21	2	3	4	5	7	9	13	14	15	17	19	22	23	24	25	6
180	2006-12-26	1	2	3	4	5	6	7	8	10	11	15	17	20	24	25	13
181	2006-12-28	1	4	5	6	7	8	14	15	16	17	19	20	21	22	23	2
182	2007-01-02	2	3	4	7	8	9	11	13	14	17	19	21	22	23	25	7
183	2007-01-04	2	4	6	7	8	11	13	14	16	19	20	21	23	24	25	4
184	2007-01-08	1	3	7	8	9	10	11	15	16	17	18	19	21	23	25	3
185	2007-01-11	1	2	4	6	7	8	9	11	12	15	17	19	20	23	25	3
186	2007-01-15	2	4	5	6	11	12	13	16	17	18	19	22	23	24	25	2
187	2007-01-18	1	3	11	12	13	15	16	17	18	19	21	22	23	24	25	2
188	2007-01-22	2	3	5	8	10	11	13	16	19	20	21	22	23	24	25	6
189	2007-01-25	1	2	4	5	6	7	9	13	16	18	19	20	22	23	24	2
190	2007-01-29	1	3	4	5	7	8	11	13	14	15	16	18	19	23	24	3
191	2007-02-01	2	5	8	9	10	12	13	15	17	18	19	20	21	22	23	1
192	2007-02-05	1	2	3	4	5	6	11	13	14	15	16	21	22	23	24	3
193	2007-02-08	1	2	3	4	5	8	9	10	14	15	16	19	20	21	25	2
194	2007-02-12	2	7	8	9	10	12	13	14	15	17	18	21	22	23	25	1
195	2007-02-15	2	3	4	6	7	8	9	11	12	14	17	18	19	22	23	10
196	2007-02-22	2	3	4	5	10	14	15	16	17	19	20	22	23	24	25	1
197	2007-02-26	3	4	5	6	7	8	9	10	12	13	18	20	21	22	23	4
198	2007-03-01	1	2	4	5	6	7	13	14	15	16	17	18	20	21	25	3
199	2007-03-05	1	2	3	4	5	6	9	11	12	15	19	20	21	22	23	1
200	2007-03-08	1	2	4	5	8	9	11	12	13	14	15	16	21	23	24	2
201	2007-03-12	1	2	4	5	8	9	10	11	12	13	14	15	19	20	22	4
202	2007-03-15	1	3	5	10	11	13	14	16	17	18	19	21	22	23	24	0
203	2007-03-19	1	2	3	4	5	6	7	12	13	14	17	18	23	24	25	15
204	2007-03-22	2	3	4	5	7	8	11	14	15	16	17	22	23	24	25	4
205	2007-03-26	2	3	4	9	10	11	12	14	15	16	17	18	21	22	25	1
206	2007-03-29	2	3	5	8	9	11	12	13	14	15	16	17	20	21	22	2
207	2007-04-02	1	2	3	4	6	9	10	12	13	14	15	17	19	20	22	1
208	2007-04-05	1	3	4	6	7	9	10	11	12	14	15	16	19	23	24	2
209	2007-04-09	1	3	5	6	7	9	10	14	15	18	19	21	22	24	25	3
210	2007-04-12	3	5	7	9	10	11	13	14	15	16	18	21	22	23	24	2
211	2007-04-16	1	2	4	6	8	10	11	12	14	16	17	18	22	24	25	12
212	2007-04-19	1	3	4	6	8	9	10	11	12	14	16	19	20	22	23	3
213	2007-04-23	1	3	4	5	8	9	10	11	16	18	19	21	23	24	25	0
214	2007-04-26	1	2	3	4	9	11	13	14	15	18	19	20	22	24	25	2
215	2007-04-30	1	3	4	5	7	9	11	12	14	15	17	18	19	23	25	4
216	2007-05-03	2	3	4	5	6	7	9	10	11	13	17	19	21	24	25	3
217	2007-05-07	2	3	4	5	6	7	9	10	11	12	16	17	19	21	25	2
218	2007-05-10	2	5	7	8	11	12	13	14	15	16	17	20	21	22	25	1
219	2007-05-14	2	3	6	8	9	11	14	16	17	18	19	22	23	24	25	1
220	2007-05-17	5	9	10	12	13	14	15	16	17	18	20	21	23	24	25	0
221	2007-05-21	1	2	3	6	7	8	10	12	16	17	19	20	21	23	25	2
222	2007-05-24	1	3	4	5	6	7	8	9	12	15	18	21	22	23	24	1
223	2007-05-28	2	4	7	9	10	11	12	13	14	16	20	21	22	23	24	0
224	2007-05-31	4	6	8	9	10	11	12	13	15	18	19	20	21	23	24	4
225	2007-06-04	1	2	3	5	7	8	13	14	15	18	19	20	22	23	25	3
226	2007-06-08	4	5	8	10	11	13	14	15	16	17	18	19	20	21	25	1
227	2007-06-11	1	5	7	8	9	10	12	14	15	17	18	19	20	21	22	3
228	2007-06-14	2	4	10	11	12	13	14	15	16	17	18	19	20	24	25	7
229	2007-06-18	2	6	8	9	10	11	12	13	14	15	16	17	20	23	25	3
230	2007-06-21	1	2	3	4	5	6	8	10	11	13	14	15	17	22	24	1
231	2007-06-25	1	2	5	6	7	10	12	15	16	17	18	19	21	24	25	1
232	2007-06-28	4	5	6	9	11	12	13	14	16	17	18	21	23	24	25	1
233	2007-07-02	1	2	3	4	5	6	7	8	9	12	13	14	17	19	21	8
234	2007-07-05	1	2	3	4	5	9	11	12	13	14	15	17	21	22	24	1
235	2007-07-09	1	8	10	12	13	14	15	16	17	18	19	21	23	24	25	4
236	2007-07-12	1	3	4	5	7	8	9	12	13	15	16	21	22	23	25	0
237	2007-07-16	4	5	6	7	9	12	13	15	16	18	19	20	21	22	23	5
238	2007-07-19	1	3	4	6	11	12	13	14	15	17	19	20	21	23	24	1
239	2007-07-23	1	3	5	6	7	9	10	13	14	15	16	19	22	23	25	4
240	2007-07-26	1	2	4	9	10	11	13	14	15	16	18	19	21	22	23	1
241	2007-07-30	3	4	5	8	9	12	13	14	15	17	20	21	23	24	25	6
242	2007-08-02	2	5	6	8	9	13	14	15	16	17	18	19	21	22	23	2
243	2007-08-06	1	2	3	4	5	7	12	13	16	17	18	20	21	23	25	0
244	2007-08-09	3	5	6	7	9	10	11	12	14	15	18	20	21	22	24	4
245	2007-08-13	1	2	6	7	9	10	11	12	14	15	16	18	19	24	25	1
246	2007-08-16	1	4	5	7	8	9	10	12	13	15	17	18	21	24	25	2
247	2007-08-20	1	2	3	4	7	8	9	14	15	16	17	19	22	23	25	1
248	2007-08-23	1	2	5	8	9	10	11	12	13	15	16	19	20	21	25	5
249	2007-08-27	4	5	7	8	9	10	12	14	15	17	18	21	22	23	25	4
250	2007-08-30	1	2	3	5	9	10	12	13	15	16	17	18	19	21	23	1
251	2007-09-03	3	4	5	6	9	10	13	15	16	18	19	21	22	23	25	3
252	2007-09-06	2	3	4	6	8	11	14	15	17	18	19	22	23	24	25	1
253	2007-09-10	1	4	5	6	7	8	11	12	13	15	18	19	21	22	23	3
254	2007-09-13	2	3	4	5	6	7	8	9	11	13	14	15	16	20	23	4
255	2007-09-17	1	2	3	4	6	9	10	14	15	16	17	21	22	23	24	3
256	2007-09-20	1	2	6	7	8	9	10	12	13	15	16	18	20	22	24	6
257	2007-09-24	1	3	6	7	9	10	12	13	14	16	17	18	19	22	24	2
258	2007-09-27	2	4	5	6	9	12	13	14	17	19	20	21	22	24	25	6
259	2007-10-01	3	5	6	7	8	9	10	15	18	19	20	21	22	24	25	0
260	2007-10-04	1	3	4	5	6	7	8	9	11	13	14	18	19	20	24	1
261	2007-10-08	1	2	4	5	6	7	11	13	15	16	17	19	20	21	25	2
262	2007-10-11	3	4	6	7	8	9	12	13	14	15	17	20	21	23	24	1
263	2007-10-15	1	4	7	8	9	10	11	14	15	16	18	19	21	23	24	0
264	2007-10-18	1	3	4	6	8	9	12	13	16	19	20	21	22	23	25	6
265	2007-10-22	1	5	7	8	11	12	13	15	16	17	18	19	20	22	24	0
266	2007-10-25	1	3	4	5	6	7	9	11	14	15	18	19	21	22	24	5
267	2007-10-29	2	3	4	5	6	9	11	12	13	14	15	17	21	23	24	2
268	2007-11-01	5	6	7	8	9	10	12	14	15	16	18	19	20	23	25	1
269	2007-11-05	1	2	4	6	10	13	14	15	16	17	18	19	22	23	24	1
270	2007-11-08	1	3	4	5	6	7	8	9	14	16	18	19	23	24	25	0
271	2007-11-12	1	2	4	5	6	8	11	12	16	18	19	20	21	24	25	6
272	2007-11-16	1	2	4	5	8	9	11	12	13	15	17	20	23	24	25	6
273	2007-11-19	1	5	6	7	10	12	15	16	17	18	19	20	21	24	25	2
274	2007-11-22	2	4	5	6	7	10	11	12	14	15	17	20	21	23	25	4
275	2007-11-26	1	3	5	6	8	9	10	11	12	14	15	17	18	20	22	2
276	2007-11-29	2	3	4	5	7	10	11	12	13	17	18	19	20	22	25	3
277	2007-12-03	2	4	9	10	11	12	13	14	16	17	21	22	23	24	25	4
278	2007-12-06	1	2	3	5	6	9	11	12	13	15	17	19	21	23	25	25
279	2007-12-10	1	2	3	5	6	9	10	11	12	13	17	18	19	22	23	3
280	2007-12-13	3	4	5	6	9	10	11	13	15	16	17	19	20	24	25	7
281	2007-12-17	1	2	3	4	8	9	10	11	12	14	15	17	19	23	25	6
282	2007-12-20	2	3	4	7	8	11	12	13	15	16	19	20	21	22	25	5
283	2007-12-22	1	2	4	6	8	9	10	11	12	13	19	20	22	23	24	5
284	2007-12-27	1	3	5	6	7	11	12	13	15	17	19	21	22	23	25	7
285	2007-12-29	1	4	5	8	9	10	11	12	13	14	15	16	19	22	23	3
286	2008-01-03	1	2	3	4	7	9	10	11	12	13	19	21	23	24	25	3
287	2008-01-07	2	5	6	7	10	12	13	15	16	17	18	21	22	23	25	5
288	2008-01-10	1	2	3	4	6	9	10	12	13	14	15	18	19	24	25	1
289	2008-01-14	1	2	3	4	6	8	9	10	12	14	15	17	19	22	24	14
290	2008-01-17	1	2	5	6	7	9	11	12	13	14	17	20	21	22	23	5
291	2008-01-21	1	2	5	7	8	10	11	12	13	14	15	17	20	23	24	5
292	2008-01-24	2	3	5	7	8	9	11	12	13	16	17	21	22	24	25	1
293	2008-01-28	1	2	3	6	9	12	13	14	15	18	19	22	23	24	25	3
294	2008-01-31	1	2	3	4	5	7	8	11	12	15	16	20	23	24	25	3
295	2008-02-07	2	3	4	6	10	13	15	16	17	18	19	21	23	24	25	2
296	2008-02-11	2	3	6	7	8	11	12	14	15	16	17	18	19	22	25	5
297	2008-02-14	1	4	7	8	9	10	12	14	15	16	21	22	23	24	25	0
298	2008-02-18	1	3	4	6	7	8	11	12	13	14	15	16	21	22	24	2
299	2008-02-21	3	5	6	7	8	10	13	17	18	19	20	21	22	23	24	1
300	2008-02-25	3	4	7	8	9	11	12	15	17	19	20	21	22	23	25	5
301	2008-02-28	2	3	8	9	11	12	13	14	15	17	18	19	20	22	23	4
302	2008-03-03	2	4	5	6	9	10	11	12	14	15	16	18	20	22	25	9
303	2008-03-06	2	3	4	6	8	12	15	16	17	18	20	21	22	23	24	3
304	2008-03-10	1	3	4	5	12	14	15	16	17	18	19	20	21	22	25	0
305	2008-03-13	2	3	4	5	8	10	11	12	13	18	20	21	22	24	25	3
306	2008-03-17	1	2	4	5	8	11	12	13	14	15	16	18	19	20	25	0
307	2008-03-20	1	3	4	6	9	10	12	14	15	17	19	20	21	23	24	22
308	2008-03-24	1	2	4	5	12	13	15	16	18	19	21	22	23	24	25	2
309	2008-03-27	1	2	3	4	8	9	10	13	14	16	17	20	21	22	24	2
310	2008-03-31	2	3	5	9	10	11	14	15	16	17	18	19	21	23	24	1
311	2008-04-03	2	4	5	7	10	12	14	15	16	17	19	20	23	24	25	9
312	2008-04-07	1	2	6	8	9	10	11	12	13	16	17	18	19	22	25	1
313	2008-04-10	2	3	6	7	9	10	12	14	15	16	17	18	19	23	25	3
314	2008-04-14	1	2	5	6	8	9	11	12	13	14	15	19	20	21	22	1
315	2008-04-17	2	3	5	6	8	11	13	14	16	17	19	20	21	23	24	10
316	2008-04-22	1	3	4	6	7	8	10	12	13	14	15	18	19	23	24	1
317	2008-04-24	1	2	4	5	8	9	11	14	16	18	19	21	22	24	25	3
318	2008-04-28	3	4	5	6	9	11	12	13	14	15	16	18	21	23	25	4
319	2008-05-02	1	3	4	6	8	9	10	12	14	16	17	19	20	23	24	7
320	2008-05-05	1	3	6	9	11	12	14	15	17	18	19	21	22	23	25	3
321	2008-05-08	2	3	4	9	10	11	12	13	14	16	17	18	20	24	25	1
322	2008-05-12	1	2	3	5	7	12	13	15	16	17	18	20	21	23	24	2
323	2008-05-15	1	2	3	4	6	7	9	10	14	17	19	20	21	23	25	1
324	2008-05-19	1	2	3	4	6	7	8	9	10	12	16	20	21	23	24	4
325	2008-05-23	1	2	4	5	6	7	10	14	15	19	20	22	23	24	25	0
326	2008-05-26	1	2	4	6	7	8	10	11	12	13	15	17	18	24	25	3
327	2008-05-29	1	2	3	4	8	12	13	14	15	16	17	18	19	21	23	4
328	2008-06-02	2	3	4	5	11	12	13	15	18	19	21	22	23	24	25	2
329	2008-06-05	1	2	3	4	8	9	13	14	17	18	20	21	23	24	25	5
330	2008-06-09	1	2	5	6	9	12	14	15	17	18	19	22	23	24	25	5
331	2008-06-12	1	3	5	6	7	12	13	15	16	18	19	21	22	23	25	7
332	2008-06-16	2	3	5	6	7	10	11	12	14	19	20	21	23	24	25	4
333	2008-06-19	1	2	5	6	9	11	12	13	14	15	16	18	21	23	25	13
334	2008-06-23	1	2	6	7	8	11	13	15	16	17	18	21	22	23	25	5
335	2008-06-26	1	3	4	6	7	8	9	11	12	14	16	17	19	20	21	3
336	2008-06-30	1	2	3	5	6	8	10	11	14	15	16	17	19	22	25	7
337	2008-07-03	1	3	4	5	7	8	9	10	11	12	16	18	19	22	23	3
338	2008-07-07	3	4	5	6	7	9	12	14	15	16	17	19	20	21	25	2
339	2008-07-10	1	2	5	8	10	13	15	16	18	19	20	21	22	23	24	4
340	2008-07-14	2	3	4	5	6	8	9	10	11	14	19	20	21	22	25	1
341	2008-07-17	1	5	7	9	11	12	13	16	18	19	20	21	22	24	25	1
342	2008-07-21	1	3	4	8	11	12	13	15	16	19	20	21	22	23	25	3
343	2008-07-24	3	5	6	8	11	12	13	14	15	16	18	19	20	22	25	1
344	2008-07-28	3	4	5	6	9	10	11	12	13	15	16	20	21	24	25	3
345	2008-07-31	2	7	9	11	12	14	15	16	18	19	20	21	23	24	25	2
346	2008-08-04	1	2	3	5	6	8	10	12	14	15	17	18	21	23	24	9
347	2008-08-07	3	5	7	8	9	10	11	12	14	15	18	19	20	24	25	1
348	2008-08-11	1	2	5	7	8	12	14	17	18	19	20	21	22	24	25	3
349	2008-08-14	1	2	5	7	8	12	14	16	17	18	19	20	22	24	25	32
350	2008-08-18	1	2	3	4	6	7	8	9	12	13	14	15	22	23	25	6
351	2008-08-21	1	2	3	5	7	10	11	12	14	16	17	18	19	23	24	2
352	2008-08-25	1	2	3	4	6	9	12	13	15	17	18	19	20	22	24	2
353	2008-08-28	2	3	7	8	9	11	12	13	17	18	19	20	21	22	23	14
354	2008-09-01	1	2	4	7	8	9	10	12	16	17	18	19	21	22	23	1
355	2008-09-04	2	4	6	7	8	9	10	11	12	13	15	18	19	23	25	4
356	2008-09-08	2	4	5	9	10	11	13	14	15	16	19	20	22	24	25	2
357	2008-09-11	1	2	5	6	8	9	10	11	13	14	17	19	21	23	25	6
358	2008-09-15	2	4	6	9	10	11	12	14	15	16	17	18	23	24	25	2
359	2008-09-18	4	7	8	10	11	12	13	16	17	18	19	21	22	24	25	1
360	2008-09-22	1	2	3	4	5	7	8	9	11	17	18	19	20	23	24	2
361	2008-09-25	1	4	7	9	10	12	13	14	15	16	17	19	20	23	24	4
362	2008-09-29	1	2	3	4	5	6	7	10	12	13	17	18	22	23	24	8
363	2008-10-02	2	3	4	6	8	9	11	13	15	16	17	20	21	22	23	5
364	2008-10-06	2	3	4	6	7	9	11	12	13	15	19	20	21	22	24	3
365	2008-10-09	3	4	5	8	10	11	12	15	16	18	19	20	23	24	25	2
366	2008-10-13	3	5	6	8	9	11	13	15	17	18	20	21	22	23	25	16
367	2008-10-16	1	2	4	7	8	9	12	13	15	17	18	20	21	22	24	39
368	2008-10-20	2	3	4	5	6	11	13	14	15	17	19	20	21	22	24	2
369	2008-10-23	1	3	5	6	7	9	11	12	14	15	20	21	22	23	24	1
370	2008-10-27	3	4	6	7	8	9	10	11	12	14	16	17	19	23	25	5
371	2008-10-30	1	2	3	5	6	7	8	9	10	13	14	15	16	22	25	0
372	2008-11-03	3	4	5	6	10	12	13	14	16	17	19	22	23	24	25	6
373	2008-11-06	2	4	6	9	11	12	13	14	15	17	19	20	21	22	23	4
374	2008-11-10	1	2	3	6	9	12	13	16	18	20	21	22	23	24	25	3
375	2008-11-13	1	2	5	7	10	11	12	13	14	16	17	18	19	20	25	4
376	2008-11-17	2	3	8	10	12	13	14	15	16	18	20	21	22	24	25	1
377	2008-11-20	1	2	3	4	7	8	9	11	12	13	15	17	19	20	22	2
378	2008-11-24	2	3	4	6	12	13	14	15	16	19	21	22	23	24	25	2
379	2008-11-27	3	4	5	7	10	11	12	13	14	16	17	18	21	22	25	1
380	2008-12-01	2	3	4	6	7	8	9	10	11	14	17	18	22	23	25	1
381	2008-12-04	1	3	4	6	7	9	10	12	13	15	17	19	21	22	25	17
382	2008-12-08	2	3	4	7	8	9	10	11	12	14	15	16	21	22	24	2
383	2008-12-11	3	5	6	7	9	11	12	14	15	16	18	22	23	24	25	4
384	2008-12-15	1	3	4	7	10	11	13	15	17	18	19	20	21	22	25	3
385	2008-12-18	1	2	4	5	6	8	12	13	15	18	20	22	23	24	25	7
386	2008-12-22	1	2	3	4	6	7	9	11	15	18	19	20	21	23	25	3
387	2008-12-26	2	3	4	8	9	10	11	12	14	15	19	20	21	22	23	11
388	2008-12-29	1	2	3	5	6	7	9	10	11	15	16	17	18	20	21	0
389	2009-01-02	2	3	4	5	6	9	10	12	13	17	18	19	23	24	25	5
390	2009-01-05	2	5	7	10	11	12	13	14	15	19	20	21	22	24	25	2
391	2009-01-08	1	3	4	6	8	9	12	13	15	16	18	21	22	23	25	16
392	2009-01-12	1	2	3	4	10	11	12	14	15	17	18	20	21	23	25	0
393	2009-01-15	1	3	4	6	7	8	10	11	17	18	20	21	22	23	25	3
394	2009-01-19	2	5	6	7	8	12	13	14	16	18	20	21	22	23	24	4
395	2009-01-22	1	2	4	6	8	9	11	13	14	15	17	21	22	23	25	6
396	2009-01-26	1	2	3	5	6	7	9	10	11	13	15	18	20	22	24	12
397	2009-01-29	1	2	3	4	5	6	8	9	10	13	14	15	20	22	25	3
398	2009-02-02	2	3	4	5	7	8	9	10	12	13	16	18	20	21	22	3
399	2009-02-05	1	4	7	9	10	11	12	14	16	17	19	21	22	23	24	6
400	2009-02-09	1	5	9	10	12	14	15	16	17	19	20	21	22	23	24	2
401	2009-02-12	1	2	3	5	6	7	8	10	14	16	17	21	23	24	25	4
402	2009-02-16	1	2	4	6	7	8	9	11	16	20	21	22	23	24	25	3
403	2009-02-19	2	4	6	7	8	9	11	12	13	14	15	19	21	24	25	1
404	2009-02-26	1	5	6	8	10	11	13	14	16	18	20	21	22	24	25	10
405	2009-03-02	4	5	6	7	8	11	12	13	14	16	18	19	22	24	25	4
406	2009-03-05	1	2	4	5	7	8	9	10	11	16	17	21	22	23	24	2
407	2009-03-09	2	4	6	7	8	9	11	12	14	15	16	17	20	22	25	3
408	2009-03-12	1	2	3	4	10	11	12	14	15	18	19	20	21	22	23	6
409	2009-03-16	1	2	4	6	7	8	10	14	16	17	20	21	23	24	25	7
410	2009-03-19	1	4	5	7	8	9	10	11	13	14	15	17	18	19	25	3
411	2009-03-23	1	5	7	9	11	12	14	16	17	18	20	21	22	24	25	4
412	2009-03-26	3	4	8	9	10	11	12	16	17	18	19	20	21	22	25	1
413	2009-03-30	2	3	5	6	8	9	10	12	13	14	16	17	20	21	25	4
414	2009-04-02	2	3	5	6	8	9	10	11	15	16	18	19	20	21	25	1
415	2009-04-06	1	3	7	10	11	13	14	15	17	18	19	20	21	22	23	5
416	2009-04-09	1	2	5	6	7	13	15	16	18	19	20	22	23	24	25	4
417	2009-04-15	1	2	3	8	9	11	12	13	14	15	16	17	19	21	23	1
418	2009-04-16	5	8	9	10	11	12	13	14	18	19	20	22	23	24	25	4
419	2009-04-20	3	4	5	6	7	14	15	16	17	18	20	21	22	23	24	10
420	2009-04-23	3	4	5	6	7	8	9	10	11	12	18	19	22	24	25	3
421	2009-04-27	3	4	5	8	9	10	12	13	14	15	16	19	20	23	25	2
422	2009-04-30	1	2	3	4	6	7	8	12	13	14	17	18	22	23	25	11
423	2009-05-04	1	2	3	5	11	13	15	16	17	18	20	22	23	24	25	1
424	2009-05-07	1	3	6	9	10	11	13	14	15	16	17	18	19	24	25	0
425	2009-05-11	1	7	9	10	11	12	13	15	16	18	19	20	22	23	24	6
426	2009-05-14	2	3	4	5	6	8	10	11	15	16	18	19	22	24	25	2
427	2009-05-18	1	3	4	5	6	7	9	10	11	12	16	19	21	22	24	2
428	2009-05-21	1	3	4	11	13	14	15	17	18	19	20	21	22	23	24	2
429	2009-05-25	2	3	4	5	6	7	8	12	13	14	16	17	19	23	25	7
430	2009-05-28	2	3	4	5	6	7	9	11	13	14	15	20	22	23	25	1
431	2009-06-01	1	2	3	5	9	11	12	13	15	18	20	21	22	23	24	3
432	2009-06-04	2	3	4	6	7	10	12	13	15	17	19	20	21	23	24	12
433	2009-06-08	1	2	3	5	7	8	9	14	15	19	21	22	23	24	25	4
434	2009-06-12	3	4	6	9	11	12	13	15	16	17	18	21	23	24	25	3
435	2009-06-15	1	3	4	5	10	11	13	14	15	16	17	18	21	24	25	2
436	2009-06-18	3	4	6	7	10	13	14	15	18	19	20	21	22	23	25	4
437	2009-06-22	1	2	4	5	6	8	10	11	12	16	17	19	20	21	23	1
438	2009-06-25	1	4	7	8	9	11	13	15	17	18	21	22	23	24	25	2
439	2009-06-29	2	3	5	9	10	11	12	14	15	17	19	21	23	24	25	3
440	2009-07-02	1	3	5	8	9	12	13	14	15	16	19	21	22	24	25	4
441	2009-07-06	1	2	3	4	7	8	9	10	11	13	14	20	23	24	25	1
442	2009-07-09	5	6	7	8	9	12	13	14	15	17	18	22	23	24	25	8
443	2009-07-13	1	2	3	5	7	10	11	12	16	17	18	19	21	22	23	4
444	2009-07-16	1	2	3	6	7	10	14	15	18	19	20	21	22	24	25	4
445	2009-07-20	1	2	4	7	9	10	11	12	13	15	16	18	19	20	21	4
446	2009-07-23	1	2	4	5	6	8	10	11	14	15	16	19	21	23	24	5
447	2009-07-27	1	2	5	8	10	12	16	17	18	19	20	21	22	24	25	3
448	2009-07-30	1	3	5	6	9	10	11	12	13	14	15	17	20	23	24	1
449	2009-08-03	1	2	3	4	8	9	10	11	16	17	18	19	22	24	25	0
450	2009-08-06	4	5	6	7	9	11	14	16	17	18	21	22	23	24	25	3
451	2009-08-10	1	3	5	6	8	9	14	15	17	18	19	22	23	24	25	9
452	2009-08-13	1	6	7	8	9	10	11	12	14	17	18	19	20	24	25	0
453	2009-08-17	1	2	3	4	6	9	11	14	15	17	19	20	21	24	25	4
454	2009-08-20	3	4	6	7	11	12	13	14	15	17	19	20	22	24	25	0
455	2009-08-24	1	3	4	5	6	7	8	11	12	14	18	19	21	23	25	8
456	2009-08-27	1	3	4	9	10	11	12	13	14	17	18	21	23	24	25	7
457	2009-08-31	1	4	5	11	13	14	15	16	18	19	20	21	22	23	25	1
458	2009-09-03	2	3	4	5	6	7	8	9	11	13	15	16	18	20	22	5
459	2009-09-08	1	2	3	4	7	10	11	12	14	15	17	19	20	21	23	3
460	2009-09-10	1	3	4	6	9	10	11	12	14	15	16	17	19	22	23	8
461	2009-09-14	3	4	5	6	7	8	11	12	13	14	15	17	19	23	24	5
462	2009-09-17	1	2	3	5	7	8	12	14	16	17	18	21	22	23	24	0
463	2009-09-21	2	3	6	7	9	11	13	14	17	18	19	20	22	23	25	7
464	2009-09-24	1	2	5	8	10	11	16	17	19	20	21	22	23	24	25	2
465	2009-09-28	1	2	3	4	6	7	9	10	11	13	18	19	21	22	25	2
466	2009-10-01	2	6	7	8	10	11	12	14	17	18	19	20	21	22	25	1
467	2009-10-05	2	4	5	6	7	10	13	14	15	17	18	21	22	24	25	5
468	2009-10-08	2	3	5	6	9	10	12	13	15	17	18	21	22	24	25	8
469	2009-10-13	1	2	5	6	7	8	10	11	13	14	18	19	22	23	25	3
470	2009-10-15	1	3	4	5	6	7	8	10	11	13	15	18	20	22	23	3
471	2009-10-19	2	3	4	6	9	10	11	12	13	14	15	16	20	24	25	1
472	2009-10-22	1	2	4	5	6	7	8	11	12	13	14	15	17	18	20	3
473	2009-10-27	1	2	5	6	7	8	9	11	12	15	17	19	22	23	25	8
474	2009-10-29	1	2	3	5	9	10	11	12	15	16	17	18	21	23	24	2
475	2009-11-03	2	3	4	5	6	9	10	11	13	14	17	20	21	23	25	0
476	2009-11-05	1	5	6	7	9	10	11	13	14	15	16	17	19	24	25	1
477	2009-11-09	2	4	6	7	8	10	11	12	14	16	18	20	23	24	25	8
478	2009-11-12	2	3	5	7	9	10	11	12	13	16	18	22	23	24	25	7
479	2009-11-16	2	3	5	8	11	13	14	15	16	18	19	22	23	24	25	1
480	2009-11-19	4	5	6	7	8	9	11	12	15	17	18	19	22	24	25	2
481	2009-11-23	1	3	5	7	9	10	12	13	14	15	17	20	21	22	24	7
482	2009-11-26	2	6	7	8	9	10	12	15	16	17	19	21	22	23	25	4
483	2009-11-30	1	4	5	6	7	9	11	12	14	17	18	21	22	23	24	5
484	2009-12-03	1	4	6	8	9	10	11	13	14	16	17	20	21	23	25	3
485	2009-12-07	2	3	4	5	6	7	11	16	17	18	20	21	22	24	25	2
486	2009-12-10	1	2	3	4	5	7	9	11	13	15	18	19	20	21	22	3
487	2009-12-14	4	5	6	7	8	9	10	14	15	17	18	19	21	22	24	5
488	2009-12-17	5	6	7	8	11	12	13	14	15	17	18	20	22	24	25	6
489	2009-12-21	1	2	5	7	10	11	12	14	17	18	19	21	22	23	25	1
490	2009-12-24	3	5	6	8	10	11	12	13	14	16	17	18	21	22	23	3
491	2009-12-28	1	2	3	7	9	11	12	13	16	20	21	22	23	24	25	10
492	2009-12-31	1	2	3	4	6	8	11	12	14	15	18	19	21	24	25	2
493	2010-01-04	1	4	5	7	8	10	12	13	14	15	17	18	21	22	25	1
494	2010-01-07	2	3	4	5	7	8	12	13	15	16	18	19	20	21	22	1
495	2010-01-11	1	3	4	6	7	8	9	11	13	15	17	19	22	24	25	14
496	2010-01-14	3	4	5	7	9	11	13	14	15	16	17	19	21	22	24	4
497	2010-01-18	1	2	3	4	5	8	9	11	12	14	16	17	19	23	25	1
498	2010-01-21	1	2	4	5	6	11	13	14	15	16	18	20	22	23	25	1
499	2010-01-25	1	2	3	4	7	10	11	12	15	17	19	20	21	24	25	5
500	2010-01-28	2	3	5	6	8	9	10	13	14	16	18	20	21	23	25	11
501	2010-02-01	1	2	3	4	6	9	12	15	17	18	19	21	23	24	25	9
502	2010-02-04	1	2	3	4	5	6	8	10	11	13	16	18	19	23	24	2
503	2010-02-08	1	2	3	4	5	7	11	12	14	15	17	20	21	24	25	3
504	2010-02-11	1	6	9	10	12	13	14	15	16	17	18	19	20	21	23	0
505	2010-02-13	3	4	6	7	9	11	15	16	17	18	19	20	21	22	24	1
506	2010-02-18	4	5	6	9	11	12	13	15	16	17	19	20	21	22	24	1
507	2010-02-22	1	2	3	5	6	8	9	10	11	12	20	21	23	24	25	6
508	2010-02-25	2	3	5	6	7	8	9	14	15	16	18	19	23	24	25	5
509	2010-03-01	1	3	5	6	9	11	12	15	16	17	19	20	22	24	25	9
510	2010-03-04	1	2	3	4	6	7	10	11	12	13	20	21	22	23	25	4
511	2010-03-08	1	2	5	7	10	11	12	13	14	17	18	19	21	24	25	5
512	2010-03-12	1	2	4	5	6	7	8	9	10	12	13	15	16	21	24	1
513	2010-03-15	1	2	3	6	9	10	11	13	15	17	18	20	22	23	25	5
514	2010-03-18	1	5	6	7	8	9	11	12	15	17	18	21	22	24	25	2
515	2010-03-22	2	3	5	7	9	10	11	12	13	14	17	18	20	24	25	6
516	2010-03-25	2	4	5	6	7	8	11	12	13	14	18	20	21	23	24	1
517	2010-03-29	1	3	4	5	6	7	8	9	11	12	13	17	21	22	23	1
518	2010-04-01	4	5	6	7	10	11	12	13	14	16	17	19	20	22	24	1
519	2010-04-05	2	3	7	9	11	12	13	15	16	17	19	21	23	24	25	8
520	2010-04-08	2	4	5	6	9	10	12	14	15	18	19	20	22	23	24	5
521	2010-04-12	1	2	3	4	5	6	9	10	11	12	13	17	19	20	23	4
522	2010-04-15	2	4	6	7	9	11	16	17	18	19	21	22	23	24	25	1
523	2010-04-19	2	4	5	8	9	10	11	12	13	16	17	18	19	24	25	2
524	2010-04-22	2	3	5	6	7	10	11	12	14	17	20	21	22	23	24	4
525	2010-04-26	3	4	6	9	10	11	13	15	16	17	18	20	21	22	25	4
526	2010-04-29	1	2	4	7	8	9	10	11	12	14	15	16	19	24	25	4
527	2010-05-03	1	2	5	6	9	11	12	14	15	16	17	19	22	23	24	3
528	2010-05-06	2	3	4	6	7	8	10	11	12	15	19	21	23	24	25	1
529	2010-05-10	2	3	5	6	7	11	12	16	17	18	19	20	22	23	25	1
530	2010-05-13	3	4	6	7	8	9	10	11	12	14	16	18	21	22	23	2
531	2010-05-17	1	2	3	7	10	12	13	14	15	16	17	21	22	23	25	1
532	2010-05-20	1	2	4	5	6	7	9	11	12	13	15	16	19	22	24	4
533	2010-05-24	1	2	3	8	9	10	11	13	14	16	17	18	20	24	25	2
534	2010-05-27	1	2	3	5	7	8	11	12	13	15	18	19	21	22	24	8
535	2010-05-31	1	4	5	6	9	11	13	15	16	17	19	21	23	24	25	8
536	2010-06-04	3	4	5	7	9	11	15	16	17	19	20	22	23	24	25	3
537	2010-06-07	1	2	4	6	9	10	11	14	15	17	18	20	22	23	24	3
538	2010-06-10	2	5	6	10	11	12	13	16	17	18	19	20	21	24	25	2
539	2010-06-14	1	2	4	5	6	8	9	12	13	14	15	16	19	21	23	2
540	2010-06-17	2	6	7	8	9	11	12	13	15	16	18	19	20	22	24	2
541	2010-06-21	3	4	5	6	9	10	13	14	15	17	19	20	22	24	25	13
542	2010-06-24	1	2	3	4	5	8	9	10	13	16	17	18	20	22	24	2
543	2010-06-28	1	5	7	8	10	11	13	14	15	16	17	20	22	24	25	1
544	2010-07-01	2	4	5	7	8	9	11	13	14	15	18	19	21	23	24	8
545	2010-07-05	1	3	5	6	7	11	12	13	14	15	17	18	23	24	25	5
546	2010-07-08	2	3	4	5	8	9	10	11	12	13	17	18	19	21	23	10
547	2010-07-12	1	2	4	5	6	9	10	12	14	16	17	19	20	24	25	4
548	2010-07-15	1	2	3	4	5	6	7	8	9	13	14	17	20	23	25	3
549	2010-07-19	3	4	7	9	10	11	13	14	15	16	17	20	21	22	23	3
550	2010-07-22	1	5	6	7	9	10	11	13	14	16	17	18	20	21	22	0
551	2010-07-26	3	7	8	10	12	13	14	16	17	18	19	20	21	22	24	4
552	2010-07-29	1	3	4	5	6	8	10	12	13	17	20	22	23	24	25	5
553	2010-08-02	4	5	7	8	9	10	12	13	14	15	17	18	21	23	24	6
554	2010-08-05	1	2	3	4	6	9	13	14	17	19	20	21	22	24	25	2
555	2010-08-09	1	2	6	7	8	9	10	12	14	16	17	18	20	23	24	2
556	2010-08-12	1	4	8	9	11	13	14	16	17	18	20	22	23	24	25	1
557	2010-08-16	1	5	7	8	9	10	12	14	15	17	18	19	20	21	23	8
558	2010-08-19	1	3	4	5	7	10	12	14	17	18	20	21	22	24	25	4
559	2010-08-23	1	2	5	7	9	10	11	13	14	16	19	20	21	22	23	8
560	2010-08-26	1	2	4	9	10	12	14	17	18	19	20	21	23	24	25	4
561	2010-08-30	2	3	4	6	7	9	10	11	12	13	15	17	18	20	21	2
562	2010-09-02	1	2	3	5	7	8	13	14	16	18	19	20	21	22	24	0
563	2010-09-06	1	3	4	5	6	7	9	11	12	16	19	20	22	23	24	1
564	2010-09-09	1	2	3	4	7	9	12	14	15	17	19	20	21	23	24	6
565	2010-09-13	1	4	6	7	9	10	12	15	17	18	19	20	21	23	24	4
566	2010-09-16	1	3	4	5	7	9	10	11	14	15	16	17	19	20	21	1
567	2010-09-20	1	2	5	7	8	9	10	12	13	14	15	17	21	24	25	1
568	2010-09-23	1	2	4	5	6	7	8	9	13	15	16	17	18	20	21	2
569	2010-09-27	1	2	6	7	8	12	13	16	17	18	19	20	22	24	25	3
570	2010-09-30	1	2	3	4	5	10	12	14	15	18	19	20	21	22	23	5
571	2010-10-04	3	4	5	6	7	11	12	15	16	18	19	20	21	24	25	1
572	2010-10-07	2	5	6	8	9	10	13	14	15	16	17	19	21	22	24	8
573	2010-10-11	1	2	3	7	10	11	12	14	16	18	20	22	23	24	25	10
574	2010-10-14	1	5	6	11	12	13	14	16	18	19	20	21	22	23	25	2
575	2010-10-18	3	5	8	9	10	12	13	15	16	17	18	19	21	22	24	3
576	2010-10-21	6	8	9	10	11	12	13	15	16	17	18	19	21	23	25	2
577	2010-10-25	1	2	3	4	5	8	10	12	15	16	18	19	21	22	23	2
578	2010-10-28	1	4	6	7	8	10	12	13	14	15	16	19	21	22	23	2
579	2010-11-01	1	3	5	6	7	8	10	12	13	14	17	19	20	21	24	4
580	2010-11-04	1	4	6	7	8	9	10	12	13	14	16	17	21	24	25	4
581	2010-11-08	2	4	6	9	11	12	13	14	15	17	18	19	21	23	25	8
582	2010-11-11	3	7	8	9	10	11	12	13	15	17	18	19	21	23	25	5
583	2010-11-16	1	3	4	7	8	9	11	14	16	17	18	19	21	23	24	1
584	2010-11-18	2	3	5	6	7	8	10	11	14	15	19	20	21	22	23	3
585	2010-11-22	1	5	7	8	9	10	13	14	15	16	17	18	20	23	24	3
586	2010-11-25	2	3	4	6	7	8	11	12	16	17	18	19	22	24	25	7
587	2010-11-29	1	4	5	7	9	10	11	12	13	17	18	19	20	21	23	4
588	2010-12-02	1	4	5	7	11	12	13	14	17	18	19	20	23	24	25	2
589	2010-12-06	2	3	4	6	8	9	10	12	13	20	21	22	23	24	25	3
590	2010-12-09	1	3	4	6	9	10	11	13	14	15	16	18	19	20	21	2
591	2010-12-13	1	2	4	7	8	10	11	14	15	16	17	19	20	21	23	3
592	2010-12-16	1	3	5	6	8	9	10	14	15	16	17	18	19	20	22	0
593	2010-12-20	1	3	4	5	6	9	10	11	13	14	15	20	23	24	25	4
594	2010-12-23	2	3	6	7	9	10	11	13	14	15	16	18	20	23	25	4
595	2010-12-27	1	5	6	7	8	9	10	11	12	15	17	19	21	24	25	3
596	2010-12-30	2	3	7	8	9	10	11	12	17	18	19	20	22	23	25	7
597	2011-01-03	1	2	3	5	8	9	10	11	14	16	17	18	22	24	25	5
598	2011-01-06	1	3	4	5	7	11	12	14	15	18	19	20	21	22	25	2
599	2011-01-10	2	4	5	6	7	9	12	13	16	18	20	21	22	23	24	2
600	2011-01-13	1	3	5	6	8	9	10	11	16	17	18	19	22	23	25	1
601	2011-01-17	1	3	5	6	7	9	10	11	12	13	14	16	19	20	25	1
602	2011-01-20	1	2	5	6	7	8	9	10	11	12	13	18	22	23	25	3
603	2011-01-24	2	4	5	6	8	10	12	13	15	16	19	20	21	22	23	9
604	2011-01-27	1	2	6	7	9	12	13	14	15	18	19	20	22	24	25	3
605	2011-01-31	2	3	4	5	7	10	11	13	14	16	17	18	21	23	25	2
606	2011-02-03	2	3	6	7	8	10	12	14	15	16	18	22	23	24	25	2
607	2011-02-07	3	5	7	9	12	15	16	17	18	19	20	21	22	24	25	3
608	2011-02-10	1	2	3	5	7	8	10	13	14	16	17	18	19	23	25	3
609	2011-02-14	1	2	4	7	9	10	11	12	14	15	16	19	20	23	25	2
610	2011-02-17	1	2	4	6	7	8	10	12	13	14	15	16	21	22	25	2
611	2011-02-21	2	3	4	5	6	8	9	13	14	16	18	19	20	21	23	2
612	2011-02-24	1	2	3	6	7	9	10	13	15	16	17	18	19	23	25	3
613	2011-02-28	2	5	6	7	10	11	12	13	14	16	17	20	22	23	25	1
614	2011-03-03	1	5	6	7	9	11	12	13	16	17	18	19	20	22	23	1
615	2011-03-05	1	2	4	7	8	11	12	17	19	20	21	22	23	24	25	0
616	2011-03-10	1	2	6	9	10	12	15	16	17	18	19	21	22	24	25	2
617	2011-03-14	1	2	3	4	5	7	10	14	15	16	19	21	22	24	25	0
618	2011-03-17	1	2	4	5	6	7	9	12	13	17	19	20	21	22	24	6
619	2011-03-21	1	3	4	7	8	9	13	14	17	18	19	20	21	23	25	6
620	2011-03-24	1	5	6	7	10	11	12	14	15	16	18	19	20	21	22	3
621	2011-03-28	1	2	3	5	6	8	9	10	12	15	16	20	22	24	25	3
622	2011-03-31	2	3	4	5	6	7	9	10	11	12	13	15	17	18	21	5
623	2011-04-04	1	2	3	4	5	8	9	10	11	12	15	20	22	23	25	2
624	2011-04-07	1	2	4	5	6	7	9	11	12	16	17	18	20	21	24	6
625	2011-04-11	1	2	3	6	8	10	11	13	14	15	16	17	22	23	24	3
626	2011-04-14	1	2	3	4	5	7	8	9	11	13	17	19	21	23	24	5
627	2011-04-18	1	2	3	4	6	10	12	14	15	17	21	22	23	24	25	4
628	2011-04-20	2	3	4	7	8	9	10	11	13	15	18	19	22	23	25	4
629	2011-04-25	1	2	4	5	6	7	9	12	14	15	17	19	21	22	25	8
630	2011-04-28	1	2	4	6	7	12	13	14	17	18	20	22	23	24	25	2
631	2011-05-02	2	3	5	7	8	9	10	13	14	16	17	18	19	20	21	3
632	2011-05-05	1	4	6	8	10	11	13	14	16	17	20	21	22	24	25	4
633	2011-05-09	2	3	6	7	8	9	10	12	18	20	21	22	23	24	25	2
634	2011-05-12	2	3	4	5	9	10	11	12	14	15	18	19	20	21	22	3
635	2011-05-16	1	4	5	6	7	8	9	11	12	13	18	19	20	22	24	2
636	2011-05-19	1	2	3	4	6	10	12	13	14	16	19	20	21	23	25	3
637	2011-05-23	2	4	6	7	9	13	16	17	18	19	20	21	22	23	25	2
638	2011-05-26	1	2	3	4	9	11	13	14	16	18	19	21	23	24	25	2
639	2011-05-30	1	2	4	5	6	8	9	10	12	16	19	20	21	22	24	5
640	2011-06-02	1	3	4	5	9	11	13	14	16	18	19	20	21	22	23	2
641	2011-06-06	2	3	6	7	8	9	11	13	16	18	19	20	21	22	24	1
642	2011-06-09	1	2	4	5	8	10	11	12	13	18	19	20	21	22	25	4
643	2011-06-13	1	2	4	7	8	9	10	13	16	17	19	21	22	23	24	3
644	2011-06-16	2	3	5	6	7	8	9	12	13	14	15	18	21	22	24	2
645	2011-06-20	4	5	8	9	10	11	13	16	18	19	20	21	22	23	25	4
646	2011-06-24	1	3	5	6	9	10	14	15	17	18	19	20	21	23	25	0
647	2011-06-27	4	6	7	8	9	11	13	14	17	18	19	20	22	23	25	3
648	2011-06-30	2	4	6	8	9	10	11	13	15	16	18	19	20	21	22	11
649	2011-07-04	1	2	4	5	6	8	9	10	11	14	15	17	21	22	24	2
650	2011-07-07	1	3	7	8	10	13	14	16	17	19	20	21	23	24	25	7
651	2011-07-11	1	4	5	6	8	10	13	14	15	17	18	19	20	24	25	6
652	2011-07-14	2	5	7	9	10	11	13	14	16	17	18	19	20	21	23	8
653	2011-07-18	1	2	3	7	8	12	13	14	16	17	19	20	21	22	23	5
654	2011-07-21	1	2	3	7	12	13	14	16	17	18	19	20	22	23	25	2
655	2011-07-25	2	5	7	8	10	11	13	14	15	19	20	21	23	24	25	1
656	2011-07-28	2	3	5	7	8	9	11	13	14	15	18	20	22	23	25	11
657	2011-08-01	2	3	4	5	6	8	10	12	13	15	17	19	23	24	25	9
658	2011-08-04	1	4	5	6	7	9	10	11	14	15	17	21	23	24	25	0
659	2011-08-08	1	3	4	5	6	8	9	10	11	12	15	19	20	23	24	6
660	2011-08-11	3	4	5	6	7	8	9	12	14	15	16	17	19	24	25	0
661	2011-08-15	1	3	6	7	10	11	12	15	17	18	19	20	22	23	24	0
662	2011-08-18	1	2	3	6	7	8	9	11	13	14	15	16	19	20	22	8
663	2011-08-22	2	4	5	6	7	9	11	13	16	17	19	21	22	23	24	8
664	2011-08-25	1	3	4	7	10	13	14	15	16	17	18	20	21	23	24	3
665	2011-08-29	2	3	6	7	12	13	14	15	17	18	20	21	22	24	25	4
666	2011-09-01	1	2	4	6	7	11	12	14	15	16	18	20	21	24	25	3
667	2011-09-05	3	4	5	6	8	10	13	15	17	18	19	20	21	24	25	0
668	2011-09-08	1	2	7	9	10	11	12	13	15	16	17	20	23	24	25	0
669	2011-09-13	2	4	5	6	12	13	15	16	17	18	19	22	23	24	25	3
670	2011-09-15	1	7	8	10	12	13	14	15	17	18	20	21	22	23	25	1
671	2011-09-19	4	5	7	8	9	10	11	12	13	14	18	19	20	22	24	5
672	2011-09-22	1	2	4	6	9	10	11	12	15	17	19	21	23	24	25	18
673	2011-09-26	2	4	5	7	8	9	10	11	12	13	14	15	17	19	20	6
674	2011-09-29	2	3	8	10	11	14	15	16	18	19	20	22	23	24	25	3
675	2011-10-03	2	3	4	5	7	10	11	13	14	15	16	17	22	23	24	0
676	2011-10-06	2	4	5	6	8	10	12	13	15	16	19	20	21	24	25	27
677	2011-10-10	1	2	5	6	7	8	10	11	12	13	15	16	19	23	25	4
678	2011-10-13	2	3	5	7	9	10	12	15	18	19	20	21	23	24	25	7
679	2011-10-17	2	7	8	10	11	12	13	14	15	17	18	19	20	21	22	3
680	2011-10-20	3	4	6	7	8	9	12	13	14	16	18	19	20	21	22	6
681	2011-10-24	2	3	4	6	7	8	10	11	12	14	15	16	18	19	23	11
682	2011-10-27	1	2	4	5	6	7	8	11	14	17	18	19	22	24	25	5
683	2011-10-31	1	2	4	5	6	7	8	9	10	11	12	13	15	23	24	3
684	2011-11-03	1	4	5	8	10	11	12	13	14	16	20	21	22	24	25	2
685	2011-11-07	1	3	4	9	12	13	15	17	19	20	21	22	23	24	25	6
686	2011-11-10	1	3	4	6	7	10	12	13	16	19	20	22	23	24	25	8
687	2011-11-14	1	2	3	4	6	9	12	13	15	18	19	20	23	24	25	3
688	2011-11-17	1	2	3	4	7	9	11	12	14	16	19	21	22	23	24	3
689	2011-11-21	2	3	4	5	6	7	8	11	12	13	15	17	22	23	24	5
690	2011-11-24	1	2	3	9	10	11	12	13	14	15	18	19	20	24	25	13
691	2011-11-28	1	2	3	6	7	8	9	11	13	17	18	19	20	22	23	3
692	2011-12-01	1	2	4	6	7	10	11	12	17	18	19	21	22	23	24	7
693	2011-12-05	1	2	3	4	6	7	9	10	11	14	16	17	19	21	22	1
694	2011-12-08	1	3	6	8	9	10	11	14	15	16	18	19	20	21	24	2
695	2011-12-12	2	3	4	5	11	13	14	17	18	19	20	21	22	24	25	1
696	2011-12-15	1	4	5	7	9	10	11	13	14	15	16	20	21	22	24	4
697	2011-12-19	1	2	3	7	8	11	14	15	16	18	19	22	23	24	25	5
698	2011-12-22	2	3	4	6	7	9	10	12	14	15	18	20	21	22	24	8
699	2011-12-26	2	3	4	6	8	9	10	15	16	18	19	21	22	23	25	1
700	2011-12-29	1	2	6	7	8	9	10	13	14	16	18	19	21	22	25	0
701	2012-01-02	3	4	8	10	12	13	14	16	17	19	20	21	22	23	25	3
702	2012-01-05	1	2	3	4	5	6	7	8	9	10	13	14	20	23	25	10
703	2012-01-09	2	5	8	10	11	14	15	17	18	20	21	22	23	24	25	6
704	2012-01-12	2	3	5	6	8	10	11	13	14	15	16	17	22	23	24	6
705	2012-01-16	3	4	6	7	8	9	11	12	14	15	16	20	21	22	25	2
706	2012-01-19	1	2	3	4	6	8	12	13	16	18	19	21	22	24	25	4
707	2012-01-23	3	4	6	7	8	11	12	14	15	16	17	20	21	24	25	3
708	2012-01-26	1	2	3	4	5	6	9	11	14	16	19	21	22	24	25	5
709	2012-01-30	1	3	6	7	8	11	12	14	15	16	18	19	20	22	23	4
710	2012-02-02	2	3	4	6	12	14	15	17	18	19	20	21	22	24	25	2
711	2012-02-06	1	2	4	5	6	7	10	12	13	15	16	18	21	22	24	5
712	2012-02-08	1	4	8	9	12	14	15	16	17	18	20	21	22	23	25	1
713	2012-02-10	2	3	4	5	6	11	13	14	15	19	21	22	23	24	25	2
714	2012-02-13	4	6	7	8	9	10	11	12	13	14	15	17	19	21	22	3
715	2012-02-15	1	3	5	8	10	11	13	14	15	18	20	22	23	24	25	6
716	2012-02-17	1	3	5	7	8	11	12	14	15	16	18	20	21	23	25	15
717	2012-02-22	1	2	3	5	7	8	9	11	14	16	18	20	21	23	25	9
718	2012-02-24	3	4	7	9	11	13	14	15	17	19	21	22	23	24	25	10
719	2012-02-27	2	7	8	9	10	11	13	15	16	18	19	22	23	24	25	2
720	2012-03-01	4	7	9	10	11	12	13	16	17	18	20	21	23	24	25	2
721	2012-03-02	1	2	3	4	5	7	8	9	10	11	12	14	15	19	21	2
722	2012-03-05	1	3	5	6	7	8	10	13	14	16	17	19	20	23	24	5
723	2012-03-07	2	3	4	5	7	8	9	10	11	12	14	15	18	20	24	2
724	2012-03-09	1	3	5	6	7	10	12	14	15	18	19	20	23	24	25	8
725	2012-03-12	1	5	6	7	9	10	12	13	15	16	17	18	21	24	25	1
726	2012-03-14	1	2	4	7	9	10	11	13	14	15	16	20	21	24	25	2
727	2012-03-16	3	4	6	7	8	9	11	16	18	20	21	22	23	24	25	2
728	2012-03-19	3	4	6	7	8	10	11	13	16	19	20	21	22	23	25	2
729	2012-03-21	1	2	3	4	6	7	9	10	12	14	15	17	22	23	25	0
730	2012-03-23	1	3	4	8	11	12	14	16	18	19	20	21	22	24	25	2
731	2012-03-26	3	4	6	7	8	11	12	14	15	17	18	19	21	22	24	8
732	2012-03-28	1	4	8	9	10	11	13	14	17	20	21	22	23	24	25	2
733	2012-03-30	1	4	5	6	7	8	11	12	14	16	18	19	20	22	24	4
734	2012-04-02	2	3	6	8	9	10	13	15	17	18	19	20	21	23	24	7
735	2012-04-04	5	6	8	10	11	12	13	14	17	19	20	21	22	24	25	2
736	2012-04-07	2	3	4	5	6	8	9	10	13	15	16	17	19	21	23	1
737	2012-04-09	2	3	4	5	6	7	8	10	12	14	16	17	18	22	25	1
738	2012-04-11	2	6	7	9	11	12	13	14	16	18	19	20	23	24	25	1
739	2012-04-13	2	3	4	8	9	10	11	14	17	20	21	22	23	24	25	4
740	2012-04-16	1	4	5	9	10	11	12	13	14	19	21	22	23	24	25	1
741	2012-04-18	2	3	5	7	10	11	12	13	14	16	17	18	21	24	25	2
742	2012-04-20	1	3	5	6	7	8	9	11	13	14	15	19	20	21	23	4
743	2012-04-23	1	2	3	6	9	10	11	12	14	15	17	21	22	23	24	1
744	2012-04-25	1	3	4	6	7	9	10	11	12	13	15	16	19	23	24	2
745	2012-04-27	1	3	6	7	8	9	11	12	13	16	17	20	22	24	25	3
746	2012-04-30	2	3	4	5	8	9	10	16	17	18	19	20	21	24	25	3
747	2012-05-02	1	2	3	4	6	7	10	12	13	15	16	17	20	23	24	0
748	2012-05-04	1	3	4	5	6	8	9	10	12	15	17	18	20	21	23	4
749	2012-05-07	1	2	3	4	6	7	8	11	13	14	15	18	19	22	24	1
750	2012-05-09	2	3	4	5	7	9	10	11	13	15	19	20	21	24	25	8
751	2012-05-11	3	5	6	8	9	12	13	14	16	17	19	20	21	22	23	7
752	2012-05-14	1	4	5	6	7	8	12	13	14	16	18	19	21	24	25	7
753	2012-05-16	1	3	4	5	6	7	8	11	13	14	17	20	21	22	25	6
754	2012-05-18	1	4	5	7	13	15	16	17	18	19	20	22	23	24	25	3
755	2012-05-21	1	2	3	5	7	8	10	11	12	13	14	16	17	24	25	2
756	2012-05-23	3	5	6	7	8	10	13	14	15	16	17	20	22	23	25	3
757	2012-05-25	1	3	4	8	9	10	11	13	14	15	17	18	20	21	23	5
758	2012-05-28	1	2	4	5	6	11	12	15	16	17	18	20	23	24	25	3
759	2012-05-30	2	5	7	8	9	10	15	16	17	18	19	20	23	24	25	2
760	2012-06-01	1	2	3	7	9	10	11	12	13	15	16	17	23	24	25	9
761	2012-06-04	1	4	5	6	10	11	12	13	14	15	16	19	20	22	24	1
762	2012-06-06	1	2	3	5	6	7	9	10	11	12	13	14	17	21	22	2
763	2012-06-08	1	2	3	4	6	7	13	14	16	17	18	21	22	24	25	3
764	2012-06-11	1	3	4	6	8	9	11	12	14	16	17	19	23	24	25	16
765	2012-06-13	1	2	3	7	8	9	10	12	13	14	18	20	23	24	25	8
766	2012-06-15	1	3	5	6	7	9	12	13	14	15	16	18	21	24	25	5
767	2012-06-18	1	3	4	5	7	8	10	11	12	15	17	19	22	23	24	8
768	2012-06-20	1	3	5	6	11	12	13	14	15	17	19	20	23	24	25	4
769	2012-06-22	3	4	5	7	10	11	13	15	16	17	19	20	22	23	25	5
770	2012-06-25	1	3	4	5	6	9	11	12	16	17	18	21	22	24	25	4
771	2012-06-27	2	4	5	6	7	8	9	10	14	16	17	20	22	23	25	1
772	2012-06-29	2	4	6	7	8	9	10	11	12	15	16	20	23	24	25	1
773	2012-07-02	2	5	6	7	8	10	11	13	15	17	18	20	22	24	25	12
774	2012-07-04	1	3	4	5	6	8	9	11	12	14	15	18	19	22	25	1
775	2012-07-06	2	3	6	7	8	9	10	12	13	14	16	17	18	19	20	20
776	2012-07-09	1	2	3	4	10	11	12	13	14	18	19	20	22	23	24	5
777	2012-07-11	2	3	6	9	11	12	13	14	15	16	20	21	23	24	25	1
778	2012-07-13	2	5	6	7	9	10	11	13	15	16	19	20	22	24	25	8
779	2012-07-16	4	5	8	9	11	12	13	14	16	17	19	20	21	22	23	3
780	2012-07-18	3	6	7	8	10	13	15	16	17	18	19	20	21	24	25	2
781	2012-07-20	1	2	4	8	9	10	11	14	15	16	17	19	20	22	25	0
782	2012-07-23	5	8	9	10	11	12	13	14	15	16	17	18	19	20	21	30
783	2012-07-25	1	2	5	6	7	8	11	13	15	16	19	20	21	22	24	8
784	2012-07-27	1	2	3	4	7	11	12	13	15	18	20	21	22	23	25	4
785	2012-07-30	1	2	4	6	7	10	11	12	13	15	16	17	19	21	23	5
786	2012-08-01	2	4	5	6	8	10	11	12	13	15	17	21	23	24	25	5
787	2012-08-03	1	4	5	8	9	10	11	12	13	14	16	17	19	20	23	6
788	2012-08-06	1	3	4	8	9	10	11	12	16	19	21	22	23	24	25	5
789	2012-08-08	2	3	4	8	10	11	12	14	15	16	18	19	21	22	24	7
790	2012-08-10	3	6	7	8	10	12	13	16	18	19	20	22	23	24	25	3
791	2012-08-13	1	2	3	5	6	7	8	10	11	13	14	21	22	23	25	3
792	2012-08-15	1	2	3	6	8	9	10	12	14	18	19	20	21	23	25	7
793	2012-08-17	2	4	5	7	9	11	12	14	16	17	18	20	21	23	25	22
794	2012-08-20	1	2	3	4	5	6	8	9	11	14	15	20	23	24	25	1
795	2012-08-22	1	2	3	4	6	7	8	9	10	12	14	16	21	22	24	3
796	2012-08-24	2	3	4	6	7	8	10	11	14	16	17	18	20	21	24	7
797	2012-08-27	2	3	5	6	7	8	11	15	17	18	19	20	21	24	25	2
798	2012-08-29	1	3	5	6	8	10	11	13	15	16	18	19	22	23	24	94
799	2012-08-31	3	4	6	8	11	13	14	15	16	19	21	22	23	24	25	6
800	2012-09-06	3	4	6	7	8	9	10	11	12	13	16	20	21	22	24	14
801	2012-09-10	1	3	4	5	6	7	10	12	15	17	18	19	21	23	25	4
802	2012-09-12	1	3	4	5	8	9	10	12	13	14	18	20	21	22	25	5
803	2012-09-14	1	4	5	12	14	15	16	17	18	19	20	21	23	24	25	2
804	2012-09-17	1	3	4	5	6	7	8	13	15	17	18	20	21	23	24	2
805	2012-09-19	1	2	4	6	7	9	11	13	14	16	17	20	22	24	25	21
806	2012-09-21	1	2	3	5	6	7	8	10	14	15	16	19	20	24	25	4
807	2012-09-24	2	3	4	5	7	8	10	11	13	18	19	21	22	24	25	3
808	2012-09-26	4	6	7	10	11	12	14	16	17	18	20	21	22	24	25	2
809	2012-09-28	1	2	4	5	7	9	13	16	18	19	21	22	23	24	25	4
810	2012-10-01	1	3	6	7	9	11	12	15	16	17	18	21	22	23	24	3
811	2012-10-03	1	2	3	4	5	6	7	9	10	12	14	17	19	20	22	6
812	2012-10-05	1	3	5	7	8	11	14	17	18	19	20	21	23	24	25	0
813	2012-10-08	1	3	4	5	6	7	8	10	12	16	19	21	23	24	25	6
814	2012-10-10	3	4	8	10	11	12	13	14	17	19	20	21	22	23	24	4
815	2012-10-13	6	7	8	10	11	14	15	17	18	20	21	22	23	24	25	4
816	2012-10-15	2	3	5	8	9	10	11	12	13	15	16	17	19	23	25	7
817	2012-10-17	1	2	3	4	5	8	10	11	12	17	18	20	23	24	25	2
818	2012-10-19	4	5	6	8	10	11	13	14	16	19	20	22	23	24	25	1
819	2012-10-22	3	4	5	6	7	8	9	10	11	12	18	19	20	21	22	36
820	2012-10-24	1	2	3	5	6	7	8	9	10	13	15	16	22	23	24	2
821	2012-10-26	3	4	5	7	9	10	11	12	14	16	17	21	23	24	25	2
822	2012-10-29	2	3	5	11	12	14	15	16	17	18	19	21	22	23	24	1
823	2012-10-31	1	2	4	5	9	11	12	13	14	16	19	20	22	24	25	4
824	2012-11-03	2	3	4	7	11	12	13	14	15	19	20	21	22	24	25	3
825	2012-11-05	1	6	7	8	9	10	11	13	14	15	17	19	22	23	25	0
826	2012-11-07	3	5	6	12	13	14	15	16	17	18	19	20	21	23	24	2
827	2012-11-09	1	2	4	5	7	9	10	12	13	14	16	17	21	22	24	4
828	2012-11-12	1	6	7	8	9	12	14	15	17	19	20	22	23	24	25	1
829	2012-11-14	2	5	7	8	9	11	13	14	16	17	18	22	23	24	25	10
830	2012-11-16	1	4	6	9	10	11	12	13	14	16	17	19	21	23	24	2
831	2012-11-19	1	2	3	5	9	10	11	12	14	16	17	18	20	21	22	5
832	2012-11-21	2	5	6	7	8	10	11	12	15	16	19	22	23	24	25	5
833	2012-11-23	2	5	6	7	10	11	12	13	16	17	18	19	20	22	25	3
834	2012-11-26	2	4	7	8	9	10	11	14	16	18	19	20	21	22	23	5
835	2012-11-28	1	2	4	6	8	12	14	15	16	17	18	19	21	24	25	3
836	2012-11-30	2	4	7	8	9	10	12	14	15	16	18	20	21	22	25	4
837	2012-12-03	1	3	7	8	10	11	12	13	14	15	16	18	20	22	24	7
838	2012-12-05	2	4	5	7	9	10	11	14	15	16	18	20	21	23	24	21
839	2012-12-07	2	3	4	6	7	8	13	14	16	17	19	21	22	24	25	2
840	2012-12-10	2	4	6	9	11	12	13	17	18	19	20	21	22	23	25	4
841	2012-12-12	1	3	5	6	8	10	12	13	14	15	16	17	20	21	24	8
842	2012-12-14	3	4	5	7	10	11	13	14	15	18	19	20	21	22	24	5
843	2012-12-17	3	4	7	8	11	12	13	15	16	17	19	20	21	22	24	8
844	2012-12-19	1	3	5	7	8	9	10	12	15	16	17	19	22	24	25	3
845	2012-12-21	2	4	6	7	11	12	14	16	18	19	21	22	23	24	25	3
846	2012-12-24	1	4	6	9	10	11	13	14	15	19	20	21	23	24	25	1
847	2012-12-26	1	3	5	6	7	9	10	11	13	14	17	18	20	21	25	3
848	2012-12-28	2	3	5	8	9	13	14	16	17	18	19	21	23	24	25	1
849	2012-12-31	1	4	5	10	12	13	14	15	16	17	18	20	23	24	25	2
850	2013-01-02	2	3	5	7	8	10	13	14	18	19	20	21	22	23	24	2
851	2013-01-04	1	4	5	6	7	10	13	14	15	17	18	19	20	22	24	3
852	2013-01-07	1	2	3	4	5	8	11	12	16	18	20	21	23	24	25	4
853	2013-01-09	2	3	5	6	8	9	11	12	17	18	19	20	21	22	23	4
854	2013-01-11	1	2	3	5	8	9	10	13	14	15	17	18	20	21	22	2
855	2013-01-14	1	3	4	8	9	10	11	13	14	15	17	18	23	24	25	3
856	2013-01-16	2	3	7	8	9	11	12	13	15	16	19	20	22	23	25	5
857	2013-01-18	1	3	4	6	8	11	13	14	15	16	18	19	20	21	24	3
858	2013-01-21	1	3	4	5	6	8	9	11	12	17	19	20	22	23	25	5
859	2013-01-23	1	2	3	4	5	6	9	10	11	13	14	17	18	19	20	2
860	2013-01-25	3	4	5	6	7	9	10	13	14	15	16	19	22	24	25	2
861	2013-01-28	1	2	3	4	6	7	9	10	11	14	15	17	19	22	23	3
862	2013-01-30	1	2	3	4	5	10	13	14	15	17	18	19	20	23	24	7
863	2013-02-01	1	3	4	7	8	13	15	16	17	18	19	22	23	24	25	4
864	2013-02-04	3	6	8	10	12	13	15	16	17	18	19	21	22	23	24	3
865	2013-02-06	1	3	4	5	6	7	10	13	18	19	20	21	22	23	25	0
866	2013-02-08	1	2	3	5	7	8	9	10	11	13	14	18	20	23	24	6
867	2013-02-13	2	3	4	5	6	7	8	10	12	13	14	15	21	22	25	1
868	2013-02-15	1	2	3	8	9	10	12	13	14	16	17	19	21	22	24	9
869	2013-02-18	1	3	6	9	10	11	12	14	18	20	21	22	23	24	25	6
870	2013-02-20	1	2	4	5	6	7	8	10	12	13	14	16	17	18	23	5
871	2013-02-22	2	4	6	8	9	10	12	13	14	15	17	19	22	23	24	10
872	2013-02-25	1	2	4	5	6	7	9	10	12	13	14	17	18	22	23	12
873	2013-02-27	2	3	6	7	8	9	11	12	13	14	15	17	18	22	25	0
874	2013-03-01	1	2	4	5	6	7	8	9	10	16	19	20	21	23	25	5
875	2013-03-04	2	4	6	8	9	10	12	13	15	18	21	22	23	24	25	6
876	2013-03-06	3	5	6	7	9	12	13	14	16	18	20	21	23	24	25	8
877	2013-03-08	3	7	8	9	10	11	13	14	15	16	18	19	21	23	25	6
878	2013-03-11	1	2	3	5	6	7	10	12	13	14	16	19	22	23	25	6
879	2013-03-13	2	3	4	7	9	10	12	13	15	16	18	21	22	24	25	5
880	2013-03-15	2	5	6	7	8	10	14	16	18	19	21	22	23	24	25	2
881	2013-03-18	1	3	4	5	6	7	8	9	15	16	19	20	21	22	23	4
882	2013-03-20	1	2	7	8	10	11	12	13	14	17	18	19	22	24	25	4
883	2013-03-22	3	5	6	7	8	9	10	12	16	17	18	19	21	22	25	2
884	2013-03-25	1	4	7	8	9	10	12	13	15	17	18	19	20	21	25	1
885	2013-03-27	2	5	7	8	9	11	12	15	16	17	18	19	22	23	24	2
886	2013-03-30	1	3	4	7	8	10	11	12	13	15	16	17	20	21	23	1
887	2013-04-01	1	6	8	10	11	12	15	17	18	19	20	21	23	24	25	0
888	2013-04-03	1	3	6	11	12	13	14	16	17	18	19	20	21	22	24	2
889	2013-04-05	2	4	5	6	7	9	11	12	13	16	18	19	21	22	25	3
890	2013-04-08	1	2	3	4	5	6	7	8	11	16	17	18	19	23	24	1
891	2013-04-10	1	5	6	7	8	12	14	15	16	17	19	21	23	24	25	6
892	2013-04-12	1	2	3	5	6	10	13	14	16	17	19	20	21	22	24	2
893	2013-04-15	1	2	3	4	5	6	8	9	11	15	16	20	22	23	24	0
894	2013-04-17	1	2	5	6	9	12	13	14	15	18	19	21	22	24	25	4
895	2013-04-19	2	3	4	5	6	8	11	12	13	16	17	18	19	21	25	1
896	2013-04-22	1	2	3	4	6	7	8	12	13	15	17	18	19	20	23	0
897	2013-04-24	1	2	5	7	8	9	10	11	13	14	16	17	18	21	23	1
898	2013-04-26	1	4	6	8	9	10	11	12	13	14	18	20	21	24	25	0
899	2013-04-29	1	4	7	9	10	12	14	15	16	17	18	20	21	23	25	8
900	2013-05-03	1	2	6	7	8	10	11	12	13	15	18	20	22	24	25	4
901	2013-05-06	1	2	4	6	7	10	12	13	14	16	18	22	23	24	25	1
902	2013-05-08	1	2	3	4	5	6	8	9	11	17	20	21	23	24	25	1
903	2013-05-10	1	2	3	4	5	6	8	10	11	13	15	16	18	20	22	29
904	2013-05-13	1	5	6	7	9	10	12	13	16	17	18	19	20	22	24	3
905	2013-05-15	1	4	6	8	10	11	12	13	14	16	17	20	21	22	23	3
906	2013-05-17	1	2	3	5	6	7	8	9	10	12	17	18	21	22	24	1
907	2013-05-20	2	3	4	5	7	8	10	13	14	15	16	20	21	22	23	2
908	2013-05-22	1	2	4	6	7	9	10	12	13	15	17	18	23	24	25	7
909	2013-05-24	1	2	3	5	6	7	8	10	11	12	13	18	20	21	22	4
910	2013-05-27	3	4	5	6	8	9	11	13	16	17	18	19	20	24	25	5
911	2013-05-29	1	2	3	5	6	8	11	13	15	17	21	22	23	24	25	3
912	2013-05-31	2	3	4	7	10	14	15	16	17	18	19	20	21	22	23	1
913	2013-06-03	3	4	5	6	10	12	13	15	17	18	19	20	22	24	25	3
914	2013-06-05	1	3	4	5	6	10	11	12	15	17	18	20	22	23	24	2
915	2013-06-07	1	2	4	5	6	8	10	11	13	18	20	22	23	24	25	9
916	2013-06-10	1	2	3	4	5	6	7	11	13	14	17	18	19	23	24	1
917	2013-06-12	1	2	3	4	5	6	11	13	14	17	19	20	21	22	24	1
918	2013-06-14	1	2	3	4	6	8	9	13	14	15	16	17	21	22	23	4
919	2013-06-17	1	2	3	4	5	7	9	10	11	13	14	17	19	21	22	9
920	2013-06-19	1	2	3	4	5	6	10	12	13	15	16	19	20	22	23	7
921	2013-06-21	1	2	3	4	7	9	12	15	16	17	18	19	21	24	25	4
922	2013-06-24	2	4	5	6	8	9	12	15	16	17	20	21	22	23	24	1
923	2013-06-26	1	3	4	5	6	7	10	12	14	15	19	20	22	24	25	4
924	2013-06-28	1	2	6	7	8	9	10	12	14	16	17	18	19	20	24	1
925	2013-07-01	1	3	4	6	7	9	12	13	14	15	16	22	23	24	25	6
926	2013-07-03	1	5	6	7	8	9	10	11	12	13	14	15	19	21	24	2
927	2013-07-05	2	3	5	6	9	11	13	14	16	17	20	21	22	23	25	4
928	2013-07-08	1	4	6	8	9	10	11	12	14	15	17	19	23	24	25	3
929	2013-07-10	1	2	4	5	7	8	9	10	11	14	18	20	21	23	25	2
930	2013-07-12	2	3	5	6	9	11	12	14	15	16	20	22	23	24	25	4
931	2013-07-15	2	3	5	6	8	10	11	12	14	16	19	20	22	24	25	19
932	2013-07-17	1	4	5	8	12	13	14	15	16	18	20	21	22	23	25	3
933	2013-07-19	2	3	4	5	6	7	10	11	14	15	16	17	19	23	24	4
934	2013-07-22	2	3	4	8	9	10	11	14	19	20	21	22	23	24	25	6
935	2013-07-24	1	2	3	4	5	6	7	9	10	12	14	18	19	22	23	7
936	2013-07-26	1	2	3	4	6	7	8	13	15	17	18	19	20	23	25	5
937	2013-07-29	1	2	6	9	10	11	12	13	14	16	19	20	23	24	25	2
938	2013-07-31	2	3	4	6	7	10	11	13	15	16	17	18	19	20	25	2
939	2013-08-02	1	4	5	6	7	9	10	11	15	16	18	19	20	21	25	5
940	2013-08-05	2	3	4	6	7	9	13	14	16	17	18	19	20	24	25	8
941	2013-08-07	1	2	3	4	5	7	8	9	10	11	15	16	18	23	25	2
942	2013-08-09	1	3	4	5	6	7	11	12	13	18	19	20	21	22	24	7
943	2013-08-12	3	4	5	6	9	10	12	13	14	15	17	18	21	22	23	5
944	2013-08-14	1	8	9	10	11	12	13	14	16	17	18	19	21	24	25	3
945	2013-08-16	2	3	4	5	6	9	11	13	18	19	20	21	23	24	25	2
946	2013-08-19	1	7	8	9	10	14	16	17	18	19	20	21	22	24	25	3
947	2013-08-21	1	2	3	5	7	9	10	11	12	15	16	18	20	22	24	8
948	2013-08-23	1	2	5	6	8	9	11	13	16	17	18	19	21	22	24	0
949	2013-08-26	1	6	7	8	9	10	11	12	13	14	15	16	17	21	23	3
950	2013-08-28	2	4	5	7	8	9	12	13	14	17	18	19	20	21	25	5
951	2013-08-30	3	7	8	9	10	13	14	15	17	19	20	21	22	23	25	1
952	2013-09-07	1	3	4	6	8	11	12	14	17	18	19	21	22	23	25	66
953	2013-09-09	1	2	5	6	7	9	10	12	13	14	15	16	18	21	24	3
954	2013-09-11	3	5	6	8	10	11	12	13	14	16	18	20	23	24	25	4
955	2013-09-13	1	2	4	5	7	9	10	11	12	13	14	16	18	21	24	8
956	2013-09-16	2	3	4	5	6	8	11	12	13	16	17	18	19	21	22	7
957	2013-09-18	1	3	4	5	6	7	8	13	15	16	21	22	23	24	25	4
958	2013-09-20	1	4	5	6	9	12	13	14	16	17	19	20	21	22	24	6
959	2013-09-23	2	5	6	9	11	12	14	16	19	20	21	22	23	24	25	5
960	2013-09-25	1	2	3	4	6	7	10	12	14	16	17	18	20	21	24	5
961	2013-09-27	1	2	3	4	5	7	9	11	12	15	18	20	21	22	25	4
962	2013-09-30	1	4	6	8	9	11	13	14	15	17	20	21	22	23	25	4
963	2013-10-02	3	4	6	7	9	10	11	14	15	16	17	18	19	23	24	2
964	2013-10-04	1	2	3	4	7	9	10	11	15	17	18	19	20	21	23	1
965	2013-10-07	3	4	8	9	10	11	13	14	15	16	18	19	21	22	24	2
966	2013-10-09	2	3	4	5	6	7	8	10	11	12	17	19	21	22	25	5
967	2013-10-11	2	3	4	6	8	9	10	11	16	17	20	21	22	23	25	1
968	2013-10-14	2	3	4	5	7	9	11	13	14	16	18	19	20	21	25	3
969	2013-10-16	1	3	4	5	9	10	11	12	16	17	18	19	20	22	24	1
970	2013-10-18	1	3	6	8	9	10	12	15	17	18	19	20	21	23	24	4
971	2013-10-21	3	4	5	6	7	9	10	11	18	20	21	22	23	24	25	2
972	2013-10-23	1	3	6	8	11	13	14	15	16	20	21	22	23	24	25	4
973	2013-10-25	1	2	3	5	6	8	11	14	15	18	20	21	22	24	25	3
974	2013-10-28	1	4	6	7	8	9	10	12	14	15	17	19	21	22	24	5
975	2013-10-30	1	2	4	6	7	10	11	12	13	14	16	17	19	20	24	2
976	2013-11-01	1	2	3	4	6	7	10	11	13	14	19	21	23	24	25	7
977	2013-11-04	1	2	6	7	8	10	11	13	14	17	18	20	22	23	24	2
978	2013-11-06	3	4	5	6	7	8	9	11	12	13	14	15	16	18	25	2
979	2013-11-08	2	5	6	7	8	9	10	14	16	19	21	22	23	24	25	7
980	2013-11-11	1	2	6	7	8	9	10	11	12	13	17	20	21	22	24	2
981	2013-11-13	1	2	3	4	6	8	9	12	16	18	19	21	22	24	25	1
982	2013-11-16	1	3	4	5	6	7	9	13	14	17	18	20	21	23	24	5
983	2013-11-18	2	4	5	6	7	8	10	11	14	15	16	18	19	21	25	3
984	2013-11-20	2	4	8	9	10	11	12	13	15	20	21	22	23	24	25	3
985	2013-11-22	3	4	6	7	9	12	13	14	17	18	21	22	23	24	25	9
986	2013-11-25	1	2	5	7	11	13	14	15	16	18	20	21	22	23	24	1
987	2013-11-27	2	4	5	6	7	9	11	12	13	15	18	19	20	22	23	8
988	2013-11-29	1	3	5	7	9	11	12	13	15	16	17	19	20	24	25	7
989	2013-12-02	3	4	6	8	9	10	13	14	15	17	18	19	22	23	24	10
990	2013-12-04	1	5	6	7	8	10	11	12	13	15	16	19	20	22	24	3
991	2013-12-06	1	2	5	6	7	9	12	14	15	17	18	21	22	24	25	2
992	2013-12-09	1	3	4	5	7	8	9	10	11	13	15	17	19	20	24	3
993	2013-12-11	2	4	5	7	9	10	12	14	17	20	21	22	23	24	25	13
994	2013-12-13	3	5	7	8	9	11	12	13	14	15	16	18	22	23	25	4
995	2013-12-16	1	2	3	4	7	8	9	12	13	14	17	20	22	23	24	8
996	2013-12-18	2	3	4	6	7	9	13	16	17	18	20	21	23	24	25	6
997	2013-12-20	2	4	5	7	9	10	12	15	16	17	18	19	22	23	24	1
998	2013-12-23	1	2	3	4	5	9	11	12	14	17	19	20	21	22	23	4
999	2013-12-27	1	2	5	6	7	8	10	12	13	14	15	16	18	21	24	13
1000	2013-12-30	2	3	4	8	11	12	13	14	15	16	17	18	19	20	22	5
1001	2014-01-03	5	6	7	8	10	11	12	13	14	17	19	20	21	23	25	2
1002	2014-01-06	3	4	8	10	12	13	14	15	16	17	18	20	21	22	24	3
1003	2014-01-09	1	2	3	6	8	10	12	14	16	17	19	20	21	23	25	20
1004	2014-01-10	1	2	3	6	10	12	14	15	18	19	20	21	22	24	25	2
1005	2014-01-13	1	5	7	9	10	12	14	15	16	18	19	20	21	22	24	6
1006	2014-01-15	1	3	4	5	6	7	9	13	14	15	16	20	22	23	24	0
1007	2014-01-17	1	2	3	6	7	9	10	11	12	18	20	22	23	24	25	3
1008	2014-01-20	1	3	6	7	8	9	10	12	13	16	17	18	19	21	22	3
1009	2014-01-22	2	4	6	9	10	11	12	14	15	17	18	19	20	22	24	5
1010	2014-01-24	1	2	4	6	8	10	11	13	14	15	16	19	21	22	23	1
1011	2014-01-27	1	3	4	5	7	9	10	13	15	17	18	19	23	24	25	11
1012	2014-01-29	1	2	7	9	11	12	14	15	16	17	18	21	22	24	25	2
1013	2014-01-31	1	2	3	4	5	7	10	11	13	17	18	19	20	21	23	2
1014	2014-02-03	1	2	8	9	10	12	13	14	17	18	20	22	23	24	25	7
1015	2014-02-05	1	2	3	5	6	7	8	13	15	16	17	18	20	21	23	5
1016	2014-02-07	1	2	3	5	6	11	12	14	15	16	19	20	21	23	25	3
1017	2014-02-10	1	2	3	4	8	9	10	11	12	15	16	17	19	21	23	4
1018	2014-02-12	2	4	5	7	8	10	11	12	14	16	17	18	19	22	24	10
1019	2014-02-14	1	2	3	4	5	7	8	10	12	17	18	20	21	22	23	4
1020	2014-02-17	2	3	5	7	9	11	12	13	15	16	18	19	20	21	24	5
1021	2014-02-19	1	5	6	9	10	13	14	15	16	18	19	20	21	22	23	2
1022	2014-02-21	1	3	4	5	7	8	9	10	14	16	18	21	22	24	25	1
1023	2014-02-24	1	2	3	6	7	8	9	11	13	14	16	18	21	22	23	5
1024	2014-02-26	1	2	4	7	9	10	11	12	13	14	17	20	21	22	23	1
1025	2014-02-28	1	2	7	9	11	13	14	15	16	17	18	19	22	23	25	4
1026	2014-03-05	1	5	6	7	11	12	14	15	16	18	19	20	21	23	24	3
1027	2014-03-07	1	3	5	6	8	9	10	12	14	15	16	19	21	23	25	18
1028	2014-03-10	4	5	6	7	8	9	10	11	16	17	19	20	23	24	25	1
1029	2014-03-12	1	2	3	6	8	11	13	14	17	18	19	22	23	24	25	4
1030	2014-03-14	1	2	3	4	8	9	10	11	15	16	17	18	19	20	23	3
1031	2014-03-17	1	2	4	5	6	9	11	12	14	15	17	19	20	22	24	5
1032	2014-03-19	1	2	3	4	6	8	10	11	13	14	16	17	18	20	23	1
1033	2014-03-21	3	4	6	7	8	12	13	14	16	17	18	21	22	23	24	17
1034	2014-03-24	2	3	4	6	8	10	12	13	14	17	18	19	20	21	23	13
1035	2014-03-26	4	6	7	9	12	13	14	15	18	19	20	21	22	23	25	2
1036	2014-03-28	4	5	7	9	10	11	12	14	17	18	19	20	21	22	24	5
1037	2014-03-31	1	5	6	9	10	11	12	15	17	18	20	21	23	24	25	5
1038	2014-04-02	2	6	7	8	9	10	13	16	17	18	19	20	21	24	25	4
1039	2014-04-04	1	2	3	8	9	12	13	14	15	18	19	20	21	22	24	8
1040	2014-04-07	1	2	4	6	8	9	10	12	13	16	20	21	22	23	25	3
1041	2014-04-09	1	3	5	7	10	12	13	15	17	19	20	21	23	24	25	23
1042	2014-04-11	1	3	6	7	8	9	10	11	14	15	16	19	21	22	24	2
1043	2014-04-14	1	2	6	7	8	9	10	11	12	14	17	18	19	24	25	1
1044	2014-04-16	2	4	5	6	7	8	10	11	12	15	17	20	23	24	25	5
1045	2014-04-19	2	3	5	6	9	11	15	16	17	20	21	22	23	24	25	4
1046	2014-04-23	3	4	5	7	8	11	12	13	14	18	20	21	22	23	25	2
1047	2014-04-25	4	7	8	9	10	11	12	15	16	17	20	21	22	24	25	5
1048	2014-04-28	1	2	3	5	6	7	9	10	15	16	17	18	20	21	25	3
1049	2014-04-30	2	4	5	9	12	14	16	17	18	19	20	21	22	23	25	2
1050	2014-05-02	1	4	6	7	10	12	13	15	16	17	19	21	22	24	25	3
1051	2014-05-05	2	3	4	7	8	10	11	13	14	16	18	20	21	23	25	47
1052	2014-05-07	1	3	4	5	6	8	10	11	16	17	18	20	21	23	24	1
1053	2014-05-09	1	2	3	4	6	11	12	13	14	15	17	18	22	23	24	2
1054	2014-05-12	2	3	4	5	6	9	12	13	15	16	17	18	20	24	25	0
1055	2014-05-14	1	2	3	7	8	9	10	12	13	14	18	22	23	24	25	7
1056	2014-05-16	2	4	5	6	8	9	10	11	14	15	18	19	21	22	23	1
1057	2014-05-19	1	4	6	7	8	9	11	13	14	16	19	20	21	23	25	2
1058	2014-05-21	4	5	6	7	9	12	13	16	17	18	20	21	22	24	25	0
1059	2014-05-23	1	2	3	5	7	8	11	14	15	16	19	20	21	22	24	6
1060	2014-05-26	1	2	4	5	7	8	13	14	15	16	17	20	21	22	23	8
1061	2014-05-28	2	3	5	7	8	9	12	14	15	16	19	21	22	23	24	0
1062	2014-05-30	3	4	5	7	8	9	11	13	15	16	17	19	20	23	25	6
1063	2014-06-02	2	5	6	7	10	12	13	14	15	16	20	21	22	24	25	2
1064	2014-06-04	2	3	7	8	9	10	11	14	15	16	18	19	21	24	25	3
1065	2014-06-06	2	3	4	5	6	12	14	15	17	19	20	21	22	24	25	6
1066	2014-06-09	2	4	5	6	10	11	14	16	17	18	19	21	22	23	24	1
1067	2014-06-11	1	2	3	4	5	7	10	11	13	14	15	17	21	22	25	3
1068	2014-06-13	2	6	7	10	11	13	14	15	16	17	18	20	21	22	24	1
1069	2014-06-16	1	3	4	8	10	11	12	13	15	16	17	22	23	24	25	4
1070	2014-06-18	4	9	10	11	12	13	16	18	19	20	21	22	23	24	25	1
1071	2014-06-20	2	3	4	5	6	10	11	12	13	14	16	17	21	22	24	2
1072	2014-06-23	1	2	3	4	5	7	9	13	14	15	17	20	22	23	25	5
1073	2014-06-25	1	3	4	5	6	7	13	16	17	19	20	21	22	23	24	0
1074	2014-06-27	1	4	7	8	9	10	11	13	17	20	21	22	23	24	25	2
1075	2014-06-30	1	2	6	9	10	12	15	16	17	18	21	22	23	24	25	1
1076	2014-07-02	4	9	10	11	12	13	14	15	16	17	18	20	21	22	25	3
1077	2014-07-04	1	2	5	6	7	8	10	12	13	14	15	19	20	21	24	3
1078	2014-07-07	2	4	5	6	7	9	10	11	13	17	18	21	23	24	25	2
1079	2014-07-09	5	6	7	8	11	13	14	15	16	17	19	20	21	22	24	4
1080	2014-07-11	2	3	5	6	10	11	12	14	15	16	17	21	22	23	25	2
1081	2014-07-14	1	5	6	7	10	12	13	14	15	16	18	19	21	22	23	2
1082	2014-07-16	3	7	9	10	11	13	15	16	17	18	19	21	22	23	24	2
1083	2014-07-18	1	2	3	4	6	11	13	16	17	18	20	21	22	23	24	1
1084	2014-07-21	1	2	3	4	5	6	7	9	10	13	17	18	21	24	25	4
1085	2014-07-23	3	6	7	8	9	10	14	16	18	19	21	22	23	24	25	4
1086	2014-07-25	2	4	5	7	10	12	13	15	17	18	19	21	22	23	24	6
1087	2014-07-28	2	3	4	6	9	12	13	16	17	18	19	20	21	23	24	3
1088	2014-07-30	1	2	3	5	6	7	9	10	12	13	18	19	20	22	23	3
1089	2014-08-01	2	3	4	6	8	12	13	14	15	16	19	21	22	23	24	6
1090	2014-08-04	3	5	8	9	10	11	13	14	15	17	18	20	21	22	24	6
1091	2014-08-06	2	4	5	6	7	9	10	12	13	14	16	20	23	24	25	1
1092	2014-08-08	4	5	8	9	11	12	13	14	15	18	19	20	22	24	25	0
1093	2014-08-11	1	2	4	5	6	9	10	11	13	18	21	22	23	24	25	6
1094	2014-08-13	1	2	3	4	5	6	8	9	10	12	14	16	19	22	25	1
1095	2014-08-15	2	3	5	6	7	9	15	16	17	18	21	22	23	24	25	5
1096	2014-08-18	1	2	4	7	8	10	12	13	14	15	20	21	22	23	25	1
1097	2014-08-20	4	5	6	9	10	12	14	15	16	18	19	20	23	24	25	2
1098	2014-08-22	3	4	5	7	8	10	11	12	14	15	16	18	23	24	25	6
1099	2014-08-25	2	3	6	7	8	11	12	13	14	16	21	22	23	24	25	0
1100	2014-08-27	5	6	7	9	10	11	12	14	15	16	18	19	20	23	24	6
1101	2014-08-29	1	2	3	6	9	10	11	13	15	17	18	19	23	24	25	4
1102	2014-09-07	2	3	5	6	8	12	14	15	18	19	20	21	22	23	24	43
1103	2014-09-08	2	4	5	7	9	10	11	12	14	16	18	20	21	22	25	21
1104	2014-09-10	2	5	6	8	9	11	13	14	15	16	18	19	21	22	23	6
1105	2014-09-12	1	2	4	6	7	9	11	13	15	17	18	20	23	24	25	15
1106	2014-09-15	2	3	4	9	10	11	12	13	14	15	16	19	21	23	24	4
1107	2014-09-17	1	2	4	8	9	10	11	12	14	16	18	19	20	21	24	7
1108	2014-09-19	1	2	4	5	7	8	9	12	13	14	17	21	22	24	25	4
1109	2014-09-22	1	4	5	6	7	8	9	10	11	17	18	19	20	21	25	2
1110	2014-09-24	1	2	3	4	6	9	10	15	17	18	19	20	22	24	25	0
1111	2014-09-26	2	3	4	6	9	11	12	13	14	15	16	22	23	24	25	4
1112	2014-09-29	1	2	3	6	7	8	12	13	15	16	17	18	20	22	24	5
1113	2014-10-01	1	3	6	7	9	12	13	14	15	17	19	20	22	24	25	4
1114	2014-10-03	1	2	3	4	5	6	8	10	11	12	15	18	19	20	22	4
1115	2014-10-06	2	3	7	8	9	10	11	12	17	18	20	22	23	24	25	3
1116	2014-10-08	1	2	3	4	5	6	9	12	15	17	18	21	22	24	25	4
1117	2014-10-10	1	2	3	5	7	8	11	12	13	14	15	16	19	21	23	3
1118	2014-10-13	1	2	5	6	8	10	11	13	14	15	20	21	23	24	25	7
1119	2014-10-15	1	2	3	5	6	7	8	10	12	14	15	17	18	20	23	6
1120	2014-10-17	2	4	5	6	8	9	10	12	13	14	16	17	18	19	24	2
1121	2014-10-20	1	2	4	5	6	8	9	11	12	17	18	20	22	23	25	3
1122	2014-10-22	2	3	7	10	11	12	13	14	16	19	20	21	23	24	25	4
1123	2014-10-24	2	4	6	7	8	10	11	13	15	16	17	19	22	23	24	7
1124	2014-10-27	1	3	4	5	6	8	10	12	13	15	19	21	22	24	25	3
1125	2014-10-29	1	3	4	6	9	11	12	13	15	16	17	18	21	22	25	3
1126	2014-10-31	3	5	6	7	8	12	13	16	17	18	19	22	23	24	25	2
1127	2014-11-03	1	3	4	6	8	9	11	13	14	15	16	17	22	23	24	1
1128	2014-11-05	1	2	3	4	6	7	10	11	12	14	16	17	20	24	25	1
1129	2014-11-07	2	3	4	5	7	8	12	13	16	17	18	19	21	22	23	5
1130	2014-11-10	1	2	5	8	10	11	12	13	14	15	17	20	22	24	25	3
1131	2014-11-12	2	3	4	6	12	14	15	16	17	19	20	21	22	24	25	2
1132	2014-11-14	1	2	6	7	8	9	11	12	13	14	17	21	22	23	24	2
1133	2014-11-17	2	4	5	6	7	8	9	10	12	13	14	16	18	24	25	2
1134	2014-11-19	1	2	4	8	10	11	12	13	14	15	17	18	20	23	25	5
1135	2014-11-21	3	4	5	8	9	10	12	15	16	17	18	19	23	24	25	4
1136	2014-11-24	1	2	5	6	7	9	10	11	15	17	18	19	21	22	24	4
1137	2014-11-26	2	4	5	7	8	9	10	11	12	15	19	20	21	23	25	2
1138	2014-11-28	1	2	3	5	6	7	10	11	13	15	16	18	20	21	22	4
1139	2014-12-01	1	2	3	6	11	13	14	15	16	17	18	19	21	22	25	1
1140	2014-12-03	3	4	5	6	7	8	10	15	18	19	20	21	23	24	25	0
1141	2014-12-05	5	6	9	10	11	12	13	15	16	17	18	22	23	24	25	4
1142	2014-12-08	2	4	7	8	9	10	12	13	15	16	19	20	22	23	24	2
1143	2014-12-10	1	3	4	6	10	11	12	13	14	16	17	18	23	24	25	4
1144	2014-12-12	2	3	4	6	7	8	10	13	14	17	18	19	23	24	25	6
1145	2014-12-15	3	4	5	6	8	9	11	13	14	15	16	17	18	23	24	6
1146	2014-12-17	2	3	4	5	7	11	13	15	17	18	19	21	22	24	25	4
1147	2014-12-19	1	6	7	8	9	11	12	14	15	16	18	19	20	22	25	1
1148	2014-12-22	1	3	4	5	6	9	10	13	14	16	17	18	19	20	24	2
1149	2014-12-24	1	2	3	6	7	8	10	12	15	17	18	19	21	22	23	2
1150	2014-12-26	5	7	8	9	11	12	13	14	15	17	18	20	22	23	24	2
1151	2014-12-29	1	3	7	9	10	11	12	14	15	16	20	21	22	24	25	4
1152	2014-12-31	3	4	5	7	8	9	10	12	16	18	19	20	21	22	25	2
1153	2015-01-02	1	2	3	5	6	8	9	12	13	15	18	19	20	24	25	3
1154	2015-01-05	1	3	4	5	10	11	13	15	16	17	19	21	23	24	25	0
1155	2015-01-07	1	2	3	4	8	9	12	13	15	16	18	19	22	24	25	8
1156	2015-01-09	1	3	4	6	7	11	12	13	14	15	17	21	22	24	25	0
1157	2015-01-12	2	4	5	6	7	8	11	12	13	15	16	18	21	22	24	6
1158	2015-01-14	2	3	5	7	10	13	14	15	16	17	19	20	22	24	25	9
1159	2015-01-16	1	2	3	4	6	8	9	14	15	16	17	22	23	24	25	3
1160	2015-01-19	2	4	5	6	7	8	10	11	15	16	17	18	21	22	25	3
1161	2015-01-21	1	2	4	5	6	8	10	11	15	17	18	19	22	24	25	5
1162	2015-01-23	1	3	4	7	9	11	13	15	18	19	20	21	23	24	25	11
1163	2015-01-26	2	6	7	9	11	12	13	14	16	17	19	20	21	23	24	1
1164	2015-01-28	3	4	5	8	10	11	13	15	17	20	21	22	23	24	25	7
1165	2015-01-30	1	2	3	5	8	9	10	12	15	17	18	19	21	22	25	2
1166	2015-02-02	2	4	5	6	9	10	12	14	15	17	18	19	20	21	24	3
1167	2015-02-04	1	2	4	5	7	8	9	11	12	14	15	16	18	21	23	4
1168	2015-02-06	1	3	4	5	7	8	9	10	11	13	16	19	23	24	25	5
1169	2015-02-09	2	3	4	7	8	9	12	15	16	17	18	21	22	24	25	4
1170	2015-02-11	1	2	4	7	8	10	13	15	16	18	19	20	21	22	25	3
1171	2015-02-13	1	7	8	11	12	13	14	15	16	17	18	20	21	22	23	1
1172	2015-02-18	2	6	8	9	10	11	12	13	14	16	19	20	23	24	25	1
1173	2015-02-20	1	2	4	5	7	8	9	11	14	16	18	19	20	21	22	1
1174	2015-02-23	1	2	3	5	6	8	9	10	11	13	15	17	18	19	23	7
1175	2015-02-25	1	3	4	8	10	12	13	14	15	19	20	21	23	24	25	1
1176	2015-02-27	2	3	5	7	10	11	12	13	15	16	18	19	20	23	25	3
1177	2015-03-02	2	3	5	6	8	9	10	11	12	16	17	20	22	23	25	3
1178	2015-03-04	1	4	7	8	9	11	12	16	17	18	19	20	21	23	24	3
1179	2015-03-06	1	2	3	5	6	7	8	9	13	15	18	19	20	21	25	3
1180	2015-03-09	1	2	6	7	8	9	10	11	13	14	15	19	20	22	23	0
1181	2015-03-11	3	4	5	6	7	8	9	11	13	14	20	21	22	23	24	3
1182	2015-03-13	3	6	7	8	10	12	13	16	18	19	20	21	22	24	25	3
1183	2015-03-16	1	3	4	9	11	13	14	15	16	18	19	20	22	24	25	3
1184	2015-03-18	2	4	6	7	10	11	12	14	16	17	18	19	20	21	25	1
1185	2015-03-20	3	5	6	7	9	13	14	16	18	19	21	22	23	24	25	3
1186	2015-03-23	1	2	4	5	6	9	11	14	15	16	18	20	22	23	24	4
1187	2015-03-25	1	2	4	7	8	10	11	12	14	16	19	21	22	23	25	9
1188	2015-03-27	1	2	4	5	6	8	10	12	13	14	18	20	22	23	24	4
1189	2015-03-30	3	4	5	8	9	12	13	14	15	17	18	19	20	21	25	6
1190	2015-04-01	2	3	4	6	9	10	11	14	15	16	17	21	22	23	25	1
1191	2015-04-04	1	2	3	5	7	10	12	13	14	16	17	18	22	24	25	1
1192	2015-04-06	1	2	3	4	5	6	9	11	12	13	15	16	19	20	21	1
1193	2015-04-08	1	4	7	8	9	10	13	14	15	18	19	20	22	23	25	1
1194	2015-04-10	2	4	8	9	10	12	15	16	17	18	19	22	23	24	25	1
1195	2015-04-13	1	5	6	9	10	11	12	14	15	17	18	19	20	22	25	2
1196	2015-04-15	1	2	4	6	7	8	9	11	12	16	17	18	19	20	23	3
1197	2015-04-17	1	4	5	6	7	8	11	13	14	16	17	18	20	24	25	3
1198	2015-04-20	1	3	4	6	7	9	10	11	15	17	20	21	22	23	25	1
1199	2015-04-22	1	2	3	4	5	6	10	14	15	16	19	21	22	24	25	2
1200	2015-04-24	3	4	5	6	7	8	10	11	12	14	15	16	22	24	25	2
1201	2015-04-27	5	6	9	10	11	14	16	18	19	20	21	22	23	24	25	2
1202	2015-04-29	2	3	4	8	10	13	14	16	17	18	19	20	23	24	25	5
1203	2015-05-02	1	2	3	5	6	11	12	13	14	15	17	22	23	24	25	4
1204	2015-05-04	1	2	5	7	8	9	12	13	15	16	19	20	21	22	23	8
1205	2015-05-06	1	3	6	8	9	11	12	14	17	18	20	21	22	24	25	2
1206	2015-05-08	1	3	5	7	10	11	13	14	15	18	21	22	23	24	25	7
1207	2015-05-11	1	3	4	7	9	10	11	12	13	14	15	18	19	21	24	2
1208	2015-05-13	1	2	3	4	5	10	11	14	15	18	19	20	22	24	25	1
1209	2015-05-15	3	4	5	7	8	9	10	11	14	15	16	18	19	20	24	3
1210	2015-05-18	1	2	4	8	10	11	13	15	16	18	19	20	21	22	25	13
1211	2015-05-20	1	2	3	5	7	10	11	12	13	15	16	17	20	23	24	2
1212	2015-05-22	1	2	3	5	6	7	8	9	10	15	16	17	18	20	24	4
1213	2015-05-25	2	3	5	6	7	8	9	10	14	17	18	20	23	24	25	6
1214	2015-05-27	1	2	3	4	5	7	8	9	13	14	18	19	20	21	23	2
1215	2015-05-29	3	7	9	11	12	13	14	15	16	17	18	20	21	22	24	2
1216	2015-06-01	1	2	3	7	10	12	14	15	17	18	20	21	22	23	24	1
1217	2015-06-03	1	3	6	7	8	9	10	11	12	13	17	19	20	24	25	1
1218	2015-06-05	1	2	3	4	5	7	9	10	11	13	14	18	20	21	23	1
1219	2015-06-08	2	3	4	5	6	8	9	10	14	16	19	20	22	23	25	0
1220	2015-06-10	2	3	4	5	6	7	9	13	14	17	18	19	20	23	25	4
1221	2015-06-12	2	3	4	6	9	10	12	14	15	18	19	21	22	23	24	2
1222	2015-06-15	1	2	3	4	5	8	9	10	11	13	15	17	20	22	24	5
1223	2015-06-17	2	6	7	8	9	10	13	14	16	17	18	20	21	22	23	1
1224	2015-06-19	1	2	4	5	6	8	9	11	12	14	15	16	17	18	19	4
1225	2015-06-22	2	3	5	7	11	13	14	15	17	18	20	21	23	24	25	2
1226	2015-06-24	1	3	5	7	8	10	11	14	15	17	19	21	22	23	24	3
1227	2015-06-26	1	2	7	8	9	10	11	12	13	14	17	19	21	22	25	2
1228	2015-06-29	1	2	3	4	6	7	9	10	12	13	17	20	22	23	24	2
1229	2015-07-01	1	2	3	5	6	7	8	13	14	17	19	20	22	24	25	4
1230	2015-07-03	1	2	3	5	6	7	8	10	11	12	13	17	18	19	21	1
1231	2015-07-06	1	3	4	5	7	8	12	13	15	16	18	20	21	22	25	2
1232	2015-07-08	2	3	5	6	9	10	13	14	15	16	19	21	23	24	25	1
1233	2015-07-10	1	4	5	9	10	13	14	15	16	17	18	19	22	23	25	3
1234	2015-07-13	1	2	5	8	9	10	14	16	17	18	19	20	21	24	25	1
1235	2015-07-15	1	2	3	4	6	9	10	11	12	13	15	17	18	20	24	1
1236	2015-07-17	1	2	3	5	6	7	9	10	11	12	13	17	19	23	25	9
1237	2015-07-20	3	5	6	7	8	9	10	12	13	14	18	21	22	24	25	1
1238	2015-07-22	2	3	5	7	8	9	11	13	14	15	16	17	18	21	25	2
1239	2015-07-24	5	6	8	9	10	11	12	13	14	15	16	18	20	22	24	2
1240	2015-07-27	1	2	3	4	5	6	9	12	13	16	18	19	20	22	24	3
1241	2015-07-29	1	4	5	8	9	10	11	12	13	15	17	20	22	24	25	1
1242	2015-07-31	1	2	4	5	7	11	14	15	16	19	20	21	23	24	25	0
1243	2015-08-03	1	2	4	5	6	8	12	13	14	15	16	17	22	24	25	2
1244	2015-08-05	1	3	5	7	9	10	11	12	13	16	17	19	21	23	25	37
1245	2015-08-07	2	3	4	5	6	8	9	11	15	16	17	18	19	21	25	0
1246	2015-08-10	1	4	7	8	9	10	12	13	16	17	18	19	22	24	25	2
1247	2015-08-12	2	3	7	8	9	11	15	16	17	18	19	20	23	24	25	1
1248	2015-08-14	1	3	5	10	11	12	13	15	16	17	19	20	22	24	25	1
1249	2015-08-17	3	4	5	6	9	12	13	14	15	18	19	20	22	24	25	2
1250	2015-08-19	2	3	4	5	7	9	10	14	15	17	18	19	20	24	25	3
1251	2015-08-21	2	6	7	8	9	10	14	15	16	17	19	20	21	23	25	1
1252	2015-08-24	1	3	4	5	6	8	9	10	11	12	15	20	21	23	24	1
1253	2015-08-26	1	2	3	5	6	7	11	15	16	18	20	22	23	24	25	0
1254	2015-08-28	2	3	8	9	11	12	14	15	16	17	18	20	21	22	23	3
1255	2015-09-08	1	2	4	6	7	9	10	13	14	16	18	20	21	23	25	51
1256	2015-09-09	1	2	6	8	10	11	12	13	14	15	16	18	19	22	23	0
1257	2015-09-11	1	2	5	6	8	10	11	12	13	14	16	19	20	22	25	4
1258	2015-09-14	2	3	4	5	6	8	9	10	12	13	14	20	21	23	25	3
1259	2015-09-16	2	5	8	9	10	13	14	16	17	18	19	20	22	23	25	2
1260	2015-09-18	1	2	3	4	5	6	7	11	14	15	17	18	20	22	24	3
1261	2015-09-21	1	4	5	7	10	12	15	16	17	18	19	20	21	22	25	1
1262	2015-09-23	1	3	4	6	8	11	12	13	16	17	20	21	22	23	24	2
1263	2015-09-25	3	4	5	8	9	10	11	12	13	16	18	20	22	23	25	5
1264	2015-09-28	1	4	5	8	10	11	12	14	17	18	21	22	23	24	25	3
1265	2015-09-30	1	2	3	4	7	11	13	14	15	16	19	22	23	24	25	1
1266	2015-10-02	1	2	3	5	6	8	9	10	11	13	14	15	20	23	24	2
1267	2015-10-05	2	3	5	6	7	9	11	12	13	15	16	17	18	22	25	2
1268	2015-10-07	1	2	3	6	7	8	11	12	13	15	17	18	21	22	24	7
1269	2015-10-09	1	4	5	7	8	11	13	14	16	17	18	20	21	22	23	1
1270	2015-10-13	1	2	3	4	5	6	8	9	10	11	13	20	21	23	25	1
1271	2015-10-14	1	2	4	6	8	9	11	12	13	14	17	18	23	24	25	4
1272	2015-10-16	1	4	7	9	10	14	15	17	18	19	20	21	23	24	25	2
1273	2015-10-19	1	3	5	6	8	11	12	13	14	15	18	19	20	22	24	2
1274	2015-10-21	1	3	7	8	10	11	12	13	14	15	18	19	20	22	25	0
1275	2015-10-23	3	6	7	8	10	11	13	14	15	16	17	18	20	23	25	3
1276	2015-10-26	1	3	5	7	10	12	14	15	16	18	19	21	22	23	24	6
1277	2015-10-28	1	2	3	4	6	9	10	12	13	15	17	18	21	22	25	3
1278	2015-10-30	4	6	7	9	10	12	15	16	17	18	19	20	21	22	24	2
1279	2015-11-03	1	3	4	7	8	9	11	12	13	14	16	18	19	21	23	2
1280	2015-11-04	1	3	4	5	7	9	11	14	15	17	19	22	23	24	25	3
1281	2015-11-06	1	3	5	6	8	9	12	13	15	19	21	22	23	24	25	3
1282	2015-11-09	5	6	7	9	10	11	12	14	17	19	20	21	22	23	25	1
1283	2015-11-11	2	6	7	8	9	10	11	12	13	15	16	17	18	22	23	1
1284	2015-11-13	2	4	5	7	8	10	11	13	16	17	18	20	22	23	25	8
1285	2015-11-16	1	2	6	7	10	11	12	15	16	17	18	20	22	24	25	2
1286	2015-11-18	1	3	4	5	7	10	11	12	16	17	19	20	21	23	25	3
1287	2015-11-20	3	4	5	6	9	11	13	17	18	19	21	22	23	24	25	1
1288	2015-11-23	1	2	5	9	10	13	15	16	17	18	19	20	23	24	25	1
1289	2015-11-25	1	2	5	7	8	11	13	15	16	17	18	20	22	24	25	10
1290	2015-11-27	1	3	4	5	6	11	13	14	16	19	20	21	22	23	25	0
1291	2015-11-30	1	6	7	8	10	11	12	13	15	16	18	19	20	21	24	0
1292	2015-12-02	1	2	3	7	8	10	11	14	15	17	19	22	23	24	25	5
1293	2015-12-04	1	2	7	8	9	10	11	12	13	15	17	18	20	22	24	5
1294	2015-12-07	2	5	6	7	8	10	11	12	13	14	16	18	20	23	25	2
1295	2015-12-09	3	6	9	10	11	12	13	14	15	17	18	19	23	24	25	2
1296	2015-12-11	5	7	9	10	11	14	15	16	17	18	19	20	21	23	25	1
1297	2015-12-14	1	2	5	6	7	8	9	10	11	12	16	17	18	19	22	4
1298	2015-12-16	2	3	4	6	7	9	12	17	18	20	21	22	23	24	25	2
1299	2015-12-18	1	3	5	7	8	11	13	17	18	19	20	21	22	23	25	2
1300	2015-12-21	2	6	7	9	10	11	12	13	14	15	18	20	23	24	25	2
1301	2015-12-23	1	2	3	4	6	7	9	10	14	16	17	19	22	24	25	1
1302	2015-12-26	3	4	6	9	11	12	13	14	15	16	17	18	20	22	25	2
1303	2015-12-28	1	5	8	9	10	11	13	14	15	16	18	19	20	22	23	3
1304	2015-12-30	1	2	3	7	8	10	11	13	14	17	18	19	20	21	25	3
1305	2016-01-02	2	3	4	5	6	7	8	11	12	13	15	17	20	23	25	0
1306	2016-01-04	1	2	5	6	7	9	12	13	14	15	18	19	20	22	23	0
1307	2016-01-06	3	4	6	8	9	10	12	13	14	15	16	18	20	21	23	1
1308	2016-01-08	3	5	6	7	8	9	11	14	16	17	19	20	22	23	25	1
1309	2016-01-11	2	4	5	6	8	10	12	13	14	16	18	19	20	24	25	4
1310	2016-01-13	1	2	3	4	5	7	8	10	11	15	17	18	19	21	23	2
1311	2016-01-15	2	3	5	6	8	10	11	12	14	15	17	18	20	23	25	9
1312	2016-01-18	1	2	4	5	6	7	9	11	13	18	19	20	23	24	25	5
1313	2016-01-20	1	4	8	10	11	13	15	16	17	20	21	22	23	24	25	4
1314	2016-01-22	3	5	8	9	10	11	14	15	16	18	19	21	22	24	25	2
1315	2016-01-25	1	2	3	4	5	8	10	11	12	14	16	18	19	23	25	5
1316	2016-01-27	1	2	3	4	5	6	11	12	15	17	19	20	23	24	25	2
1317	2016-01-29	1	3	5	7	8	9	10	11	14	16	20	22	23	24	25	3
1318	2016-02-01	1	2	3	4	6	7	8	9	12	13	14	15	17	20	23	4
1319	2016-02-03	3	5	6	8	9	10	11	13	14	15	17	19	22	23	25	12
1320	2016-02-05	2	3	4	5	9	11	12	13	15	16	17	21	22	23	25	3
1321	2016-02-10	2	3	4	6	7	9	10	11	13	14	18	19	20	23	24	3
1322	2016-02-12	1	2	6	7	8	9	11	13	15	16	17	18	21	24	25	3
1323	2016-02-15	1	4	5	6	9	10	11	13	14	17	19	20	21	22	23	7
1324	2016-02-17	1	4	5	6	7	8	10	11	13	17	18	19	21	24	25	2
1325	2016-02-19	2	3	5	6	7	9	10	14	15	16	18	19	20	21	25	1
1326	2016-02-22	1	3	4	6	8	9	10	17	18	19	20	21	22	24	25	0
1327	2016-02-24	1	3	4	5	7	10	13	14	16	17	18	20	22	23	25	3
1328	2016-02-26	2	5	6	8	9	10	13	15	16	17	21	22	23	24	25	1
1329	2016-02-29	2	3	4	5	7	10	11	13	15	16	18	22	23	24	25	4
1330	2016-03-02	4	5	7	10	12	13	16	17	18	19	20	22	23	24	25	0
1331	2016-03-04	1	2	3	5	6	7	10	11	14	15	16	18	23	24	25	6
1332	2016-03-07	1	4	5	6	8	11	12	13	14	15	16	18	20	21	24	1
1333	2016-03-09	3	4	5	7	8	9	10	11	12	14	17	18	20	22	24	3
1334	2016-03-11	3	4	6	7	9	10	11	13	15	16	17	18	19	21	22	1
1335	2016-03-14	1	3	4	6	7	9	10	11	13	16	17	18	23	24	25	10
1336	2016-03-16	6	8	9	10	11	12	13	14	15	17	18	19	20	22	24	1
1337	2016-03-18	1	3	5	6	8	9	10	12	13	15	16	19	21	23	25	22
1338	2016-03-21	1	2	3	4	6	7	10	11	12	13	14	15	16	17	19	2
1339	2016-03-23	2	3	4	5	6	7	8	11	13	14	16	20	21	23	24	0
1340	2016-03-26	1	2	4	5	7	9	10	12	13	14	16	17	18	19	22	3
1341	2016-03-28	1	3	4	8	9	10	13	14	15	16	17	20	21	23	24	2
1342	2016-03-30	1	2	3	5	9	10	11	12	13	15	20	21	23	24	25	1
1343	2016-04-01	2	4	5	9	10	11	13	14	15	16	17	19	21	23	24	2
1344	2016-04-04	2	4	6	7	8	10	11	12	13	17	18	21	23	24	25	4
1345	2016-04-06	1	3	7	8	9	10	11	14	15	17	19	21	22	24	25	2
1346	2016-04-08	2	3	5	7	8	10	11	14	15	18	19	20	21	23	25	8
1347	2016-04-11	1	3	5	6	7	8	10	12	13	14	17	18	20	23	24	2
1348	2016-04-13	1	2	6	7	8	9	10	14	15	18	20	21	22	24	25	2
1349	2016-04-15	2	3	4	5	6	7	8	12	14	16	18	19	21	24	25	3
1350	2016-04-18	1	5	6	8	9	11	12	13	14	16	18	19	20	21	23	1
1351	2016-04-20	2	4	6	7	10	11	13	17	19	20	21	22	23	24	25	3
1352	2016-04-22	6	8	10	11	12	13	14	15	16	19	20	21	23	24	25	2
1353	2016-04-25	3	5	7	8	9	10	11	12	14	18	21	22	23	24	25	1
1354	2016-04-27	1	2	3	5	7	9	11	12	13	14	15	18	20	21	24	1
1355	2016-04-29	1	2	3	4	6	7	8	11	15	16	18	20	21	22	24	0
1356	2016-05-02	3	4	6	8	9	10	11	12	13	14	15	16	17	19	20	2
1357	2016-05-04	3	7	8	9	10	11	12	13	15	17	18	20	21	22	23	4
1358	2016-05-06	1	2	3	4	6	8	9	13	15	17	18	19	20	22	23	0
1359	2016-05-09	3	5	7	8	9	11	13	14	15	16	17	18	20	21	23	11
1360	2016-05-11	1	2	3	4	5	6	8	10	11	12	14	18	20	23	24	2
1361	2016-05-13	1	4	5	11	12	13	14	15	16	17	18	19	20	23	25	5
1362	2016-05-16	1	3	4	6	9	10	11	12	13	16	21	22	23	24	25	2
1363	2016-05-18	5	7	9	10	12	13	14	15	16	17	19	20	21	22	23	3
1364	2016-05-20	1	6	9	10	11	12	13	15	16	17	18	20	22	24	25	3
1365	2016-05-23	2	3	6	9	10	12	14	15	19	20	21	22	23	24	25	1
1366	2016-05-25	4	8	9	10	11	12	13	14	15	16	17	21	22	24	25	2
1367	2016-05-27	2	3	4	5	6	7	9	14	15	16	17	18	20	23	24	0
1368	2016-05-30	5	7	8	10	11	12	14	16	18	19	20	22	23	24	25	6
1369	2016-06-01	3	4	5	9	10	11	12	13	14	16	17	18	21	22	24	2
1370	2016-06-03	2	4	5	7	8	11	13	14	17	18	20	21	22	24	25	10
1371	2016-06-06	3	4	5	7	13	15	17	18	19	20	21	22	23	24	25	1
1372	2016-06-08	1	2	3	5	7	9	10	13	15	16	17	18	21	23	25	8
1373	2016-06-10	1	2	3	4	5	6	7	8	12	17	18	20	21	23	24	1
1374	2016-06-13	2	3	4	5	6	9	10	14	15	16	19	20	21	23	25	4
1375	2016-06-15	1	5	6	9	10	11	14	15	16	18	20	22	23	24	25	4
1376	2016-06-17	1	3	4	5	6	12	13	14	15	16	18	19	20	22	24	1
1377	2016-06-20	1	5	6	8	9	10	12	13	15	17	19	20	21	22	25	4
1378	2016-06-22	1	2	3	6	8	10	12	13	17	19	20	21	23	24	25	2
1379	2016-06-24	1	2	4	5	7	8	9	10	12	14	15	17	18	21	22	1
1380	2016-06-27	3	4	5	6	8	11	12	14	15	16	17	21	22	24	25	0
1381	2016-06-29	1	4	6	8	9	10	12	13	14	16	17	18	19	21	25	0
1382	2016-07-01	1	6	10	12	13	14	15	16	17	18	19	20	21	22	24	3
1383	2016-07-04	2	6	7	8	9	13	14	15	16	17	20	21	22	24	25	2
1384	2016-07-06	3	4	6	8	9	11	12	13	15	18	19	20	22	24	25	2
1385	2016-07-08	4	5	8	9	10	11	12	13	14	15	17	18	19	20	23	2
1386	2016-07-11	1	2	3	4	7	9	13	16	17	18	19	21	22	24	25	4
1387	2016-07-13	1	3	4	5	6	7	9	11	12	13	14	15	16	18	24	2
1388	2016-07-15	1	3	5	7	8	10	11	12	15	18	19	20	21	23	25	13
1389	2016-07-18	1	2	4	5	6	8	10	12	14	15	16	17	18	20	21	7
1390	2016-07-20	3	5	6	7	8	11	13	14	15	16	17	18	20	21	23	2
1391	2016-07-22	1	3	5	6	10	11	12	15	16	17	19	20	21	24	25	4
1392	2016-07-25	1	2	3	4	8	9	14	15	16	17	18	20	21	22	25	1
1393	2016-07-27	3	4	5	7	9	10	11	12	13	14	17	18	20	22	23	7
1394	2016-07-29	3	4	5	6	9	10	11	14	15	16	18	19	21	22	23	4
1395	2016-08-01	5	6	7	8	11	12	13	14	16	17	18	19	22	23	25	2
1396	2016-08-03	3	5	6	7	10	12	13	17	18	19	20	22	23	24	25	5
1397	2016-08-05	1	3	4	5	6	8	9	11	12	13	14	18	21	22	25	1
1398	2016-08-08	1	4	5	6	7	8	11	14	15	16	19	20	21	24	25	5
1399	2016-08-10	4	5	6	8	9	12	13	14	15	17	19	21	22	24	25	2
1400	2016-08-12	1	2	3	5	6	9	10	12	16	19	21	22	23	24	25	4
1401	2016-08-15	1	3	4	5	6	7	8	14	15	18	19	21	22	24	25	4
1402	2016-08-17	2	3	4	5	8	9	11	12	14	15	16	19	20	21	23	1
1403	2016-08-19	3	4	5	8	9	10	11	12	13	15	16	17	21	23	25	1
1404	2016-08-22	1	2	3	4	8	10	11	13	15	16	18	19	21	22	25	0
1405	2016-08-24	2	3	4	7	9	10	11	14	15	16	18	19	20	23	24	4
1406	2016-08-26	2	3	4	5	6	9	11	13	15	19	20	21	22	24	25	3
1407	2016-08-29	1	2	4	5	6	7	10	12	13	20	21	22	23	24	25	0
1408	2016-09-06	1	3	5	8	10	11	12	13	14	19	21	22	23	24	25	10
1409	2016-09-09	1	2	4	6	7	8	11	12	14	16	17	19	22	24	25	10
1410	2016-09-12	2	3	4	5	6	7	9	10	14	15	16	17	20	21	23	1
1411	2016-09-14	1	5	6	7	8	9	10	12	13	14	15	16	17	21	23	2
1412	2016-09-16	5	6	7	9	11	13	15	16	18	19	21	22	23	24	25	5
1413	2016-09-19	2	3	4	5	6	7	8	9	10	13	16	17	18	21	25	3
1414	2016-09-21	2	3	4	5	7	9	10	11	13	14	16	17	20	21	23	4
1415	2016-09-23	2	4	5	6	10	12	13	15	17	18	19	22	23	24	25	5
1416	2016-09-26	3	4	5	7	8	9	10	12	14	15	17	18	19	20	24	1
1417	2016-09-28	1	2	3	4	6	7	9	11	13	14	15	18	19	22	23	4
1418	2016-09-30	2	4	6	9	10	11	13	14	15	17	18	20	21	22	23	4
1419	2016-10-03	2	3	6	7	11	12	15	16	17	18	19	20	21	23	24	4
1420	2016-10-05	1	4	6	7	8	10	13	14	15	16	17	20	22	23	25	3
1421	2016-10-07	3	5	6	7	8	9	11	12	14	17	18	19	20	23	24	5
1422	2016-10-10	1	4	5	7	10	11	13	14	15	16	17	19	22	23	24	3
1423	2016-10-14	1	2	4	5	7	8	11	12	13	14	15	16	19	22	23	1
1424	2016-10-17	2	4	5	6	8	9	10	11	13	17	18	20	21	23	25	8
1425	2016-10-19	1	3	4	5	8	9	11	12	13	14	16	19	20	21	25	0
1426	2016-10-21	2	3	4	7	8	10	12	14	15	16	18	22	23	24	25	11
1427	2016-10-24	1	2	7	10	11	12	14	15	16	17	18	19	20	22	25	2
1428	2016-10-26	2	3	4	5	6	8	9	13	17	18	19	20	21	22	25	0
1429	2016-10-28	5	7	8	9	10	12	13	14	15	16	18	19	20	21	25	3
1430	2016-10-31	1	3	4	5	7	8	9	13	15	16	20	21	22	23	25	2
1431	2016-11-04	1	2	7	8	9	10	12	14	15	16	17	19	20	23	25	1
1432	2016-11-07	1	3	4	5	10	11	12	16	17	18	20	21	23	24	25	5
1433	2016-11-09	3	6	7	9	10	12	14	15	16	18	20	22	23	24	25	3
1434	2016-11-11	3	4	5	6	7	9	10	12	13	15	18	19	22	23	24	4
1435	2016-11-14	1	2	3	4	5	6	9	10	12	16	17	19	20	21	23	0
1436	2016-11-16	1	2	3	5	6	8	11	12	15	17	18	19	22	23	24	1
1437	2016-11-18	2	4	5	6	7	8	9	11	13	14	17	19	20	23	25	3
1438	2016-11-21	1	4	7	8	9	10	11	12	14	15	17	20	21	22	24	0
1439	2016-11-23	1	2	3	5	11	12	13	14	15	16	17	18	19	22	24	5
1440	2016-11-25	2	3	8	10	12	13	14	16	17	18	20	21	22	24	25	1
1441	2016-11-28	1	3	4	5	6	7	9	10	11	13	16	19	22	23	25	2
1442	2016-11-30	1	2	3	4	7	9	11	12	13	15	16	17	19	20	21	2
1443	2016-12-02	1	2	3	5	7	8	9	10	11	12	14	15	16	17	24	2
1444	2016-12-05	1	2	4	5	6	9	10	11	14	15	17	18	20	21	24	3
1445	2016-12-07	1	4	5	6	8	10	13	15	16	17	18	20	22	23	25	3
1446	2016-12-09	1	4	6	7	8	12	13	16	17	20	21	22	23	24	25	0
1447	2016-12-12	1	3	4	5	8	11	12	13	17	18	19	21	22	24	25	5
1448	2016-12-14	1	3	4	5	6	8	12	13	16	18	19	21	22	23	24	2
1449	2016-12-16	1	3	4	5	6	7	8	9	11	15	16	20	22	23	24	4
1450	2016-12-19	1	2	4	5	8	9	10	13	14	16	17	19	20	22	24	1
1451	2016-12-21	1	2	3	5	10	12	13	14	15	19	20	21	23	24	25	2
1452	2016-12-23	2	5	7	8	10	11	13	14	15	17	20	21	23	24	25	8
1453	2016-12-26	1	2	5	8	9	10	13	14	15	16	19	21	23	24	25	5
1454	2016-12-28	1	3	4	7	10	12	13	14	18	19	20	21	22	23	25	1
1455	2016-12-30	2	5	7	8	14	15	16	17	18	19	20	21	22	23	25	4
1456	2017-01-02	1	2	6	7	8	9	12	13	14	15	19	20	21	24	25	2
1457	2017-01-04	1	2	3	4	7	8	9	10	11	13	14	15	18	23	24	1
1458	2017-01-06	1	2	3	5	7	9	11	14	17	18	19	20	22	23	24	5
1459	2017-01-09	1	4	6	9	10	12	13	14	16	17	18	19	20	24	25	2
1460	2017-01-11	1	3	5	7	11	14	15	16	17	18	19	20	21	24	25	1
1461	2017-01-13	2	4	5	6	9	10	11	15	17	18	19	21	23	24	25	3
1462	2017-01-16	1	3	4	5	7	9	12	13	14	16	17	20	21	24	25	7
1463	2017-01-18	3	4	6	7	10	11	13	14	15	17	19	20	22	23	24	8
1464	2017-01-20	1	4	9	10	11	12	13	14	15	16	17	18	22	23	24	1
1465	2017-01-23	2	5	7	8	9	10	12	14	16	19	20	21	22	23	24	2
1466	2017-01-25	2	3	4	6	10	11	12	14	19	20	21	22	23	24	25	1
1467	2017-01-27	1	4	5	6	9	10	11	12	19	20	21	22	23	24	25	8
1468	2017-01-30	2	3	5	6	8	11	12	13	14	18	19	20	21	23	24	4
1469	2017-02-01	1	2	3	5	6	7	8	9	11	13	16	17	18	19	20	2
1470	2017-02-03	2	3	7	8	11	12	13	14	15	18	20	21	22	23	24	2
1471	2017-02-06	1	2	4	6	7	8	10	11	13	15	18	20	21	22	24	2
1472	2017-02-08	2	3	4	5	7	8	10	12	13	14	18	21	22	23	24	2
1473	2017-02-10	1	4	5	7	8	9	10	12	14	16	20	22	23	24	25	1
1474	2017-02-13	1	2	5	7	8	10	11	13	14	15	18	19	20	21	25	5
1475	2017-02-15	1	2	3	5	6	9	10	12	13	15	18	20	21	24	25	5
1476	2017-02-17	2	4	5	6	7	9	10	12	13	14	16	19	21	22	25	4
1477	2017-02-20	1	2	3	4	5	6	7	10	12	15	17	18	21	22	23	3
1478	2017-02-22	2	5	6	7	10	11	12	15	16	17	18	19	21	24	25	3
1479	2017-02-24	2	3	5	6	9	11	13	14	15	16	17	18	20	22	23	2
1480	2017-03-01	1	6	7	10	11	12	13	15	16	17	19	20	21	22	25	0
1481	2017-03-03	2	3	5	7	8	9	11	17	18	19	20	21	23	24	25	3
1482	2017-03-06	1	2	4	5	7	8	9	10	11	12	14	15	19	23	24	2
1483	2017-03-08	3	4	5	6	7	9	11	13	14	15	17	20	21	22	23	2
1484	2017-03-10	1	2	3	4	6	7	9	10	12	17	18	19	21	22	25	2
1485	2017-03-13	1	2	3	5	8	9	11	13	15	17	18	19	23	24	25	4
1486	2017-03-15	2	4	5	8	9	10	12	14	18	19	20	21	22	23	25	1
1487	2017-03-17	1	2	3	4	5	6	10	11	12	15	16	19	21	22	25	3
1488	2017-03-20	1	4	5	6	10	11	12	13	16	19	20	21	23	24	25	4
1489	2017-03-22	2	4	7	8	9	10	12	13	14	15	19	20	22	23	25	3
1490	2017-03-24	1	3	4	5	7	8	9	11	13	14	15	18	19	20	22	2
1491	2017-03-27	2	4	5	6	7	9	11	13	14	19	20	22	23	24	25	1
1492	2017-03-29	2	3	4	5	7	8	10	12	15	16	17	18	19	24	25	2
1493	2017-03-31	2	5	8	10	11	13	14	15	16	19	20	21	23	24	25	9
1494	2017-04-03	1	2	3	4	9	10	11	12	13	15	17	19	20	22	25	3
1495	2017-04-05	1	2	3	4	5	8	10	12	13	14	18	22	23	24	25	3
1496	2017-04-07	2	3	6	7	9	10	11	12	13	15	17	19	20	23	25	1
1497	2017-04-10	1	2	5	7	11	12	13	14	15	16	17	18	19	22	23	1
1498	2017-04-12	4	5	7	8	10	11	14	15	16	17	18	21	23	24	25	1
1499	2017-04-15	1	2	3	4	5	7	8	12	13	14	15	18	19	23	24	2
1500	2017-04-17	1	2	3	5	7	10	11	12	13	15	17	18	19	20	22	3
1501	2017-04-19	1	6	7	8	9	10	11	13	16	17	18	21	22	24	25	2
1502	2017-04-22	1	2	3	4	5	7	11	12	13	15	17	18	20	22	24	0
1503	2017-04-24	1	2	3	7	12	15	16	17	18	20	21	22	23	24	25	0
1504	2017-04-26	1	4	5	7	8	11	12	14	17	18	19	21	23	24	25	2
1505	2017-04-28	1	2	3	6	7	11	14	16	17	18	19	20	22	24	25	1
1506	2017-05-03	3	4	5	8	9	10	13	14	17	18	19	20	21	22	24	2
1507	2017-05-05	1	2	3	4	5	8	10	11	13	14	17	19	21	23	24	6
1508	2017-05-08	1	3	7	8	9	10	11	12	14	17	19	21	22	23	24	2
1509	2017-05-10	1	2	3	6	7	8	9	13	14	15	17	18	19	22	24	5
1510	2017-05-12	1	3	4	7	8	9	10	11	12	13	15	18	19	22	24	4
1511	2017-05-15	2	4	5	8	9	10	11	12	13	15	19	20	21	23	24	5
1512	2017-05-17	2	3	4	6	10	11	12	13	15	16	17	19	21	22	24	1
1513	2017-05-19	3	4	6	7	9	10	11	12	13	14	16	18	21	22	24	1
1514	2017-05-22	3	4	5	7	8	11	12	13	15	16	17	19	20	21	24	2
1515	2017-05-24	1	2	3	5	8	9	11	12	13	16	17	18	19	20	23	5
1516	2017-05-26	1	2	6	7	10	11	12	14	16	18	19	20	22	23	24	3
1517	2017-05-29	2	3	5	8	10	11	12	14	15	18	20	21	23	24	25	4
1518	2017-05-31	2	3	4	5	7	8	11	12	14	16	17	20	22	24	25	4
1519	2017-06-02	1	4	6	8	13	14	16	17	18	20	21	22	23	24	25	4
1520	2017-06-05	1	2	4	8	9	10	12	13	14	16	17	18	19	24	25	6
1521	2017-06-07	1	2	3	4	5	7	8	12	14	15	17	19	20	23	24	4
1522	2017-06-09	1	8	9	10	11	13	14	15	16	18	19	20	21	23	24	2
1523	2017-06-12	3	5	6	7	9	10	12	13	14	16	18	19	21	23	25	8
1524	2017-06-14	1	3	5	6	7	8	9	10	13	14	20	22	23	24	25	1
1525	2017-06-16	1	2	4	5	8	10	12	14	15	18	19	20	21	22	25	3
1526	2017-06-19	5	7	8	9	10	11	13	15	17	18	20	21	22	23	25	7
1527	2017-06-21	1	2	3	5	6	7	9	10	14	15	20	21	22	24	25	1
1528	2017-06-23	1	2	4	5	6	8	9	10	17	18	20	21	23	24	25	0
1529	2017-06-26	2	3	4	5	8	11	13	14	16	17	18	19	20	21	24	3
1530	2017-06-28	2	4	5	7	9	10	12	14	15	16	18	20	22	23	24	41
1531	2017-06-30	1	2	3	4	7	8	10	11	13	14	15	19	22	23	24	1
1532	2017-07-03	1	2	3	8	9	10	11	12	13	14	17	18	20	22	25	3
1533	2017-07-05	1	3	4	6	7	11	12	13	14	15	16	19	20	21	24	2
1534	2017-07-07	1	4	5	8	9	10	11	12	13	14	16	17	19	21	24	1
1535	2017-07-10	3	4	5	7	8	12	13	15	17	18	21	22	23	24	25	5
1536	2017-07-12	1	3	5	6	7	8	9	10	11	12	13	19	20	23	25	1
1537	2017-07-14	1	2	3	4	10	11	13	14	15	17	18	20	21	22	24	1
1538	2017-07-17	2	4	5	7	8	9	10	13	14	15	17	18	19	21	23	1
1539	2017-07-19	1	3	4	8	11	12	13	14	16	17	18	19	20	21	25	2
1540	2017-07-21	1	2	3	7	9	10	11	12	14	15	16	17	19	22	23	2
1541	2017-07-24	2	3	4	5	7	11	13	14	15	18	19	20	21	22	25	1
1542	2017-07-26	2	3	5	7	8	10	11	13	15	16	17	20	21	22	24	17
1543	2017-07-28	1	2	6	7	8	9	12	13	15	17	19	20	23	24	25	4
1544	2017-07-31	1	2	4	7	8	9	11	12	14	16	17	21	22	23	24	2
1545	2017-08-02	3	5	7	8	10	11	12	15	16	17	20	22	23	24	25	2
1546	2017-08-04	1	3	6	7	8	10	11	14	15	18	19	20	22	24	25	1
1547	2017-08-07	1	2	5	6	8	9	10	11	13	15	17	18	19	21	25	7
1548	2017-08-09	2	3	4	9	10	11	12	14	15	17	18	20	21	22	23	3
1549	2017-08-11	1	2	3	4	5	7	8	10	11	13	18	20	23	24	25	5
1550	2017-08-14	3	4	5	7	8	13	14	15	16	17	20	22	23	24	25	1
1551	2017-08-16	1	3	5	7	8	11	13	14	15	17	19	20	22	23	25	13
1552	2017-08-18	2	3	7	8	9	12	14	15	16	19	20	21	22	24	25	6
1553	2017-08-21	1	2	4	8	9	11	12	13	15	17	18	19	21	22	25	10
1554	2017-08-23	1	3	4	5	7	8	9	10	13	14	16	18	19	24	25	1
1555	2017-08-25	1	2	6	8	9	10	12	13	14	16	18	20	22	23	25	6
1556	2017-08-28	1	2	3	5	6	8	12	15	16	17	19	21	22	23	25	2
1557	2017-09-07	2	3	4	5	6	9	12	16	17	18	20	21	22	24	25	15
1558	2017-09-11	1	2	4	5	6	9	11	14	15	16	17	18	21	22	25	1
1559	2017-09-13	3	4	5	6	7	9	10	11	14	16	18	19	20	23	25	1
1560	2017-09-15	1	2	3	4	5	7	8	9	11	14	17	18	20	24	25	3
1561	2017-09-18	3	5	6	7	8	12	13	15	16	18	20	21	22	24	25	4
1562	2017-09-20	1	2	3	4	5	6	7	8	9	11	12	14	16	17	18	9
1563	2017-09-22	1	2	3	5	6	9	10	12	13	17	18	20	21	22	23	3
1564	2017-09-25	3	4	6	8	9	11	12	13	16	17	18	19	20	21	24	1
1565	2017-09-27	1	3	6	7	8	9	10	11	12	13	15	17	18	24	25	0
1566	2017-09-29	1	2	4	5	7	8	9	13	14	15	16	19	23	24	25	4
1567	2017-10-02	2	3	5	7	9	10	11	12	14	15	17	18	19	21	24	4
1568	2017-10-04	1	2	3	4	6	7	10	11	13	16	17	19	21	22	24	7
1569	2017-10-06	2	4	8	9	10	12	13	14	16	18	20	21	23	24	25	3
1570	2017-10-09	1	3	7	8	9	11	13	16	18	19	20	21	23	24	25	2
1571	2017-10-11	1	3	4	5	6	7	11	12	14	17	18	19	23	24	25	1
1572	2017-10-13	2	4	5	6	8	9	10	13	16	18	19	21	22	23	24	1
1573	2017-10-16	2	6	7	8	10	11	12	13	14	15	16	17	18	19	23	4
1574	2017-10-18	1	2	3	5	6	7	10	11	12	14	15	17	18	21	22	3
1575	2017-10-20	1	3	5	6	7	9	10	11	12	14	16	17	22	23	25	2
1576	2017-10-23	1	2	5	7	8	9	11	12	14	15	16	18	20	21	25	6
1577	2017-10-25	3	5	6	7	9	10	11	13	15	16	17	18	19	21	24	2
1578	2017-10-27	4	6	8	9	10	12	13	14	16	17	18	19	21	22	24	2
1579	2017-10-30	1	2	4	6	7	10	12	13	14	15	16	18	21	22	23	0
1580	2017-11-01	3	4	7	10	11	12	13	14	15	16	18	20	22	23	25	4
1581	2017-11-03	3	4	5	6	7	8	11	12	13	16	20	21	23	24	25	2
1582	2017-11-06	1	2	5	7	8	10	11	14	16	17	18	19	23	24	25	4
1583	2017-11-08	2	3	4	6	7	9	10	14	15	16	17	19	20	23	25	2
1584	2017-11-10	1	2	3	5	6	11	12	14	15	16	17	19	20	24	25	0
1585	2017-11-13	1	2	4	5	6	7	9	11	17	18	19	21	23	24	25	1
1586	2017-11-16	1	3	4	10	11	12	13	16	18	19	20	22	23	24	25	1
1587	2017-11-17	2	3	5	7	8	11	14	15	16	17	19	20	21	22	25	5
1588	2017-11-20	1	3	4	5	7	9	10	11	14	15	17	20	21	22	23	4
1589	2017-11-22	1	2	3	4	6	12	13	14	15	17	18	22	23	24	25	2
1590	2017-11-24	1	3	5	7	8	10	14	16	17	18	20	21	22	23	25	1
1591	2017-11-27	1	3	5	7	8	10	11	12	17	19	20	21	22	23	24	1
1592	2017-11-29	1	2	3	4	5	6	9	12	14	15	16	19	20	22	25	0
1593	2017-12-01	3	4	5	7	8	9	10	11	13	14	16	17	20	22	24	3
1594	2017-12-04	1	2	4	6	8	10	11	12	13	15	16	17	19	21	25	4
1595	2017-12-06	1	2	3	4	6	7	9	10	11	13	17	18	20	22	25	3
1596	2017-12-08	5	8	9	10	11	12	13	15	18	19	20	21	22	23	24	4
1597	2017-12-11	1	2	5	6	7	8	9	13	17	18	19	20	21	22	24	4
1598	2017-12-13	2	5	6	7	10	12	13	15	16	17	18	19	20	21	24	2
1599	2017-12-15	1	3	4	5	6	8	9	10	14	18	20	21	22	23	25	1
1600	2017-12-18	2	3	4	5	7	9	13	14	16	17	18	20	22	23	24	1
1601	2017-12-20	2	4	6	8	9	10	11	12	13	14	15	18	20	22	25	3
1602	2017-12-22	1	3	4	8	9	10	11	13	14	15	17	19	21	23	24	8
1603	2017-12-26	1	2	3	4	7	9	10	13	14	16	19	20	21	23	24	5
1604	2017-12-27	3	4	5	6	7	8	9	10	12	13	15	19	21	22	24	2
1605	2017-12-29	2	4	5	8	9	10	11	14	16	17	18	19	21	23	25	4
1606	2018-01-02	1	3	5	7	8	9	10	11	14	15	19	20	22	23	25	5
1607	2018-01-03	1	2	3	6	7	8	9	11	12	13	14	15	17	18	24	0
1608	2018-01-05	1	2	3	5	6	9	10	14	17	18	20	21	22	23	25	5
1609	2018-01-08	5	6	7	8	9	11	13	14	17	18	20	21	23	24	25	2
1610	2018-01-10	3	6	7	9	10	11	13	14	16	17	19	20	21	22	24	6
1611	2018-01-12	1	3	4	6	7	8	9	10	11	12	14	15	20	22	24	1
1612	2018-01-15	2	3	4	5	7	11	12	14	15	18	21	22	23	24	25	0
1613	2018-01-17	1	2	3	4	6	8	9	10	13	14	16	17	18	19	21	5
1614	2018-01-19	1	2	3	7	9	10	12	13	14	15	16	17	19	21	23	3
1615	2018-01-22	1	2	4	5	6	7	9	10	11	16	17	19	20	21	25	3
1616	2018-01-24	1	2	4	5	8	10	11	13	14	16	17	18	22	23	24	0
1617	2018-01-26	2	5	6	7	8	9	10	12	13	14	15	20	22	23	25	1
1618	2018-01-29	1	3	4	5	8	9	10	13	14	16	17	19	20	24	25	4
1619	2018-01-31	4	5	7	8	10	11	13	15	16	17	18	21	22	24	25	1
1620	2018-02-02	1	2	4	7	9	10	11	12	13	14	18	20	21	24	25	4
1621	2018-02-05	2	3	4	6	8	9	10	13	14	18	19	21	22	23	24	7
1622	2018-02-07	1	2	3	4	8	9	11	16	17	18	20	22	23	24	25	1
1623	2018-02-09	1	2	3	4	6	7	8	10	11	13	14	17	19	20	24	5
1624	2018-02-14	1	2	6	7	8	9	11	14	15	16	17	18	20	23	24	0
1625	2018-02-16	2	3	6	8	10	12	13	16	17	18	19	20	21	22	24	4
1626	2018-02-19	1	3	4	7	8	9	10	11	13	15	16	17	20	21	24	5
1627	2018-02-21	2	3	4	6	8	9	11	12	13	14	15	17	20	21	24	1
1628	2018-02-23	1	3	6	9	11	12	16	17	18	19	20	22	23	24	25	2
1629	2018-02-26	1	2	3	5	6	7	9	10	12	14	15	18	22	24	25	4
1630	2018-02-28	3	5	7	8	9	10	12	13	14	15	17	20	22	23	25	4
1631	2018-03-02	2	3	4	5	9	10	11	12	14	18	19	20	22	23	25	6
1632	2018-03-05	4	5	8	12	13	14	15	16	18	20	21	22	23	24	25	0
1633	2018-03-07	1	2	3	5	6	7	9	10	17	18	19	20	23	24	25	3
1634	2018-03-09	3	4	5	6	7	9	10	13	14	15	19	21	22	24	25	2
1635	2018-03-12	1	3	6	7	8	12	15	16	17	19	21	22	23	24	25	2
1636	2018-03-14	2	3	6	7	8	9	12	13	14	15	18	19	20	22	25	1
1637	2018-03-16	3	4	5	7	8	11	12	13	14	15	17	18	19	22	24	6
1638	2018-03-19	1	7	8	10	11	12	14	15	16	19	20	22	23	24	25	0
1639	2018-03-21	1	3	5	6	7	8	9	10	11	14	15	19	20	22	25	6
1640	2018-03-23	1	2	4	5	6	12	14	15	16	17	20	21	22	24	25	3
1641	2018-03-26	3	4	5	8	9	11	12	14	16	17	19	20	21	22	25	5
1642	2018-03-28	2	5	6	7	10	11	13	15	17	18	19	20	22	24	25	5
1643	2018-03-31	1	2	3	4	5	7	9	10	12	14	16	19	22	23	25	2
1644	2018-04-02	2	3	4	5	6	7	8	9	11	13	15	18	22	23	24	2
1645	2018-04-04	2	3	4	5	8	9	10	14	15	16	18	20	21	23	25	3
1646	2018-04-06	1	3	4	5	6	7	9	12	13	15	17	18	20	22	25	6
1647	2018-04-09	1	2	4	7	8	9	10	12	14	15	19	20	22	24	25	5
1648	2018-04-11	4	9	10	11	12	13	15	16	17	19	21	22	23	24	25	1
1649	2018-04-13	4	5	8	9	12	13	14	15	16	17	18	20	22	23	24	2
1650	2018-04-16	3	4	5	8	10	13	14	15	16	17	18	19	20	22	25	0
1651	2018-04-18	1	2	3	4	6	7	8	10	16	17	18	19	20	22	24	4
1652	2018-04-20	2	3	4	5	6	7	10	11	14	16	17	18	21	24	25	0
1653	2018-04-23	2	4	5	6	7	12	14	15	17	20	21	22	23	24	25	0
1654	2018-04-25	1	2	3	4	6	10	11	13	16	18	19	20	22	23	25	5
1655	2018-04-27	1	2	3	5	6	7	10	12	14	16	18	19	20	22	23	2
1656	2018-04-30	2	3	4	5	7	10	11	12	13	15	17	19	20	23	24	3
1657	2018-05-02	3	4	6	8	9	10	12	15	17	18	19	20	21	23	24	0
1658	2018-05-04	2	4	5	6	7	8	12	13	15	16	17	18	19	20	23	5
1659	2018-05-07	2	4	7	8	9	10	12	14	15	16	20	21	22	23	25	2
1660	2018-05-09	1	2	3	7	8	10	11	13	14	17	18	20	21	24	25	25
1661	2018-05-11	2	3	5	6	7	10	11	12	13	14	17	18	21	22	23	4
1662	2018-05-14	1	2	3	5	8	10	11	13	14	17	18	20	21	22	25	8
1663	2018-05-16	1	2	3	5	6	7	9	11	12	13	16	17	21	22	23	7
1664	2018-05-18	2	4	5	6	7	8	11	13	15	16	17	18	20	24	25	4
1665	2018-05-21	1	2	4	5	8	10	12	13	15	17	18	21	22	23	24	1
1666	2018-05-23	1	2	5	6	8	9	10	12	13	14	17	20	21	24	25	3
1667	2018-05-25	1	2	3	4	8	10	11	13	16	18	20	22	23	24	25	6
1668	2018-05-28	4	5	6	8	11	12	14	16	17	18	20	21	23	24	25	3
1669	2018-05-30	1	2	3	5	6	7	8	9	12	16	17	20	21	23	25	2
1670	2018-06-01	1	2	3	4	7	11	13	14	16	17	20	21	22	23	25	3
1671	2018-06-04	1	3	4	5	8	9	10	12	14	15	18	19	21	22	25	3
1672	2018-06-06	2	3	5	6	8	9	11	17	18	20	21	22	23	24	25	2
1673	2018-06-08	1	2	4	5	7	9	11	12	15	17	19	20	23	24	25	6
1674	2018-06-11	1	2	4	5	9	10	11	12	15	19	20	21	22	23	24	2
1675	2018-06-13	1	2	3	5	7	8	9	12	14	19	20	21	22	23	25	1
1676	2018-06-15	3	4	8	9	10	12	13	14	15	16	18	20	23	24	25	4
1677	2018-06-18	1	4	5	6	9	11	12	14	15	16	17	18	19	20	22	4
1678	2018-06-20	1	3	4	5	6	8	9	14	16	18	19	20	22	23	24	0
1679	2018-06-22	5	7	8	9	10	11	12	14	15	16	17	19	20	21	23	7
1680	2018-06-25	1	2	3	7	8	10	11	12	13	14	18	20	21	23	25	2
1681	2018-06-27	1	2	3	7	8	10	11	12	15	16	17	20	22	23	25	8
1682	2018-06-29	1	4	5	6	7	9	12	13	15	17	18	19	20	21	25	3
1683	2018-07-02	1	2	3	5	9	10	11	13	15	16	17	18	23	24	25	3
1684	2018-07-04	2	4	7	9	10	12	13	14	15	16	17	22	23	24	25	4
1685	2018-07-06	1	2	3	5	6	7	11	12	14	16	17	19	21	22	24	3
1686	2018-07-09	2	4	5	6	9	10	13	15	17	18	19	20	22	23	24	3
1687	2018-07-11	1	2	3	4	6	7	9	10	14	16	17	18	19	20	24	2
1688	2018-07-13	1	3	4	5	6	7	8	10	13	15	19	21	22	24	25	0
1689	2018-07-16	1	2	6	7	9	10	11	13	14	16	17	18	19	22	23	2
1690	2018-07-18	1	2	4	5	7	8	10	13	15	16	19	20	22	23	25	5
1691	2018-07-20	1	2	3	4	5	7	8	10	11	12	13	15	16	18	19	2
1692	2018-07-23	3	5	6	7	10	12	14	15	17	18	20	22	23	24	25	5
1693	2018-07-25	1	3	4	6	7	8	11	14	16	17	19	20	21	22	23	1
1694	2018-07-27	1	2	3	4	5	9	11	12	13	17	18	19	20	23	24	1
1695	2018-07-30	1	4	5	9	11	13	14	17	18	20	21	22	23	24	25	1
1696	2018-08-01	2	4	5	7	8	10	12	13	14	16	17	18	19	23	24	4
1697	2018-08-03	3	4	6	7	10	13	17	18	19	20	21	22	23	24	25	1
1698	2018-08-06	2	3	4	5	8	9	13	14	16	18	19	20	21	22	25	1
1699	2018-08-08	4	5	6	8	9	10	13	14	15	16	19	21	23	24	25	4
1700	2018-08-10	1	2	3	6	7	8	12	13	14	16	20	21	22	23	24	4
1701	2018-08-13	1	2	3	5	6	7	8	10	13	16	17	18	20	21	22	3
1702	2018-08-15	3	4	5	7	8	10	11	14	15	16	17	18	19	22	25	2
1703	2018-08-17	1	3	6	8	9	10	12	13	14	15	16	17	18	19	22	2
1704	2018-08-20	2	4	6	7	9	10	11	12	13	14	16	18	19	20	22	1
1705	2018-08-22	2	3	4	5	9	12	14	16	17	18	19	20	21	23	24	2
1706	2018-08-24	2	3	4	5	7	8	9	12	13	14	15	17	18	20	21	7
1707	2018-08-27	2	5	9	10	11	12	13	16	17	18	19	21	22	23	25	1
1708	2018-09-08	1	2	3	4	6	7	8	9	10	12	13	14	17	18	22	33
1709	2018-09-10	1	3	4	5	11	12	13	15	18	19	20	21	22	23	24	1
1710	2018-09-12	2	4	5	6	7	9	10	11	12	17	20	21	22	24	25	2
1711	2018-09-14	1	2	3	4	5	8	10	11	13	14	18	19	20	21	23	3
1712	2018-09-17	1	3	5	6	7	10	13	14	15	16	17	18	23	24	25	14
1713	2018-09-19	1	4	8	9	10	12	13	15	16	17	19	20	21	23	24	3
1714	2018-09-21	1	3	5	6	7	8	10	14	15	18	19	21	22	23	24	2
1715	2018-09-24	1	2	4	6	8	11	13	16	17	18	19	21	22	24	25	4
1716	2018-09-26	1	3	4	5	7	10	11	12	13	16	17	22	23	24	25	0
1717	2018-09-28	1	3	4	5	7	8	9	10	11	14	15	21	22	23	24	2
1718	2018-10-01	2	3	5	6	7	8	10	11	12	17	18	20	21	22	24	7
1719	2018-10-03	2	3	4	6	10	11	13	15	17	18	20	21	23	24	25	1
1720	2018-10-05	2	3	4	9	10	11	13	15	17	18	20	22	23	24	25	11
1721	2018-10-08	1	3	4	5	6	8	11	13	14	15	16	19	21	24	25	2
1722	2018-10-10	2	4	5	7	8	11	12	14	15	17	19	21	22	23	25	8
1723	2018-10-13	1	2	4	6	7	10	11	12	13	14	17	18	19	21	22	6
1724	2018-10-15	5	6	7	9	10	11	12	13	15	16	18	20	21	22	23	3
1725	2018-10-17	1	5	6	8	12	13	14	15	18	19	21	22	23	24	25	2
1726	2018-10-19	1	3	5	6	8	10	11	12	14	15	17	19	20	22	25	23
1727	2018-10-22	1	2	5	6	7	9	10	13	14	15	16	20	21	22	24	2
1728	2018-10-24	2	3	5	6	7	8	9	10	11	12	14	15	17	21	22	1
1729	2018-10-26	1	2	4	6	8	9	10	11	12	14	16	18	21	24	25	7
1730	2018-10-29	1	7	8	10	12	13	14	15	16	18	19	22	23	24	25	2
1731	2018-10-31	1	3	5	7	8	9	10	13	14	17	19	20	22	24	25	8
1732	2018-11-03	1	3	5	9	10	12	13	14	17	18	19	20	21	22	24	2
1733	2018-11-05	1	2	4	5	8	9	12	13	14	15	16	19	21	23	25	4
1734	2018-11-07	1	2	3	6	7	8	10	11	15	16	17	21	22	24	25	4
1735	2018-11-09	1	2	3	6	10	12	13	14	15	19	20	21	23	24	25	1
1736	2018-11-12	3	6	7	9	11	12	13	15	16	18	19	22	23	24	25	4
1737	2018-11-14	2	4	5	6	10	11	12	15	16	18	19	20	22	24	25	3
1738	2018-11-16	1	3	6	9	10	13	14	17	18	19	20	21	22	23	24	1
1739	2018-11-19	2	3	4	5	6	7	8	11	12	14	16	19	20	22	24	1
1740	2018-11-21	1	2	3	4	5	6	8	9	10	11	16	18	19	22	24	2
1741	2018-11-23	1	5	8	11	12	15	16	17	18	19	20	21	22	23	25	3
1742	2018-11-26	1	4	6	8	9	10	12	14	15	16	17	18	20	21	25	0
1743	2018-11-28	5	6	7	8	10	11	13	15	17	18	19	21	22	24	25	5
1744	2018-11-30	1	5	6	10	11	12	13	15	17	18	19	20	21	23	24	0
1745	2018-12-03	2	3	4	6	7	8	9	10	11	16	18	20	21	24	25	3
1746	2018-12-05	3	4	6	7	8	9	10	11	12	15	16	19	22	23	25	1
1747	2018-12-07	1	4	5	6	7	8	10	13	15	16	17	19	20	21	25	1
1748	2018-12-10	1	3	5	6	7	9	10	11	12	17	18	19	21	22	25	2
1749	2018-12-12	2	4	6	9	12	13	15	16	19	20	21	22	23	24	25	5
1750	2018-12-14	1	4	6	7	10	12	13	16	17	18	19	20	22	23	24	3
1751	2018-12-17	1	3	4	6	7	9	10	12	13	15	18	19	22	24	25	14
1752	2018-12-19	1	3	4	6	7	8	9	12	13	15	16	17	18	20	22	2
1753	2018-12-21	1	2	3	5	6	8	9	12	13	15	17	21	22	24	25	3
1754	2018-12-24	1	2	3	4	5	10	12	13	14	15	17	20	21	24	25	2
1755	2018-12-26	1	2	3	8	9	11	13	16	18	19	20	21	22	23	25	2
1756	2018-12-28	1	2	5	6	7	8	12	13	16	17	19	21	22	23	24	6
1757	2018-12-31	1	3	4	7	10	13	14	15	17	18	20	21	22	23	25	0
1758	2019-01-02	1	2	4	7	8	9	10	12	13	14	17	19	20	22	23	5
1759	2019-01-04	1	2	3	4	5	6	8	10	14	15	16	18	19	22	23	0
1760	2019-01-07	1	3	4	5	6	7	12	14	15	16	18	20	23	24	25	6
1761	2019-01-09	1	2	3	5	6	9	10	11	13	17	18	19	20	21	25	4
1762	2019-01-11	1	2	5	6	7	8	12	15	16	17	20	21	22	23	25	6
1763	2019-01-14	1	2	3	4	5	8	9	10	11	13	14	15	16	21	24	1
1764	2019-01-16	1	2	4	6	7	10	12	14	15	16	17	19	20	23	25	4
1765	2019-01-18	1	2	3	4	5	8	9	11	13	14	17	18	21	22	25	8
1766	2019-01-21	1	3	7	8	9	10	11	12	13	14	15	16	20	21	23	1
1767	2019-01-23	2	4	5	6	7	9	10	11	15	16	19	20	23	24	25	1
1768	2019-01-25	1	2	4	6	10	12	14	17	18	19	20	22	23	24	25	1
1769	2019-01-28	1	3	5	7	8	10	12	13	14	16	17	18	20	23	25	7
1770	2019-01-30	2	4	5	7	11	12	14	15	18	19	20	21	22	23	25	2
1771	2019-02-01	2	6	7	10	11	13	15	16	17	18	19	21	23	24	25	1
1772	2019-02-04	1	3	4	5	7	9	10	13	14	16	19	20	21	24	25	4
1773	2019-02-06	1	2	5	8	9	10	13	15	16	17	18	19	21	24	25	1
1774	2019-02-08	3	7	9	10	12	13	14	15	17	19	20	22	23	24	25	7
1775	2019-02-11	3	6	7	8	9	11	12	14	15	16	17	18	19	20	23	3
1776	2019-02-13	2	3	4	6	7	11	12	13	17	18	19	22	23	24	25	9
1777	2019-02-15	2	4	6	8	10	12	14	15	16	18	19	20	21	24	25	16
1778	2019-02-18	1	3	5	6	8	9	10	11	13	16	18	19	21	23	24	12
1779	2019-02-20	2	3	4	6	8	9	15	18	19	20	21	22	23	24	25	3
1780	2019-02-22	3	4	5	6	8	9	10	11	13	14	15	16	17	22	25	2
1781	2019-02-25	1	4	5	7	8	9	10	11	15	16	18	19	20	21	22	3
1782	2019-02-27	1	2	3	7	8	12	13	14	15	17	18	19	20	22	25	2
1783	2019-03-01	3	4	8	10	11	12	14	15	18	20	21	22	23	24	25	5
1784	2019-03-06	1	3	4	7	9	10	11	13	14	17	18	19	22	23	25	50
1785	2019-03-08	1	4	5	6	7	8	9	11	14	16	17	19	21	23	25	2
1786	2019-03-11	1	3	4	5	6	7	12	16	17	18	20	21	22	23	24	1
1787	2019-03-13	1	2	4	6	7	10	11	12	14	18	19	20	21	23	25	9
1788	2019-03-15	1	2	6	7	9	10	11	13	14	15	17	18	19	20	23	1
1789	2019-03-18	1	3	5	8	9	11	13	14	15	17	19	21	22	24	25	11
1790	2019-03-20	1	2	3	6	8	11	12	13	15	17	18	21	23	24	25	2
1791	2019-03-22	1	2	4	5	7	8	10	13	15	17	18	19	20	22	24	2
1792	2019-03-25	2	3	6	7	9	10	13	14	15	16	17	21	22	24	25	1
1793	2019-03-27	1	2	3	5	6	10	11	13	16	18	19	20	21	23	24	1
1794	2019-03-29	3	4	5	7	8	10	11	13	16	18	19	21	22	24	25	1
1795	2019-04-01	2	4	7	8	9	10	13	16	17	18	19	22	23	24	25	4
1796	2019-04-03	1	3	5	9	10	12	15	16	18	19	20	21	23	24	25	3
1797	2019-04-05	3	5	6	7	9	10	11	14	15	16	17	18	19	24	25	3
1798	2019-04-08	2	3	4	5	7	9	12	13	14	15	16	19	20	21	23	2
1799	2019-04-10	2	3	4	5	8	10	11	12	15	18	20	22	23	24	25	3
1800	2019-04-12	1	2	5	6	7	8	10	12	13	14	15	16	20	21	22	4
1801	2019-04-15	1	4	5	7	10	12	13	15	17	18	19	20	22	23	24	8
1802	2019-04-17	1	2	5	8	11	12	14	15	16	19	20	21	23	24	25	2
1803	2019-04-20	3	4	5	6	7	9	11	15	17	18	19	20	21	23	24	3
1804	2019-04-22	1	5	8	9	10	11	13	14	15	17	19	20	22	24	25	4
1805	2019-04-24	1	2	4	5	6	9	10	14	15	16	18	20	22	23	24	2
1806	2019-04-26	1	2	4	5	7	9	11	14	15	16	19	20	21	23	25	6
1807	2019-04-29	1	2	3	5	7	8	9	13	14	17	18	19	20	24	25	2
1808	2019-05-02	3	5	7	8	11	12	13	15	16	18	19	20	22	24	25	1
1809	2019-05-03	1	2	4	5	6	9	13	14	16	17	18	20	23	24	25	4
1810	2019-05-06	1	3	4	6	7	9	12	13	14	16	19	21	22	24	25	9
1811	2019-05-08	2	3	4	5	6	7	8	10	12	13	14	18	20	21	24	1
1812	2019-05-10	2	4	6	7	9	11	12	13	18	19	20	21	23	24	25	6
1813	2019-05-13	1	2	4	5	7	8	11	13	14	15	16	17	20	23	25	2
1814	2019-05-15	1	2	3	5	7	12	14	15	16	18	19	21	23	24	25	3
1815	2019-05-17	3	6	7	10	11	12	13	14	15	18	19	20	21	24	25	1
1816	2019-05-20	1	2	4	6	7	8	9	11	13	14	15	16	18	20	21	2
1817	2019-05-22	1	4	7	9	10	11	14	15	16	17	18	21	22	23	24	1
1818	2019-05-24	1	4	5	6	8	9	10	11	14	15	16	19	21	23	24	4
1819	2019-05-27	1	6	9	10	11	12	13	14	15	16	17	18	19	20	23	2
1820	2019-05-29	1	4	5	7	10	13	14	16	17	18	19	20	21	22	25	2
1821	2019-05-31	2	3	4	5	7	9	10	13	14	16	17	19	20	21	25	0
1822	2019-06-03	1	4	6	9	12	13	14	16	17	18	19	20	21	24	25	2
1823	2019-06-05	3	5	6	7	8	9	10	12	13	15	16	17	18	19	22	1
1824	2019-06-07	2	5	6	8	9	11	13	14	16	17	18	20	21	23	25	14
1825	2019-06-10	1	3	7	8	9	10	11	14	15	16	17	20	21	22	23	1
1826	2019-06-12	1	2	5	7	8	9	10	11	12	13	14	19	21	22	25	1
1827	2019-06-14	1	3	4	6	7	10	12	13	14	17	18	19	21	22	24	14
1828	2019-06-17	1	2	5	6	7	8	9	11	12	13	15	19	21	23	24	0
1829	2019-06-19	2	3	4	5	7	10	11	13	15	16	19	21	22	23	24	4
1830	2019-06-21	1	3	5	8	10	11	12	14	17	18	19	20	22	23	24	7
1831	2019-06-24	2	4	5	8	9	10	12	14	16	18	19	20	21	22	23	3
1832	2019-06-26	2	7	8	9	10	11	16	18	19	20	21	22	23	24	25	2
1833	2019-06-28	1	7	9	11	12	14	15	16	18	19	20	21	23	24	25	2
1834	2019-07-01	2	5	6	8	12	13	14	15	17	18	19	20	21	22	23	1
1835	2019-07-03	1	4	6	7	11	13	14	15	16	18	20	21	22	23	24	5
1836	2019-07-05	1	3	4	6	7	8	9	12	14	15	17	18	19	24	25	1
1837	2019-07-08	1	4	5	6	8	9	11	12	13	14	15	16	21	24	25	1
1838	2019-07-10	1	3	5	8	9	10	12	15	16	18	20	21	22	23	25	7
1839	2019-07-12	1	3	4	6	7	8	9	14	15	17	18	19	23	24	25	18
1840	2019-07-15	2	3	6	7	10	11	12	13	14	15	16	17	19	21	24	3
1841	2019-07-17	1	2	3	4	6	7	8	11	12	13	17	18	21	22	25	4
1842	2019-07-19	3	4	5	6	9	11	12	13	14	16	17	19	20	21	23	2
1843	2019-07-22	4	6	7	8	11	12	14	15	16	17	19	20	21	22	24	2
1844	2019-07-24	1	3	5	6	7	8	11	12	14	15	16	17	21	23	25	0
1845	2019-07-26	3	4	5	6	8	10	11	14	15	17	18	19	20	21	23	6
1846	2019-07-29	1	2	3	9	10	11	12	14	15	18	19	20	22	24	25	10
1847	2019-07-31	1	2	3	5	7	8	9	14	15	17	18	19	20	23	24	3
1848	2019-08-02	2	3	7	8	9	11	13	15	16	17	18	20	21	22	24	3
1849	2019-08-05	1	5	9	11	12	13	14	17	18	19	21	22	23	24	25	0
1850	2019-08-07	4	5	7	10	11	12	14	15	16	18	20	21	23	24	25	6
1851	2019-08-09	1	5	6	7	8	9	10	11	13	16	19	20	22	23	25	1
1852	2019-08-12	1	3	6	9	10	12	13	17	18	19	20	21	23	24	25	4
1853	2019-08-14	1	3	5	9	10	11	13	14	15	16	17	20	22	23	24	3
1854	2019-08-16	3	4	5	6	8	11	13	14	15	16	17	18	20	22	24	5
1855	2019-08-19	1	4	5	7	11	12	13	14	15	16	17	20	23	24	25	2
1856	2019-08-21	1	3	4	7	8	10	11	12	13	16	17	18	20	21	23	3
1857	2019-08-23	2	4	6	7	8	9	14	15	16	17	20	22	23	24	25	0
1858	2019-08-26	2	3	4	7	8	9	11	13	15	17	18	20	21	22	25	10
1859	2019-08-28	3	6	7	8	9	12	13	16	17	19	20	21	22	24	25	5
1860	2019-08-30	1	2	3	4	5	10	11	15	17	18	19	21	22	23	24	2
1861	2019-09-06	2	3	5	6	7	8	9	13	14	16	18	22	23	24	25	33
1862	2019-09-09	2	3	4	5	7	10	11	13	16	18	19	20	21	23	24	4
1863	2019-09-11	2	3	4	5	6	8	9	10	14	16	18	21	22	24	25	1
1864	2019-09-13	2	3	6	7	8	9	10	12	14	16	18	20	21	24	25	1
1865	2019-09-16	2	3	5	6	7	10	11	12	14	17	19	20	21	24	25	7
1866	2019-09-18	1	2	3	4	5	10	11	12	13	14	16	20	21	23	25	2
1867	2019-09-20	1	2	4	5	6	7	8	9	12	13	15	16	17	18	25	1
1868	2019-09-23	1	2	4	5	6	8	10	11	13	14	16	17	19	21	24	3
1869	2019-09-25	1	2	4	10	11	13	14	15	17	18	21	22	23	24	25	1
1870	2019-09-27	1	2	3	4	6	7	10	15	16	18	20	21	22	24	25	1
1871	2019-09-30	1	2	4	5	6	7	8	11	13	14	18	20	22	23	24	2
1872	2019-10-02	1	2	6	8	9	13	14	15	17	19	20	21	22	23	25	0
1873	2019-10-04	1	4	5	7	8	9	10	11	12	14	15	17	19	21	23	7
1874	2019-10-07	1	5	6	8	9	10	13	14	17	19	20	21	22	24	25	1
1875	2019-10-09	1	3	4	5	7	8	13	14	16	18	19	21	22	23	24	0
1876	2019-10-11	1	2	3	4	7	8	11	13	16	18	19	20	22	23	24	4
1877	2019-10-14	2	4	8	9	11	12	13	14	15	18	19	21	23	24	25	1
1878	2019-10-16	1	2	3	4	5	6	8	10	12	15	17	19	23	24	25	3
1879	2019-10-18	2	4	5	6	8	10	11	13	15	16	19	20	21	24	25	34
1880	2019-10-21	1	4	5	6	7	9	11	13	15	18	19	20	22	23	24	4
1881	2019-10-23	1	3	4	5	10	14	15	16	17	18	19	21	23	24	25	0
1882	2019-10-25	1	3	4	5	8	9	11	12	13	14	15	16	22	23	24	1
1883	2019-10-28	1	2	3	4	5	8	11	13	15	16	17	18	21	22	23	1
1884	2019-10-30	1	2	3	5	6	7	8	9	11	12	14	16	17	23	25	2
1885	2019-11-01	1	3	5	8	9	10	11	12	14	17	18	21	22	23	25	6
1886	2019-11-04	1	2	3	6	9	11	12	14	15	16	19	20	21	22	25	1
1887	2019-11-06	1	3	4	6	7	8	9	10	11	12	14	16	17	18	22	1
1888	2019-11-09	2	4	6	7	8	11	12	14	17	18	20	22	23	24	25	6
1889	2019-11-11	1	2	4	6	7	11	13	14	15	19	20	22	23	24	25	2
1890	2019-11-13	1	2	4	5	7	8	9	10	11	13	15	16	17	21	23	1
1891	2019-11-16	3	4	6	7	11	14	15	16	19	20	21	22	23	24	25	4
1892	2019-11-18	1	3	5	6	7	8	9	10	11	19	20	21	23	24	25	1
1893	2019-11-21	2	3	4	5	7	9	10	14	15	16	19	20	21	22	25	3
1894	2019-11-22	2	4	5	8	9	11	12	15	16	17	18	19	21	22	25	4
1895	2019-11-25	1	2	3	4	6	8	9	10	13	14	19	22	23	24	25	1
1896	2019-11-27	1	2	3	6	8	9	12	15	16	17	18	20	21	22	24	2
1897	2019-11-29	1	3	4	5	7	8	12	13	14	15	16	17	20	21	24	0
1898	2019-12-02	5	6	8	9	10	12	13	14	16	18	19	20	21	22	23	4
1899	2019-12-04	1	3	5	6	9	10	11	14	15	16	17	18	19	20	23	0
1900	2019-12-06	1	5	6	7	8	10	11	12	13	16	17	18	19	22	25	4
1901	2019-12-09	2	3	4	5	9	10	12	13	14	15	16	17	18	19	20	2
1902	2019-12-11	1	2	4	5	6	8	9	11	12	15	16	17	22	23	25	3
1903	2019-12-13	4	6	7	8	9	10	12	14	15	16	19	20	21	23	24	1
1904	2019-12-16	1	6	7	8	10	11	12	13	14	15	17	18	20	23	25	1
1905	2019-12-18	1	3	6	8	9	11	12	15	16	17	18	19	21	23	24	2
1906	2019-12-20	1	2	3	4	6	7	10	11	14	16	17	18	23	24	25	3
1907	2019-12-23	1	3	4	5	9	10	13	15	16	17	19	21	23	24	25	4
1908	2019-12-26	2	4	6	7	8	12	13	14	16	17	20	22	23	24	25	3
1909	2019-12-28	2	3	4	5	6	8	9	10	11	12	14	17	18	22	25	1
1910	2019-12-30	2	3	4	7	9	10	12	13	14	15	16	18	22	23	25	3
1911	2020-01-03	1	2	4	5	8	11	12	13	14	15	19	21	22	24	25	2
1912	2020-01-06	2	5	6	7	8	9	10	14	16	18	20	21	22	23	24	1
1913	2020-01-08	2	5	6	7	8	9	10	11	12	14	16	19	20	24	25	2
1914	2020-01-10	2	4	5	8	10	12	13	14	15	17	18	19	20	21	25	0
1915	2020-01-13	2	4	8	10	11	12	13	15	16	17	19	20	21	22	25	5
1916	2020-01-15	4	5	6	7	8	10	11	13	15	18	19	20	23	24	25	4
1917	2020-01-17	1	2	3	4	10	13	14	15	17	19	20	21	23	24	25	1
1918	2020-01-20	2	4	5	6	7	9	10	11	12	17	18	19	20	22	24	5
1919	2020-01-22	1	2	3	5	6	9	10	11	15	19	20	21	22	23	24	3
1920	2020-01-24	2	4	6	9	10	11	12	13	14	17	18	20	21	22	25	4
1921	2020-01-27	2	3	4	5	6	7	8	9	10	13	15	16	18	21	24	5
1922	2020-01-29	2	3	4	5	6	7	8	10	12	16	17	18	19	23	25	1
1923	2020-01-31	1	4	5	7	10	11	12	14	17	19	20	22	23	24	25	16
1924	2020-02-03	2	3	8	9	10	11	12	13	14	17	18	22	23	24	25	3
1925	2020-02-05	1	2	3	4	5	6	7	9	13	14	16	18	20	21	23	1
1926	2020-02-07	1	4	5	6	9	10	13	14	15	16	17	18	21	23	24	4
1927	2020-02-10	1	2	4	5	8	10	11	13	15	17	18	21	22	23	24	4
1928	2020-02-12	1	2	3	5	6	7	8	9	10	15	16	19	23	24	25	1
1929	2020-02-14	1	2	3	4	7	8	9	10	11	13	15	19	20	22	25	5
1930	2020-02-17	1	2	4	5	7	8	10	13	14	16	17	21	22	23	24	2
1931	2020-02-19	3	4	5	6	7	9	10	11	12	14	16	18	19	22	23	4
1932	2020-02-21	2	4	6	8	9	10	11	12	14	16	17	19	20	22	24	20
1933	2020-02-26	1	7	9	10	11	12	13	16	19	20	21	22	23	24	25	1
1934	2020-02-28	1	2	3	4	5	7	8	9	10	11	12	20	23	24	25	4
1935	2020-03-02	1	3	5	6	7	8	10	12	15	16	17	18	22	23	24	3
1936	2020-03-04	2	3	4	5	6	8	11	13	14	15	17	19	20	21	25	4
1937	2020-03-06	3	4	5	6	9	10	11	12	15	17	19	21	22	23	24	4
1938	2020-03-09	3	4	6	7	8	10	11	12	16	18	19	20	21	22	25	2
1939	2020-03-11	2	3	4	6	7	9	10	11	12	13	19	20	22	23	24	6
1940	2020-03-13	1	5	8	10	11	12	13	15	17	18	21	22	23	24	25	0
1941	2020-03-16	1	3	4	5	8	10	12	13	14	16	17	20	22	24	25	9
1942	2020-03-18	1	2	3	4	7	8	10	11	12	13	15	18	20	24	25	2
1943	2020-03-20	2	3	6	9	10	13	14	15	16	17	18	19	20	22	23	2
1944	2020-03-23	1	2	4	5	7	8	9	10	11	13	16	18	22	23	24	11
1945	2020-03-25	3	4	5	8	9	10	12	15	17	19	20	22	23	24	25	5
1946	2020-03-27	1	2	3	4	6	7	10	11	13	14	15	20	21	22	23	1
1947	2020-03-30	2	5	6	9	11	13	14	15	16	18	19	22	23	24	25	2
1948	2020-04-01	1	3	7	9	11	12	13	14	16	17	19	20	21	22	24	3
1949	2020-04-03	2	3	5	6	8	10	11	14	15	16	19	20	22	23	25	5
1950	2020-04-06	2	3	4	6	8	9	10	11	12	16	18	20	21	23	25	2
1951	2020-04-08	3	4	6	9	10	11	12	13	16	18	19	20	22	23	25	4
1952	2020-04-11	3	5	7	9	10	11	13	14	16	17	18	20	21	22	24	6
1953	2020-04-13	1	3	4	5	6	9	10	15	16	18	19	20	21	22	23	1
1954	2020-04-15	2	3	4	6	7	8	10	13	16	18	21	22	23	24	25	2
1955	2020-04-17	1	2	4	5	9	12	14	15	16	19	20	22	23	24	25	2
1956	2020-04-20	3	4	6	7	8	9	10	14	15	16	19	20	21	22	23	0
1957	2020-04-22	1	2	3	4	5	7	11	14	15	16	17	19	20	23	25	1
1958	2020-04-24	2	3	5	6	7	8	11	15	17	18	20	21	22	23	25	4
1959	2020-04-27	1	2	3	6	7	9	10	12	13	16	17	18	20	24	25	0
1960	2020-04-29	2	3	7	9	10	12	13	15	17	18	20	21	23	24	25	10
1961	2020-05-02	2	4	5	7	12	13	14	15	18	19	20	21	22	23	24	2
1962	2020-05-04	1	2	3	4	6	9	12	13	14	15	16	19	20	21	22	1
1963	2020-05-06	3	4	5	8	9	10	11	12	13	14	15	18	20	24	25	3
1964	2020-05-08	1	2	3	5	8	9	10	12	13	14	15	16	17	19	23	0
1965	2020-05-11	1	2	4	5	6	10	12	16	19	20	21	22	23	24	25	0
1966	2020-05-13	1	3	4	5	6	7	9	12	13	14	15	16	18	19	24	3
1967	2020-05-15	1	2	3	5	7	8	10	11	12	13	14	15	17	23	24	2
1968	2020-05-18	1	2	3	4	5	7	9	13	14	16	18	20	22	23	25	2
1969	2020-05-20	4	5	6	7	9	13	14	15	16	18	19	20	22	23	24	7
1970	2020-05-22	3	6	8	9	10	11	12	13	14	16	17	20	21	24	25	0
1971	2020-05-25	3	6	8	9	10	13	14	15	16	17	18	19	21	23	25	0
1972	2020-05-28	3	7	8	11	12	13	14	15	16	18	20	21	22	23	25	2
1973	2020-05-29	2	3	6	7	8	9	10	13	14	16	17	18	19	23	25	2
1974	2020-06-01	1	2	4	5	6	9	10	11	12	16	20	21	23	24	25	3
1975	2020-06-03	2	5	7	8	9	10	11	12	13	16	17	20	22	23	25	2
1976	2020-06-05	1	3	7	9	10	11	13	14	15	17	18	19	20	22	24	7
1977	2020-06-08	1	3	4	5	7	10	12	13	15	16	17	18	19	22	23	5
1978	2020-06-10	1	4	5	6	7	8	9	10	12	13	15	16	20	23	24	3
1979	2020-06-12	4	5	6	9	10	11	12	13	14	15	16	18	21	22	25	2
1980	2020-06-15	3	4	5	7	9	10	13	16	17	18	19	21	22	23	24	3
1981	2020-06-17	1	2	3	4	5	6	7	12	13	15	17	20	23	24	25	5
1982	2020-06-19	1	2	3	4	5	7	14	15	16	17	18	19	20	22	25	1
1983	2020-06-22	1	2	5	6	7	8	9	10	11	12	16	19	20	23	24	3
1984	2020-06-24	2	4	5	10	11	12	13	14	16	19	20	21	23	24	25	0
1985	2020-06-26	1	2	3	6	7	9	11	12	14	15	17	21	22	23	24	2
1986	2020-06-29	1	4	5	7	8	10	11	12	13	15	17	18	21	23	24	9
1987	2020-07-01	2	3	4	5	6	10	11	12	13	15	16	17	19	21	22	3
1988	2020-07-03	2	5	6	7	9	11	12	14	15	17	19	21	22	23	24	8
1989	2020-07-06	1	2	4	6	7	9	10	11	12	16	17	19	23	24	25	2
1990	2020-07-08	4	6	7	8	9	11	13	14	16	17	19	20	23	24	25	0
1991	2020-07-10	1	2	5	6	7	8	10	14	15	16	17	18	20	22	24	5
1992	2020-07-13	3	4	5	6	7	8	9	11	12	14	19	20	21	22	23	3
1993	2020-07-15	1	3	4	5	6	8	9	10	13	15	16	20	21	22	23	0
1994	2020-07-17	3	4	5	6	7	8	9	11	12	17	19	20	22	24	25	6
1995	2020-07-20	1	3	5	7	9	10	11	12	13	14	18	19	20	23	25	6
1996	2020-07-22	2	4	5	7	8	9	10	11	12	13	18	19	20	22	25	4
1997	2020-07-24	2	4	6	7	8	9	12	13	14	15	16	18	20	21	22	1
1998	2020-07-27	1	3	4	5	6	10	11	12	13	14	17	19	20	22	24	1
1999	2020-07-29	3	4	6	7	8	9	13	15	17	19	20	22	23	24	25	3
2000	2020-07-31	2	3	4	7	11	12	14	16	17	18	19	20	22	23	24	2
2001	2020-08-03	1	2	3	6	7	9	10	11	16	17	19	20	21	22	25	1
2002	2020-08-04	2	3	5	8	10	12	13	14	16	17	18	19	20	24	25	1
2003	2020-08-05	1	5	6	7	8	9	10	11	12	15	17	20	22	24	25	1
2004	2020-08-06	1	3	4	8	10	11	12	13	14	15	18	19	21	22	25	1
2005	2020-08-07	3	6	8	9	11	12	13	15	17	18	19	21	22	24	25	1
2006	2020-08-08	1	2	4	5	7	8	10	13	17	19	20	21	23	24	25	1
2007	2020-08-10	1	3	5	6	10	11	15	16	17	18	19	20	21	22	24	0
2008	2020-08-11	2	3	5	6	8	10	11	12	13	14	15	17	21	23	25	0
2009	2020-08-12	1	2	3	4	5	7	12	13	15	16	17	19	20	22	24	4
2010	2020-08-13	2	3	4	5	6	10	11	12	16	19	20	21	22	24	25	1
2011	2020-08-14	1	5	7	10	11	13	16	18	19	20	21	22	23	24	25	4
2012	2020-08-15	1	3	4	6	9	10	12	15	16	17	18	20	22	24	25	0
2013	2020-08-17	1	2	4	7	8	10	11	14	16	19	20	21	23	24	25	5
2014	2020-08-18	3	4	6	7	8	9	10	15	16	17	18	19	22	23	25	0
2015	2020-08-19	2	3	4	5	6	8	9	11	13	15	17	18	20	23	25	7
2016	2020-08-20	2	3	9	10	11	13	14	15	17	18	19	22	23	24	25	1
2017	2020-08-21	1	2	3	4	5	8	13	15	16	19	20	21	22	24	25	1
2018	2020-08-22	1	2	3	4	5	8	11	12	13	14	17	18	20	21	22	0
2019	2020-08-24	1	3	5	6	8	9	10	11	14	17	18	20	23	24	25	2
2020	2020-08-25	2	3	4	5	7	8	9	12	15	16	17	19	20	21	25	4
2021	2020-08-26	1	2	3	4	6	7	8	10	12	15	18	19	22	23	24	0
2022	2020-08-27	1	3	6	8	9	10	11	12	13	14	17	18	21	22	25	1
2023	2020-08-28	1	2	4	8	10	11	12	14	15	16	17	19	20	21	25	2
2024	2020-08-29	1	2	3	4	5	6	8	9	11	14	17	18	21	23	24	1
2025	2020-08-31	2	3	4	6	8	9	10	12	14	15	16	18	19	20	22	6
2026	2020-09-01	1	3	4	5	6	11	13	14	16	19	20	21	22	23	24	0
2027	2020-09-02	1	2	3	6	7	9	12	13	16	17	20	21	23	24	25	2
2028	2020-09-03	1	2	3	4	5	6	8	9	15	16	18	19	20	23	25	1
2029	2020-09-04	3	4	7	8	10	11	12	13	16	17	19	22	23	24	25	0
2030	2020-09-12	2	3	4	5	6	9	10	12	14	15	17	19	22	23	25	50
2031	2020-09-14	1	2	3	7	8	9	10	12	13	15	18	20	23	24	25	2
2032	2020-09-15	2	4	5	7	8	9	12	13	15	17	18	19	21	22	25	8
2033	2020-09-16	1	2	5	6	10	11	12	13	14	16	17	19	20	21	22	2
2034	2020-09-17	1	3	4	5	7	8	9	11	13	14	16	18	19	22	24	103
2035	2020-09-18	3	8	10	11	12	13	14	16	18	19	20	22	23	24	25	5
2036	2020-09-19	4	5	6	7	8	11	12	13	17	18	19	21	22	23	25	2
2037	2020-09-21	1	2	4	7	8	9	10	11	14	16	18	20	21	22	23	1
2038	2020-09-22	1	3	5	7	10	11	12	14	15	17	18	19	20	24	25	1
2039	2020-09-23	1	2	3	4	5	6	10	11	14	15	19	21	23	24	25	2
2040	2020-09-24	2	3	8	10	11	12	13	14	15	16	20	21	22	23	24	1
2041	2020-09-25	1	2	4	7	9	11	13	14	16	17	19	22	23	24	25	4
2042	2020-09-26	2	3	4	8	9	10	12	14	15	17	18	21	22	24	25	1
2043	2020-09-28	3	5	7	9	12	13	14	15	17	18	19	21	22	23	25	4
2044	2020-09-29	3	5	6	10	11	13	16	17	18	19	20	21	22	24	25	0
2045	2020-09-30	1	3	5	9	12	13	15	16	17	18	19	20	21	24	25	1
2046	2020-10-01	1	3	4	7	10	11	14	15	17	20	21	22	23	24	25	2
2047	2020-10-02	2	3	4	5	7	8	10	11	12	15	16	18	20	21	23	2
2048	2020-10-03	1	3	4	6	7	8	9	12	13	16	19	20	21	22	25	1
2049	2020-10-05	3	4	8	9	10	11	13	14	16	17	20	21	22	24	25	1
2050	2020-10-06	1	2	3	4	5	6	7	9	13	15	17	18	19	21	22	1
2051	2020-10-07	1	2	3	4	7	9	10	12	16	18	19	20	22	23	25	1
2052	2020-10-08	1	3	4	6	8	10	12	13	14	16	17	18	20	24	25	2
2053	2020-10-09	3	4	9	11	12	13	15	16	17	18	20	21	22	23	24	1
2054	2020-10-10	1	2	3	5	7	8	10	11	12	14	17	19	21	22	23	4
2055	2020-10-13	1	2	3	4	5	7	11	14	15	16	18	19	21	23	25	3
2056	2020-10-14	1	3	4	5	6	9	10	13	15	16	17	18	19	20	21	0
2057	2020-10-15	2	5	6	8	9	10	11	12	13	14	15	16	18	20	25	4
2058	2020-10-16	1	5	7	8	10	12	13	14	15	17	20	21	22	23	24	1
2059	2020-10-17	1	4	5	10	12	14	15	16	17	18	19	20	21	23	25	1
2060	2020-10-19	3	5	9	13	14	16	17	18	19	20	21	22	23	24	25	4
2061	2020-10-20	1	2	5	8	10	11	12	15	16	17	18	19	20	21	23	2
2062	2020-10-21	3	4	6	7	8	9	10	12	14	15	19	20	22	23	24	1
2063	2020-10-22	1	2	5	6	7	10	11	13	16	18	19	20	22	24	25	1
2064	2020-10-23	6	7	9	10	11	12	13	17	18	19	20	21	22	24	25	1
2065	2020-10-24	4	5	6	7	8	9	10	11	12	13	14	17	19	21	22	5
2066	2020-10-26	2	4	6	8	9	10	12	14	15	16	17	18	19	24	25	0
2067	2020-10-27	1	7	8	9	12	13	14	16	17	19	20	21	23	24	25	3
2068	2020-10-28	1	2	3	7	10	14	15	16	18	19	20	21	23	24	25	0
2069	2020-10-29	1	2	3	4	5	6	7	9	13	17	21	22	23	24	25	5
2070	2020-10-30	2	4	6	8	9	12	13	14	15	16	17	19	20	24	25	4
2071	2020-10-31	1	2	4	6	9	10	11	12	13	15	16	17	20	21	25	1
2072	2020-11-03	1	3	4	9	10	11	12	13	14	15	17	18	21	22	24	0
2073	2020-11-04	4	5	6	7	11	12	13	15	16	18	19	20	23	24	25	5
2074	2020-11-05	2	3	4	5	6	9	14	15	18	19	20	21	22	24	25	2
2075	2020-11-06	2	3	5	7	8	9	11	12	13	14	17	19	23	24	25	7
2076	2020-11-07	1	3	5	6	9	10	11	12	13	14	15	18	22	24	25	3
2077	2020-11-09	3	4	5	7	8	10	11	12	13	14	15	16	21	24	25	3
2078	2020-11-10	1	2	3	4	6	12	13	15	17	18	19	21	22	24	25	0
2079	2020-11-11	1	2	3	6	9	12	14	15	17	18	19	22	23	24	25	0
2080	2020-11-12	1	2	3	5	12	13	14	15	16	17	18	21	22	23	25	2
2081	2020-11-13	2	4	5	6	7	9	10	11	15	16	17	18	19	20	21	1
2082	2020-11-14	1	4	5	6	7	8	9	10	13	15	16	17	19	20	25	0
2083	2020-11-16	4	5	7	9	10	11	12	14	16	19	20	21	22	23	24	3
2084	2020-11-17	1	3	4	5	6	8	9	10	11	14	15	16	19	22	24	1
2085	2020-11-18	1	4	6	9	10	12	13	14	15	16	18	20	23	24	25	0
2086	2020-11-19	4	5	6	10	11	12	14	15	17	20	21	22	23	24	25	0
2087	2020-11-20	3	6	8	10	13	14	15	16	17	18	19	20	23	24	25	1
2088	2020-11-21	1	2	4	5	6	7	9	11	13	14	15	21	22	23	24	1
2089	2020-11-23	1	2	5	6	8	9	10	11	12	13	16	19	20	23	25	2
2090	2020-11-24	1	6	8	9	10	12	14	15	16	18	19	20	22	24	25	1
2091	2020-11-25	2	3	4	5	6	7	8	9	10	11	16	17	19	20	24	0
2092	2020-11-26	1	2	3	5	7	9	11	13	15	17	18	19	20	22	25	4
2093	2020-11-27	1	2	3	4	6	8	9	12	14	15	19	20	21	24	25	1
2094	2020-11-28	2	4	5	6	8	9	10	11	12	14	18	19	23	24	25	4
2095	2020-11-30	1	2	4	6	8	11	12	14	15	17	18	19	20	22	23	1
2096	2020-12-01	2	3	7	8	9	10	11	13	14	15	18	19	20	21	25	0
2097	2020-12-02	2	3	6	7	8	10	12	14	15	16	18	19	21	23	24	2
2098	2020-12-03	4	7	8	9	10	12	13	15	16	17	18	19	20	22	25	0
2099	2020-12-04	1	2	5	7	8	9	11	12	14	15	17	18	20	24	25	2
2100	2020-12-05	1	3	5	6	7	10	11	14	17	18	19	20	21	23	25	1
2101	2020-12-07	1	2	3	8	10	11	14	17	18	19	20	21	23	24	25	0
2102	2020-12-08	2	3	4	5	8	9	10	11	12	13	15	16	20	22	25	2
2103	2020-12-09	1	2	5	7	10	11	12	13	15	16	18	19	20	21	25	1
2104	2020-12-10	2	4	5	6	8	9	10	11	12	14	17	18	20	21	23	7
2105	2020-12-11	3	7	8	9	10	13	14	16	17	18	19	20	21	22	25	3
2106	2020-12-12	2	4	6	7	8	9	11	12	13	14	15	16	17	21	24	1
2107	2020-12-14	1	2	3	5	7	8	9	12	13	16	18	20	22	24	25	4
2108	2020-12-15	1	3	4	5	6	7	9	13	16	17	18	19	21	24	25	0
2109	2020-12-16	2	4	5	8	9	10	11	12	13	14	16	17	21	22	23	4
2110	2020-12-17	2	6	8	10	11	13	14	15	16	17	18	21	22	24	25	0
2111	2020-12-18	1	3	4	5	9	11	12	13	14	16	19	20	21	23	24	3
2112	2020-12-19	2	3	4	7	8	9	10	11	12	15	16	18	22	24	25	0
2113	2020-12-21	1	2	4	7	8	9	10	11	13	16	17	20	22	24	25	5
2114	2020-12-22	2	5	7	8	9	10	11	15	16	17	18	19	20	21	24	0
2115	2020-12-23	3	5	7	9	10	12	13	16	17	18	20	21	22	24	25	1
2116	2020-12-24	2	3	4	6	7	8	9	10	12	13	14	18	21	24	25	2
2117	2020-12-26	1	2	4	5	7	9	14	15	16	17	19	20	21	22	24	1
2118	2020-12-28	3	6	8	9	10	11	12	14	16	17	18	19	20	22	25	3
2119	2020-12-29	1	5	6	7	8	10	12	13	14	18	20	21	22	23	24	0
2120	2020-12-30	2	4	5	8	9	12	13	14	17	18	20	21	22	23	25	2
2121	2020-12-31	1	2	4	5	7	8	9	14	17	18	19	20	22	23	25	0
2122	2021-01-02	1	3	4	5	9	10	11	14	15	18	20	21	22	23	25	1
2123	2021-01-04	1	5	6	8	9	10	14	17	18	19	20	21	23	24	25	0
2124	2021-01-05	1	3	5	6	7	8	9	10	11	13	16	22	23	24	25	3
2125	2021-01-06	1	8	10	11	12	13	15	16	17	19	20	21	23	24	25	1
2126	2021-01-07	1	3	4	5	7	8	9	10	12	15	17	21	22	24	25	2
2127	2021-01-08	2	3	4	5	6	10	11	13	14	15	16	18	20	23	24	2
2128	2021-01-09	2	3	4	6	7	9	10	11	14	16	17	18	22	23	25	2
2129	2021-01-11	1	3	4	6	7	8	10	11	14	15	19	20	21	22	24	1
2130	2021-01-12	3	4	6	7	9	10	11	12	13	14	15	16	18	20	23	1
2131	2021-01-13	1	2	3	7	8	9	10	11	13	14	16	17	19	23	25	0
2132	2021-01-14	1	3	6	9	10	11	12	15	17	19	20	21	22	23	24	2
2133	2021-01-15	2	4	6	7	8	9	10	11	14	15	17	18	19	21	23	0
2134	2021-01-16	1	3	4	6	8	10	12	14	17	18	19	20	21	22	25	5
2135	2021-01-18	1	2	3	4	5	6	8	13	15	16	18	19	21	23	25	2
2136	2021-01-19	2	3	4	6	7	9	10	13	14	16	18	19	20	24	25	0
2137	2021-01-20	2	6	7	9	11	12	13	14	16	17	18	19	20	21	23	1
2138	2021-01-21	2	3	5	6	7	8	9	12	13	16	18	19	21	22	24	1
2139	2021-01-22	1	2	3	7	8	12	13	14	16	17	18	19	22	23	25	3
2140	2021-01-23	1	3	5	6	7	8	9	11	15	17	20	21	22	23	24	0
2141	2021-01-25	1	2	3	4	5	7	8	9	10	14	18	22	23	24	25	4
2142	2021-01-26	2	4	6	7	9	11	12	14	16	17	20	22	23	24	25	2
2143	2021-01-27	1	2	3	6	9	10	11	14	17	18	19	20	21	23	25	0
2144	2021-01-28	1	2	5	6	8	9	11	12	13	14	15	17	19	20	25	1
2145	2021-01-29	2	5	6	7	8	10	12	13	14	15	17	20	23	24	25	1
2146	2021-01-30	1	2	4	6	8	9	11	13	16	17	18	19	20	21	22	4
2147	2021-02-01	1	3	5	6	7	8	9	12	14	15	16	19	20	22	25	1
2148	2021-02-02	1	3	4	7	8	11	14	15	16	18	20	22	23	24	25	0
2149	2021-02-03	1	2	4	8	9	10	12	13	14	15	16	17	18	20	23	2
2150	2021-02-04	1	2	3	5	7	8	9	11	12	14	15	16	21	23	25	1
2151	2021-02-05	1	3	6	7	8	9	11	12	13	14	15	18	21	22	24	1
2152	2021-02-06	2	3	4	6	10	11	12	13	15	16	17	18	20	23	25	1
2153	2021-02-08	1	2	4	7	8	9	10	11	13	14	15	17	18	20	21	1
2154	2021-02-09	3	4	5	7	8	10	11	12	16	18	19	20	21	23	24	2
2155	2021-02-10	1	2	3	4	6	9	13	14	15	17	18	19	20	21	22	2
2156	2021-02-11	4	5	6	7	8	10	12	13	14	17	18	19	20	21	23	2
2157	2021-02-12	2	4	5	6	12	13	14	16	17	18	19	21	22	24	25	1
2158	2021-02-13	3	5	7	8	9	12	14	17	18	19	20	21	23	24	25	1
2159	2021-02-17	1	2	4	5	7	12	13	14	16	18	20	21	22	24	25	0
2160	2021-02-18	2	4	5	6	8	11	12	14	15	16	18	19	21	24	25	6
2161	2021-02-19	1	2	3	5	6	7	9	13	14	15	18	19	22	24	25	1
2162	2021-02-20	1	2	3	5	6	8	10	12	14	15	16	17	19	21	22	2
2163	2021-02-22	1	2	4	6	10	11	12	13	16	18	19	20	21	23	25	4
2164	2021-02-23	2	3	8	10	11	13	14	15	16	17	19	20	21	24	25	2
2165	2021-02-24	1	3	5	6	8	13	14	15	16	17	18	20	21	22	23	2
2166	2021-02-25	2	3	4	6	9	10	11	12	13	14	15	18	20	21	24	2
2167	2021-02-26	2	3	4	6	7	9	11	12	14	16	17	18	19	20	23	1
2168	2021-02-27	1	3	4	6	8	10	11	12	13	14	16	17	21	23	25	1
2169	2021-03-01	1	2	4	5	8	10	11	12	13	16	20	22	23	24	25	2
2170	2021-03-02	1	6	7	9	10	11	13	17	18	19	21	22	23	24	25	0
2171	2021-03-03	1	4	9	10	11	13	15	17	18	19	21	22	23	24	25	7
2172	2021-03-04	6	8	9	10	11	13	14	15	16	17	19	20	22	23	25	3
2173	2021-03-05	1	2	3	9	11	12	13	15	16	18	19	20	21	22	25	0
2174	2021-03-06	1	2	3	5	6	7	8	11	13	14	15	16	21	24	25	1
2175	2021-03-08	1	3	5	7	10	11	12	13	14	15	16	17	19	22	23	1
2176	2021-03-09	1	2	4	5	7	8	9	11	12	13	16	18	20	21	22	1
2177	2021-03-10	1	3	4	7	8	10	12	14	15	16	17	19	20	22	24	11
2178	2021-03-11	2	5	8	9	11	13	14	15	17	18	19	20	22	23	24	2
2179	2021-03-12	3	6	7	8	9	10	13	14	15	16	18	19	20	21	25	1
2180	2021-03-13	1	3	6	7	8	9	10	11	13	14	16	18	20	21	24	2
2181	2021-03-15	1	2	3	5	6	9	11	13	14	15	17	18	22	23	25	2
2182	2021-03-16	2	3	8	9	10	12	13	14	16	17	19	20	22	23	25	2
2183	2021-03-17	1	2	4	6	9	11	14	15	16	18	19	20	21	22	25	1
2184	2021-03-18	5	7	9	10	11	12	14	15	17	19	20	21	22	24	25	3
2185	2021-03-19	1	3	5	8	9	12	13	14	16	17	18	19	20	21	25	3
2186	2021-03-20	4	6	7	9	12	13	15	16	17	18	19	22	23	24	25	0
2187	2021-03-22	3	4	6	7	8	9	10	11	13	15	16	17	21	22	24	2
2188	2021-03-23	1	3	6	8	10	11	14	15	16	17	19	20	23	24	25	1
2189	2021-03-24	1	3	4	5	6	8	10	11	13	14	17	18	19	22	24	2
2190	2021-03-25	1	2	3	4	5	8	9	11	12	13	14	16	17	23	24	2
2191	2021-03-26	3	4	5	6	10	11	13	14	15	17	18	19	20	21	23	0
2192	2021-03-27	2	3	4	5	6	7	11	12	14	17	19	21	22	23	25	0
2193	2021-03-29	2	4	5	6	7	9	10	11	13	14	19	20	22	23	24	3
2194	2021-03-30	3	4	5	6	7	8	9	11	13	15	17	19	20	22	25	1
2195	2021-03-31	2	3	5	7	8	9	11	12	13	16	17	18	20	22	23	2
2196	2021-04-01	4	5	6	8	10	11	13	15	17	18	20	21	23	24	25	2
2197	2021-04-03	1	2	3	4	7	8	10	11	13	14	15	16	17	18	21	0
2198	2021-04-05	1	4	5	7	9	11	12	13	15	17	18	20	21	22	23	1
2199	2021-04-06	1	2	5	6	7	9	12	14	15	17	18	19	20	23	24	3
2200	2021-04-07	1	2	4	6	8	9	10	11	13	14	16	17	19	23	25	10
2201	2021-04-08	1	3	5	6	7	8	9	10	13	14	16	18	19	21	24	0
2202	2021-04-09	1	5	9	10	13	14	15	16	17	18	20	21	22	24	25	4
2203	2021-04-10	2	3	5	7	10	12	13	14	18	20	21	22	23	24	25	1
2204	2021-04-12	1	2	3	4	5	6	9	11	12	13	16	18	20	23	24	1
2205	2021-04-13	1	2	5	6	7	9	10	12	14	17	18	19	22	24	25	3
2206	2021-04-14	1	2	3	4	6	8	12	13	15	16	17	20	21	23	25	2
2207	2021-04-15	3	5	6	7	8	9	10	11	12	13	14	17	20	22	25	1
2208	2021-04-16	4	5	9	10	11	12	14	15	16	18	19	21	22	23	24	4
2209	2021-04-17	1	4	5	6	7	9	11	12	14	15	16	17	21	22	23	0
2210	2021-04-19	1	3	4	8	9	10	13	14	15	16	17	19	22	23	25	4
2211	2021-04-20	4	5	8	9	10	11	12	13	17	18	19	20	21	22	23	12
2212	2021-04-22	1	4	5	6	7	8	10	11	12	13	17	18	20	21	22	2
2213	2021-04-23	3	4	5	6	7	8	10	16	17	18	19	20	22	24	25	0
2214	2021-04-24	3	6	7	9	11	12	13	14	16	17	19	21	22	23	25	0
2215	2021-04-26	2	3	4	6	7	9	11	13	15	17	18	19	23	24	25	11
2216	2021-04-27	1	2	3	4	6	9	10	13	14	15	17	19	21	22	25	2
2217	2021-04-28	1	6	7	9	10	11	14	15	16	18	19	20	22	23	25	1
2218	2021-04-29	3	4	5	6	11	12	13	15	16	17	18	20	21	23	24	0
2219	2021-04-30	2	5	6	7	8	10	13	15	16	17	19	20	22	24	25	3
2220	2021-05-03	1	5	6	7	8	9	10	12	13	16	18	20	23	24	25	3
2221	2021-05-04	1	2	3	4	5	8	9	10	12	13	16	18	20	22	23	1
2222	2021-05-05	2	4	5	6	7	8	9	10	12	13	14	19	22	23	24	1
2223	2021-05-06	1	4	5	7	8	9	11	12	14	18	20	21	22	24	25	0
2224	2021-05-07	3	5	6	7	9	10	12	13	14	15	18	19	20	23	24	3
2225	2021-05-08	2	3	4	7	8	9	10	11	13	17	19	21	22	23	25	0
2226	2021-05-10	1	3	4	5	9	10	12	13	14	15	16	17	19	21	22	4
2227	2021-05-11	2	3	7	8	9	10	11	12	15	17	20	21	22	23	24	0
2228	2021-05-12	1	4	5	6	7	11	12	13	16	17	18	19	20	22	23	2
2229	2021-05-13	1	2	3	4	7	8	9	10	14	17	19	20	23	24	25	1
2230	2021-05-14	3	4	6	8	9	10	11	13	14	15	17	18	19	20	24	2
2231	2021-05-15	1	4	5	6	7	8	10	11	16	18	19	20	22	24	25	2
2232	2021-05-17	2	4	5	6	8	9	12	13	14	19	20	22	23	24	25	5
2233	2021-05-18	1	2	6	7	8	9	10	12	13	14	15	16	20	21	25	0
2234	2021-05-19	1	2	3	6	7	11	14	15	17	18	20	21	22	24	25	3
2235	2021-05-20	2	4	6	7	8	10	11	12	16	17	19	21	22	23	25	2
2236	2021-05-21	2	3	4	5	8	9	10	11	12	17	18	19	21	22	24	1
2237	2021-05-22	3	5	6	9	12	13	14	15	17	19	20	21	22	23	25	2
2238	2021-05-24	1	3	4	5	6	7	10	11	14	15	16	18	19	20	25	2
2239	2021-05-25	1	2	5	6	7	10	13	14	15	16	17	20	22	23	24	3
2240	2021-05-26	2	3	4	6	7	9	11	12	13	15	17	18	19	20	25	2
2241	2021-05-27	1	3	7	8	9	10	13	15	16	18	20	21	23	24	25	0
2242	2021-05-28	3	4	5	8	9	10	11	12	16	17	19	20	21	22	25	1
2243	2021-05-29	1	5	6	8	10	11	14	15	17	18	19	20	21	24	25	0
2244	2021-05-31	4	5	6	8	9	10	11	13	14	15	16	17	21	23	25	1
2245	2021-06-01	2	5	6	7	8	13	14	16	17	18	21	22	23	24	25	2
2246	2021-06-02	2	3	4	5	7	8	10	11	12	13	14	15	18	20	25	1
2247	2021-06-04	1	3	6	7	8	9	10	12	17	18	19	20	22	24	25	3
2248	2021-06-05	1	2	4	6	7	8	10	11	12	13	14	16	17	23	25	2
2249	2021-06-07	2	6	11	12	14	15	16	17	18	19	21	22	23	24	25	1
2250	2021-06-08	4	5	6	10	12	13	14	18	19	20	21	22	23	24	25	2
2251	2021-06-09	2	4	5	7	9	12	13	14	15	18	19	21	22	23	24	4
2252	2021-06-10	1	5	6	8	9	10	12	16	17	19	20	21	22	24	25	0
2253	2021-06-11	2	3	5	6	7	8	12	14	15	16	18	19	20	23	25	4
2254	2021-06-12	2	3	5	6	7	8	10	12	13	14	19	20	21	24	25	3
2255	2021-06-14	1	3	6	7	8	11	14	15	17	19	20	21	22	24	25	0
2256	2021-06-15	1	3	4	5	6	8	9	10	11	12	13	16	20	23	24	3
2257	2021-06-16	1	4	5	6	7	8	9	11	12	13	15	18	20	22	24	3
2258	2021-06-17	3	5	6	7	8	10	11	14	15	16	17	19	20	22	24	4
2259	2021-06-18	5	6	7	8	9	10	14	16	18	19	20	22	23	24	25	0
2260	2021-06-19	1	2	4	6	9	10	11	12	14	16	17	20	22	23	25	5
2261	2021-06-21	1	3	4	6	7	8	9	12	13	17	18	22	23	24	25	2
2262	2021-06-22	2	3	4	6	7	8	9	10	11	19	20	21	22	24	25	1
2263	2021-06-23	1	2	3	7	8	10	11	14	15	16	18	19	22	23	25	5
2264	2021-06-24	2	3	4	5	6	8	9	10	12	14	15	16	17	18	19	2
2265	2021-06-25	2	4	5	7	9	10	12	13	14	15	16	18	19	20	22	2
2266	2021-06-26	1	3	5	9	10	11	12	13	15	16	19	21	23	24	25	3
2267	2021-06-28	2	3	5	6	7	9	10	13	14	15	17	19	20	22	24	4
2268	2021-06-29	1	3	8	10	11	12	14	15	18	19	20	21	23	24	25	0
2269	2021-06-30	2	3	4	5	7	9	10	11	13	14	17	20	21	22	25	2
2270	2021-07-01	1	4	5	6	8	10	11	15	16	18	19	20	21	22	25	3
2271	2021-07-02	2	3	5	6	7	8	10	11	16	17	18	19	21	23	24	3
2272	2021-07-03	1	2	5	7	8	10	11	13	14	15	16	18	21	22	24	7
2273	2021-07-05	1	2	4	6	7	8	9	10	11	12	13	17	21	23	25	2
2274	2021-07-06	2	3	4	6	8	9	10	12	16	17	19	20	22	23	24	2
2275	2021-07-07	1	2	4	5	7	10	11	12	13	14	15	16	19	20	21	0
2276	2021-07-08	1	4	5	7	10	12	13	14	15	16	17	18	19	20	21	2
2277	2021-07-09	2	3	5	10	11	12	13	14	15	17	18	21	22	23	24	0
2278	2021-07-10	2	4	6	7	10	11	12	13	14	16	17	18	20	21	24	3
2279	2021-07-12	1	3	5	8	10	11	13	14	15	16	17	18	21	22	25	3
2280	2021-07-13	2	3	4	7	9	12	16	18	19	20	21	22	23	24	25	1
2281	2021-07-14	2	3	5	6	7	9	10	11	14	15	16	17	18	20	21	3
2282	2021-07-15	1	2	4	5	6	10	11	12	13	14	18	20	21	23	24	2
2283	2021-07-16	1	2	5	7	9	10	11	15	17	18	19	20	22	23	25	1
2284	2021-07-17	1	3	4	8	9	10	11	14	15	17	19	20	21	23	24	4
2285	2021-07-19	1	2	6	7	8	10	12	13	15	16	18	20	22	23	24	1
2286	2021-07-20	2	3	6	8	11	12	13	15	16	17	20	22	23	24	25	1
2287	2021-07-21	1	3	4	6	7	9	10	11	12	14	16	17	18	19	25	0
2288	2021-07-22	1	2	3	5	7	9	10	11	12	14	19	20	21	22	25	3
2289	2021-07-23	1	2	5	7	8	10	12	14	15	16	17	19	20	22	25	1
2290	2021-07-24	2	3	4	5	8	9	10	11	13	15	19	22	23	24	25	3
2291	2021-07-26	1	5	6	7	9	12	13	14	16	17	19	20	21	24	25	11
2292	2021-07-27	3	5	6	7	9	10	11	12	13	18	19	20	22	23	24	2
2293	2021-07-28	1	2	4	5	8	9	11	12	13	16	18	19	20	21	22	2
2294	2021-07-29	6	7	8	10	11	12	15	16	17	18	19	22	23	24	25	1
2295	2021-07-30	1	2	6	9	10	11	12	13	14	16	17	20	23	24	25	1
2296	2021-07-31	2	3	4	8	9	10	12	14	15	16	18	21	22	23	24	1
2297	2021-08-02	2	3	7	9	11	13	14	15	17	18	20	21	22	24	25	4
2298	2021-08-03	1	3	4	6	10	12	13	14	16	18	20	21	23	24	25	1
2299	2021-08-04	1	3	5	7	8	9	11	12	14	15	16	20	21	23	25	6
2300	2021-08-05	1	2	3	4	8	9	13	15	16	17	19	22	23	24	25	0
2301	2021-08-06	3	5	9	10	12	13	15	16	17	18	19	20	22	24	25	2
2302	2021-08-07	3	4	6	7	8	10	11	12	13	14	16	17	18	20	21	1
2303	2021-08-09	1	3	5	7	8	10	11	12	15	18	19	20	21	22	24	9
2304	2021-08-10	1	2	6	8	9	11	12	13	14	16	18	20	21	22	24	1
2305	2021-08-11	1	5	7	8	10	11	14	16	17	18	19	22	23	24	25	0
2306	2021-08-12	1	4	5	6	7	8	9	11	14	15	16	18	20	21	22	1
2307	2021-08-13	1	4	5	6	8	9	11	12	13	14	15	17	19	20	23	0
2308	2021-08-14	1	2	3	4	6	10	15	17	18	19	20	22	23	24	25	1
2309	2021-08-16	1	3	4	7	9	10	11	12	13	17	18	19	22	24	25	8
2310	2021-08-17	1	3	5	6	7	10	11	13	16	18	20	22	23	24	25	6
2311	2021-08-18	1	3	4	5	9	10	12	13	14	15	18	19	20	21	25	0
2312	2021-08-19	1	2	3	6	7	10	11	12	14	15	18	20	21	22	25	2
2313	2021-08-20	4	5	6	7	8	10	11	12	14	15	18	19	20	22	25	0
2314	2021-08-21	1	2	7	8	9	11	13	14	15	17	19	20	23	24	25	5
2315	2021-08-23	3	7	8	11	12	13	14	16	17	18	19	21	22	23	25	0
2316	2021-08-24	2	3	4	5	6	9	10	13	14	15	16	17	19	24	25	3
2317	2021-08-25	1	2	3	5	6	7	9	14	15	16	17	20	21	23	25	0
2318	2021-08-26	2	5	6	7	8	11	13	16	17	18	19	20	21	24	25	0
2319	2021-08-27	2	3	8	12	13	14	15	16	17	19	21	22	23	24	25	1
2320	2021-09-11	1	2	3	5	6	9	12	13	15	17	21	22	23	24	25	57
2321	2021-09-13	1	2	6	7	8	9	10	12	13	14	15	17	22	23	24	0
2322	2021-09-14	1	2	5	6	7	11	12	13	14	16	18	21	22	23	24	0
2323	2021-09-15	1	4	7	8	11	13	14	16	17	19	21	22	23	24	25	5
2324	2021-09-16	1	2	3	5	8	9	10	11	13	14	16	17	19	20	25	1
2325	2021-09-17	1	2	3	4	5	6	7	8	9	14	17	18	21	23	25	1
2326	2021-09-18	2	3	4	5	6	8	11	12	13	14	16	20	22	23	25	1
2327	2021-09-20	1	2	3	4	6	7	8	11	13	15	17	19	20	21	25	1
2328	2021-09-21	3	4	5	6	7	8	9	11	14	15	17	20	21	23	25	2
2329	2021-09-22	1	3	4	5	10	11	12	13	14	16	17	18	19	20	24	2
2330	2021-09-23	2	4	5	8	10	11	12	13	14	15	16	18	20	22	23	4
2331	2021-09-24	3	4	5	7	8	9	10	13	14	15	16	20	22	24	25	3
2332	2021-09-25	1	4	6	7	8	9	10	11	14	17	18	20	22	24	25	0
2333	2021-09-27	1	4	6	7	8	9	10	11	13	15	17	18	19	20	23	2
2334	2021-09-28	2	3	5	7	13	14	16	17	18	20	21	22	23	24	25	2
2335	2021-09-29	2	3	4	5	6	7	9	13	15	16	19	21	22	24	25	0
2336	2021-09-30	1	3	4	6	10	11	12	13	14	16	17	18	20	22	25	1
2337	2021-10-01	1	2	4	5	6	8	9	10	11	14	16	19	20	21	24	3
2338	2021-10-02	1	2	3	4	5	7	8	10	11	12	13	15	16	19	21	1
2339	2021-10-04	1	3	6	7	8	10	11	14	18	19	20	22	23	24	25	2
2340	2021-10-05	2	5	7	8	9	11	12	13	14	17	18	20	22	23	25	6
2341	2021-10-06	2	4	5	7	9	11	12	14	15	19	20	21	22	24	25	3
2342	2021-10-07	1	2	3	4	9	10	13	15	16	18	19	20	21	22	25	0
2343	2021-10-08	1	2	5	9	12	15	16	17	18	19	20	22	23	24	25	1
2344	2021-10-09	1	3	4	6	7	9	10	11	12	13	16	17	19	20	21	2
2345	2021-10-11	3	6	7	9	10	11	12	14	16	17	19	20	23	24	25	2
2346	2021-10-13	1	4	5	8	10	11	12	14	16	17	18	19	21	22	25	2
2347	2021-10-14	2	3	5	6	8	9	11	13	15	16	17	19	21	24	25	11
2348	2021-10-15	1	2	5	8	9	11	13	14	15	17	19	20	22	23	24	5
2349	2021-10-16	2	5	6	9	10	11	12	15	16	17	18	20	21	22	23	0
2350	2021-10-18	2	3	4	5	6	7	8	9	10	15	17	19	21	22	25	1
2351	2021-10-19	1	3	4	5	6	7	8	9	10	12	14	15	20	23	24	1
2352	2021-10-20	3	4	7	8	11	12	15	16	17	18	20	22	23	24	25	1
2353	2021-10-21	1	2	3	7	8	12	13	14	15	16	18	20	23	24	25	2
2354	2021-10-22	1	2	5	6	9	10	11	12	13	16	17	18	19	20	21	4
2355	2021-10-23	2	3	4	5	6	8	9	10	11	12	18	19	20	21	25	1
2356	2021-10-25	3	5	6	7	8	9	10	13	16	18	19	20	21	22	25	0
2357	2021-10-26	1	2	4	6	7	8	9	10	12	13	14	20	23	24	25	3
2358	2021-10-27	4	5	6	7	8	11	12	14	15	16	17	20	23	24	25	1
2359	2021-10-28	3	4	5	6	7	12	14	15	17	19	20	21	22	23	24	1
2360	2021-10-29	3	5	6	8	11	12	13	15	17	18	19	21	22	23	25	1
2361	2021-10-30	3	4	5	7	10	12	13	14	16	18	19	21	22	23	24	2
2362	2021-11-01	1	4	6	7	8	10	11	12	14	18	19	21	22	24	25	0
2363	2021-11-03	1	2	3	4	8	11	12	13	14	15	20	21	22	24	25	1
2364	2021-11-04	1	5	6	7	8	9	10	11	13	15	16	17	18	22	24	0
2365	2021-11-05	2	7	8	9	11	14	15	16	17	18	20	21	22	23	25	0
2366	2021-11-06	1	3	5	7	10	11	13	15	16	18	19	20	21	22	25	19
2367	2021-11-08	2	3	5	8	9	10	11	12	14	16	17	19	22	23	25	10
2368	2021-11-09	2	3	4	7	8	9	10	11	12	14	16	18	19	22	23	2
2369	2021-11-10	2	3	5	8	9	10	11	12	13	14	15	22	23	24	25	1
2370	2021-11-11	1	7	8	9	10	11	12	13	14	16	19	20	21	24	25	1
2371	2021-11-12	3	5	6	8	11	12	13	14	15	19	21	22	23	24	25	0
2372	2021-11-13	1	2	4	5	7	8	11	13	14	15	19	20	21	22	24	0
2373	2021-11-16	2	3	4	5	6	7	8	10	13	14	15	17	21	24	25	1
2374	2021-11-17	1	3	5	7	9	10	14	15	16	17	20	21	22	23	25	1
2375	2021-11-18	4	5	8	11	12	13	14	17	18	19	20	21	22	23	25	1
2376	2021-11-19	1	2	4	6	8	9	14	15	16	17	19	21	22	23	24	2
2377	2021-11-20	1	2	3	4	5	6	8	9	10	12	14	18	19	20	24	3
2378	2021-11-22	1	2	3	4	5	10	12	14	15	16	17	21	23	24	25	1
2379	2021-11-23	1	2	3	5	7	8	9	11	12	15	16	20	23	24	25	3
2380	2021-11-24	1	3	5	6	7	9	10	11	13	14	15	17	21	22	24	1
2381	2021-11-25	1	2	5	8	9	10	11	14	15	18	19	20	23	24	25	4
2382	2021-11-26	1	2	3	4	5	6	7	9	10	11	14	15	19	21	24	0
2383	2021-11-27	1	2	3	7	9	11	12	13	14	15	16	18	20	22	24	3
2384	2021-11-29	1	3	4	5	7	9	10	11	13	15	16	18	20	22	24	38
2385	2021-11-30	1	2	3	5	10	11	12	13	16	17	18	21	22	23	24	0
2386	2021-12-01	2	3	6	7	8	10	12	13	14	15	16	17	18	23	24	6
2387	2021-12-02	2	4	5	8	9	10	12	16	17	19	20	21	22	24	25	3
2388	2021-12-03	3	4	5	7	8	9	10	12	13	15	16	17	19	23	25	4
2389	2021-12-04	4	5	6	8	9	10	11	12	18	19	21	22	23	24	25	0
2390	2021-12-06	1	2	3	4	5	6	10	11	15	19	20	21	22	23	24	8
2391	2021-12-07	3	4	5	6	8	9	11	12	14	18	19	21	22	24	25	1
2392	2021-12-08	1	2	5	6	8	11	12	13	16	17	18	22	23	24	25	0
2393	2021-12-09	2	3	5	10	11	12	15	16	17	19	20	21	22	23	25	0
2394	2021-12-10	1	4	6	7	9	10	12	17	18	19	20	21	22	23	25	4
2395	2021-12-11	1	2	5	6	7	10	13	14	15	17	18	19	20	23	25	2
2396	2021-12-13	1	3	4	7	10	12	13	16	17	18	20	22	23	24	25	4
2397	2021-12-14	2	4	6	7	9	10	13	14	15	17	18	20	21	22	25	1
2398	2021-12-15	2	3	4	5	6	9	10	12	13	14	15	20	22	23	25	0
2399	2021-12-16	1	2	4	5	7	9	12	14	15	16	17	19	20	21	25	0
2400	2021-12-17	2	3	5	9	10	11	12	13	14	15	16	20	21	23	25	3
2401	2021-12-18	1	4	5	6	7	9	10	11	12	15	16	19	20	22	23	4
2402	2021-12-20	1	2	3	4	5	6	9	10	11	13	14	18	20	23	25	3
2403	2021-12-21	1	4	5	8	10	12	16	17	18	19	20	21	23	24	25	1
2404	2021-12-22	1	2	3	4	5	7	10	11	12	14	15	22	23	24	25	1
2405	2021-12-23	2	3	4	5	6	7	8	9	11	15	17	18	19	21	23	1
2406	2021-12-24	1	2	3	5	6	8	10	12	15	17	20	21	23	24	25	3
2407	2021-12-27	1	2	3	4	6	8	9	11	12	17	18	19	20	23	24	1
2408	2021-12-28	1	3	4	6	8	9	10	11	12	13	16	19	21	22	23	4
2409	2021-12-29	1	2	5	6	7	8	9	10	12	16	19	20	21	22	25	3
2410	2021-12-30	1	2	3	4	7	9	10	13	14	16	17	19	20	22	23	3
2411	2021-12-31	1	2	3	4	5	7	8	9	10	12	13	14	17	19	24	7
2412	2022-01-03	1	4	6	7	8	9	11	13	14	15	17	18	19	21	24	3
2413	2022-01-04	1	3	4	5	6	7	8	9	12	15	16	18	20	21	25	2
2414	2022-01-05	3	4	5	6	7	8	9	10	11	13	16	17	19	21	24	4
2415	2022-01-06	2	6	7	9	10	11	12	13	14	19	20	21	22	23	25	0
2416	2022-01-07	4	5	6	7	11	13	14	15	16	17	18	20	21	22	25	1
2417	2022-01-08	1	4	6	7	8	9	10	11	14	15	17	18	22	23	25	1
2418	2022-01-10	3	4	7	8	11	12	13	14	16	17	18	19	20	23	24	4
2419	2022-01-11	2	3	5	6	10	11	12	13	15	18	19	21	22	23	24	0
2420	2022-01-12	1	3	5	9	10	11	12	13	14	15	18	21	22	24	25	2
2421	2022-01-13	3	4	5	6	7	10	13	14	16	17	19	20	21	22	24	3
2422	2022-01-14	1	2	3	4	5	7	8	10	11	12	14	17	18	22	25	1
2423	2022-01-15	3	4	5	7	8	9	10	11	15	16	17	18	19	20	24	1
2424	2022-01-17	1	3	4	5	6	9	10	11	14	15	16	20	22	23	25	1
2425	2022-01-18	1	3	4	5	6	10	11	13	15	19	20	21	22	24	25	1
2426	2022-01-19	1	2	3	6	7	8	9	11	13	19	20	21	22	23	24	2
2427	2022-01-20	1	3	6	8	11	15	16	17	18	19	20	21	22	23	24	1
2428	2022-01-21	2	5	6	7	9	10	11	12	15	16	17	18	20	24	25	0
2429	2022-01-22	1	4	5	6	8	9	10	11	12	14	15	19	20	21	24	2
2430	2022-01-24	1	4	5	7	8	10	11	12	14	17	18	19	20	21	23	7
2431	2022-01-25	4	6	7	8	9	10	11	12	13	14	17	18	19	22	25	0
2432	2022-01-26	3	5	6	7	8	9	11	12	13	14	15	19	20	21	25	1
2433	2022-01-27	1	3	4	5	6	9	10	11	12	13	15	18	20	21	24	4
2434	2022-01-28	1	4	7	11	13	14	16	17	19	20	21	22	23	24	25	1
2435	2022-01-29	2	4	5	6	7	10	11	12	13	15	16	19	20	21	22	4
2436	2022-01-31	2	3	4	6	8	9	12	14	15	16	17	19	20	21	23	1
2437	2022-02-01	1	2	7	8	9	10	11	13	14	15	17	18	20	21	25	1
2438	2022-02-02	1	4	5	6	8	11	12	13	14	16	18	19	22	23	24	2
2439	2022-02-03	2	5	7	8	9	10	11	13	15	16	17	20	21	23	25	5
2440	2022-02-04	3	4	5	6	8	9	11	14	16	18	20	21	22	24	25	4
2441	2022-02-05	1	3	7	8	9	10	11	13	15	18	20	21	22	24	25	3
2442	2022-02-07	1	6	7	10	11	12	14	15	16	17	18	19	21	22	25	2
2443	2022-02-08	2	3	5	6	7	9	10	14	15	16	17	20	21	22	23	3
2444	2022-02-09	3	4	5	6	8	9	10	11	12	14	16	17	18	19	25	2
2445	2022-02-10	1	2	5	6	7	8	10	11	13	15	18	21	22	23	25	0
2446	2022-02-11	4	6	8	11	12	13	15	17	19	20	21	22	23	24	25	2
2447	2022-02-12	2	3	4	5	8	13	14	15	16	17	18	19	20	22	23	1
2448	2022-02-14	2	3	4	5	6	8	9	11	12	14	16	19	20	22	24	2
2449	2022-02-15	1	2	4	8	9	11	13	14	15	16	17	18	20	21	22	0
2450	2022-02-16	1	2	3	4	5	7	8	11	13	14	15	18	23	24	25	1
2451	2022-02-17	3	4	5	7	9	10	11	15	18	19	20	22	23	24	25	1
2452	2022-02-18	1	6	7	8	9	11	15	17	18	20	21	22	23	24	25	0
2453	2022-02-19	4	5	7	8	10	12	13	16	17	19	21	22	23	24	25	1
2454	2022-02-21	1	2	4	6	8	9	10	12	15	16	20	21	23	24	25	1
2455	2022-02-22	1	2	3	8	10	11	12	13	14	16	19	22	23	24	25	3
2456	2022-02-23	4	5	6	8	9	10	12	13	14	17	18	19	21	24	25	0
2457	2022-02-24	1	3	5	8	10	11	14	15	16	18	20	22	23	24	25	5
2458	2022-02-25	1	2	3	4	6	8	10	11	12	16	18	21	22	24	25	1
2459	2022-02-26	1	3	5	6	11	12	14	15	17	18	19	20	21	23	25	1
2460	2022-03-02	1	2	3	4	5	6	9	11	12	14	15	18	19	23	25	3
2461	2022-03-03	1	2	5	7	10	13	14	15	17	18	19	20	21	22	24	1
2462	2022-03-04	3	4	5	9	10	11	12	14	15	16	17	18	20	22	25	2
2463	2022-03-05	5	7	9	10	11	12	13	14	15	17	18	20	21	23	25	1
2464	2022-03-07	1	5	6	7	9	11	13	16	17	20	21	22	23	24	25	3
2465	2022-03-08	2	5	6	7	8	10	11	13	14	15	17	18	19	21	25	2
2466	2022-03-09	1	2	5	7	8	9	12	13	14	17	19	20	21	24	25	18
2467	2022-03-10	5	6	8	10	11	12	14	15	16	18	20	21	22	23	25	3
2468	2022-03-11	3	4	7	8	9	12	13	17	18	19	20	21	22	23	24	1
2469	2022-03-12	1	2	4	5	6	7	11	13	17	18	19	20	21	24	25	2
2470	2022-03-14	1	3	4	5	6	9	10	11	12	13	21	22	23	24	25	4
2471	2022-03-15	2	3	4	5	8	9	14	17	18	19	20	21	23	24	25	0
2472	2022-03-16	2	3	4	9	10	12	13	15	16	17	21	22	23	24	25	2
2473	2022-03-17	1	4	6	7	8	9	10	14	16	18	19	20	21	23	25	1
2474	2022-03-18	1	2	5	6	8	9	11	14	15	17	19	20	23	24	25	3
2475	2022-03-19	1	3	4	5	6	7	11	13	15	16	18	19	22	24	25	2
2476	2022-03-21	1	6	9	10	11	12	13	15	16	17	18	21	22	23	24	0
2477	2022-03-22	1	2	3	5	7	8	9	10	13	14	15	18	19	20	24	4
2478	2022-03-23	1	5	7	8	10	11	12	14	15	16	21	22	23	24	25	1
2479	2022-03-24	2	3	4	5	7	11	12	14	17	19	20	21	23	24	25	1
2480	2022-03-25	1	2	5	6	7	9	10	12	13	14	15	16	17	21	24	3
2481	2022-03-26	2	3	5	6	7	9	10	13	14	15	17	18	20	21	25	1
2482	2022-03-28	3	5	6	7	9	11	12	13	14	16	17	20	21	24	25	0
2483	2022-03-29	2	3	6	7	8	10	13	14	15	16	19	20	22	23	25	7
2484	2022-03-30	4	5	6	8	10	11	12	14	15	17	19	21	22	23	25	1
2485	2022-03-31	1	2	3	8	10	12	14	15	17	18	20	21	23	24	25	2
2486	2022-04-01	1	2	4	5	8	9	10	11	12	18	19	20	23	24	25	4
2487	2022-04-02	1	2	6	8	10	11	12	13	14	16	18	20	22	23	24	2
2488	2022-04-04	1	2	4	5	6	7	9	11	12	13	16	20	21	22	24	0
2489	2022-04-05	1	4	5	7	8	10	11	13	14	16	18	21	22	23	24	3
2490	2022-04-06	1	3	4	5	6	10	12	13	14	15	16	19	20	24	25	1
2491	2022-04-07	1	2	3	4	5	6	9	11	14	17	18	19	21	22	24	0
2492	2022-04-08	4	7	8	9	10	11	12	13	14	15	17	20	22	23	24	1
2493	2022-04-09	2	3	6	7	9	10	11	12	14	15	16	18	20	21	25	1
2494	2022-04-11	1	2	4	5	6	8	9	10	12	13	16	18	23	24	25	1
2495	2022-04-12	3	5	9	10	12	13	14	15	16	17	18	19	21	24	25	0
2496	2022-04-13	2	3	4	8	9	10	11	13	17	18	20	22	23	24	25	3
2497	2022-04-14	2	6	7	8	9	11	12	14	15	18	19	20	22	23	25	2
2498	2022-04-16	1	2	5	6	7	8	9	11	12	17	18	19	20	22	25	0
2499	2022-04-18	2	3	4	5	7	8	11	12	14	16	17	19	20	22	23	0
2500	2022-04-19	3	4	5	6	9	11	12	13	14	15	17	18	19	21	25	0
2501	2022-04-20	1	2	3	4	5	6	7	8	9	11	19	20	22	23	25	0
2502	2022-04-22	2	3	4	5	9	11	12	13	15	18	20	21	23	24	25	0
2503	2022-04-23	1	2	3	4	6	7	9	10	11	12	13	18	19	20	22	0
2504	2022-04-25	3	5	7	8	12	13	14	15	16	17	20	21	22	23	24	1
2505	2022-04-26	1	2	3	4	6	8	9	10	17	18	19	21	23	24	25	1
2506	2022-04-27	3	4	5	8	9	10	11	14	15	16	18	19	20	22	25	2
2507	2022-04-28	3	4	5	7	8	9	10	11	13	14	15	16	19	20	25	1
2508	2022-04-29	1	2	5	6	7	10	11	12	14	15	17	18	19	20	21	3
2509	2022-04-30	2	3	4	5	9	10	11	12	13	14	19	21	22	23	25	1
2510	2022-05-02	1	2	5	7	11	13	14	16	17	19	20	22	23	24	25	2
2511	2022-05-03	1	3	4	5	6	8	9	11	15	16	18	21	23	24	25	3
2512	2022-05-04	1	2	3	7	9	10	12	14	15	16	18	19	20	21	23	2
2513	2022-05-05	2	3	4	6	7	9	11	12	16	17	19	20	21	23	24	2
2514	2022-05-06	2	3	5	6	7	8	9	12	14	15	16	18	19	21	24	2
2515	2022-05-07	4	5	7	8	9	11	12	14	15	16	19	21	22	24	25	1
2516	2022-05-09	1	2	3	5	7	8	10	11	14	15	16	17	21	22	24	2
2517	2022-05-10	1	2	3	5	6	9	10	12	14	15	16	20	21	23	24	2
2518	2022-05-11	1	2	4	5	6	8	11	13	14	15	20	22	23	24	25	1
2519	2022-05-12	2	3	4	5	8	10	11	12	13	14	18	19	22	24	25	1
2520	2022-05-13	1	2	4	5	6	7	8	10	14	15	16	18	23	24	25	3
2521	2022-05-14	2	3	4	6	7	8	13	14	16	17	18	21	22	24	25	4
2522	2022-05-16	1	2	3	5	9	10	12	13	15	16	18	19	21	22	25	4
2523	2022-05-17	1	4	5	6	7	10	11	12	14	15	17	18	20	23	24	1
2524	2022-05-18	1	2	3	5	6	7	12	14	15	16	19	20	23	24	25	1
2525	2022-05-19	4	6	10	11	12	13	16	17	18	19	20	21	23	24	25	2
2526	2022-05-20	1	2	6	8	11	12	13	14	16	17	19	20	22	23	24	2
2527	2022-05-21	1	2	5	6	9	11	12	13	14	17	18	19	20	21	23	5
2528	2022-05-23	2	3	5	7	8	9	10	11	12	13	15	20	22	23	24	4
2529	2022-05-24	3	5	6	8	9	11	12	13	14	16	18	21	22	24	25	2
2530	2022-05-25	1	2	4	6	7	8	9	11	13	15	21	22	23	24	25	0
2531	2022-05-26	1	2	3	4	5	7	8	11	12	16	17	18	20	21	25	3
2532	2022-05-27	1	2	3	4	6	9	10	12	13	14	16	17	18	22	25	1
2533	2022-05-28	4	7	8	10	11	12	15	16	17	18	19	22	23	24	25	0
2534	2022-05-30	7	8	10	11	12	14	15	16	17	18	20	21	22	23	25	5
2535	2022-05-31	5	6	7	8	11	12	13	14	15	16	18	20	22	24	25	0
2536	2022-06-01	1	2	4	6	9	12	13	15	16	17	18	19	21	23	25	4
2537	2022-06-02	2	4	5	6	7	9	10	12	14	16	18	19	22	23	24	0
2538	2022-06-03	1	2	4	5	6	8	9	13	14	16	17	21	22	24	25	0
2539	2022-06-04	1	3	4	5	6	9	10	13	16	17	18	20	23	24	25	0
2540	2022-06-06	1	3	5	6	7	8	11	12	14	18	20	21	22	23	24	0
2541	2022-06-07	2	4	7	8	11	12	13	14	16	17	18	19	20	22	25	0
2542	2022-06-08	3	5	8	10	12	13	15	16	18	19	20	21	22	24	25	0
2543	2022-06-09	3	5	6	7	8	9	11	12	14	17	18	19	20	24	25	0
2544	2022-06-10	3	5	6	7	8	10	11	12	13	15	18	20	21	23	24	0
2545	2022-06-11	1	2	3	5	7	9	10	13	14	15	16	19	20	21	24	0
2546	2022-06-13	2	4	5	7	8	9	10	11	14	17	20	21	22	24	25	0
2547	2022-06-14	1	2	5	9	10	12	15	16	18	19	21	22	23	24	25	0
2548	2022-06-15	1	2	3	4	5	8	9	11	13	15	16	18	19	23	25	0
2549	2022-06-17	1	2	4	5	6	7	9	11	16	17	19	21	22	24	25	0
2550	2022-06-18	1	2	6	7	9	10	12	13	17	18	20	21	23	24	25	0
2551	2022-06-20	1	2	6	9	10	11	12	14	15	16	18	20	21	22	25	0
2552	2022-06-21	1	3	4	5	9	10	12	13	14	15	17	18	21	24	25	0
2553	2022-06-22	1	2	4	5	7	8	9	11	13	14	17	18	19	21	25	0
2554	2022-06-23	2	3	4	8	10	11	13	15	16	17	18	19	20	22	24	0
2555	2022-06-24	2	3	4	6	7	8	11	12	16	17	18	21	22	23	25	0
2556	2022-06-25	1	2	5	10	11	12	15	17	18	20	21	22	23	24	25	0
2557	2022-06-27	2	3	4	5	6	7	8	9	10	11	12	17	18	21	22	0
2558	2022-06-28	3	4	5	6	10	12	14	15	16	17	20	21	22	24	25	0
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add user	1	add_user
2	Can change user	1	change_user
3	Can delete user	1	delete_user
4	Can view user	1	view_user
5	Can add sorteio	2	add_sorteio
6	Can change sorteio	2	change_sorteio
7	Can delete sorteio	2	delete_sorteio
8	Can view sorteio	2	view_sorteio
9	Can add meus jogos	3	add_meusjogos
10	Can change meus jogos	3	change_meusjogos
11	Can delete meus jogos	3	delete_meusjogos
12	Can view meus jogos	3	view_meusjogos
13	Can add log entry	4	add_logentry
14	Can change log entry	4	change_logentry
15	Can delete log entry	4	delete_logentry
16	Can view log entry	4	view_logentry
17	Can add permission	5	add_permission
18	Can change permission	5	change_permission
19	Can delete permission	5	delete_permission
20	Can view permission	5	view_permission
21	Can add group	6	add_group
22	Can change group	6	change_group
23	Can delete group	6	delete_group
24	Can view group	6	view_group
25	Can add content type	7	add_contenttype
26	Can change content type	7	change_contenttype
27	Can delete content type	7	delete_contenttype
28	Can view content type	7	view_contenttype
29	Can add session	8	add_session
30	Can change session	8	change_session
31	Can delete session	8	delete_session
32	Can view session	8	view_session
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
2	2022-06-28 02:03:14.277025+00	2557	2557	1	[{"added": {}}]	2	1
3	2022-06-29 17:19:25.531205+00	2558	2558	1	[{"added": {}}]	2	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	users	user
2	apploto	sorteio
3	apploto	meusjogos
4	admin	logentry
5	auth	permission
6	auth	group
7	contenttypes	contenttype
8	sessions	session
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2022-06-08 00:50:47.77515+00
2	contenttypes	0002_remove_content_type_name	2022-06-08 00:50:47.809276+00
3	auth	0001_initial	2022-06-08 00:50:48.015679+00
4	auth	0002_alter_permission_name_max_length	2022-06-08 00:50:48.037237+00
5	auth	0003_alter_user_email_max_length	2022-06-08 00:50:48.066336+00
6	auth	0004_alter_user_username_opts	2022-06-08 00:50:48.089351+00
7	auth	0005_alter_user_last_login_null	2022-06-08 00:50:48.118643+00
8	auth	0006_require_contenttypes_0002	2022-06-08 00:50:48.135298+00
9	auth	0007_alter_validators_add_error_messages	2022-06-08 00:50:48.160576+00
10	auth	0008_alter_user_username_max_length	2022-06-08 00:50:48.179178+00
11	auth	0009_alter_user_last_name_max_length	2022-06-08 00:50:48.196112+00
12	auth	0010_alter_group_name_max_length	2022-06-08 00:50:48.224036+00
13	auth	0011_update_proxy_permissions	2022-06-08 00:50:48.248218+00
14	auth	0012_alter_user_first_name_max_length	2022-06-08 00:50:48.27125+00
15	users	0001_initial	2022-06-08 00:50:48.439037+00
16	admin	0001_initial	2022-06-08 00:50:48.553195+00
17	admin	0002_logentry_remove_auto_add	2022-06-08 00:50:48.577073+00
18	admin	0003_logentry_add_action_flag_choices	2022-06-08 00:50:48.614183+00
19	apploto	0001_initial	2022-06-08 00:50:48.654619+00
20	apploto	0002_alter_sorteio_qtd_ganhadores_15	2022-06-08 00:50:48.681031+00
21	apploto	0003_alter_sorteio_qtd_ganhadores_15	2022-06-08 00:50:48.70483+00
22	apploto	0004_alter_sorteio_qtd_ganhadores_15_meusjogos	2022-06-08 00:50:48.753276+00
23	apploto	0005_alter_meusjogos_concurso	2022-06-08 00:50:48.829072+00
24	sessions	0001_initial	2022-06-08 00:50:48.889197+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
5tocgex3rmk54uwjm6dthp8opf773bcz	.eJxVjEEOwiAQRe_C2hDotAO4dN8zkAEGqRqalHZlvLtt0oVu_3vvv4WnbS1-a7z4KYmr0OLyuwWKT64HSA-q91nGua7LFOShyJM2Oc6JX7fT_Tso1MpegwFHGtEqY4yO4ABVIOqt5oA5Jk0qD7aj3jEid9lpBTt0KVrAAVF8vrmJNsE:1o5ZYk:8MS9fJUpe2ZT6s6NTlHxY6Uq1kjhdTfGzRIjdTCCICs	2022-07-10 21:12:46.946852+00
\.


--
-- Data for Name: users_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$320000$WZrHWh1BCn9ATtIWFwNUl3$lT10xNZCvaFyb1sW07IM1gBh1xMkkzihQz02xBtUHE4=	2022-06-26 21:12:46.944165+00	t	admin			alexdeitos01@gmail.com	t	t	2022-06-01 17:31:23.236986+00
\.


--
-- Data for Name: users_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: users_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 32, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 3, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 8, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 24, true);


--
-- Name: users_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_user_groups_id_seq', 1, false);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_user_id_seq', 1, true);


--
-- Name: users_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_user_user_permissions_id_seq', 1, false);


--
-- Name: apploto_meusjogos apploto_meusjogos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.apploto_meusjogos
    ADD CONSTRAINT apploto_meusjogos_pkey PRIMARY KEY (id);


--
-- Name: apploto_sorteio apploto_sorteio_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.apploto_sorteio
    ADD CONSTRAINT apploto_sorteio_pkey PRIMARY KEY (concurso);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: users_user_groups users_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_pkey PRIMARY KEY (id);


--
-- Name: users_user_groups users_user_groups_user_id_group_id_b88eab82_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_user_id_group_id_b88eab82_uniq UNIQUE (user_id, group_id);


--
-- Name: users_user users_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_pkey PRIMARY KEY (id);


--
-- Name: users_user_user_permissions users_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: users_user_user_permissions users_user_user_permissions_user_id_permission_id_43338c45_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_user_id_permission_id_43338c45_uniq UNIQUE (user_id, permission_id);


--
-- Name: users_user users_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_username_key UNIQUE (username);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: users_user_groups_group_id_9afc8d0e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_user_groups_group_id_9afc8d0e ON public.users_user_groups USING btree (group_id);


--
-- Name: users_user_groups_user_id_5f6f5a90; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_user_groups_user_id_5f6f5a90 ON public.users_user_groups USING btree (user_id);


--
-- Name: users_user_user_permissions_permission_id_0b93982e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_user_user_permissions_permission_id_0b93982e ON public.users_user_user_permissions USING btree (permission_id);


--
-- Name: users_user_user_permissions_user_id_20aca447; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_user_user_permissions_user_id_20aca447 ON public.users_user_user_permissions USING btree (user_id);


--
-- Name: users_user_username_06e46fe6_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_user_username_06e46fe6_like ON public.users_user USING btree (username varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_user_groups users_user_groups_group_id_9afc8d0e_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_group_id_9afc8d0e_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_user_groups users_user_groups_user_id_5f6f5a90_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_user_id_5f6f5a90_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_user_user_permissions users_user_user_perm_permission_id_0b93982e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_perm_permission_id_0b93982e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_user_user_permissions users_user_user_permissions_user_id_20aca447_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_user_id_20aca447_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database cluster dump complete
--

