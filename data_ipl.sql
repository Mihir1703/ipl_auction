--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1
-- Dumped by pg_dump version 14.1

-- Started on 2022-02-17 16:19:33

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
-- TOC entry 216 (class 1259 OID 18396)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 18395)
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
-- TOC entry 3498 (class 0 OID 0)
-- Dependencies: 215
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- TOC entry 218 (class 1259 OID 18405)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 18404)
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
-- TOC entry 3499 (class 0 OID 0)
-- Dependencies: 217
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- TOC entry 214 (class 1259 OID 18389)
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
-- TOC entry 213 (class 1259 OID 18388)
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
-- TOC entry 3500 (class 0 OID 0)
-- Dependencies: 213
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- TOC entry 220 (class 1259 OID 18412)
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
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


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 18421)
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 18420)
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- TOC entry 3501 (class 0 OID 0)
-- Dependencies: 221
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- TOC entry 219 (class 1259 OID 18411)
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- TOC entry 3502 (class 0 OID 0)
-- Dependencies: 219
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- TOC entry 224 (class 1259 OID 18428)
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 18427)
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 3503 (class 0 OID 0)
-- Dependencies: 223
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- TOC entry 226 (class 1259 OID 18487)
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
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 18486)
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
-- TOC entry 3504 (class 0 OID 0)
-- Dependencies: 225
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- TOC entry 212 (class 1259 OID 18380)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 18379)
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
-- TOC entry 3505 (class 0 OID 0)
-- Dependencies: 211
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- TOC entry 210 (class 1259 OID 18371)
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
-- TOC entry 209 (class 1259 OID 18370)
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
-- TOC entry 3506 (class 0 OID 0)
-- Dependencies: 209
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- TOC entry 227 (class 1259 OID 18516)
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 18567)
-- Name: user_info_loggedinuser; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_info_loggedinuser (
    id bigint NOT NULL,
    session_key character varying(32),
    user_id integer NOT NULL
);


ALTER TABLE public.user_info_loggedinuser OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 18566)
-- Name: user_info_loggedinuser_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_info_loggedinuser_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_info_loggedinuser_id_seq OWNER TO postgres;

--
-- TOC entry 3507 (class 0 OID 0)
-- Dependencies: 235
-- Name: user_info_loggedinuser_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_info_loggedinuser_id_seq OWNED BY public.user_info_loggedinuser.id;


--
-- TOC entry 229 (class 1259 OID 18526)
-- Name: user_info_player; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_info_player (
    id integer NOT NULL,
    base_price integer NOT NULL,
    batting_style character varying(100) NOT NULL,
    country character varying(20) NOT NULL,
    current_price integer NOT NULL,
    debut_year integer NOT NULL,
    profile text,
    name character varying(50) NOT NULL,
    player_img text,
    type character varying(50) NOT NULL,
    active boolean NOT NULL
);


ALTER TABLE public.user_info_player OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 18525)
-- Name: user_info_player_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_info_player_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_info_player_id_seq OWNER TO postgres;

--
-- TOC entry 3508 (class 0 OID 0)
-- Dependencies: 228
-- Name: user_info_player_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_info_player_id_seq OWNED BY public.user_info_player.id;


--
-- TOC entry 234 (class 1259 OID 18556)
-- Name: user_info_player_owner; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_info_player_owner (
    id integer NOT NULL,
    price integer NOT NULL,
    player_id_id integer,
    user_id_id integer NOT NULL
);


ALTER TABLE public.user_info_player_owner OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 18631)
-- Name: user_info_player_owner_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_info_player_owner_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_info_player_owner_id_seq OWNER TO postgres;

--
-- TOC entry 3509 (class 0 OID 0)
-- Dependencies: 237
-- Name: user_info_player_owner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_info_player_owner_id_seq OWNED BY public.user_info_player_owner.id;


--
-- TOC entry 231 (class 1259 OID 18535)
-- Name: user_info_start_bidding; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_info_start_bidding (
    id bigint NOT NULL,
    bid boolean NOT NULL
);


ALTER TABLE public.user_info_start_bidding OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 18534)
-- Name: user_info_start_bidding_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_info_start_bidding_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_info_start_bidding_id_seq OWNER TO postgres;

--
-- TOC entry 3510 (class 0 OID 0)
-- Dependencies: 230
-- Name: user_info_start_bidding_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_info_start_bidding_id_seq OWNED BY public.user_info_start_bidding.id;


--
-- TOC entry 233 (class 1259 OID 18547)
-- Name: user_info_user_data; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_info_user_data (
    id integer NOT NULL,
    status boolean NOT NULL,
    money integer NOT NULL,
    username_id integer NOT NULL
);


ALTER TABLE public.user_info_user_data OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 18546)
-- Name: user_info_user_data_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_info_user_data_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_info_user_data_id_seq OWNER TO postgres;

--
-- TOC entry 3511 (class 0 OID 0)
-- Dependencies: 232
-- Name: user_info_user_data_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_info_user_data_id_seq OWNED BY public.user_info_user_data.id;


--
-- TOC entry 3236 (class 2604 OID 18399)
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- TOC entry 3237 (class 2604 OID 18408)
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 3235 (class 2604 OID 18392)
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- TOC entry 3238 (class 2604 OID 18415)
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- TOC entry 3239 (class 2604 OID 18424)
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- TOC entry 3240 (class 2604 OID 18431)
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 3241 (class 2604 OID 18490)
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- TOC entry 3234 (class 2604 OID 18383)
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- TOC entry 3233 (class 2604 OID 18374)
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- TOC entry 3247 (class 2604 OID 18570)
-- Name: user_info_loggedinuser id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_info_loggedinuser ALTER COLUMN id SET DEFAULT nextval('public.user_info_loggedinuser_id_seq'::regclass);


--
-- TOC entry 3243 (class 2604 OID 18529)
-- Name: user_info_player id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_info_player ALTER COLUMN id SET DEFAULT nextval('public.user_info_player_id_seq'::regclass);


--
-- TOC entry 3246 (class 2604 OID 18632)
-- Name: user_info_player_owner id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_info_player_owner ALTER COLUMN id SET DEFAULT nextval('public.user_info_player_owner_id_seq'::regclass);


--
-- TOC entry 3244 (class 2604 OID 18538)
-- Name: user_info_start_bidding id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_info_start_bidding ALTER COLUMN id SET DEFAULT nextval('public.user_info_start_bidding_id_seq'::regclass);


--
-- TOC entry 3245 (class 2604 OID 18550)
-- Name: user_info_user_data id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_info_user_data ALTER COLUMN id SET DEFAULT nextval('public.user_info_user_data_id_seq'::regclass);


--
-- TOC entry 3471 (class 0 OID 18396)
-- Dependencies: 216
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- TOC entry 3473 (class 0 OID 18405)
-- Dependencies: 218
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3469 (class 0 OID 18389)
-- Dependencies: 214
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add player	7	add_player
26	Can change player	7	change_player
27	Can delete player	7	delete_player
28	Can view player	7	view_player
29	Can add start_ bidding	8	add_start_bidding
30	Can change start_ bidding	8	change_start_bidding
31	Can delete start_ bidding	8	delete_start_bidding
32	Can view start_ bidding	8	view_start_bidding
33	Can add user_ data	9	add_user_data
34	Can change user_ data	9	change_user_data
35	Can delete user_ data	9	delete_user_data
36	Can view user_ data	9	view_user_data
37	Can add player_ owner	10	add_player_owner
38	Can change player_ owner	10	change_player_owner
39	Can delete player_ owner	10	delete_player_owner
40	Can view player_ owner	10	view_player_owner
41	Can add logged in user	11	add_loggedinuser
42	Can change logged in user	11	change_loggedinuser
43	Can delete logged in user	11	delete_loggedinuser
44	Can view logged in user	11	view_loggedinuser
\.


--
-- TOC entry 3475 (class 0 OID 18412)
-- Dependencies: 220
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$320000$RUQzyCofIEJS9GvTkpyeRV$Y+VvZHWQ+vC739UdT45Rz2kNNqBGULeE1wsqJGRhV4U=	2022-02-17 16:06:27.237176+05:30	f	Team_Mihir	Mihir Waykole		waykole.mihir1703@gmail.com	f	t	2022-02-17 16:02:19.819995+05:30
2	pbkdf2_sha256$320000$MoIsybgpfVg3gSzLipzMAZ$TmU1Zk01p5DHEMeS2hhEGCK9J6en83ROJ7E1qrPifHk=	2022-02-17 16:10:15.615395+05:30	t	mihir				t	t	2022-02-17 16:08:27.443706+05:30
3	pbkdf2_sha256$320000$Dddan3iTxwsIKPTelukQ6B$L2ox5CGUpmBFqMe2ZYxGXHBjTig9La479rtbctBATS8=	2022-02-17 16:10:47.904568+05:30	f	Team_CSK	Mihir Waykole		mihir@ecell.com	f	t	2022-02-17 16:10:41.476023+05:30
\.


--
-- TOC entry 3477 (class 0 OID 18421)
-- Dependencies: 222
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- TOC entry 3479 (class 0 OID 18428)
-- Dependencies: 224
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3481 (class 0 OID 18487)
-- Dependencies: 226
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- TOC entry 3467 (class 0 OID 18380)
-- Dependencies: 212
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	user_info	player
8	user_info	start_bidding
9	user_info	user_data
10	user_info	player_owner
11	user_info	loggedinuser
\.


--
-- TOC entry 3465 (class 0 OID 18371)
-- Dependencies: 210
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2022-02-17 15:56:09.13498+05:30
2	auth	0001_initial	2022-02-17 15:56:09.470975+05:30
3	admin	0001_initial	2022-02-17 15:56:09.551988+05:30
4	admin	0002_logentry_remove_auto_add	2022-02-17 15:56:09.575996+05:30
5	admin	0003_logentry_add_action_flag_choices	2022-02-17 15:56:09.596975+05:30
6	contenttypes	0002_remove_content_type_name	2022-02-17 15:56:09.673979+05:30
7	auth	0002_alter_permission_name_max_length	2022-02-17 15:56:09.696972+05:30
8	auth	0003_alter_user_email_max_length	2022-02-17 15:56:09.723984+05:30
9	auth	0004_alter_user_username_opts	2022-02-17 15:56:09.747975+05:30
10	auth	0005_alter_user_last_login_null	2022-02-17 15:56:09.778983+05:30
11	auth	0006_require_contenttypes_0002	2022-02-17 15:56:09.785993+05:30
12	auth	0007_alter_validators_add_error_messages	2022-02-17 15:56:09.811983+05:30
13	auth	0008_alter_user_username_max_length	2022-02-17 15:56:09.859978+05:30
14	auth	0009_alter_user_last_name_max_length	2022-02-17 15:56:09.882984+05:30
15	auth	0010_alter_group_name_max_length	2022-02-17 15:56:09.906989+05:30
16	auth	0011_update_proxy_permissions	2022-02-17 15:56:09.932989+05:30
17	auth	0012_alter_user_first_name_max_length	2022-02-17 15:56:09.959988+05:30
18	sessions	0001_initial	2022-02-17 15:56:10.016993+05:30
19	user_info	0001_initial	2022-02-17 15:56:10.25898+05:30
20	user_info	0002_alter_player_owner_id	2022-02-17 15:56:10.338982+05:30
21	user_info	0003_alter_player_owner_id	2022-02-17 15:56:10.427986+05:30
22	user_info	0004_remove_player_odi_ranking_remove_player_t20_ranking_and_more	2022-02-17 15:56:10.491999+05:30
23	user_info	0005_alter_player_owner_id	2022-02-17 15:56:10.565976+05:30
24	user_info	0006_alter_player_owner_player_id_and_more	2022-02-17 15:56:10.806974+05:30
\.


--
-- TOC entry 3482 (class 0 OID 18516)
-- Dependencies: 227
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
l8raj1fvm1k2ow3u4g8u539dqc23vc54	.eJxVjMsOwiAUBf-FtSFcHgVduvcbCPQepWogKe3K-O_apAvdnpk5LxHTupS4dsxxYnESJA6_W07jA3UDfE_11uTY6jJPWW6K3GmXl8Z4nnf376CkXr41vPZsvDUUgqLBsraKPI3GKcNpACxnOHIAkWFo7VxIDscB2VyhIN4ftfg3ZQ:1nKe5I:0-vZfohgYe4x3lxIxRkNODudH18yt4PIYTLJSt14gjQ	2022-03-03 16:02:24.061503+05:30
1cbem6dnps172lwxgchrtndleskm2pec	.eJxVjMsOwiAUBf-FtSFcHgVduvcbCPQepWogKe3K-O_apAvdnpk5LxHTupS4dsxxYnESJA6_W07jA3UDfE_11uTY6jJPWW6K3GmXl8Z4nnf376CkXr41vPZsvDUUgqLBsraKPI3GKcNpACxnOHIAkWFo7VxIDscB2VyhIN4ftfg3ZQ:1nKe9D:uh671d89k9mrtynwq1mkOZZC2JIm8qc1IJPud0bbeN4	2022-03-03 16:06:27.245181+05:30
l0ngsrqq4m4lzy9v9dk6e4xx8tz9na9q	.eJxVjEEOwiAQRe_C2hBgRKhL956BDMwgVQNJaVfGu7dNutDtf-_9jwi4zCUsnacwkrgKEKffLWJ6cd0BPbE-mkytztMY5a7Ig3Z5b8Tv2-H-HRTsZavVoCGnTOwUnFnTxWgLTINJyTpyHmPmjAhRWfJWOWMiOQZltPZgIYvvCvMZN_Q:1nKeDP:S5jKfeanTetBLjrUTrGtqiYdnDl1kGNtG23JZpCXm2c	2022-03-03 16:10:47.923538+05:30
\.


--
-- TOC entry 3491 (class 0 OID 18567)
-- Dependencies: 236
-- Data for Name: user_info_loggedinuser; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_info_loggedinuser (id, session_key, user_id) FROM stdin;
2	l0ngsrqq4m4lzy9v9dk6e4xx8tz9na9q	3
\.


--
-- TOC entry 3484 (class 0 OID 18526)
-- Dependencies: 229
-- Data for Name: user_info_player; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_info_player (id, base_price, batting_style, country, current_price, debut_year, profile, name, player_img, type, active) FROM stdin;
1	100000	 Right Handed Bat 	India	100000	2021		MS Dhoni	https://cdn.dnaindia.com/sites/default/files/styles/full/public/2021/08/15/990839-896577-ms-dhoni-afp.jpg		f
18	100000	 Right Handed Bat 	India	100000	2021		Sanju Samson	https://wallpapercave.com/wp/wp9028642.jpg		f
28	100000	 Right Handed Bat 	India	100000	2021		KL Rahul	https://i.pinimg.com/736x/5f/74/b4/5f74b411d53cc6bb0bbd467a05e76302.jpg		f
37	100000	 Left Handed Bat 	India	100000	2021		Suresh Raina	https://static.toiimg.com/photo/msid-77817723/77817723.jpg		f
62	100000	 Right Handed Bat 	India	100000	2021		Kedar Jadhav	https://resize.indiatvnews.com/en/resize/newbucket/715_-/2019/03/d2asmteucaer1hv-1553083795.jpg		f
73	100000	 Left Handed Bat 	India	100000	2021	Karn Vinod Sharma (born 23 October 1987) is an Indian cricketer. He lives in Meerut uttar pradesh. He plays as an all-rounder for the Railways cricket team.	Karn Sharma	https://bcciplayerimages.s3.ap-south-1.amazonaws.com/playerheadshot/ipl/284/1118.png		f
135	100000	 Right Handed Bat 	India	100000	2021		Sam Billings	https://www.insidesport.in/wp-content/uploads/2020/08/Sam-Billings.gif		f
226	100000	 Right Handed Bat 	India	100000	2021		Shai Hope	https://www.cricxtasy.com/wp-content/uploads/2019/12/20191217_184712.jpg		f
23	100000	 Right Handed Bat 	India	100000	2021		Kane Williamson	https://static.toiimg.com/thumb/msid-77882458,width-1200,height-900,resizemode-4/.jpg		f
253	100000	 Left Handed Bat 	India	100000	2021		Abhishek Sharma	https://cricfit.com/wp-content/uploads/2020/10/abhi-scaled.jpg		f
325	100000	 Right Handed Bat 	India	100000	2021		Lalit Yadav	https://w0.peakpx.com/wallpaper/599/543/HD-wallpaper-lalit-yadav-cricket-delhi-delhi-capitals-indian-cricket-ipl-player.jpg		f
336	100000	 Right Handed Bat 	India	100000	2021		Arun Karthick	https://media.gettyimages.com/photos/elated-rcb-batsmen-arun-karthik-and-sreenath-arvind-run-towards-their-picture-id128058375?s=612x612		f
154	100000	 Right Handed Bat 	India	100000	2021	Joshua Brian Little (born 1 November 1999) is an Irish cricketer. He made his international debut for the Ireland cricket team in September 2016.\n\n\n== International career ==\nLittle made his Twenty20 International (T20I) debut against Hong Kong on 5 September 2016.	Josh Little	https://img1.hscicdn.com/image/upload/f_auto/lsci/db/PICTURES/CMS/285800/285861.4.jpg		f
2	100000	 Left Handed Bat 	India	100000	2021		Moeen Ali	https://e2.365dm.com/18/05/2048x1152/skysports-moeen-ali-rcb-ipl_4314557.jpg		f
3	100000	 Right Handed Bat 	India	100000	2021	Ruturaj Dashrat Gaikwad (born 31 January 1997) is an Indian cricketer who plays for Maharashtra in domestic cricket and for the Chennai Super Kings in the Indian Premier League (IPL). He made his international debut for the India cricket team in July 2021. He was the leading run-scorer in the 2021 Indian Premier League tournament.	Ruturaj Gaikwad	https://images.indianexpress.com/2020/11/Ruturaj-Gaikwad.jpg		f
4	100000	 Left Handed Bat 	India	100000	2021	Rishabh Rajendra Pant (born 4 October 1997) is an Indian cricketer who plays as a middle order wicket-keeper batsman for India, Delhi, and captains the Delhi Capitals in the Indian Premier League. He was the vice-captain of the India U-19 team for the 2016 Under-19 Cricket World Cup.He made his Twenty20 International (T20I) debut for India in January 2017, his Test debut in August 2018, and his One Day International (ODI) debut in October 2018. In January 2019, Pant was named the ICC Men's Emerging Cricketer of the Year at the 2018 ICC Awards.	Rishabh Pant	https://cricketaddictor.com/wp-content/uploads/2021/04/Rishabh-Pant.jpg		f
5	100000	 Left Handed Bat 	India	100000	2021		Axar Patel	https://images.indianexpress.com/2020/09/axar-patel.jpg		f
6	100000	 Right Handed Bat 	India	100000	2021		Prithvi Shaw	https://resize.indiatvnews.com/en/resize/newbucket/1200_-/2020/09/prithvi-shaw-1601091388.jpg		f
7	100000	 Right Handed Bat 	India	100000	2021	Anrich Arno Nortje (born 16 November 1993) is a South African professional cricketer. He made his international debut for the South Africa cricket team in March 2019. In July 2020, Nortje was named the newcomer of the year at Cricket South Africa's annual awards ceremony.	Anrich Nortje	https://cdn.dnaindia.com/sites/default/files/styles/full/public/2020/10/17/932012-twitter-2.jpg		f
8	100000	 Right Handed Bat 	India	100000	2021	Andre Dwayne Russell (born 29 April 1988) is a Jamaican professional cricketer who plays internationally for the West Indies and for Jamaica in West Indian domestic cricket as an all-rounder. He has played in more than 300 Twenty20 (T20) matches for a range of sides in leagues throughout the world. Russell scored a century in a record 40 balls in the 2018 Caribbean Premier League and took a hat-trick in the same match, becoming the second player to take a hat-trick and score a century in the same T20 match.	Andre Russell	https://www.teahub.io/photos/full/87-876517_andre-russell-ipl-2019.jpg		f
9	100000	 Right Handed Bat 	India	100000	2021	Varun Chakravarthy Vinod (born 29 August 1991) is an Indian cricketer who plays for Tamil Nadu in domestic cricket and Kolkata Knight Riders in the Indian Premier League (IPL) as a leg spin bowler. He made his international debut for the India cricket team in July 2021.\n\n\n== Early life ==\nChakravarthy was born on 29 August 1991 in Bidar, Karnataka.	Varun Chakaravarthy	https://images.indianexpress.com/2020/10/Varun-Chakaravarthy.jpg		f
10	100000	 Left Handed Bat 	India	100000	2021	Venkatesh Rajasekaran Iyer (born 25 December 1994) is an Indian international cricketer who plays for Madhya Pradesh in domestic cricket and Kolkata Knight Riders in the Indian Premier League (IPL). He made his international debut for the India cricket team in November 2021.\n\n\n== Career ==\nHe made his Twenty20 debut against Railways cricket team at Holkar Stadium in March 2015 and made his List A debut against Saurashtra cricket team at Saurashtra Cricket Association Stadium in December of the same year, while he was pursuing a Bachelor of Commerce degree.	Venkatesh Iyer	https://images.thequint.com/thequint%2F2021-10%2F8a21d0d2-5cce-48c7-ba1b-5e820ff2d67e%2F_AI_4105.JPG?rect=0%2C0%2C1162%2C654		f
11	100000	 Left Handed Bat 	India	100000	2021	Sunil Philip Narine (born 26 May 1988) is a Trinidadian cricketer who plays internationally for the West Indies. He made his One Day International (ODI) debut in December 2011 and Test match debut in June 2012. Primarily an off-spin bowler, he is also a left-handed batsman.He has played in Twenty20 (T20) franchise leagues around the world and played in over 300 T20 matches.	Sunil Narine	https://sportzwiki.com/wp-content/uploads/2020/09/jpg-7.jpg		f
12	100000	 Right Handed Bat 	India	100000	2021	Rohit Gurunath Sharma (born 30 April 1987) is an Indian international cricketer. He is the captain of the Indian national team in limited-overs formats and the vice-captain in Test cricket. He plays for Mumbai in domestic cricket and captains Mumbai Indians in the Indian Premier League as a right-handed batsman and an occasional right-arm off break bowler.	Rohit Sharma	https://static.toiimg.com/thumb/msid-68724689,imgsize-566678,width-400,resizemode-4/68724689.jpg		f
13	100000	 Right Handed Bat 	India	100000	2021	Jasprit Jasbirsingh Bumrah (born 6 December 1993) is an Indian international cricketer, who plays for the Indian national cricket team in all formats of the game. He is considered as one of the best bowlers of this generation in all formats. He is the first Asian bowler to take 5 wickets in a test innings in South Africa, England and Australia during the same calendar year.	Jasprit Bumrah	https://static.toiimg.com/thumb/msid-64201517,width-1070,height-580,imgsize-123304,resizemode-75,overlay-toi_sw,pt-32,y_pad-40/photo.jpg		f
14	100000	 Right Handed Bat 	India	100000	2021		Suryakumar Yadav	https://cricketaddictor.gumlet.io/wp-content/uploads/2021/05/Suryakumar-Yadav-3.jpg?compress=true&quality=80&w=800&dpr=2.6		f
15	100000	 Right Handed Bat 	India	100000	2021	Kieron Adrian Pollard (born 12 May 1987) is a Trinidadian cricketer. He captains the West Indies cricket team in limited overs cricket and Trinbago Knight Riders in CPL. An aggressive all-rounder, Pollard is a medium-pace bowler and big-hitting batsman in the middle-order. After shining during the 2009 Champions League, he was signed by both the Southern Redbacks and Somerset for their domestic Twenty20 campaigns.	Kieron Pollard	https://static.toiimg.com/thumb/msid-86282507,width-1200,height-900,resizemode-4/.jpg		f
16	100000	 Right Handed Bat 	India	100000	2021	Mayank Agarwal (born 16 February 1991) is an Indian cricketer who plays as a right-handed top-order batsman. He made his international debut for the India cricket team on 26 December 2018 against Australia at the MCG.\nHe plays for Punjab Kings in Indian Premier League and Karnataka cricket team in domestic cricket.\n\n\n== Early life ==\nAgarwal was born on 16 February 1991 in Bangalore.	Mayank Agarwal	https://static.toiimg.com/thumb/msid-78236079,width-1200,height-900,resizemode-4/.jpg		f
17	100000	 Left Handed Bat 	India	100000	2021		Arshdeep Singh	https://www.espncricinfo.com/db/PICTURES/CMS/310200/310285.10.jpg		f
19	100000	 Left Handed Bat 	India	100000	2021	Yashasvi Bhupendra Kumar Jaiswal (born 28 December 2001) is an Indian cricketer who plays for Mumbai in domestic cricket and Rajasthan Royals in the Indian Premier League (IPL). He is the youngest cricketer in the world to score a List A double century. He was the leading run-scorer of India U-19 team and player of the tournament at the 2020 Under-19 World Cup in South Africa.	Yashasvi Jaiswal	https://static.toiimg.com/thumb/msid-72896988,imgsize-271597,width-400,resizemode-4/72896988.jpg		f
20	100000	 Right Handed Bat 	India	100000	2021	Virat Kohli (Hindustani: [ʋɪˈɾɑːʈ ˈkoːɦliː] (listen); born 5 November 1988) is an Indian international cricketer and former captain of the Indian national team. He plays for Delhi in domestic cricket and Royal Challengers Bangalore in the Indian Premier League as a right-handed batsman. Kohli is often considered one of the best batsmen of his era and some critics believe him to be one of the best limited-overs batsmen in history.	Virat Kohli	https://wallpaperaccess.com/full/1311183.jpg		f
21	100000	 Right Handed Bat 	India	100000	2021	Glenn James Maxwell (born 14 October 1988) is an Australian professional international cricketer, who currently plays ODI and Twenty20 cricket for Australia. He has also played Test cricket for Australia. He represents Victoria and Melbourne Stars in Australian domestic cricket.He began his professional cricketing career playing for Victoria in the Twenty20 Big Bash in 2010.	Glenn Maxwell	https://sportzwiki.com/wp-content/uploads/2020/02/3588749423001_4878069213001_maxi.jpg		f
22	100000	 Right Handed Bat 	India	100000	2021	Mohammed Siraj (born 13 March 1994) is an Indian cricketer who plays for Hyderabad in domestic cricket, Royal Challengers Bangalore in the Indian Premier League, and the India national cricket team.\n\n\n== Early life ==\nSiraj was born on 13 March 1994 in Hyderabad. His father was an auto-rickshaw driver, and his mother is a housewife.	Mohammed Siraj	https://images.hindustantimes.com/rf/image_size_630x354/HT/p2/2020/10/21/Pictures/riders-2020-royal-challengers-bangalore-knight-kolkata_63b12382-13c2-11eb-9315-b00ef9141a48.jpg		f
24	100000	 Right Handed Bat 	India	100000	2021	Abdul Samad (Arabic: عبد الصّمد) is a male Muslim given name, built on the Arabic words Abd, al- and Samad. The name means "servant of the Everlasting", 'endless', al-Samad being one of the names of God in the Qur'an, which give rise to the Muslim theophoric names.Because the letter s is a sun letter, the letter l of the al- is assimilated to it. Thus although the name is written with letters corresponding to Abd al-Samad, the usual pronunciation corresponds to Abd as-Samad.	Abdul Samad	https://images.newindianexpress.com/uploads/user/imagelibrary/2020/10/4/w1200X800/Abdul_IPL.jpg		f
25	100000	 Right Handed Bat 	India	100000	2021	Hardik Himanshu Pandya (born 11 October 1993) is an Indian international cricketer who plays for Baroda in domestic cricket and captains Gujarat Titans in the Indian Premier League. He is an all-rounder who bats right-handed and bowls right-arm fast-medium. His elder brother Krunal Pandya is also an international cricketer.	Hardik Pandya	https://cricketaddictor.com/wp-content/uploads/2021/10/Hardik-Pandya.jpg		f
26	100000	 Right Handed Bat 	India	100000	2021	Rashid Khan Arman (Pashto: راشد خان ارمان; born 20 September 1998) is an Afghan cricketer and a former captain of the national team. In franchise leagues, he plays for Ahmedabad franchise in the Indian Premier League (IPL), Adelaide Strikers in Australia's Big Bash League (BBL), Lahore Qalandars in the Pakistan Super League (PSL) and the Band-e-Amir Dragons in Afghanistan. He bowls right-arm leg spin and bats right-handed.He was one of the eleven cricketers to play in Afghanistan's first ever Test match, against India, in June 2018.	Rashid Khan	https://sportzwiki.com/wp-content/uploads/2020/03/Rashid-Khan-e1556606651891.jpg		f
27	100000	 Right Handed Bat 	India	100000	2021	Shubman Gill (born 8 September 1999) is an Indian international cricketer who plays for Punjab in domestic cricket as a right-handed opening batsman. He was the vice-captain of the India U-19 team for 2018 Under-19 Cricket World Cup.He made his List-A debut against Vidharbha in 2017 and first-class debut for Punjab against Bengal in the 2017–18 Ranji Trophy, in late 2017, with a half-century in the game, and 129 runs in the next match against Services. He made his international debut for the Indian cricket team in January 2019.He was drafted into India's Under-19 side as the vice-captain for the 2018 Under-19 Cricket World Cup.	Shubman Gill	https://wallpapercave.com/wp/wp7110083.jpg		f
29	100000	 Right Handed Bat 	India	100000	2021	Marcus Peter Stoinis (born 16 August 1989) is an Australian cricketer who plays limited overs cricket for the Australian national team. He is contracted to Western Australia and Melbourne Stars domestically, and has previously also played for Perth Scorchers and Victoria as an all rounder.\n\n\n== Early life ==\nStoinis is an Australian of Greek heritage, he was born in Perth, and represented Western Australia at both under-17 and under-19 level.	Marcus Stoinis	https://cricketaddictor.com/wp-content/uploads/2021/03/Marcus-Stoinis-2.jpg		f
30	100000	 Right Handed Bat 	India	100000	2021	Ravi Bishnoi (born 5 September 2000) is an Indian cricketer. He made his international debut for the India cricket team in February 2022. He plays for Rajasthan in domestic cricket.	Ravi Bishnoi	https://cricketaddictor.com/wp-content/uploads/2021/04/Ravi-Bishnoi.jpg		f
31	100000	 Right Handed Bat 	India	100000	2021	Shreyas Santosh Iyer (born 6 December 1994) is an Indian cricketer who plays for the national side in international cricket, Mumbai in domestic cricket, and captains Kolkata Knight Riders in the Indian Premier League. A right-handed top-order batsman, Iyer has played One Day Internationals,Twenty20 Internationals and Test cricket for the India national cricket team. He played for the India Under-19 cricket team at the 2014 ICC Under-19 Cricket World Cup.	Shreyas Iyer	https://wallpaperaccess.com/full/4564196.jpg		f
32	100000	 Left Handed Bat 	India	100000	2021		Shikhar Dhawan	https://static.toiimg.com/thumb/msid-68859600,width-1200,height-900,resizemode-4/.jpg		f
33	100000	 Right Handed Bat 	India	100000	2021	Ravichandran Ashwin pronunciation  (born 17 September 1986) is an Indian international cricketer. An all-rounder who bats right-handed and bowls right-arm off-break, he plays for Tamil Nadu in domestic cricket and Rajasthan Royals in the Indian Premier League. He is the fastest Indian bowler (also in some records the joint-fastest in the world) to reach the 50-, 100-, 150-, 200-, 250-, 300-, 350- and 400-wicket mark in Test cricket in terms of number of innings.	R Ashwin	https://images.indianexpress.com/2013/12/ashwin-dc-ipl.jpg		f
34	100000	 Right Handed Bat 	India	100000	2021		Mohammad Shami	https://cdn.dnaindia.com/sites/default/files/styles/full/public/2020/09/20/926238-mohammad-shami-bcci.jpg		f
35	100000	 Left Handed Bat 	India	100000	2021	Ishan Pranav Kumar Pandey Kishan, known as Ishan Kishan, (born 18 July 1998) is an Indian international cricketer who plays for Jharkhand in domestic cricket. He is a left-handed opening batsman and a wicket-keeper. He was the captain of India's squad for the 2016 Under-19 Cricket World Cup.	Ishan Kishan	https://wallpaperaccess.com/full/4579339.jpg		f
36	100000	 Right Handed Bat 	India	100000	2021	Ajinkya Madhukar Rahane (born 6 June 1988) is an Indian international cricketer. He plays primarily as a middle-order batsman in the Test format and as a top-order batsman in white-ball forms of the game. He was also the vice-captain of the India national cricket team in Tests until the home series against New Zealand in 2021 after which he was sacked.	Ajinkya Rahane	https://cdn.dnaindia.com/sites/default/files/styles/full/public/2019/12/19/885788-880978-twitter-4.jpg		f
38	100000	 Right Handed Bat 	India	100000	2021	Yuzvendra Singh Chahal (born 23 July 1990)  is an Indian cricketer and former chess player who represents India in both One Day Internationals (ODIs) and Twenty20 Internationals (T20Is), and has also represented India internationally in chess at youth levels. He plays for Haryana in Indian domestic cricket and previously played for Royal Challengers Bangalore in Indian Premier League till 2021 season. He is a leg break bowler.	Yuzvendra Chahal	https://www.india.com/wp-content/uploads/2021/12/Yuzvendra-Chahal-IPL.jpg		f
39	100000	 Left Handed Bat 	India	100000	2021	Washington Sundar (born 5 October 1999) is an Indian international cricketer. He is a left-handed batsman and right-arm off-spinner. He has played for the India national under-19 cricket team as an all-rounder.	Washington Sundar	https://images.news18.com/ibnlive/uploads/2020/09/1601351622_sundar.jpg		f
40	100000	 Right Handed Bat 	India	100000	2021	Shardul Narendra Thakur (born 16 October 1991) is an Indian international cricketer. He is a medium-fast bowler and a capable lower-order right-handed batsman. He plays first-class cricket for Mumbai.	Shardul Thakur	https://www.crictracker.com/wp-content/uploads/2018/04/Shardul-Thakur.jpg		f
56	100000	 Right Handed Bat 	India	100000	2021	Rahul Desraj Chahar (born 4 August 1999) is an Indian cricketer who plays for Mumbai  in domestic cricket. He made his international debut for India in August 2019.\n\n\n== Early life and personal life ==\nRahul was born in Hindu Jat family to Desraj Singh Chahar and Usha Chahar.	Rahul Chahar	https://images.news18.com/ibnlive/uploads/2021/08/1628046833_rahul-chahar-1600x900.jpg		f
41	100000	 Right Handed Bat 	India	100000	2021	Deepak Lokendrasingh Chahar (born 7 August 1990) is an Indian International cricketer. He is a right-arm medium-fast bowler and lower-middle order batter, who plays for Rajasthan in domestic cricket and Chennai Super Kings in the Indian Premier League. \nHe became the first Indian male cricketer to take a hat-trick in a Twenty20 International (T20I) match.	Deepak Chahar	https://cdn.dnaindia.com/sites/default/files/styles/full/public/2022/02/13/1020805-1.jpg		f
42	100000	 Right Handed Bat 	India	100000	2021		Ishant Sharma	https://www.wicketnrun.com/wp-content/uploads/2021/03/Ishant-Sharma-IPL-Controversies-and-Career-1.jpg		f
43	100000	 Right Handed Bat 	India	100000	2021	Umesh Kumar Tilak Yadav (born 25 October 1987) is an Indian cricketer who currently plays for Vidarbha cricket team, Indian national team, and Kolkata Knight Riders in the Indian Premier League. A right-arm fast bowler, Yadav has played for Vidarbha at domestic level since 2008 and is the first player from the team to have played Test cricket. He made his One Day International (ODI) debut against Zimbabwe in May 2010.	Umesh Yadav	https://cricketaddictor.com/wp-content/uploads/2021/02/Umesh-Yadav_16a7441d259_large.jpg		f
44	100000	 Left Handed Bat 	India	100000	2021	Devdutt Padikkal (born 7 July 2000) is an Indian cricketer who plays for Karnataka in domestic cricket and plays for the Rajasthan Royals in the Indian Premier League (IPL). He made his international debut for the India cricket team in July 2021. He has also played for the India under-19 team.	Devdutt Padikkal	https://cricketaddictor.com/wp-content/uploads/2021/05/Devdutt-Padikkal-5.jpg		f
45	100000	 Right Handed Bat 	India	100000	2021	Manish Krishnanand Pandey (born 10 September 1989) is an Indian international cricketer who plays ODI and T20I for India. He is primarily a right-handed middle-order batsman representing Karnataka in domestic cricket and Lucknow Super Giants in the Indian Premier League (IPL). He played as an opening batsman for his former IPL team, the Royal Challengers Bangalore, and became the first Indian player to score a century in the IPL in 2009 Indian Premier League.	Manish Pandey	https://cricketaddictor.gumlet.io/wp-content/uploads/2021/04/Manish-Pandey-1.jpg?compress=true&quality=80&w=480&dpr=2.6		f
46	100000	 Right Handed Bat 	India	100000	2021	Robin Venu Uthappa (pronunciation ; born 11 November 1985) is an Indian cricketer who plays for Kerala in domestic cricket. Robin has represented team India in ODIs and T20Is. Currently, Robin Uthappa plays for Chennai Super Kings in IPL.\nUthappa made his One Day International debut in the seventh and final match of the English tour of India in April 2006.	Robin Uthappa	https://wallpapercave.com/wp/wp6918135.jpg		f
47	100000	 Left Handed Bat 	India	100000	2021	Krunal Himanshu Pandya (born 24 March 1991) is an Indian international cricketer who plays for Baroda in domestic cricket, and Lucknow Super Giants in the IPL. He is an all-rounder who bats left-handed and bowls slow left-arm orthodox. He made his international debut for the Indian cricket team in November 2018. In 2021, he scored the fastest half-century by a cricketer on ODI debut.	Krunal Pandya	https://im.rediff.com/cricket/2018/jan/27pandya.jpg		f
48	100000	 Right Handed Bat 	India	100000	2021	Harshal  Patel (born 23 November 1990) is an Indian international cricketer. He is the captain of Haryana in the Ranji Trophy. He made his international debut for the Indian cricket team on 19 November 2021.	Harshal Patel	https://c.ndtvimg.com/2021-04/9g7umd1o_harshal-patel-bcciipl_625x300_09_April_21.jpg		f
49	100000	 Left Handed Bat 	India	100000	2021	Nitish Rana (born 27 December 1993) is an Indian cricketer who plays for Delhi in domestic cricket and for Kolkata Knight Riders in the Indian Premier League. He is a left-handed batsman and a part-time off spin bowler. In November 2018, he was named as the captain of Delhi, replacing Gautam Gambhir.	Nitish Rana	https://images.hindustantimes.com/img/2021/04/03/1600x900/nitish_rana_kkr_1617453290070_1617453304731.jfif		f
50	100000	 Right Handed Bat 	India	100000	2021	Dinesh Karthik (born 1 June 1985) is an Indian professional cricketer. He captains the Tamil Nadu Cricket Team. He made his debut for the Indian cricket team in 2004.	Dinesh Karthik	https://c.ndtvimg.com/2019-12/l5k44mb8_dinesh-karthik-afp_625x300_19_December_19.jpg		f
51	100000	 Right Handed Bat 	India	100000	2021	Ambati Thirupathi Rayudu (born 23 September 1985) is an Indian professional cricketer and current captain of the Andhra team in the Syed Mushtaq Ali Trophy championship. He plays as a right-handed middle-order batsman, who occasionally keeps wicket and bowls right-arm off breaks. He plays for Hyderabad in domestic cricket, and Chennai Super Kings in the Indian Premier League (IPL).	Ambati Rayudu	https://cricketaddictor.com/wp-content/uploads/2021/03/Ambati-Rayudu.jpg		f
52	100000	 Right Handed Bat 	India	100000	2021	Wriddhiman Prasanta Saha (born 24 October 1984) is an Indian international cricketer who plays  for Indian national cricket team and first class matches domestically for Bengal, as well as Local Tournaments for the cricket team of Mohun Bagan Athletic Club. He is also the first cricketer to score a century in an Indian Premier League final. He plays for Sunrisers Hyderabad in the Indian Premier League.	Wriddhiman Saha	https://static.toiimg.com/thumb/msid-78904717,width-1200,height-900,resizemode-4/.jpg		f
53	100000	 Right Handed Bat 	India	100000	2021	Prasidh Krishna (born 19 February 1996) is an Indian cricketer who plays for Karnataka in domestic cricket and Rajasthan Royals in the IPL. He is a right-arm fast bowler who regularly bowls at speeds above 140 km/h. He made his international debut for the Indian cricket team on 23 March 2021. Krishna picked up 4 wickets on his ODI debut, breaking a 24-year-old Indian record for most wickets on ODI debut.	Prasidh Krishna	https://d33v7lirz96evl.cloudfront.net/IPL/photo/2018/05/19/3ceea947-1e37-4b57-8d1b-a9badc6c414a/lJRCIVey.jpg		f
54	100000	 Right Handed Bat 	India	100000	2021	Bhuvneshwar Kumar Singh (born 5 February 1990) is an Indian international cricketer who  plays for Uttar Pradesh in domestic first-class cricket and for Sunrisers Hyderabad in the Indian Premier League. Kumar is a right-arm fast medium bowler who swings the ball both ways efficiently, with his inswingers more effective than outswing, and is especially adept at creating late swing.\nHe made his international debut in December 2012 against Pakistan in December 2012, taking three wickets in an Twenty20 International.	Bhuvneshwar Kumar	https://cricketaddictor.com/wp-content/uploads/2021/03/Bhuvneshwar-Kumar-1.jpg		f
55	100000	 Left Handed Bat 	India	100000	2021	Thangarasu Natarajan (born 4 April 1991) is an Indian cricketer. He made his international debut for the India cricket team in December 2020. He plays for Sunrisers Hyderabad in the Indian Premier League (IPL) and for Tamil Nadu in domestic cricket.	T Natarajan	https://static.toiimg.com/thumb/msid-78418776,imgsize-143088,width-400,resizemode-4/78418776.jpg		f
57	100000	 Right Handed Bat 	India	100000	2021	Amit Mishra pronunciation  (born 24 November 1982) is an Indian cricketer. He is an attacking right-arm leg-break bowler and right-handed tail-ender batsman. He plays for Haryana in the domestic Ranji Trophy and currently appears for the T20 franchise Delhi Capitals in the Indian Premier League.	Amit Mishra	https://www.thetoughtackle.com/wp-content/uploads/2022/02/Amit-Mishra.jpg		f
58	100000	 Left Handed Bat 	India	100000	2021	Kuldeep Yadav (born 14 December 1994) is an Indian international cricketer who plays for India and for Uttar Pradesh in domestic cricket . Kuldeep Yadav, who was first signed by the Kolkata Knight Riders in 2014 in the IPL.  He started out as a fast bowler at academy level, but his coach advised him to become a rare left-arm unorthodox spin bowler considering his build, which was ill-suited for fast bowling. He played for India Under-19 cricket teams.	Kuldeep Yadav	https://cricketaddictor.com/wp-content/uploads/2021/04/kuldeep-yadav-1598847502.jpg		f
59	100000	 Right Handed Bat 	India	100000	2021	Karun Kaladharan Nair (born 6 December 1991) is an Indian international cricketer who plays for the Karnataka cricket team in domestic cricket. He is a right-handed batsman and occasional off break bowler who plays for Karnataka in domestic cricket and Kolkata Knight Riders in IPL. Karun Nair is the youngest Indian and sixth youngest batsman in the world to slam a Test triple hundred.\n\n\n== Early and personal life ==\nKarun was born on 6 December 1991 in Jodhpur, Rajasthan to Kaladharan Nair and Prema Nair who hail from Chengannur in Alappuzha district of Kerala.	Karun Nair	https://images.indianexpress.com/2018/05/karun-nair.jpg		f
60	100000	 Right Handed Bat 	India	100000	2021	Sandeep Warrier (born 4 April 1991) is an Indian professional cricketer. He is a right-arm fast-medium bowler who has played for Kerala and currently plays for Tamil Nadu cricket team in domestic cricket and Kolkata Knight Riders in IPL. He made his international debut for the India cricket team in July 2021 against Sri Lanka at 3rd T20I.\n\n\n== Domestic career ==\nSandeep Warrier made his first-class debut for Kerala against Goa on 24 November 2012. In August 2018, he was one of five players that were suspended for three games in the 2018–19 Vijay Hazare Trophy, after showing dissent against Kerala's captain, Sachin Baby.	Sandeep Warrier	https://cricfit.com/wp-content/uploads/2021/06/Sandeep-Warrier.jpg		f
61	100000	 Left Handed Bat 	India	100000	2021	Pawan Negi  (born 6 January 1993) is an Indian cricketer. He is a slow left-arm orthodox bowler. He was born in Uttarakhand.	Pawan Negi	https://www.royalchallengers.com/PRRCB01/public/styles/1061x767_landscape/public/2020-04/Negi.jpg?h=a59fba8c&itok=_CIIcgY_		f
63	100000	 Right Handed Bat 	India	100000	2021		Manoj Tiwary	https://akm-img-a-in.tosshub.com/indiatoday/images/story/201812/manojtiwary191218_2.jpeg?xXcsWZC40gnbbGECz.URDPy4dNgZlyh9		f
64	100000	 Right Handed Bat 	India	100000	2021	Varun Raymond Aaron (born 29 October 1989) is an Indian cricketer from Jamshedpur. A right-arm fast bowler, he first played for Jharkhand U-19 followed by Jharkhand Ranji team. He played his first One Day International (ODI) for India in October 2011 and made his Test debut the following month.	Varun Aaron	https://akm-img-a-in.tosshub.com/indiatoday/images/story/201904/varunaaron260419.jpeg?Sq5HBj1nep5e1Z2e5IBShmPBhbqOufXE		f
65	100000	 Right Handed Bat 	India	100000	2021		Mohit Sharma	https://circleofcricket.com/post_image/post_image_f8d9aa6.JPG		f
66	100000	 Right Handed Bat 	India	100000	2021	Murali Vijay (born 1 April 1984) is an Indian international cricketer who plays as a right-handed opening batsman. He was a regular member of the Indian Test team until 2018 and plays for Tamil Nadu in domestic first-class cricket. \nHaving started playing cricket at the age of 17, Vijay played club cricket in Chennai before he was selected in the Tamil Nadu Under-22 team.	Murali Vijay	https://www.deccanherald.com/sites/dh/files/article_images/2020/04/25/Murali%20Vijay-1586950404.jpg		f
67	100000	 Right Handed Bat 	India	100000	2021	Shanthakumaran Nair Sreesanth (pronunciation , born 6 February 1983) is an Indian cricketer and film actor who played all forms of the game. He is a right-arm fast-medium-pace bowler and a right-handed tail-ender batsman. Currently in first class cricket, he plays for Kerala.	S. Sreesanth	https://www.crictracker.com/wp-content/uploads/2020/09/S-Sreesanth.jpg		f
68	100000	 Right Handed Bat 	India	100000	2021	Parvez Ghulam Rasool Zargar (born 13 February 1989) is an Indian cricketer who plays as an all-rounder for Jammu and Kashmir. A right-hand batsman and offbreak bowler, Rasool is the captain of the Jammu and Kashmir team and a regular member of India A. He was bought for ₹95 lakh (US$130,000) by the Sunrisers Hyderabad in the 2014 IPL auction. Rasool was the first cricketer from Jammu and Kashmir to have played in The IPL and also the first from the state to play for the Indian National Team in ODI's and T20I's.	Parvez Rasool	http://www.crictracker.com/wp-content/uploads/2016/04/Parvez-Rasool.jpg		f
69	100000	 Right Handed Bat 	India	100000	2021	Dhawal Sunil Kulkarni (born 10 December 1988) is an Indian cricketer as well as first class cricketer. He is a right arm medium-pace bowler and right-handed lower order batsman.In first class cricket, he plays for Mumbai and in the Indian Premier League, he plays for Mumbai Indians Based on his consistent performance in the domestic season and the IPL, he was selected for the Indian Test team for the away series against New Zealand in 2009. But he was not selected to play in any of the three Test matches of the series.	Dhawal Kulkarni	https://d33v7lirz96evl.cloudfront.net/IPL/photo/2019/11/14/4bb06407-df6a-4052-b099-4305af1be4a9/9S6A6553.JPG		f
70	100000	 Right Handed Bat 	India	100000	2021	Gurkeerat Singh Mann (born 29 June 1990) is an Indian professional cricketer who plays for Punjab in domestic cricket. A right-handed batsman and off break bowler, he is a member of the Kolkata Knight Riders in IPL and a regular in India A team. Singh had a maiden call for the official Indian squad for the South Africa series in 2015.	Gurkeerat Singh	https://img.theweek.in/content/dam/week/news/sports/images/2019/5/5/gurkeerat-mann-rcb-srh-ipl2019-afp.jpg		f
71	100000	 Right Handed Bat 	India	100000	2021	Gade Hanuma Vihari (born 13 October 1993) is an Indian international cricketer. He represents Hyderabad in Indian domestic cricket A right-handed batsman and occasional right-arm off-break bowler, he was a member of the India Under-19 cricket team that won the 2012 ICC Under-19 Cricket World Cup in Australia. He made his Test debut for India in September 2018.	Hanuma Vihari	https://cdn.dnaindia.com/sites/default/files/styles/full/public/2019/12/29/887162-ani-1.jpg		f
72	100000	 Right Handed Bat 	India	100000	2021	Rahul Sharma (born 25 September 1972) is an Indian music director and Indian classical santoor player.  The santoor is a folk instrument.\n\n\n== Early life ==\nRahul Sharma was born in Mumbai to the Dogra family of Santoor player Pt.	Rahul Sharma	https://images.assettype.com/freepressjournal/import/2018/05/Rahul-Sharma-Rahul-Sharma-IPL-Rahul-Sharma-career-Rahul-Sharma-cricketer.jpg?rect=0%2C0%2C3900%2C2048&w=1200&auto=format%2Ccompress&ogImage=true		f
74	100000	 Right Handed Bat 	India	100000	2021	Shahbaz Nadeem (born 12 August 1989) is an Indian international cricketer who is a slow left-arm orthodox bowler. He made his first-class cricket debut in December 2004. He has played for Bihar Under-14 side and Indian U-19s and currently plays for Jharkhand and Sunrisers Hyderabad.In September 2018, he set a new record for the best bowling figures in a List A cricket match by taking eight wickets for 10 runs against Rajasthan whilst playing for Jharkhand.	Shahbaz Nadeem	https://media.gettyimages.com/photos/delhi-daredevils-cricketer-shahbaz-nadeem-celebrates-after-taking-the-picture-id143104343?s=612x612		f
75	100000	 Right Handed Bat 	India	100000	2021	Mayank Markande (born 11 November 1997) is an Indian cricketer who will be playing for Mumbai Indians in the 2022 Indian Premier League (IPL). Mayank hails from Patiala. He studied in Yadavindra public School, Patiala and was part of the school's cricket team.He made his international debut for the India cricket team in February 2019.	Mayank Markande	https://cdn.dnaindia.com/sites/default/files/styles/full/public/2018/04/09/669902-mayank-markande..jpg		f
76	100000	 Left Handed Bat 	India	100000	2021	Piyush Chawla (pronunciation ; born 24 December 1988) is an Indian cricketer who has played for the India national cricket team. He has also played for the India under-19 team and the Central Zone. He is seen as a leg-spinning all-rounder in domestic cricket.	Piyush Chawla	https://www.insidesport.in/wp-content/uploads/2019/03/IPL-5.jpg		f
77	100000	 Right Handed Bat 	India	100000	2021	Jaydev Dipakbhai Unadkat (born 18 October 1991) is an Indian professional cricketer who has played for the Indian national team. He plays for Saurashtra in domestic cricket. He represented India in the Under-19 Cricket World Cup in 2010.	Jaydev Unadkat	https://static.toiimg.com/thumb/msid-58692397,imgsize-91092,width-400,resizemode-4/58692397.jpg		f
78	100000	 Right Handed Bat 	India	100000	2021	Sandeep Sharma (born 18 May 1993) is an Indian cricketer who plays domestic cricket for Punjab. He is a right-arm medium pace bowler. Sharma has represented India at two Under-19 World Cups - 2010 and 2012.	Sandeep Sharma	https://cricketaddictor.com/wp-content/uploads/2021/02/Sandeep-Sharma.jpg		f
79	100000	 Right Handed Bat 	India	100000	2021	Cheteshwar Arvind Pujara (born 25 January 1988) is an Indian international cricketer who plays Test cricket for India and represents Saurashtra in domestic cricket. He is a right-handed batsman who made his first-class debut for Saurashtra in December 2005 and made his Test debut at Bangalore in October 2010. As of May 9th 2021, he is ranked as the world No.14 Test batsman, according to the ICC Player Rankings with a tally of 697 points.	Cheteshwar Pujara	http://im.rediff.com/cricket/2014/apr/23pujara1.jpg		f
80	100000	 Left Handed Bat 	India	100000	2021	Chetan Sakariya (born 28 February 1998) is an Indian cricketer, a left arm fast bowler who represents Saurashtra in domestic cricket. He made his international debut for the India cricket team in July 2021.\n\n\n== Early and personal life ==\nSakariya hails from a village called Vartej located 180 km from Rajkot in the state of Gujarat.	Chetan Sakariya	https://www.espncricinfo.com/db/PICTURES/CMS/319800/319823.10.jpg		f
81	100000	 Right Handed Bat 	India	100000	2021	Navdeep Amarjeet Saini (born 23 November 1992) is an Indian cricketer. He has played for Delhi since 2013. He made his international debut for the India cricket team in August 2019.	Navdeep Saini	https://wallpapercave.com/wp/wp7824719.jpg		f
82	100000	 Right Handed Bat 	India	100000	2021	Khaleel Ahmed (born 5 December 1997) is an Indian cricketer. He made his debut for the national team in September 2018.\n\n\n== Early life and background ==\nKhaleel's father was Khursheed Ahmed, a nurse in a village near the small town of Tonk.	Khaleel Ahmed	https://c.ndtvimg.com/2019-05/eji9ib0o_khaleel-ahmed_625x300_09_May_19.jpg		f
83	100000	 Right Handed Bat 	India	100000	2021	Jayant Yadav  (born 22 January 1990) is an Indian cricketer from Delhi who plays for Haryana in domestic cricket. He is an all-rounder who bats right-handed, and bowls right-arm off-break. He made his international debut in October 2016.	Jayant Yadav	https://www.mumbaiindians.com/static-assets/images/players/small/59611.png		f
84	100000	 Right Handed Bat 	India	100000	2021	Vijay Shankar (born 26 January 1991) is an Indian cricketer who has played for the Indian national cricket team. He is an all-rounder who bats right-handed and bowls right-arm medium pace. In April 2019, he was selected for the India's squad for the 2019 Cricket World Cup.	Vijay Shankar	https://bcciplayerimages.s3.ap-south-1.amazonaws.com/playerheadshot/ipl/284/1083.png		f
85	100000	 Left Handed Bat 	India	100000	2021	Shivam Dube (born 26 June 1993) is an Indian cricketer who plays for Mumbai in domestic cricket and the Chennai Super Kings in the Indian Premier League (IPL). He is an all-rounder who bats left-handed and bowls right-arm at medium pace. He made his international debut for the India cricket team in November 2019.	Shivam Dube	https://cricketaddictor.com/wp-content/uploads/2021/04/Shivam-Dube.jpg		f
86	100000	 Right Handed Bat 	India	100000	2021	Krishnappa Gowtham (born 20 October 1988) is an Indian cricketer who plays for Karnataka. He made his international debut for India in July 2021.\n\n\n== Career ==\nGowtham's professional career began when he was picked for the under-15 Zonal Tournament in Bangalore where he emerged as the second-highest wicket-taker.	K. Gowtham	https://imgk.timesnownews.com/story/K_Gowtham_CSK.png?tr=w-1200,h-900		f
87	100000	 Right Handed Bat 	India	100000	2021	Mohammad Nabi Eisakhil (Pashto: محمد نبي عیسی خېل; born 1 January 1985) is an Afghan cricketer who is the current captain of the T20 international team. Nabi is an all-rounder, playing as a right-handed batsman and off break bowler. He played a major role in Afghanistan's rise to the top level of international cricket, playing in both their first One Day International in April 2009 and their first Test match in June 2018.	Mohammad Nabi	https://tolonews.com/sites/default/files/styles/principal_article_image/public/Nabi%20IPL.jpg?itok=EESccFz3		f
88	100000	 Right Handed Bat 	India	100000	2021	Qais Ahmad (Pashto: قیص احمد; born 15 August 2000) is an Afghan cricketer. He made his Test match debut for the Afghanistan cricket team in September 2019.\n\n\n== Domestic career ==\nQais Ahmad made his senior cricket debut for Kabul Eagles in the 2017 Shpageeza Cricket League in September 2017, before going on to make his first-class cricket debut for Speen Ghar Region in the 2018 Ahmad Shah Abdali 4-day Tournament in March the following year.	Qais Ahmad	https://www.crictracker.com/wp-content/uploads/2019/12/Qais-Ahmad-1.jpg		f
89	100000	 Left Handed Bat 	India	100000	2021	Najibullah Zadran (Pashto: نجیب الله ځدراڼ; born 28 February 1993) is an Afghan cricketer and the vice captain of the Afghanistan Twenty20 International (T20I) side. Zadran is a left-handed batsman who bowls right-arm off break. He made his international debut for Afghanistan in July 2012.	Najibullah Zadran	https://media.gettyimages.com/photos/najibullah-zadran-of-afghanistan-plays-a-shot-as-devon-conway-of-new-picture-id1351814838?s=612x612		f
90	100000	 Right Handed Bat 	India	100000	2021	Rahmanullah Gurbaz (Pashto: رحمان الله ګربز; born 28 November 2001) is an Afghan cricketer. He made his international debut for Afghanistan in September 2019. In January 2021, he became the first batsman for Afghanistan to score a century on debut in a One Day International (ODI) match.	Rahmanullah Gurbaz	https://www.crictracker.com/wp-content/uploads/2021/01/Rahmanullah-Gurbaz-1.jpg		f
91	100000	 Left Handed Bat 	India	100000	2021	Mohammed Zahir Shah (Pashto/Dari: محمد ظاهر شاه, 15 October 1914 – 23 July 2007) was the last king of Afghanistan, reigning from 8 November 1933 until he was deposed on 17 July 1973. Serving for 40 years, Zahir was the longest-serving ruler of Afghanistan since the foundation of the Durrani Empire in the 18th century. He expanded Afghanistan's diplomatic relations with many countries, including with both sides of the Cold War.	Zahir Khan	https://www.mumbaiindians.com/static-assets/waf-images/a8/14/22/16-9/1920-1080/article-14880-zaheerkhan.jpg		f
92	100000	 Right Handed Bat 	India	100000	2021	Waqar Salamkheil (born 2 October 2001) is an Afghan cricketer. He made his Test cricket debut for the Afghanistan cricket team in March 2019.\n\n\n== Domestic and T20 career ==\nHe made his first-class debut for Band-e-Amir Region in the 2017–18 Ahmad Shah Abdali 4-day Tournament on 19 November 2017, taking five wickets for 162 in the second innings.	Waqar Salamkheil	http://cricclubs.com/documentsRep/profilePics/482dd06d-c0f3-42d8-ba2c-e1209a670b9b.png		f
93	100000	 Left Handed Bat 	India	100000	2021	Hazratullah Zazai (Pashto: حضرت الله ځاځی; born 23 March 1998) is an Afghan cricketer. He made his international debut for the Afghanistan cricket team in December 2016. In February 2019, he scored the highest individual score by an Afghan batsman in a Twenty20 International, with an unbeaten 162 runs off 62 balls against Ireland.	Hazratullah Zazai	https://sport360.com/wp-content/uploads/2018/11/zazai1.jpg		f
94	100000	 Right Handed Bat 	India	100000	2021	Karim Janat (born 11 August 1998) is an Afghan cricketer. He made his first-class debut against the England Lions on 7 December 2016. Prior to his first-class debut, he was part of Afghanistan's squad for the 2016 Under-19 Cricket World Cup.	Karim Janat	https://www.crictracker.com/wp-content/uploads/2018/10/Karim-Janat.jpg		f
95	100000	 Right Handed Bat 	India	100000	2021	Naveen-ul-Haq Murid (born 23 September 1999) is an Afghan cricketer. He made his international debut for the Afghanistan cricket team in September 2016.\n\n\n== Domestic and T20 franchise career ==\nNaveen made his first-class debut for Kabul Region in the 2018 Ahmad Shah Abdali 4-day Tournament on 7 March 2018.In September 2018, Naveen was named in Nangarhar's squad in the first edition of the Afghanistan Premier League tournament.	Naveen Ul Haq	https://static.toiimg.com/thumb/msid-75368324,width-1200,height-900,resizemode-4/.jpg		f
96	100000	 Left Handed Bat 	India	100000	2021	Hashmatullah Shahidi (Pashto: حشمت الله شاهدي; born 4 November 1994) is an Afghan cricketer. He made his One Day International (ODI) debut for Afghanistan against Kenya in October 2013. He was one of the eleven cricketers to play in Afghanistan's first ever Test match, against India, in June 2018.	Hashmatullah Shahidi	https://media.gettyimages.com/photos/hashmatullah-shahidi-of-afghanistan-in-action-during-the-group-stage-picture-id1156751346?s=612x612		f
97	100000	 Right Handed Bat 	India	100000	2021	Gulbadin Naib (; born 16 March 1991) is an Afghan cricketer. Naib is a right-handed batsman who bowls right-arm fast-medium. In April 2019, the Afghanistan Cricket Board (ACB) named Naib as the team's new One Day International (ODI) captain ahead of the 2019 Cricket World Cup, replacing Asghar Afghan.	Gulbadin Naib	https://media.gettyimages.com/photos/gulbadin-naib-of-afghanistan-in-action-batting-during-the-group-stage-picture-id1156716558?s=612x612		f
98	100000	 Right Handed Bat 	India	100000	2021	Hamid Hassan (Pashto: حميد حسن; born 1 June 1987) is an Afghan cricketer. He is a right-arm fast bowler and a right-handed batsman who mainly plays as a bowler. He made his international debut for Afghanistan in April 2009.	Hamid Hassan	https://media.gettyimages.com/photos/hamid-hassan-of-afghanistan-is-bowled-by-lasith-malinga-of-sri-lanka-picture-id1153704938?s=612x612		f
99	100000	 Right Handed Bat 	India	100000	2021		Pat Cummins	https://static.toiimg.com/thumb/msid-82297060,imgsize-92674,width-400,resizemode-4/82297060.jpg		f
100	100000	 Left Handed Bat 	India	100000	2021	David Andrew Warner (born 27 October 1986) is an Australian international cricketer and a former captain of the Australian national team. A left-handed opening batsman, Warner is the first Australian cricketer in 132 years to be selected for a national team in any format without experience in first-class cricket. He plays for New South Wales and the Sydney Thunder in domestic cricket.	David Warner	https://c.ndtvimg.com/2019-04/2oc84lcg_david-warner-ipl-bye-afp_625x300_30_April_19.jpg		f
101	100000	 Right Handed Bat 	India	100000	2021	Stevonne Latrall Smith Sr. (born May 12, 1979) is an American former professional football player who was a wide receiver for sixteen seasons in the National Football League (NFL), primarily with the Carolina Panthers, also playing for the Baltimore Ravens. He played college football for the Utah Utes, and was drafted by the Panthers in the third round of the 2001 NFL Draft.	Steve Smith	https://static.toiimg.com/thumb/msid-69107685,width-1200,height-900,resizemode-4/.jpg		f
102	100000	 Right Handed Bat 	India	100000	2021	Mitchell Ross Marsh (born 20 October 1991) is an Australian international cricketer. Marsh has represented Australia in all three forms of cricket, making his debut during the 2011–12 season.\n\n\n== Personal life ==\nMarsh is the second son of Geoff Marsh and younger brother of Shaun Marsh, both of whom have played for the Australian national side.	Mitchell Marsh	https://c.ndtvimg.com/2020-09/4d2jb5dg_mitchell-marsh-bcciipl_625x300_23_September_20.jpg		f
103	100000	 Left Handed Bat 	India	100000	2021		Matthew Wade	https://staticg.sportskeeda.com/editor/2020/12/fbbc5-16074336897880.jpg		f
104	100000	 Left Handed Bat 	India	100000	2021	Josh Reginald Hazlewood (born 8 January 1991) is an Australian international cricketer. He is a tall pace bowler known for his accuracy and has been compared to former Australian paceman Glenn McGrath.\n\n\n== Early career ==\nHazlewood was raised in the small country town of Bendemeer, New South Wales, situated 40 km north of Tamworth.	Josh Hazlewood	https://cricketaddictor.com/wp-content/uploads/2021/03/Josh-Hazlewood-1.jpg		f
105	100000	 Right Handed Bat 	India	100000	2021	Adam Zampa (born 31 March 1992) is an Australian cricketer who represents New South Wales, the Melbourne Stars and the Australian national cricket team. He is a leg spin bowler who also bats right-handed.\n\n\n== Youth career ==\nAs a child, Zampa bowled medium pace, but Cricket Australia had placed restrictions on how many overs pace bowlers were allowed to bowl in under-14 matches, so he decided to change his bowling style to leg spin, inspired by Australian Test cricketer Shane Warne.	Adam Zampa	https://static.toiimg.com/thumb/msid-52219159,width-1200,height-900,resizemode-4/.jpg		f
106	100000	 Right Handed Bat 	India	100000	2021	Aaron James Finch (born 17 November 1986) is an Australian international cricketer who captains the Australian cricket team in limited overs cricket. Finch currently holds the record for two of the three highest individual scores in Twenty20 Internationals (T20I), his score of 172 against Zimbabwe in July 2018 beating his previous record of 156 against England in 2013. In July 2018, he became the first player to reach 900 rating points on the official International Cricket Council (ICC) T20I rankings.	Aaron Finch	https://cdn.dnaindia.com/sites/default/files/styles/full/public/2020/09/24/927012-finch-rcb-ipl2020.jpg		f
107	100000	 Right Handed Bat 	India	100000	2021	Marnus Labuschagne ( or ; born 22 June 1994) is an Australian cricketer who plays internationally for the Australian national team and domestically for Queensland. He also plays for Glamorgan in county cricket and for the Brisbane Heat in the Big Bash League. As of December 2021, Labuschagne is rated as the No.	Marnus Labuschagne	https://sportzwiki.com/wp-content/uploads/2020/12/Marnus-Labuschagne-1.jpg		f
108	100000	 Right Handed Bat 	India	100000	2021	Nathan Mitchell Coulter-Nile (born 11 October 1987) is an Australian cricketer who has played at One Day International (ODI) and Twenty20 International level for the Australian national side. Domestically, he is contracted to Western Australia and the Melbourne Stars.\nFrom Perth, Western Australia, Coulter-Nile attended Aquinas College, and represented the state under-17 and under-19 teams, later going on to play three youth ODI matches for the Australian national under-19 team.	Nathan Coulter-Nile	https://www.insidesport.in/wp-content/uploads/2021/04/933224-ncn-1.jpg		f
109	100000	 Right Handed Bat 	India	100000	2021	Christopher Austin Lynn (born 10 April 1990) is an Australian cricketer. He is a right-handed batsman who plays for Queensland in Australian domestic cricket. Lynn was born in Brisbane, Queensland, and attended St Joseph's Nudgee College and the Queensland Academy of Sport.	Chris Lynn	https://www.espncricinfo.com/db/PICTURES/CMS/319000/319092.10.jpg		f
110	100000	 Right Handed Bat 	India	100000	2021	Daniel Richard Sams (born 27 October 1992) is an Australian international cricketer. He made his international debut for the Australia cricket team in December 2020.\n\n\n== Career ==\nSams made his first-class cricket debut for New Zealand side Canterbury in the 2017–18 Plunket Shield season on 30 October 2017.	Daniel Sams	https://lookaside.fbsbx.com/lookaside/crawler/media/?media_id=251981613268742&get_thumbnail=1		f
111	100000	 Right Handed Bat 	India	100000	2021	Benjamin Reginald McDermott (born 12 December 1994) is an Australian international cricketer. He currently represents the Hobart Hurricanes in the Big Bash League and Tasmania in Australian domestic cricket. He made his international debut for the Australian national cricket team in October 2018.	Ben Mcdermott	https://cdn-wp.thesportsrush.com/2021/12/ee3c168a-ben-mcdermott-ipl.jpg		f
112	100000	 Right Handed Bat 	India	100000	2021	Jason Paul Behrendorff (born 20 April 1990) is an Australian cricketer, currently listed with Western Australia and the Perth Scorchers in Australian domestic cricket.\nAlthough born in New South Wales, Behrendorff grew up in Canberra and played representative cricket for the Australian Capital Territory at both junior and senior levels. A left-arm fast bowler, he transferred to Western Australia for the 2009–10 season and made his debut at state level the following season, playing several matches after injuries to other fast bowlers.	Jason Behrendorff	https://cricketaddictor.com/wp-content/uploads/2021/03/Jason-Behrendorff.jpg		f
113	100000	 Right Handed Bat 	India	100000	2021	Nathan Ellis (born 22 September 1994) is an Australian cricketer. He made his international debut for the Australia cricket team in August 2021. He became the first cricketer to take a hat-trick on his debut in a Twenty20 International (T20I) match.	Nathan Ellis	https://static.toiimg.com/thumb/msid-85509464,width-1200,height-900,resizemode-4/.jpg		f
114	100000	 Right Handed Bat 	India	100000	2021	Andrew James Tye (born 12 December 1986) is an Australian cricketer who plays One Day Internationals (ODIs) and Twenty20 Internationals (T20Is) for the Australian national cricket team. At the domestic level he plays for Western Australia and Perth Scorchers. He is most famous for his use of the knuckle ball and wide variation of pace.	Andrew Tye	https://www.crictracker.com/wp-content/uploads/2018/05/Andrew-Tye-2.jpg		f
115	100000	 Left Handed Bat 	India	100000	2021	Usman Tariq Khawaja (Urdu: عثمان خواجہ; born 18 December 1986) is an Australian cricketer who represents Australia and Queensland. Khawaja made his first-class cricket debut for New South Wales in 2008 and played his first international match for Australia in January 2011. Khawaja was born in Pakistan and emigrated to Australia with his family at the age of five.	Usman Khawaja	https://cricketaddictor.com/wp-content/uploads/2021/09/kha.jpg		f
116	100000	 Right Handed Bat 	India	100000	2021	Benjamin Colin James Cutting (born 30 January 1987) is an Australian cricketer who plays as an all-rounder. Cutting represented Australia in one-day internationals and T20 matches, and at the 2006 U-19 Cricket World Cup in Sri Lanka. Cutting played first-class cricket for the Queensland between 2007 and 2018 before opting to play only white-ball cricket.	Ben Cutting	https://www.espncricinfo.com/db/PICTURES/CMS/244200/244211.jpg		f
117	100000	 Right Handed Bat 	India	100000	2021		Moises Henriques	https://images.hindustantimes.com/rf/image_size_960x540/HT/p2/2019/04/16/Pictures/ipl-t20-2019-kxip-training-session_6b73df50-605f-11e9-b92f-deef78e36bd1.jpg		f
118	100000	 Right Handed Bat 	India	100000	2021	Sean Anthony Abbott (born 29 February 1992) is an Australian professional cricketer originally from Windsor in New South Wales who has represented his country internationally. After playing in junior cricket for Baulkham Hills Cricket Club, he progressed to play grade cricket for Parramatta District. Abbott completed his schooling at Gilroy College, Castle Hill.	Sean Abbott	https://www.crictracker.com/wp-content/uploads/2017/05/Sean-Abbott.jpg		f
119	100000	 Right Handed Bat 	India	100000	2021	Riley Patrick Meredith (born 21 June 1996) is an Australian cricketer. He made his international debut for the Australia cricket team in March 2021.\n\n\n== Domestic and T20 career ==\nMeredith made his List A debut for Cricket Australia XI against Pakistanis during their tour of Australia on 10 January 2017.	Riley Meredith	https://cricketaddictor.com/wp-content/uploads/2021/02/riley-meredith_1d11iz0ar08di1w24ict8yt72i.png		f
120	100000	 Right Handed Bat 	India	100000	2021	Kane William Richardson (born 12 February 1991) is an Australian international cricketer who plays domestic cricket for South Australia and the Melbourne Renegades.\nSince 2013, Richardson has played international cricket for Australia in both One Day Internationals and Twenty20 Internationals, and as a teenager, he played for Australia's Under-19 team, winning the 2010 Under-19 Cricket World Cup with them.\nRichardson is a right-arm fast bowler from country South Australia.	Kane Richardson	https://www.crictracker.com/wp-content/uploads/2021/01/Kane-Richardson.jpg		f
121	100000	 Left Handed Bat 	India	100000	2021	Kurtis Robert Patterson (born 5 April 1993) is an Australian cricketer who plays for the New South Wales cricket team in the Sheffield Shield, and the Perth Scorchers in the Big Bash League. Patterson scored a century on his first-class cricket debut for New South Wales in November 2011, becoming the youngest batsman to score a century in Sheffield Shield cricket. In January 2019, he made his Test debut for Australia against Sri Lanka, becoming the 457th person to play test cricket for Australia.	Kurtis Patterson	https://media.gettyimages.com/photos/kurtis-patterson-of-the-scorchers-celebrates-his-half-century-during-picture-id1357860560		f
122	100000	 Left Handed Bat 	India	100000	2021		Ashton Agar	https://www.publicbiography.com/public/uploads/fb7b7a5ebe51c7e22ede95ba50ba4b73.webp		f
123	100000	 Right Handed Bat 	India	100000	2021	Wesley Austin Agar (born 5 February 1997) is an Australian cricketer. He is a fast bowler who has played for Australia's national youth team, and has played first-class and List A cricket for South Australia and Twenty20s for the Adelaide Strikers. He is the younger brother of fellow Australian international cricketer, Ashton Agar.	Wesley Agar	https://images.indiafantasy.com/wp-content/uploads/20210108155514/c2dc4d2f0c431529633cd40f11a06095.jpg		f
124	100000	 Left Handed Bat 	India	100000	2021	Billy James Stanlake (born 4 November 1994) is an Australian cricketer. He is a fast bowler who represented Australia in the 2014 Under-19 Cricket World Cup and played One Day International and Twenty20 International cricket for the full national side. He plays domestic cricket for Queensland and is for the Melbourne Stars in the Big Bash League.	Billy Stanlake	https://s01.sgp1.digitaloceanspaces.com/large/876789-88022-hwjowkpxms-1524581069.JPG		f
125	100000	 Right Handed Bat 	India	100000	2021	James Peter Faulkner (born 29 April 1990) is an Australian international cricketer who plays domestic cricket for Tasmania. An all-rounder, Faulkner is known for his aggressive batting in the middle order, and for his bowling at the end of limited-overs innings.He was a prominent member of the victorious Australian squad at the 2015 Cricket World Cup and was Player of the Match in the tournament final.\n\n\n== Early life and family ==\nFaulkner was born at Launceston, Tasmania in 1990.	James Faulkner	https://resize.indiatvnews.com/en/resize/oldbucket/715_-/sportscricket/IndiaTvb41615_faulkner2.jpg		f
126	100000	 Right Handed Bat 	India	100000	2021	Jack David Wildermuth (born 1 September 1993) is an Australian cricketer who plays first-class cricket for Queensland. He made his List A debut for Cricket Australia XI on 5 October 2015 in the 2015–16 Matador BBQs One-Day Cup. He made his Twenty20 (T20) debut for Brisbane Heat in the 2016–17 Big Bash League season on 21 December 2016.In May 2018, he was named in Australia's Twenty20 International (T20I) squad for the 2018 Zimbabwe Tri-Nation Series.	Jack Wildermuth	https://media.gettyimages.com/photos/jack-wildermuth-of-the-renegades-celebrates-the-wicket-of-mitch-marsh-picture-id1084834528?s=612x612		f
127	100000	 Left Handed Bat 	India	100000	2021	Joel Samuel Paris (born 11 December 1992) is an Australian cricketer, currently contracted to Western Australia and the Hobart Hurricanes domestically.\n\n\n== Career ==\nFrom Perth, Paris represented Western Australia at under-19 level, making his debut while aged only 16. He attended Scotch College in Perth.	Joel Paris	https://sportzcraazy.com/wp-content/uploads/2019/09/joel-paris-photo-1.jpg		f
128	100000	 Right Handed Bat 	India	100000	2021	Hilton William Raymond Cartwright (born 14 February 1992) is a Zimbabwean born Australian international cricketer who plays for Western Australia and the Melbourne Stars. He is a right-handed all-rounder. Cartwright made his Test debut for the Australian national team in January 2017, having earlier played for Australia A and the National Performance Squad.	Hilton Cartwright	https://media.gettyimages.com/photos/hilton-cartwright-of-the-scorchers-bats-during-the-big-bash-league-picture-id912950946?s=612x612		f
129	100000	 Left Handed Bat 	India	100000	2021	Shakib Al Hasan (Bengali: সাকিব আল হাসান; born 24 March 1987) is a Bangladeshi international cricketer and businessman. His aggressive left-handed batting style in the middle order and controlled slow left-arm orthodox bowling has made him arguably Bangladesh's greatest cricketer.He is widely considered to be one of the greatest all-rounders of all time.\n\n\n== Early years and youth cricket ==\nBorn in Magura, Khulna, Shakib started playing cricket at an early age.	Shakib Al Hasan	https://media.gettyimages.com/photos/kolkata-knight-riders-bowler-shakib-al-hasan-celebrates-after-taking-picture-id142833776?s=612x612		f
130	100000	 Left Handed Bat 	India	100000	2021	Mustafizur Rahman (Bengali: মুস্তাফিজুর রহমান; born 6 September 1995), also known as The Fizz, is a Bangladeshi international cricketer. He is specialized as a left-arm fast-medium bowler. He has taken the most wickets (13) in a debut One Day International (ODI) series.	Mustafizur Rahman	https://c.ndtvimg.com/2021-09/a5jio7s8_mustafizur-ipl-rajasthan-royals-bcciipl_625x300_21_September_21.jpg		f
131	100000	 Left Handed Bat 	India	100000	2021	Taskin Ahmed Tazim (Bengali: তাসকিন আহমেদ তাজিম; born 3 April 1995) is a Bangladeshi cricketer. He is a right-arm fast bowler and a left-handed batsman. He represents Dhaka Metropolis in first-class and List A cricket and the Rangpur Rangers franchise in the Bangladesh Premier League.	Taskin Ahmed	https://m.cricbuzz.com/a/img/v1/192x192/i1/c156212/taskin-ahmed.jpg		f
132	100000	 Left Handed Bat 	India	100000	2021	Mohammad Shoriful Islam (Bengali: মোহাম্মদ শরিফুল ইসলাম; born 3 June 2001) is a Bangladeshi cricketer. He made his international debut for the Bangladesh cricket team in March 2021.\n\n\n== Domestic and under-19 career ==\nShoriful made his first-class debut for Rajshahi Division in the 2017–18 National Cricket League on 15 September 2017.	Shoriful Islam	https://www.publicbiography.com/public/uploads/5aeae2e65be2b423f10fdc5d804720ea.webp		f
133	100000	 Right Handed Bat 	India	100000	2021	Jason Jonathan Roy (born 21 July 1990) is a South African-born English cricketer who plays for England in One Day International (ODI) and Twenty20 International (T20I) cricket. In domestic cricket, he represents Surrey, and has played in multiple Twenty20 leagues, including for Gujarat Lions, Delhi Daredevils, Sunrisers Hyderabad, and Gujarat Titans in the Indian Premier League.\nBorn in South Africa, Roy moved to England as a child.	Jason Roy	https://e2.365dm.com/21/09/1600x900/skysports-jason-roy-sunrisers-hyderabad_5527611.jpg		f
134	100000	 Right Handed Bat 	India	100000	2021		Jonny Bairstow	https://static.toiimg.com/thumb/msid-68704006,width-1200,height-900,resizemode-4/.jpg		f
136	100000	 Right Handed Bat 	India	100000	2021	Mark Jason Wood (born 11 January 1990) is an English cricketer.  Wood is a right-arm fast bowler who also bats right-handed. He represents England internationally in all forms of the game, and plays domestic cricket for Durham.	Mark Wood	https://cricketaddictor.gumlet.io/wp-content/uploads/2021/02/woodd.jpg?compress=true&quality=80&w=800&dpr=1.0		f
137	100000	 Right Handed Bat 	India	100000	2021	Adil Usman Rashid (born 17 February 1988) is an English cricketer who plays for Yorkshire and England as a leg spinner. Rashid was part of the England squad that won the 2019 Cricket World Cup.Previously a player with England Under-19s, in December 2008, he was called into the full England Test squad, for the Test matches to be played in India. He was then selected for the full tour of the West Indies.	Adil Rashid	https://cricketaddictor.gumlet.io/wp-content/uploads/2021/08/Adil-Rashid.jpg?compress=true&quality=80&w=800&dpr=2.6		f
138	100000	 Left Handed Bat 	India	100000	2021	Dawid Johannes Malan ( DAH-vid mə-LAN; born 3 September 1987) is an English cricketer who plays for England and Yorkshire. He was previously ranked first in the ICC T20I batsman rankings, and has achieved the highest ever rating (915 points) in the format.\n\n\n== Early life and education ==\nMalan was born in London.	Dawid Malan	https://cdn.insidesport.co/wp-content/uploads/2021/03/20083440/dawid-malan-hundred.jpg		f
139	100000	 Left Handed Bat 	India	100000	2021	Eoin Joseph Gerard Morgan  (born 10 September 1986) is an Irish-born cricketer who plays for (and captains) the England cricket team in limited overs cricket, Kolkata Knight Riders in the Indian Premier League, Middlesex in the T20 Blast and London Spirit in The Hundred. Under his captaincy, England won the 2019 ICC Cricket World Cup, the first time they won the tournament.\nA left-handed batter, he plays county cricket for Middlesex and has played for England's Test, One Day International (ODI), and Twenty20 International (T20I) teams.	Eoin Morgan	https://imagevars.gulfnews.com/2020/09/30/Eoin-Morgan-of-Kolkata-Knight-Riders-bats.-_174dfb1b473_medium.JPG		f
140	100000	 Right Handed Bat 	India	100000	2021	Christopher James Jordan (born 4 October 1988) is a Barbadian-born English cricketer. He is a right-arm fast bowler and a late-order right-handed batsman. He plays for Surrey  in domestic cricket and has played for England, mostly in the shorter formats of the game.	Chris Jordan	https://resize.indiatvnews.com/en/resize/newbucket/715_-/2020/09/chris-jordan-kxip-ipl-2020-1601392646.jpg		f
141	100000	 Right Handed Bat 	India	100000	2021		Liam Livingstone	https://c.ndtvimg.com/2021-09/k67pr9dg_liam-livingstone-afp_625x300_16_September_21.jpg?im=FeatureCrop,algorithm=dnn,width=806,height=605		f
142	100000	 Right Handed Bat 	India	100000	2021		Alex Hales	https://static.india.com/wp-content/uploads/2020/03/Image-4-15.jpg		f
143	100000	 Right Handed Bat 	India	100000	2021	Jofra Chioke Archer (born 1 April 1995) is a Barbadian-born English cricketer representing England and Sussex. In April 2019, Archer was selected to play for the England team in limited overs fixtures against Ireland and Pakistan. He made his international debut for England in May 2019, and was part of the England squad that won the 2019 Cricket World Cup.	Jofra Archer	https://s3.ap-southeast-1.amazonaws.com/images.deccanchronicle.com/dc-Cover-tprf0pjmfmpmd3novdb76ot150-20190402013020.Medi.jpeg		f
144	100000	 Left Handed Bat 	India	100000	2021	George Henry Simmons Garton (born 15 April 1997) is an English international cricketer who plays for the England national cricket team and Sussex County Cricket Club. He is a left-handed batter who bowls left-arm medium-fast. He made his international debut for England in January 2022.	George Garton	https://e0.365dm.com/21/09/2048x1152/skysports-george-garton-ipl_5529573.jpg		f
145	100000	 Right Handed Bat 	India	100000	2021	Tymal Solomon Mills (born 12 August 1992) is an English international cricketer who currently plays internationally for England and domestically for Sussex. He is a left-handed fast bowler and a right-handed batsman who plays mainly as a bowler. He made his international debut for England in July 2016.	Tymal Mills	https://cricketaddictor.com/wp-content/uploads/2021/02/Tymal-Mills.jpg		f
146	100000	 Right Handed Bat 	India	100000	2021	Reece James William Topley (born 21 February 1994) is an English cricketer. Topley is a right-handed batsman who bowls left-arm medium-fast.\n\n\n== Background ==\nHe was born on 21 February 1994 in Ipswich.	Reece Topley	https://cricketaddictor.gumlet.io/wp-content/uploads/2021/04/Reece-Topley-1.jpg?compress=true&quality=80&w=640&dpr=1.0		f
147	100000	 Right Handed Bat 	India	100000	2021	James Michael Vince (born 14 March 1991) is an English cricketer who is the captain for Hampshire County Cricket Club and plays for the England cricket team. Vince was part of the England squad that won the 2019 Cricket World Cup.  He is a right-handed middle-order batsman who is also a right-arm medium pace bowler.	James Vince	https://www.crictracker.com/wp-content/uploads/2021/07/James-Vince.jpg		f
148	100000	 Right Handed Bat 	India	100000	2021	Lewis Gregory (born 24 May 1992) is an English cricketer who plays for Somerset County Cricket Club.  A right-handed batsman and right-arm seam bowler, Gregory made his senior cricket debut in 2010, representing Somerset against the touring Pakistanis. He made his international debut for the England cricket team in November 2019.	Lewis Gregory	https://www.thetoughtackle.com/wp-content/uploads/2022/02/Untitled-design-2-2.jpg		f
149	100000	 Right Handed Bat 	India	100000	2021	Saqib Mahmood (born 25 February 1997) is an English cricketer who plays for Lancashire, and also for Sydney Thunder in the Australian Big Bash League. He is a right-arm fast bowler, who bats right-handed. In December 2015, he was named in England's squad for the 2016 Under-19 Cricket World Cup.	Saqib Mahmood	https://www.espncricinfo.com/db/PICTURES/CMS/317300/317332.4.jpg		f
150	100000	 Left Handed Bat 	India	100000	2021	David Jonathan Willey (born 28 February 1990) is an English international cricketer. He is a left-handed batsman and bowler. He is the son of former England cricketer and international umpire Peter Willey.	David Willey	https://sportzwiki.com/wp-content/uploads/2017/11/David-Willey-.jpg		f
151	100000	 Right Handed Bat 	India	100000	2021	Craig Overton (born 10 April 1994) is an English cricketer who plays for Somerset and England. He is an all-rounder who bowls right-arm medium-fast and bats right-handed. He made his international debut for England in December 2017.	Craig Overton	https://www.publicbiography.com/public/uploads/197b7d34db22db0c68426872ccc6217a.webp		f
152	100000	 Right Handed Bat 	India	100000	2021	Samit Rohit Patel (born 30 November 1984) is an English cricketer. A right-handed batsman and a slow left-arm bowler, he plays first-class cricket for Nottinghamshire County Cricket Club. Patel made his One Day International debut for England in August 2008, however was later dropped from the side after failing to meet fitness levels.	Samit Patel	https://media.gettyimages.com/photos/samit-patel-and-lewis-gregory-of-trent-rockets-celebrate-victory-the-picture-id1332744048?s=612x612		f
153	100000	 Right Handed Bat 	India	100000	2021	Paul Robert Stirling (born 3 September 1990) is an Irish cricketer. Stirling is the opening batsman for the Ireland cricket team and an occasional right arm off break bowler. He is one of the top 10 run scorers in T20 internationals.	Paul Stirling	https://www.insidesport.in/wp-content/uploads/2021/01/2021-01-06-9.jpg		f
155	100000	 Right Handed Bat 	India	100000	2021	Gareth James Delany (born 28 April 1997) is an Irish cricketer. He made his international debut for the Ireland cricket team in July 2019. In January 2020, he was one of nineteen players to be awarded a central contract from Cricket Ireland, the first year in which all contracts were awarded on a full-time basis.	Gareth Delany	https://img.cricketworld.com/images/f-068705/delany-on-the-way-to-his-maiden-fifty.jpg		f
156	100000	 Right Handed Bat 	India	100000	2021		Trent Boult	https://images.indianexpress.com/2020/11/boult-mi.jpg		f
157	100000	 Right Handed Bat 	India	100000	2021		Lockie Ferguson	https://cdn.dnaindia.com/sites/default/files/styles/full/public/2020/10/18/932156-2.jpg		f
158	100000	 Left Handed Bat 	India	100000	2021		James Neesham	https://c.ndtvimg.com/2021-09/ac5t133o_jimmy-neesham-mumbai-indians-bcciipl_625x300_28_September_21.jpg?im=FaceCrop,algorithm=dnn,width=806,height=605		f
159	100000	 Right Handed Bat 	India	100000	2021	Inderbir Singh "Ish" Sodhi (born 31 October 1992) is a New Zealand cricketer who represents the New Zealand national team in all formats, and Northern Districts in domestic cricket.  He bowls right-arm leg spin, and bats right-handed. He reached the no.1 ranking for T20I bowlers in January 2018, jumping from no.	Ish Sodhi	https://d33v7lirz96evl.cloudfront.net/IPL/photo/2020/01/02/5f1e9739-48a4-46d0-b667-eefe2fa255b6/ish-sodhi.JPG		f
160	100000	 Right Handed Bat 	India	100000	2021	Finnley Hugh Allen (born 22 April 1999) is a New Zealand cricketer. Allen made his international debut for the New Zealand cricket team in March 2021.\n\n\n== Career ==\nHe made his Twenty20 debut for Auckland in the 2016–17 Super Smash on 3 January 2017.	Finn Allen	https://www.insidesport.in/wp-content/uploads/2021/04/2021-03-18-7.jpg		f
161	100000	 Left Handed Bat 	India	100000	2021	Devon Philip Conway (born 8 July 1991) is a cricketer, born in South Africa, who now plays in New Zealand, where he became eligible to represent the New Zealand cricket team. In March 2020, the International Cricket Council (ICC) confirmed that Conway would be eligible to play for New Zealand from 28 August 2020. In May 2020, New Zealand Cricket awarded him with a central contract, ahead of the 2020–21 season.Conway made his international debut for New Zealand in November 2020.	Devon Conway	https://static.toiimg.com/thumb/msid-81152950,width-1200,height-900,resizemode-4/.jpg		f
162	100000	 Right Handed Bat 	India	100000	2021		Daryl Mitchell	https://image.crictracker.com/wp-content/uploads/2021/11/Daryl-Mitchell.jpg		f
163	100000	 Right Handed Bat 	India	100000	2021	Glenn Dominic Phillips (born 6 December 1996) is a New Zealand cricketer, born in South Africa, who represents the New Zealand national cricket team and plays for Auckland domestically. He made his international debut for New Zealand in February 2017. In December 2015, he was named in New Zealand's squad for the 2016 Under-19 Cricket World Cup.	Glenn Phillips	https://cricketaddictor.com/wp-content/uploads/2021/08/Glenn-Philips.jpg		f
178	100000	 Left Handed Bat 	India	100000	2021	Kagiso Rabada (born 25 May 1995) is a South African international cricketer who plays all formats of the game. He made his South African debut in November 2014 in limited-overs cricket before going on to make his Test debut in November 2015. By January 2018, he had topped both the ICC ODI bowler rankings and the ICC Test bowler rankings aged 22.	Kagiso Rabada	https://m.economictimes.com/thumb/msid-69064878,width-1200,height-900,resizemode-4,imgsize-164113/interview-kagiso-rabada-opens-up-on-ipl-and-world-cup.jpg		f
164	100000	 Right Handed Bat 	India	100000	2021	Tim Seifert (born 14 December 1994) is a New Zealand international cricketer. He was part of New Zealand's squad for the 2014 ICC Under-19 Cricket World Cup, and made his international debut for the New Zealand cricket team in February 2018.\n\n\n== Domestic and T20 franchise career ==\nIn December 2017,  Seifert scored the fastest century in a domestic Twenty20 match in New Zealand, batting for Northern Districts against Auckland in the 2017–18 Super Smash.	Tim Seifert	https://www.thesportsnews.in/wp-content/uploads/2020/10/IPL-2020-Tim-Seifert-joins-Kolkata-Knight-Riders-as-Ali-Khan-replacement-1200x900.jpg		f
165	100000	 Right Handed Bat 	India	100000	2021	Adam Fraser Milne (born 13 April 1992) is a New Zealand professional cricketer who plays limited overs cricket for the New Zealand national cricket team. He is a right-arm fast bowler.\n\n\n== Early life ==\nMilne was born in Palmerston North, New Zealand and attended Palmerston North Intermediate Normal School, and then Palmerston North Boys' High School.	Adam Milne	https://crickettimes.com/wp-content/uploads/2019/03/Adam-Milne.jpg		f
166	100000	 Right Handed Bat 	India	100000	2021	Todd Duncan Astle (born 24 September 1986) is a New Zealand cricketer who plays for the New Zealand national cricket team. Astle began his cricket career as an opening batsman, representing New Zealand in the 2006 Under-19 Cricket World Cup, but over time playing first-class cricket for Canterbury, he morphed into a bowling all-rounder. He made his Test cricket debut for New Zealand in 2012 in Sri Lanka, but did not play another international match until 2015.	Todd Astle	https://images.googlycricket.net/wp-content/uploads/2018/03/cute-HD-wallpaper-image-of-Todd-Astle.jpg		f
167	100000	 Right Handed Bat 	India	100000	2021	Martin James Guptill (born 30 September 1986) is a New Zealand international cricketer who plays as an opening batsman in limited overs formats of the game. Guptill is the first cricketer from New Zealand and the fifth overall to have scored a double century in a One Day International match and holds the current record for the highest individual score in Cricket World Cup matches and the second highest score in One Day Internationals of 237 not out. In March 2021, Guptill played in his 100th T20I match.Guptill has scored more than 600 T20I runs in the Eden Park cricket stadium.	Martin Guptill	https://iplplatform-static-files.s3.amazonaws.com/IPL/photo/2017/04/30/ce85b044-887c-402b-af29-564d369019b6/Martin-guptil.jpg		f
168	100000	 Right Handed Bat 	India	100000	2021	Scott Kuggeleijn (born 3 January 1992) is a New Zealand international cricketer. He plays first-class cricket for Northern Districts.\n\n\n== Domestic and T20 career ==\nIn the 2016–17 Ford Trophy, Kuggeleijn took the most wickets in the tournament, with seventeen dismissals in nine matches.	Scott Kuggeleijn	https://cdn.sportslumo.com/wp-content/uploads/2021/04/27152616/Scott-Kuggeleijn-compressed.jpg		f
169	100000	 Right Handed Bat 	India	100000	2021		Tim Southee	https://p.imgci.com/db/PICTURES/CMS/275900/275993.jpg		f
170	100000	 Left Handed Bat 	India	100000	2021	Colin Munro (born 11 March 1987) is a South-African born New Zealand international cricketer, who plays limited overs formats of the game. He was a member of the New Zealand Under 19 side and is currently a member of the Auckland cricket team.\n\n\n== Early life ==\nMunro was born the youngest of 4 boys, in early spring, 1987, with three older brothers.	Colin Munro	https://cdn.dnaindia.com/sites/default/files/styles/full/public/2020/08/13/919137-colin-munro.jpg		f
171	100000	 Left Handed Bat 	India	100000	2021	Neil Wagner (born 13 March 1986) is a South African-born New Zealand Test cricketer who plays for New Zealand and Northern Districts cricket teams. He played for Northerns until 2007/08 and Otago between 2008 and 2018.\n\n\n== Early career ==\nWagner was born at Pretoria and attended Afrikaanse Hoër Seunskool as a high school student where he played for the 1st team.	Neil Wagner	https://resources.stuff.co.nz/content/dam/images/1/i/d/k/p/5/image.related.StuffLandscapeSixteenByNine.1420x800.1j1gqd.png/1494400164506.jpg		f
172	100000	 Right Handed Bat 	India	100000	2021	Colin de Grandhomme (born 22 July 1986) is a Zimbabwean-born New Zealand international cricketer.\n\n\n== Early, domestic and T20 career ==\nBorn at Harare, de Grandhomme, who attended St. George's College, Harare, began his career by playing for Manicaland in Zimbabwe, and was part of the Zimbabwe team at the 2004 Under-19 Cricket World Cup in Bangladesh.	Colin De Grandhomme	https://p.imgci.com/db/PICTURES/CMS/276000/276006.jpg		f
173	100000	 Left Handed Bat 	India	100000	2021	Hamish Kyle Bennett (born  22 February 1987) is a New Zealand international cricketer who plays for the New Zealand national cricket team. He plays for Wellington in New Zealand domestic competitions. Earlier in his career he represented New Zealand in the 2006 ICC Under-19 Cricket World Cup in Sri Lanka.	Hamish Bennett	https://www.publicbiography.com/public/uploads/f77c79b3be419e5b329862ade006bd29.webp		f
174	100000	 Right Handed Bat 	India	100000	2021	Blair Marshall Tickner (born 13 October 1993) is a New Zealand cricketer who plays for Central Districts. He made his international debut for the New Zealand cricket team in February 2019.\n\n\n== Domestic career ==\nIn November 2017, he took at hat-trick in the first innings for Central District's match against Wellington in the 2017–18 Plunket Shield season.In the 2017–18 Super Smash, he was the leading wicket-taker, with twenty-one dismissals in eleven matches.	Blair Tickner	https://www.publicbiography.com/public/uploads/d3d4ff06ad4725faa8bf6813c615378e.webp		f
175	100000	 Right Handed Bat 	India	100000	2021	Anaru Kyle Kitchen (born 21 February 1984) is a New Zealand cricketer who plays for the Otago cricket team. He is a right-handed middle-order batsman and a slow left-arm orthodox bowler. He plays for North East Valley Cricket Club.	Anaru Kitchen	https://media.gettyimages.com/photos/anaru-kitchen-of-otago-looks-on-as-rain-delays-play-during-the-picture-id893959354?s=612x612		f
176	100000	 Left Handed Bat 	India	100000	2021	Quinton de Kock (born 17 December 1992) is a South African cricketer and former captain of the Proteas in all three formats. He currently plays for the Titans at the domestic level,  and South Africa in limited overs cricket. He was named the Cricketer of the Year at Cricket South Africa's 2017 Annual Awards.An opening batsman and wicket-keeper, de Kock made his domestic debut for the Highveld Lions during the 2012/2013 season.	Quinton De Kock	https://cricketaddictor.com/wp-content/uploads/2021/03/Quinton-de-Kock.jpg		f
177	100000	 Right Handed Bat 	India	100000	2021	Francois "Faf" du Plessis ( DOO-pless-ee; born 13 July 1984) is a South African international cricketer and former captain of the  South Africa national cricket team. \ndu Plessis is a right-handed batsman and part-time leg spin bowler. He has played South African domestic cricket for Northerns and the Titans, as well as matches for Lancashire County Cricket Club, Chennai Super Kings, Rising Pune Supergiant, and Royal Challengers Bangalore in the Indian Premier League.	Faf Du Plessis	https://wallpaperaccess.com/full/6159884.jpg		f
179	100000	 Left Handed Bat 	India	100000	2021		David Miller	https://www.insidesport.in/wp-content/uploads/2019/03/Miller.jpg		f
180	100000	 Right Handed Bat 	India	100000	2021	Mohammad Imran Tahir  (Punjabi: عمران طاہر; born 27 March 1979) is a Pakistani-born South African cricketer. A spin bowler who predominantly bowls googlies and a right-handed batsman, Tahir played for South Africa in all three forms of cricket, but preferred the white ball matches.\nOn 15 June 2016, Tahir became the first South African bowler to take seven wickets in an ODI, and also the fastest South African to reach 100 ODI wickets (58 matches).	Imran Tahir	https://cricketaddictor.com/wp-content/uploads/2021/03/Imran-Tahir-1.jpg		f
181	100000	 Right Handed Bat 	India	100000	2021		Aiden Markram	https://cricketaddictor.gumlet.io/wp-content/uploads/2021/09/RR-defeat-PBKS-in-IPL-2021.jpeg?compress=true&quality=80&w=1000&dpr=2.6		f
182	100000	 Right Handed Bat 	India	100000	2021		Marco Jansen	https://cricketaddictor.gumlet.io/wp-content/uploads/2021/04/Marco-Jansenvvv.jpg?compress=true&quality=80&w=1024&dpr=2.6		f
183	100000	 Right Handed Bat 	India	100000	2021	Tabraiz Shamsi (born 18 February 1990) is a South African cricketer. He has played first-class cricket for teams such as Dolphins, Gauteng, Gauteng Under-19s, KwaZulu Natal, KwaZulu-Natal Inland, Lions, and Titans. His batting style is right-handed and he is known for his left-arm unorthodox spin bowling.	Tabraiz Shamsi	https://leanbrow.com/wp-content/uploads/2021/08/1629905136_pic.jpg		f
184	100000	 Right Handed Bat 	India	100000	2021	Hendrik Erasmus "Rassie" van der Dussen (born 7 February 1989) is a South African professional cricketer who represents the South Africa national cricket team and plays for the Highveld Lions cricket team in domestic cricket. In the 2018 South African Cricket Annual, he was named as one of the five Cricketers of the Year.In August 2019, van der Dussen was named the International Men's Newcomer of the Year at Cricket South Africa's annual award ceremony. Later the same month, Cricket South Africa awarded him with a central contract for the 2019–20 season.	Rassie Van Der Dussen	https://www.crictracker.com/wp-content/uploads/2020/12/Rassie-van-der-Dussen.jpg		f
185	100000	 Right Handed Bat 	India	100000	2021	Dwaine Pretorius (born 29 March 1989) is a South African professional cricketer who currently plays for Highveld Lions. He has represented South Africa at international level.\n\n\n== Domestic and T20 career ==\nHe was included in the North West cricket team squad for the 2015 Africa T20 Cup.	Dwaine Pretorius	https://www.crictracker.com/wp-content/uploads/2021/02/Dwaine-Pretorius.jpg		f
186	100000	 Right Handed Bat 	India	100000	2021	Heinrich Klaasen (born 30 July 1991) is a South African cricketer who plays for the South African national cricket team. He was included in the Northerns cricket team squad for the 2015 Africa T20 Cup. He was picked by Rajasthan Royals in 2018, and by Royal Challengers Bangalore in 2019 to play in the Indian Premier League (IPL).	Heinrich Klaasen	https://www.cricketcountry.com/wp-content/uploads/2018/05/Heinrich-Klaasen-IANS.jpg		f
187	100000	 Right Handed Bat 	India	100000	2021	Keshav Atmanand Maharaj (born 7 February 1990) is a South African professional cricketer who plays for the South Africa national team in Tests, One Day International (ODI) and Twenty20 International (T20I) cricket. He serves as the vice-captain of the side in limited overs cricket. He made his debut in first-class cricket in 2006 and his Test debut in November 2015.	Keshav Maharaj	https://m.cricbuzz.com/a/img/v1/192x192/i1/c156935/keshav-maharaj.jpg		f
188	100000	 Right Handed Bat 	India	100000	2021	Janneman Nieuwoudt Malan (born 18 April 1996) is a South African cricketer. He made his international debut for the South Africa in February 2019.\n\n\n== Domestic and T20 career ==\nMalan was included in the North West squad for the 2016 Africa T20 Cup.	Janneman Malan	https://www.espncricinfo.com/db/PICTURES/CMS/301400/301461.5.jpg		f
189	100000	 Left Handed Bat 	India	100000	2021	Rilee Roscoe Rossouw (born 9 October 1989) is a South African cricketer who played for South Africa between 2014 and 2016. In South Africa he played domestic cricket for Knights and Free State before signing a deal with Hampshire in England in January 2017. He is a left-hand batsman and a right arm off-spin bowler.	Rilee Rossouw	https://live.staticflickr.com/8744/16615196064_5d52b8c8b2_b.jpg		f
190	100000	 Right Handed Bat 	India	100000	2021	Marchant de Lange (born 13 October 1990) is a South African cricketer who plays for Somerset.\nHe is a right-arm fast bowler and tail-end right-handed batsman and was called up to the South Africa squad from relative obscurity and little first-class experience for the series against Sri Lanka. De Lange was drafted as a late replacement for Vernon Philander in the second test match against Sri Lanka and returned figures of 8/126 on Test debut, including 7/81 in the Sri Lankan first innings.	Marchant De Lange	https://m.psecn.photoshelter.com/img-get2/I0000Mb6xbCqPH5o/fit=1000x750/Marchant-De-Lange.jpg		f
191	100000	 Right Handed Bat 	India	100000	2021	Mogammad Zubayr Hamza (born 19 June 1995) is a South African cricketer. He made his Test debut for the South Africa cricket team in January 2019, becoming South Africa's 100th Test player since readmission. In domestic cricket, he was named as the captain of the Cape Cobras, ahead of the 2020–21 season.	Zubayr Hamza	https://resize.indiatvnews.com/en/resize/newbucket/1200_-/2019/10/hamza-getty-1571670757.jpg		f
192	100000	 Left Handed Bat 	India	100000	2021	Wayne Dillon Parnell (born 30 July 1989) is a South African professional cricketer who most recently played for Northamptonshire in English county cricket.\nPreviously, he played Test cricket, One Day International cricket and Twenty20 matches for South Africa. At domestic level he played for Cape Cobras, having previously played for the Warriors and Eastern Province.	Wayne Parnell	https://lookaside.fbsbx.com/lookaside/crawler/media/?media_id=10157721870062555		f
193	100000	 Right Handed Bat 	India	100000	2021	Daryn Miles Dupavillon (born 15 July 1994) is a South African professional cricketer who represents KwaZulu-Natal and Dolphins. He is a right-arm fast bowler who also bats right-handed. He made his international debut for South Africa in March 2020.	Daryn Dupavillon	https://www.muhabarishaji.com/wp-content/uploads/2021/04/Daryn_Dupavillon.jpg.optimal.jpg		f
194	100000	 Right Handed Bat 	India	100000	2021	Sisanda Magala (born 7 January 1991) is a South African professional cricketer. He made his international debut for the South Africa cricket team in April 2021.\n\n\n== Domestic career ==\nMagala was included in the Eastern Province cricket team squad for the 2015 Africa T20 Cup.	Sisanda Magala	https://www.espncricinfo.com/db/PICTURES/CMS/302200/302267.jpg		f
195	100000	 Left Handed Bat 	India	100000	2021	Andile Lucky Phehlukwayo (born 3 March 1996) is a South African professional cricketer. He is a left handed lower order batsman who bowls right-arm fast-medium. He made his international debut for South Africa in September 2016.	Andile Phehlukwayo	https://www.sportzcraazy.com/wp-content/uploads/2019/09/andile-phehlukwayo-photo.jpg		f
196	100000	 Right Handed Bat 	India	100000	2021	Pinnaduwage Wanindu Hasaranga de Silva (born 29 July 1997), better known as Wanindu Hasaranga, is a professional Sri Lankan cricketer who plays for the national team in all three formats of the game. He made his international debut for Sri Lanka in July 2017. His elder brother, Chaturanga de Silva, has also represented the national team.	Wanindu Hasaranga	https://cdn.dnaindia.com/sites/default/files/styles/full/public/2021/08/09/989729-wanindu-hasaranga.jpg		f
197	100000	 Right Handed Bat 	India	100000	2021		Dushmanta Chameera	https://cricketaddictor.com/wp-content/uploads/2021/08/Tim-David-Dushmantha-Chameera.png		f
198	100000	 Left Handed Bat 	India	100000	2021	Kariyawasam Indipalage Charith Asalanka (born 29 June 1997) is a Sri Lankan professional cricketer who plays all three formats of the game for the national team. A left-handed batsman, Asalanka made his international debut for Sri Lanka in June 2021.\n\n\n== Early career ==\nAsalanka toured England with the Sri Lanka under-17 team in 2013, opening the batting and top-scoring in each innings with 92 and 31 in a three-day match against an English under-17 team at Loughborough.	Charith Asalanka	https://www.crictracker.com/wp-content/uploads/2021/11/Charith-Asalanka.jpg		f
199	100000	 Left Handed Bat 	India	100000	2021	Dickwella Patabendige Dilantha Niroshan Dickwella, known as Niroshan Dickwella (born 23 June 1993), is a professional Sri Lankan cricketer, who plays all formats of the game for Sri Lanka. A left-hand batsman, he also plays as a wicket-keeper of the team. Dickwella is known for hitting left handed Dilscoops.	Niroshan Dickwella	https://c8.alamy.com/comp/JEB9KK/sri-lankas-niroshan-dickwella-JEB9KK.jpg		f
200	100000	 Right Handed Bat 	India	100000	2021	Balapuwaduge Kusal Gimhan Mendis, known as  Kusal Mendis ; born 2 February 1995) is a professional Sri Lankan cricketer who plays all forms of the game. He only played sixteen first-class matches before playing for the national side. He usually bats at number three in all formats.	Kusal Mendis	https://c8.alamy.com/comp/TDEKBX/london-uk-15th-june-2019-kusal-mendis-of-sri-lanka-hits-the-ball-for-four-runs-during-the-sri-lanka-v-australia-icc-cricket-world-cup-match-at-the-kia-oval-london-england-credit-european-sports-photographic-agencyalamy-live-news-TDEKBX.jpg		f
201	100000	 Left Handed Bat 	India	100000	2021	Mathurage Don Kusal Janith Perera (Sinhala: කුසල් පෙරේරා) (born 17 August 1990), more commonly known as Kusal Perera, is a professional Sri Lankan cricketer and a former limited overs Captain of Sri Lanka national cricket team. He plays all forms of the game for the Sri Lanka national cricket team, and currently one of the permanent middle order batsman in all formats. He was a key member of the 2014 ICC World Twenty20 winning team.	Kusal Perera	http://p.imgci.com/db/PICTURES/CMS/279000/279042.jpg		f
202	100000	 Left Handed Bat 	India	100000	2021	Mahamarakkala Kurukulasooriya Patabendige Akila Dananjaya Perera (Sinhala: අකිල ධනංජය; born 4 October 1993), popularly as Akila Dananjaya, is a professional Sri Lankan cricketer, who plays all forms of the game for the national team. In March 2021, he became the first bowler to take hat-trick and be hit for the maximum of six sixes in an over in the same match, against West Indies.In December 2018, he was suspended from bowling in international matches after his bowling action was deemed to be illegal, which was later corrected to play in March 2019. However, in September 2019, the International Cricket Council (ICC) suspended Dananjaya from bowling in international matches for twelve months after his bowling action was once again deemed to be illegal, a penalty received for failing a biomechanics assessment twice within a two-year period.	Akila Dhananjaya	https://i.cdn.newsbytesapp.com/sports/players/profile/akila-dananjaya.png		f
203	100000	 Left Handed Bat 	India	100000	2021	Pramod Bhanuka Bandara Rajapaksa, (born 24 October 1991), popularly known as Bhanuka Rajapaksa, is a professional Sri Lankan cricketer, who plays limited over internationals for the national team. He is a left-handed batsman who bowls right-arm medium. He was born in Colombo.	Bhanuka Rajapaksa	http://www.newswire.lk/wp-content/uploads/2022/02/Screenshot_20210725-123816_Facebook-1.jpg		f
204	100000	 Right Handed Bat 	India	100000	2021	Weerahandige Inol Avishka Fernando (born 5 April 1998), commonly as Avishka Fernando, is a professional Sri Lankan cricketer, who currently plays limited over internationals for Sri Lanka national team. He plays for Colts Cricket Club in domestic cricket, and he made his international debut for the Sri Lanka cricket team in August 2016. He had his education in St.	Avishka Fernando	https://media.gettyimages.com/photos/avishka-fernando-of-sri-lanka-batting-during-the-3rd-royal-london-one-picture-id1327246858		f
205	100000	 Right Handed Bat 	India	100000	2021		Pathum Nissaanka	https://media.gettyimages.com/photos/pathum-nissanka-of-sri-lanka-celebrates-his-half-century-during-game-picture-id1370284869?s=594x594		f
206	100000	 Right Handed Bat 	India	100000	2021	Edirimuni Chamika Dinushan Perera Karunaratne (born 29 May 1996) is a professional Sri Lankan cricketer and badminton player. He made his international debut for the Sri Lanka cricket team in February 2019.\n\n\n== Domestic and T20 franchise career ==\nHe made his first-class debut for Tamil Union Cricket and Athletic Club in the 2015–16 Premier League Tournament on 18 December 2015.In March 2018, he was named in Kandy's squad for the 2017–18 Super Four Provincial Tournament.	Chamika Karunaratne	https://img1.hscicdn.com/image/upload/f_auto/lsci/db/PICTURES/CMS/323900/323955.4.jpg		f
207	100000	 Right Handed Bat 	India	100000	2021	Madagamagamage Dasun Shanaka (born 9 September 1991) is a professional Sri Lankan cricketer and current limited overs captain of the Sri Lankan cricket team. Known as a pinch hitter, Shanaka generally plays as a batting all-rounder with handy right-arm medium fast bowling. \nIn 2019, he captained the Twenty20 International (T20I) side against Pakistan, with Sri Lanka whitewashing Pakistan 3-0 in the series under his captaincy.	Dasun Shanaka	https://www.publicbiography.com/public/uploads/27b545cc26a3bbde66fc28dfb0259b58.webp		f
208	100000	 Left Handed Bat 	India	100000	2021	Narangoda Liyanaarachchige Thisara Chirantha Perera (Sinhala: තිසර පෙරේරා; born 3 April 1989), popularly as Thisara Perera, is a former Sri Lankan cricketer who played all formats for the national team. He also captained the team in limited-overs formats. Domestically he plays for Sri Lanka Army Sports Club in the Premier Trophy and Premier Limited-Overs Tournament, and the Jaffna Stallions in the Lanka Premier League.	Thisara Perera	http://www.crictracker.com/wp-content/uploads/2015/02/Thisara-Perera.jpg		f
209	100000	 Left Handed Bat 	India	100000	2021	Chandradasa Brahammana Ralalage Lahiru Sudesh Kumara, commonly as Lahiru Kumara (born 13 February 1997), is a professional Sri Lankan cricketer, who plays for the Sri Lanka national cricket team in all three formats of the game. He was selected to the international squad at the age of 19, due to his fast bowling capabilities of 140+kmp/h and excellent performances in the Under-19 team.\n\n\n== Domestic career ==\nKumara made his first-class debut for Sri Lanka A against West Indies A on 4 October 2016.	Lahiru Kumara	https://media.gettyimages.com/photos/lahiru-kumara-of-sri-lanka-appeals-unsuccessfully-to-the-umpires-for-picture-id1350204653?s=612x612		f
210	100000	 Right Handed Bat 	India	100000	2021	Kande Arachchige Isuru Udana Tillakaratna (Sinhala: ඉසුරු උදාන; born 17 February 1988) is a former Sri Lankan cricketer who represented Sri Lanka internationally in limited over formats. He currently plays domestic cricket for Tamil Union and Wayamba. Primarily a left arm fast bowler, Udana evolved as an all-rounder in late 2018.	Isuru Udana	https://www.crictracker.com/wp-content/uploads/2020/10/Isuru-Udana-of-Royal-Challengers-Bangalore.jpg		f
211	100000	 Left Handed Bat 	India	100000	2021		Danushka Gunatilaka	https://www.crictracker.com/wp-content/uploads/2020/12/Danushka-Gunathilaka-1.jpg		f
212	100000	 Left Handed Bat 	India	100000	2021	Pothotuwa Arachchige Dhananjaya Lakshan (born 5 October 1998), popularly as Dhananjaya Lakshan, is a professional Sri Lankan cricketer. He made his international debut for the Sri Lanka cricket team in June 2021.\n\n\n== Domestic career ==\nIn April 2018, he was named in Galle's squad for the 2018 Super Provincial One Day Tournament.	Dhananjaya Lakshan	https://img1.hscicdn.com/image/upload/f_auto,t_gn_w_480/lsci/db/PICTURES/CMS/313800/313821.6.jpg		f
213	100000	 Right Handed Bat 	India	100000	2021	Seekkuge Prasanna (Sinhala: සීක්කුගේ ප්‍රසන්න; born 27 June 1985) is a professional Sri Lankan cricketer, who plays for limited over cricket. He is a warrant officer in the Sri Lankan Army. Prasanna is known for aggressive batting at the late overs in ODIs, and a useful leg-spinner, probably the best found after former Sri Lanka leg-spinner Upul Chandana.	Seekkuge Prasanna	https://www.insidesport.in/wp-content/uploads/2021/12/Screenshot-256.png		f
214	100000	 Left Handed Bat 	India	100000	2021	Shimron Odilon Hetmyer (born 26 December 1996) is a Guyanese cricketer who plays for the West Indies cricket team. He was part of the West Indies' squad for the 2014 ICC Under-19 Cricket World Cup. In December 2015 he was named as the captain of the West Indies squad for the 2016 Under-19 Cricket World Cup.	Shimron Hetmyer	https://i.pinimg.com/736x/70/22/3a/70223a34a389556fb165a6cf05253a25.jpg		f
215	100000	 Right Handed Bat 	India	100000	2021	Dwayne John Bravo (born 7 October 1983) is a Trinidadian cricketer and a former captain of the West Indies cricket team. A genuine all-rounder, Bravo is a right-handed batsman and bowled right-arm medium-fast. He is particularly known for his aggressive batting in the middle order, and is also known for the variety of lengths he could bowl at.	Dwayne Bravo	https://static.toiimg.com/thumb/msid-68743754,width-1200,height-900,resizemode-4/.jpg		f
216	100000	 Right Handed Bat 	India	100000	2021	Jason Omar Holder (born 5 November 1991) is a Barbadian cricketer and the former captain of the West Indies cricket team. Holder made his One Day International (ODI) debut in January 2013 and Test debut in June 2014. In June 2019, Holder played in his 100th ODI match for the West Indies, during the 2019 Cricket World Cup.	Jason Holder	https://englishtribuneimages.blob.core.windows.net/gallary-content/2020/11/2020_11$largeimg_1077645861.JPG		f
217	100000	 Left Handed Bat 	India	100000	2021	Nicholas Pooran ( ; born 2 October 1995) is a Trinidadian cricketer who plays for the West Indies cricket team in international cricket and for the Trinidad and Tobago in West Indian domestic matches. He made his international debut for the West Indies in 2016.\n\n\n== Domestic career ==\nFrom McBean, Couva, Pooran attended Naparima College in San Fernando, and played for the school's cricket team.	Nicholas Pooran	https://loopnewslive.blob.core.windows.net/liveimage/sites/default/files/2021-01/ZxkswbIhu3.jpg		f
218	100000	 Left Handed Bat 	India	100000	2021	Dominic Conneil Drakes (born 6 February 1998) is a Barbadian cricketer. He plays for Barbados in domestic cricket and for the St Kitts & Nevis Patriots in the Caribbean Premier League (CPL).\nDrakes is the son of Vasbert Drakes, who played international cricket for the West Indies.	Dominic Drakes	https://www.crictracker.com/wp-content/uploads/2021/10/Dominic-Drakes.jpg		f
219	100000	 Right Handed Bat 	India	100000	2021	Odean Fabian Smith (born 1 November 1996) is a Jamaican cricketer. He made his international debut for the West Indies cricket team in April 2018.\n\n\n== Domestic and T20 franchise career ==\nSmith made his List A debut on 16 January 2015 in the 2014–15 Regional Super50 tournament.	Odean Smith	https://cricketaddictor.gumlet.io/wp-content/uploads/2022/02/Odean-Smith.webp?compress=true&quality=80&w=900&dpr=2.6		f
220	100000	 Right Handed Bat 	India	100000	2021	Sheldon Shane Cottrell (born 19 August 1989) is a Jamaican international cricketer who plays for the West Indies cricket team. He is a left-arm fast-medium bowler and a right-handed batsman.\n\n\n== Early life ==\nBefore starting his cricket career, he stated in an interview that he was once a soldier of Jamaican Defence Force and that's the reason that Sheldon Cottrell performs salutes or tributes as a sign of celebration most of the time whenever he gets any of the wickets, in a perfect military style.	Sheldon Cottrell	https://thecricketlounge.com/wp-content/uploads/2021/09/2020-10-01-3-1.jpg		f
221	100000	 Left Handed Bat 	India	100000	2021	Evin Earl Lewis (born 27 December 1991) is a Trinidadian cricketer who plays for the West Indies in limited over internationals. He plays as a left-handed opening batsman. Generally a fast scoring left-handed batsman, Lewis is the third batsman to score two Twenty20 International centuries.Lewis made his first-class debut for the Trinidad and Tobago national team in March 2012.	Evin Lewis	https://cdn.dnaindia.com/sites/default/files/styles/full/public/2020/08/13/919130-evin-lewis.jpg		f
222	100000	 Right Handed Bat 	India	100000	2021	Rovman Powell (born 23 July 1993) is a Jamaican cricketer who plays for the West Indies cricket team. In December 2018, he captained the West Indies for the first time in a One Day International (ODI) match against Bangladesh. Domestically, he has played for Jamaica, the Combined Campuses and Colleges, and the Jamaica Tallawahs.	Rovman Powell	https://www.espncricinfo.com/db/PICTURES/CMS/333700/333724.6.jpg		f
223	100000	 Left Handed Bat 	India	100000	2021	Sherfane Eviston Rutherford (born 15 August 1998) is a Guyanese cricketer. He made his international debut for the West Indies in December 2018.\n\n\n== Domestic and T20 career ==\nRutherford made his first-class debut for Guyana in the 2016–17 Regional Four Day Competition on 15 April 2017.	Sherfane Rutherford	https://www.crictracker.com/wp-content/uploads/2019/04/Sherfane-Rutherford.jpg		f
224	100000	 Right Handed Bat 	India	100000	2021	Romario Shepherd (born 26 November 1994) is a Guyanese cricketer who plays for Guyana in domestic cricket and for West Indies in international cricket. He made his international debut for West Indies in November 2019.\n\n\n== Domestic and franchise career ==\nA right-arm fast bowler, Shepherd made his List A debut for Guyana in January 2016, playing against the Leeward Islands in the 2015–16 Regional Super50.	Romario Shepherd	https://www.crictracker.com/wp-content/uploads/2020/09/Romario-Shepherd.jpg		f
225	100000	 Right Handed Bat 	India	100000	2021	Andre Fletcher (born 28 November 1987) is a Grenadian cricketer who plays internationally for the West Indies. He is a right-handed batsman and often keeps wicket. His domestic cricket is played for the Windward Islands.	Andre Fletcher	https://www.espncricinfo.com/db/PICTURES/CMS/315200/315273.4.jpg		f
227	100000	 Left Handed Bat 	India	100000	2021	Obed McCoy (born 4 January 1997) is a West Indian cricketer. He made his international debut for the West Indies cricket team in October 2018.\n\n\n== Domestic and T20 career ==\nHe made his List A debut for the West Indies Under-19s in the 2016–17 Regional Super50 on 25 January 2017.	Obed Mccoy	https://media.gettyimages.com/photos/obed-mccoy-of-west-indies-poses-for-a-headshot-prior-to-the-icc-mens-picture-id1347317945		f
228	100000	 Left Handed Bat 	India	100000	2021	Hayden Rashidi Walsh (born 23 April 1992) is an Antiguan-American cricketer who has represented both the United States and the West Indies cricket teams in international cricket. He was born in the United States Virgin Islands to an Antiguan father, Hayden Walsh Sr. He is a left-handed batsman and right-arm leg-spin bowler.	Hayden Walsh	https://crickettimes.com/wp-content/uploads/2020/09/Harbhajan-Singh-and-Hayden-Walsh-Jr-700x365.jpg		f
229	100000	 Right Handed Bat 	India	100000	2021	Brandon Alexander King (born 16 December 1994) is a West Indian cricketer. He was part of the West Indies' squad for the 2014 ICC Under-19 Cricket World Cup. He made his international debut for the West Indies cricket team in November 2019.	Brandon King	https://www.crictracker.com/wp-content/uploads/2019/09/Brandon-King.jpg		f
230	100000	 Right Handed Bat 	India	100000	2021	Fabian Allen (born 7 May 1995) is a Jamaican cricketer. He made his first-class debut for Jamaica in the 2016–17 Regional Four Day Competition on 25 November 2016. Prior to his first-class debut, he was part of the West Indies squad for the 2014 Under-19 Cricket World Cup.	Fabian Allen	https://cricketaddictor.gumlet.io/wp-content/uploads/2021/03/Fabian-Allen.jpeg?compress=true&quality=80&w=1300&dpr=2.6		f
231	100000	 Right Handed Bat 	India	100000	2021	Roston Lamar Chase (born 22 March 1992) is a Barbadian cricketer who plays for the West Indies and Barbados. A batting allrounder, he is a right-handed batsman and a right-arm off spin bowler. In July 2017, he was named Cricketer of the Year and Test Cricketer of the Year by the West Indies Players' Association.	Roston Chase	https://www.publicbiography.com/public/uploads/a36f3249c9a60ea737f502facfd84eb4.webp		f
232	100000	 Left Handed Bat 	India	100000	2021	Akeal Jerome Hosein (born 25 April 1993) is a Trinidadian cricketer who has played for Trinidad and Tobago in West Indian domestic cricket, as well as representing the Trinbago Knight Riders in the Caribbean Premier League (CPL).\n\n\n== Domestic and T20 career ==\nBorn in Port of Spain, Hosein represented the West Indies under-19s at the 2012 Under-19 World Cup in Australia. His first-class debut for Trinidad and Tobago came during the 2012–13 Regional Four Day Competition, against Jamaica.	Akeal Hosein	https://35.236.193.142/media/k2/items/cache/akeal-hosein-2_XL.jpg		f
233	100000	 Right Handed Bat 	India	100000	2021	Alzarri Shaheim Joseph (born 20 November 1996) is an Antiguan cricketer who plays for the West Indies in Tests and ODIs. He plays for Leeward Islands and the St Kitts and Nevis Patriots in West Indian domestic cricket. He is an all-rounder who is a right-arm fast bowler and a right handed batsman who was selected by the Mumbai Indians franchise as a replacement for Adam Milne for the 2019 Indian Premier League (IPL) season.	Alzarri Joseph	https://static.toiimg.com/thumb/msid-68893339,width-1200,height-900,resizemode-4/.jpg		f
234	100000	 Left Handed Bat 	India	100000	2021	Darren Michael Bravo (born 6 February 1989) is a West Indian cricketer who plays domestic cricket for Trinidad and Tobago and international cricket for the West Indies. A left-handed batsman, his batting style has drawn comparisons with Brian Lara. Bravo is the younger half brother of fellow West Indies cricketer Dwayne Bravo and his mother is the first cousin of former cricketer Brian Lara.	Darren Bravo	https://p.imgci.com/db/PICTURES/CMS/286200/286208.jpg		f
235	100000	 Right Handed Bat 	India	100000	2021	Carlos Ricardo Brathwaite (born 18 July 1988) is a cricketer from Barbados and a former captain of the West Indies Twenty20 International (T20I) team.\n\n\n== International career ==\nBrathwaite made his T20I debut for the West Indies against Bangladesh on 11 October 2011. He made his One Day International debut seven days later in the same series.He made his Test debut for the West Indies in the Second Test against Australia at the Melbourne Cricket Ground on 26 December 2015.Needing 19 to win in the last over against England, Brathwaite hit four consecutive sixes in the first four balls of the last over in the final of 2016 ICC World Twenty20 to enable the West Indies to win their second World Twenty20 title.	Carlos Brathwaite	https://www.crictracker.com/wp-content/uploads/2018/05/Carlos-Brathwaite-1.jpg		f
236	100000	 Right Handed Bat 	India	100000	2021	Keemo Mandela Angus Paul (born 21 February 1998) is a Guyanese cricketer who plays for the West Indies cricket team. He made his international debut for the team in 2018. In August 2019, Cricket West Indies named him as the T20 Player of the Year.	Keemo Paul	https://d33v7lirz96evl.cloudfront.net/IPL/photo/2019/04/14/f01d369b-0900-4e98-9967-ef95d98cdec2/UxzajeXt.jpg		f
237	100000	 Left Handed Bat 	India	100000	2021	Jayden Seales (born 10 September 2001) is a Trinidadian cricketer. Seales made his international debut for the West Indies cricket team in June 2021.\n\n\n== Career ==\nHe made his Twenty20 debut on 18 August 2020, for the Trinbago Knight Riders in the 2020 Caribbean Premier League, taking one wicket in the match.	Jayden Seales	https://images.news18.com/ibnlive/uploads/2021/08/jayden-seales-162902868916x9.jpg		f
238	100000	 Right Handed Bat 	India	100000	2021	Fidel Henderson Edwards (born 6 February 1982) is a Barbadian cricketer, who plays all formats of the game. A pace bowler, his round-arm action is "not unlike" that of former fast bowler Jeff Thomson. He was spotted in the nets by Brian Lara and was called up for his Test debut against Sri Lanka after just one match for Barbados.	Fidel Edwards	https://static.toiimg.com/photo/4476235.cms		f
239	100000	 Left Handed Bat 	India	100000	2021	Oshane Romaine Thomas (born 18 February 1997) is a Jamaican cricketer. A fast bowler, he made his international debut for the West Indies cricket team in October 2018. In August 2019, Cricket West Indies named him as the Emerging Player of the Year.	Oshane Thomas	https://cricketaddictor.com/wp-content/uploads/2021/03/Oshane-Thomas.jpg		f
240	100000	 Left Handed Bat 	India	100000	2021	Kyle Rico Mayers (born 8 September 1992) is a West Indian cricketer. He is a regular player of his home-side Barbados. He was also in the West Indies under-19 squad for the 2012 ICC Under-19 Cricket World Cup.	Kyle Mayers	https://media.gettyimages.com/photos/kyle-mayers-is-bowled-during-a-match-between-st-lucia-zouks-and-as-picture-id452999496?s=612x612		f
241	100000	 Left Handed Bat 	India	100000	2021	Raymon Anton Reifer (born 11 May 1991) is a Barbadian cricketer.  Reifer is a left-handed batsman who bowls left-arm medium-fast.  He was born in Saint Lucy, Barbados.	Raymon Reifer	https://img1.hscicdn.com/image/upload/f_auto,w_440/lsci/db/PICTURES/CMS/164900/164973.jpg		f
242	100000	 Right Handed Bat 	India	100000	2021	Priyam Garg (born 30 November 2000) is an Indian cricketer. He made his List A debut for Uttar Pradesh in the 2018–19 Vijay Hazare Trophy on 19 September 2018. He made his first-class debut for Uttar Pradesh in the 2018–19 Ranji Trophy on 1 November 2018.	Priyam Garg	https://resize.indiatvnews.com/en/resize/newbucket/1200_-/2020/10/priyam-garg-srh-ipl-2020-1601653385.jpg		f
243	100000	 Right Handed Bat 	India	100000	2021	Rajat Manohar Patidar (born 1 June 1993) is an Indian cricketer who plays for Madhya Pradesh in domestic cricket. He is a right-handed top order batter and off-spinner.\n\n\n== Early life ==\nPatidar was born on 1 June 1993 in Indore, Madhya Pradesh.	Rajat Patidar	https://imagevars.gulfnews.com/2021/04/16/Rajat-Patidar_178dab17f74_medium.jpg		f
244	100000	 Right Handed Bat 	India	100000	2021	Anmolpreet Singh (born 28 March 1998) is an Indian professional cricketer who plays for Punjab. A right-handed batsman, he is a part of the Mumbai Indians squad in the IPL. He made his IPL debut on 19th September 2021 against Chennai Super Kings.\n\n\n== Career ==\nSingh played two matches in the 2014–15 season of Syed Mushtaq Ali Trophy for Punjab and three matches in the 2015 India Under-19 Tri-Nation tournament.	Anmolpreet Singh	https://i.pinimg.com/originals/e7/4a/a5/e74aa53d2bc8ef2281a3b9b1b0604378.jpg		f
245	100000	 Right Handed Bat 	India	100000	2021	Rahul Ajay Tripathi (born 2 March 1991) is an Indian cricketer who plays for Maharashtra in domestic cricket.\n\n\n== Career ==\nHe was the leading run-scorer for Maharashtra in the 2018–19 Ranji Trophy, with 504 runs in eight matches.In February 2017, he was bought by the Rising Pune Supergiants team for the 2017 Indian Premier League (IPL). In January 2018, he was bought by the Rajasthan Royals in the 2018 IPL auction.	Rahul Tripathi	https://im.rediff.com/cricket/2020/oct/08tripathi1.jpg?w=670&h=900		f
246	100000	 Left Handed Bat 	India	100000	2021	Harpreet Brar (born 16 September 1995) is an Indian cricketer. He plays for Punjab in Domestic Cricket and for Punjab Kings in the Indian Premier League (IPL). Harpreet once hit five sixes in an over in one of his club matches.	Harpreet Brar	https://www.espncricinfo.com/db/PICTURES/CMS/320800/320836.10.jpg		f
247	100000	 Right Handed Bat 	India	100000	2021	Deepak Jagbir Hooda (born 19 April 1995) is an Indian International cricketer who plays for the Indian cricket team. He is an all-rounder who bats right-handed and bowls right-arm off break. He made his international debut for India in February 2022.	Deepak Hooda	https://cricketaddictor.gumlet.io/wp-content/uploads/2022/02/334052.4.jpg?compress=true&quality=80&w=900&dpr=2.6		f
248	100000	 Right Handed Bat 	India	100000	2021	Sarfarāz Khān (Bengali: সরফরাজ খান, Persian: سرفراز خان; c. 1700 – 29 April 1740), born Mīrza Asadullāh, was a Nawab of Bengal. Sarfaraz Khan's maternal grandfather, Nawab Murshid Quli Khan of Bengal (Bengal, Bihar and Orissa) nominated him as the direct heir to him as there was no direct heir.	Sarfaraz Khan	https://www.sportzcraazy.com/wp-content/uploads/2020/03/Sarfaraz-Khan.jpg		f
266	100000	 Right Handed Bat 	India	100000	2021	Murugan Ashwin (born 8 September 1990) is an Indian cricketer who plays for Tamil Nadu.\n\n\n== Domestic career ==\nAshwin made his List A debut on 11 December 2015 in the 2015–16 Vijay Hazare Trophy. He made his Twenty20 debut on 2 January 2016 in the 2015–16 Syed Mushtaq Ali Trophy.	Murugan Ashwin	https://s3.ap-south-1.amazonaws.com/assets-kxip.sportz.io/prod/waf-images/be/a8/af/16-9/ihAlMOfjkI.jpg		f
249	100000	 Right Handed Bat 	India	100000	2021	Shah Rukh Khan (pronounced [ˈʃɑːɦɾʊx xɑːn]; born 2 November 1965), also known by the initialism SRK, is an Indian actor, film producer, and television personality who works in Hindi films. Referred to in the media as the "Baadshah of Bollywood" (in reference to his 1999 film Baadshah), "King of Bollywood" and "King Khan", he has appeared in more than 80 films, and earned numerous accolades, including 14 Filmfare Awards. The Government of India has awarded him the Padma Shri, and the Government of France has awarded him the Ordre des Arts et des Lettres and the Legion of Honour.	Shahrukh Khan	https://c.ndtvimg.com/2020-10/ija65a9g_srk-instagram_625x300_01_October_20.jpg		f
250	100000	 Right Handed Bat 	India	100000	2021	Shivam Mavi (born 26 November 1998) is an Indian professional cricketer. He born in Gurjar family. In December 2017, he was named in India's squad for the 2018 Under-19 Cricket World Cup.	Shivam Mavi	https://www.espncricinfo.com/db/PICTURES/CMS/307600/307611.6.jpg		f
251	100000	 Right Handed Bat 	India	100000	2021	Kamlesh Lachham Nagarkoti (born 28 December 1999) is an Indian cricketer. He made his List A debut for Rajasthan in the 2016–17 Vijay Hazare Trophy on 26 February 2017. Two days later, he took the first-ever hat-trick for Rajasthan in List A cricket, in the Vijay Hazare Trophy match against Gujarat.Nagarkoti's father was a subedar in the Indian Army.	Kamlesh Nagarkoti	https://www.insidesport.in/wp-content/uploads/2020/09/KamleshNagarkoti1.jpg		f
252	100000	 Right Handed Bat 	India	100000	2021	Riyan Parag (born 10 November 2001) is an Indian cricketer who plays for Assam in domestic cricket and Rajasthan Royals in the Indian Premier League (IPL).\n\n\n== Career ==\nHe made his Twenty20 debut for Assam in the 2016–17 Inter State Twenty-20 Tournament on 29 January 2017. In October 2017 he was named in India's squad for the 2017 ACC Under-19 Asia Cup.	Riyan Parag	https://c.ndtvimg.com/2020-10/j7q8n3lg_riyan-parag-instagram_625x300_11_October_20.jpg		f
254	100000	 Left Handed Bat 	India	100000	2021	Rahul Tewatia (born 20 May 1993) is an Indian cricketer who plays for Haryana in the domestic cricket and Gujarat Titans in Indian Premier League    (IPL). He plays as an all-rounder. Rahul Tewatia, 27, was rewarded with a maiden call up by the BCCI to India’s home T20I squad for the five-match series against England.He was one among three uncapped Indian players to receive their maiden call up.	Rahul Tewatia	https://english.cdn.zeenews.com/sites/default/files/styles/zm_700x400/public/2020/09/28/888950-tewatia.png		f
255	100000	 Right Handed Bat 	India	100000	2021	Mohammed Azharuddeen (born 22 March 1994) is an Indian cricketer who plays for Kerala in domestic cricket. He is a right-handed wicket-keeper-batter.\n\n\n== Early life ==\nAzharuddeen was born in 1994 in Thalangara in Kasaragod district of Kerala.	Mohammed Azharuddeen	https://www.crictracker.com/wp-content/uploads/2021/01/Mohammed-Azharuddeen.jpg		f
256	100000	 Right Handed Bat 	India	100000	2021	Sheldon Philip Jackson (born 27 September 1986) is an Indian cricketer. He is a wicketkeeper-batsman who currently plays for Saurashtra in domestic cricket. He was a part of Kolkata Knight Riders IPL team in 2017 After a good domestic season in 2012–13, he was signed up by the Royal Challengers Bangalore in February 2013.	Sheldon Jackson	https://www.indiafantasy.com/wp-content/uploads/sheldonjackson27_12960172_1657732641157637_679886202_n.jpg		f
257	100000	 Left Handed Bat 	India	100000	2021	Anuj Rawat (born 17 October 1999) is an Indian cricketer. He made his first-class debut for Delhi in the 2017–18 Ranji Trophy on 6 October 2017. He made his Twenty20 debut for Delhi in the 2018–19 Syed Mushtaq Ali Trophy on 21 February 2019.	Anuj Rawat	https://pbs.twimg.com/profile_images/1306229101837971456/e7KdzN88_400x400.jpg		f
258	100000	 Right Handed Bat 	India	100000	2021	Jitesh Sharma (born 22 October 1993) is an Indian cricketer who plays for Vidarbha. He made his List A debut on 27 February 2014, for Vidarbha in the 2013–14 Vijay Hazare Trophy. He made his first-class debut in the 2015–16 Ranji Trophy on 1 October 2015.	Jitesh Sharma	https://www.crictracker.com/wp-content/uploads/2022/02/Jitesh-Sharma.jpg		f
259	100000	 Right Handed Bat 	India	100000	2021	Vishnu Vinod (born 2 December 1993) is an Indian cricketer who plays for Kerala in domestic cricket. He is a right-handed wicket-keeper-batter and occasional medium pacer.\n\n\n== Early life ==\nVishnu was born on 2 December 1993 on Kallisseri of Thiruvalla in Pathanamthitta district of Kerala.	Vishnu Vinod	https://img.onmanorama.com/content/dam/mm/en/sports/cricket/images/2021/1/27/vishnu-vinod.jpg		f
260	100000	 Right Handed Bat 	India	100000	2021	Akash Deep (born 15 December 1996) is an Indian cricketer. He made his Twenty20 debut for Bengal in the 2018–19 Syed Mushtaq Ali Trophy on 9 March 2019. He made his List A debut on 24 September 2019, for Bengal in the 2019–20 Vijay Hazare Trophy.	Akash Deep	https://www.royalchallengers.com/PRRCB01/public/2021-09/Akash%20Deep.png		f
261	100000	 Left Handed Bat 	India	100000	2021	Tushar Deshpande (born 15 May 1995) is an Indian cricketer. He made his first-class debut for Mumbai in the 2016–17 Ranji Trophy on 6 October 2016. He made his List A debut for Mumbai in the 2018–19 Vijay Hazare Trophy on 19 September 2018.	Tushar Deshpande	https://resize.indiatvnews.com/en/resize/newbucket/715_-/2020/10/tushar-deshpande-1602753138.jpg		f
262	100000	 Right Handed Bat 	India	100000	2021	Avesh Khan (born 13 December 1996) is an Indian cricketer. In December 2015 he was named in India's squad for the 2016 Under-19 Cricket World Cup. He made his Twenty20 debut for Royal Challengers Bangalore in the 2017 Indian Premier League on 14 May 2017.In January 2018, he was bought by the Delhi Daredevils for ₹75 lakh (US$100,000) in the 2018 IPL auction.	Avesh Khan	https://images.mid-day.com/images/images/2021/apr/avesh-khan_d.jpg		f
263	100000	 Right Handed Bat 	India	100000	2021	Ishan Porel (born 5 September 1998) is an Indian cricketer. He made his List A debut for Bengal in the 2016–17 Vijay Hazare Trophy on 25 February 2017. He made his first-class debut for Bengal in the 2017–18 Ranji Trophy on 9 November 2017.	Ishan Porel	https://images.hindustantimes.com/img/2021/04/05/1600x900/ishan-porel-insta_1617589363538_1617589386660.jpg		f
264	100000	 Right Handed Bat 	India	100000	2021	Basil Thampi (born 11 September 1993) is an Indian cricketer who represents Kerala in the domestic cricket. He is a right-handed batsman and right-arm medium pacer. He made his IPL debut for Gujarat Lions in the 2017 Indian Premier League and was named the "Emerging player of the season".	Basil Thampi	https://img1.hscicdn.com/image/upload/f_auto,w_440/lsci/db/PICTURES/CMS/275500/275530.jpg		f
265	100000	 Right Handed Bat 	India	100000	2021	Kartik Tyagi (born 8 November 2000) is an Indian cricketer. He made his first-class debut for Uttar Pradesh in the 2017–18 Ranji Trophy on 6 October 2017, a month before he turned 17.\n\n\n== Career ==\nHe made his List A debut for Uttar Pradesh in the 2017–18 Vijay Hazare Trophy on 5 February 2018.	Kartik Tyagi	https://static.toiimg.com/thumb/msid-86482461,width-1200,height-900,resizemode-4/.jpg		f
267	100000	 Right Handed Bat 	India	100000	2021	Ramaswamy Shreyas Gopal (born 4 September 1993) is an Indian cricketer who plays for Karnataka in domestic cricket. He is an all-rounder who bats right-handed, and bowls leg break. He played three ODIs for India Under-19 cricket team in 2011.	Shreyas Gopal	https://sportzwiki.com/wp-content/uploads/2021/03/Shreyas-Gopal.jpg		f
268	100000	 Left Handed Bat 	India	100000	2021	Jagadeesha Suchith (born 16 January 1994) is an Indian cricketer who plays for Karnataka cricket team. A left-handed batsman and slow left-arm orthodox bowler, Suchith has also played in the Indian Premier League.\n\n\n== Career ==\nSuchith played for various age-group teams for Karnataka such as Under-15s, Under-16s, Under-19s, Under-22s, Under-23s and Under-25s, as well as the South Zone Under-19 team.	Jagadeesha Suchith	https://cricangel.com/wp-content/uploads/2021/04/Jagadeesha-Suchith-SRH.jpg		f
269	100000	 Left Handed Bat 	India	100000	2021	Sachin Baby (born 18 December 1988) is an Indian cricketer who plays for Kerala in domestic cricket.  He is a left-handed middle-order batsman and occasional right-arm off spinner.\n\n\n== Early and personal life ==\nSachin was born on 18 December 1988 on Machiplavu near Adimali in Thodupuzha of Idukki district of Kerala.	Sachin Baby	https://staticg.sportskeeda.com/wp-content/uploads/2016/05/sachin-baby-1464176092-800.jpg		f
270	100000	 Right Handed Bat 	India	100000	2021	Ricky Bhui (born 29 September 1996) is an Indian professional cricketer. He is a right-handed batsman and occasional leg spinner. Bhui scored an unbeaten hundred on his List A debut and also scored an unbeaten hundred on his Twenty20 debut.	Ricky Bhui	https://pbs.twimg.com/media/EGhZAKcX0AIC_UB.jpg		f
271	100000	 Right Handed Bat 	India	100000	2021	Special Ops 1.5: The Himmat Story is an Indian Hindi-language action espionage thriller streaming television series created and directed by Neeraj Pandey for Disney+ Hotstar. The series is set inside the Special Ops Universe and stars Kay Kay Menon as the titular Himmat Singh. The series premiered on 12 November 2021.	Himmat Singh	https://www.publicbiography.com/public/uploads/fbfcf821e33779ba1580968ef1c8dec4.webp		f
272	100000	 Left Handed Bat 	India	100000	2021	Rinku Singh Rajput (born 8 August 1988) is an Indian professional wrestler and former professional baseball player. He is currently signed to WWE, where he will perform on the Raw brand under the ring name Veer Mahaan.\nSingh was signed by the Pittsburgh Pirates organization after he won a pitching contest on a 2008 reality television show The Million Dollar Arm.	Rinku Singh	https://www.deccanherald.com/sites/dh/files/article_images/2020/01/23/file74kc2ntobuf64z17lgj-1579763395.jpg		f
273	100000	 Left Handed Bat 	India	100000	2021	Virat Binod Singh (born 8 December 1997), is an Indian cricketer. He made his senior debut for Jharkhand during the 2013–14 season, aged 16. A left-handed batsman, he has also played interzonal matches, making his debut for East Zone in December 2014, in the Deodhar Trophy.	Virat Singh	https://moneyball.insidesport.in/img/singleplayer/ViratSingh1.jpg		f
274	100000	 Right Handed Bat 	India	100000	2021	Manan Vohra (born 18 July 1993) is an Indian cricketer. He has played for the India Under-19 cricket team. He is a resident of Chandigarh.	Manan Vohra	https://cricketaddictor.com/wp-content/uploads/2021/02/Manan-Vohra.jpg		f
275	100000	 Left Handed Bat 	India	100000	2021	Mahipal Lomror (born 16 November 1999) is an Indian cricketer who plays for Rajasthan in domestic cricket and Royal Challengers Bangalore in Indian Premier League. He is an all-rounder who bats left-handed and bowls slow left-arm orthodox.\n\n\n== Career ==\nMahipal made his first-class debut for Rajasthan in the 2016–17 Ranji Trophy on 6 October 2016.	Mahipal Lomror	https://bcciplayerimages.s3.ap-south-1.amazonaws.com/playerheadshot/ipl/284/2970.png		f
276	100000	 Right Handed Bat 	India	100000	2021	Darshan Nalkande (born 4 October 1998) is an Indian cricketer. He made his List A debut for Vidarbha in the 2018–19 Vijay Hazare Trophy on 2 October 2018. He made his first-class debut for Vidarbha in the 2018–19 Ranji Trophy on 1 November 2018.In December 2018, he was bought by the Punjab Kings in the player auction for the 2019 Indian Premier League.	Darshan Nalkande	https://static.toiimg.com/thumb/msid-68552674,width-1200,height-900,resizemode-4/.jpg		f
277	100000	 Right Handed Bat 	India	100000	2021	Ripal Vinubhai Patel (born 28 September 1995) is an Indian cricketer. He made his List A debut on 24 September 2019, for Gujarat in the 2019–20 Vijay Hazare Trophy. He made his Twenty20 debut on 11 November 2019, for Gujarat in the 2019–20 Syed Mushtaq Ali Trophy.In February 2021, Patel was bought by the Delhi Capitals in the IPL auction ahead of the 2021 Indian Premier League.	Ripal Patel	https://www.insidesport.in/wp-content/uploads/2021/03/2021-03-09-1.jpg		f
278	100000	 Left Handed Bat 	India	100000	2021	Anukul Sudhakar Roy (born 30 November 1998) is an Indian cricketer who plays for Jharkhand and Kolkata Knight Riders. In December 2017, he was named in India's squad for the 2018 Under-19 Cricket World Cup. He was the joint highest wicket taker in the Under-19 Cricket World Cup.He was born in Bhirha, a village near Rosera, Samastipur in the state of Bihar.	Anukul Roy	https://www.mumbaiindians.com/static-assets/images/players/small/66983.png		f
279	100000	 Right Handed Bat 	India	100000	2021		Lalit Yadav	https://w0.peakpx.com/wallpaper/599/543/HD-wallpaper-lalit-yadav-cricket-delhi-delhi-capitals-indian-cricket-ipl-player.jpg		f
280	100000	 Left Handed Bat 	India	100000	2021		Sanjay Yadav	https://static.toiimg.com/thumb/msid-57994923,width-1200,height-900,resizemode-4/.jpg		f
281	100000	 Right Handed Bat 	India	100000	2021		Akash Singh	https://cricketaddictor.com/wp-content/uploads/2021/02/Akash-Singh-1.jpg		f
282	100000	 Right Handed Bat 	India	100000	2021	Simarjeet Singh (born 17 January 1998) is an Indian cricketer who represents Delhi in domestic cricket. He is a right handed batsman and right arm medium pacer.\n\n\n== Career ==\nSimarjeet made his List A debut for Delhi in the 2018–19 Vijay Hazare Trophy on 20 September 2018.	Simarjeet Singh	https://static.toiimg.com/thumb/msid-86614864,width-1070,height-580,imgsize-31742,resizemode-75,overlay-toi_sw,pt-32,y_pad-40/photo.jpg		f
283	100000	 Left Handed Bat 	India	100000	2021	Tanmay Dharamchand Agarwal (born 3 May 1995) is an Indian cricketer who plays for Hyderabad. A left-handed top-order batsman, Agarwal has represented Hyderabad at various age-group levels such as Under-14, Under-16, Under-19, Under-22 and Under-25. He scored centuries on both his first-class and List A cricket debuts for Hyderabad in 2014.	Tanmay Agarwal	https://alchetron.com/cdn/tanmay-agarwal-ec83c262-a788-4a42-8f43-5f7dce4d7eb-resize-750.jpeg		f
284	100000	 Right Handed Bat 	India	100000	2021	Apoorv Wankhade (born 14 March 1992) is an Indian cricketer who plays for the Vidarbha. He made his first-class debut for Vidarbha in the 2012–13 Ranji Trophy on 2 November 2012. In January 2018, he was bought by the Kolkata Knight Riders in the 2018 IPL auction.	Apoorv Wankhade	https://img1.hscicdn.com/image/upload/f_auto,t_gn_w_480/lsci/db/PICTURES/CMS/185100/185197.3.jpg		f
285	100000	 Right Handed Bat 	India	100000	2021	Prerak Mankad (born 23 April 1994) is an Indian cricketer who plays for Saurashtra. On 24 February 2016 he made his first-class debut in the final of the 2015–16 Ranji Trophy. He made his List A debut for Saurashtra in the 2016–17 Vijay Hazare Trophy on 25 February 2017.He was the leading run-scorer for Saurashtra in the 2018–19 Vijay Hazare Trophy, with 212 runs in six matches.	Prerak Mankad	https://images.hindustantimes.com/img/2021/02/27/1600x900/prerak-mankad-bcci_1614431266630_1614431272794.jpg		f
286	100000	 Right Handed Bat 	India	100000	2021	Suyash Prabhudessai (born 6 December 1997) is an Indian cricketer. He made his List A debut for Goa in the 2016–17 Vijay Hazare Trophy on 28 February 2017. He made his first-class debut for Goa in the 2018–19 Ranji Trophy on 20 November 2018.	Suyash Prabhudessai	https://www.royalchallengers.com/PRRCB01/public/2021-04/Suyash%20800%20x%201200.png		f
287	100000	 Right Handed Bat 	India	100000	2021	Ankush Bains (born 16 December 1995) is an Indian cricketer who plays for Himachal Pradesh as a wicket keeper. He made his List A debut on 3 March 2014, for Himachal Pradesh in the 2013–14 Vijay Hazare Trophy. He was signed up by Chennai Super Kings for IPL 2015 at his base price of ₹ 10 lakhs.	Ankush Bains	http://cricclubs.com/documentsRep/profilePics/0e491802-4f05-4237-a6de-2e85a7dce125.jpg		f
288	100000	 Right Handed Bat 	India	100000	2021	Prashant Chopra (born 7 October 1992) is an Indian cricketer. He was in the 2012 ICC Under-19 Cricket World Cup champion India Team. Chopra represents Himachal Pradesh in the Ranji Trophy and holds the record of most runs by a Himachal Pradesh batsman in a Ranji Trophy season.	Prashant Chopra	http://cricclubs.com/documentsRep/profilePics/d7f5c82d-1d17-45d1-842c-8078a93692cb.jpg		f
289	100000	 Right Handed Bat 	India	100000	2021	Kedar Hemant Devdhar (born 14 December 1989) is an Indian cricketer. He is a wicketkeeper-batsman who currently plays in Indian domestic cricket for Baroda. He was also a part of the now defunct Deccan Chargers in the Indian Premier League.	Kedar Devdhar	https://static.toiimg.com/thumb/msid-80675010,width-400,resizemode-4/80675010.jpg		f
290	100000	 Left Handed Bat 	India	100000	2021	Shreevats Goswami (born  18 May 1989) is an Indian cricketer. He is a left-handed batsman and wicketkeeper. He was born in Liluah in Howrah city, the twin city of Kolkata, West Bengal.	Shreevats Goswami	https://parimatchnews.com/wp-content/uploads/2021/03/Shreevats.png		f
291	100000	 Right Handed Bat 	India	100000	2021	Akshdeep Deependra Nath (born 10 May 1993) is an Indian cricketer who plays for Uttar Pradesh in Indian domestic cricket. He is a right-hand batsman and occasional right arm medium pace bowler. He was the vice-captain of the India Under-19 cricket team that won the 2012 ICC Under-19 Cricket World Cup in Australia.He was the leading run-scorer for Uttar Pradesh in the 2017–18 Ranji Trophy, with 387 runs in five matches.	Akshdeep Nath	https://s3.ap-south-1.amazonaws.com/assets-kxip.sportz.io/prod/waf-images/8d/50/3c/16-9/Jj2x0IOWVV.jpg		f
292	100000	 Right Handed Bat 	India	100000	2021	Aditya Prakash Tare (born 7 November 1987) is an Indian cricketer. He is a wicketkeeper batsman who plays for Mumbai Indians in the IPL and for Mumbai in domestic cricket.\nTare made his first-class debut in 2009, and IPL T20 debut on 19 Apr 2010 against Kolkata Knight Riders.	Aditya Tare	https://crickettipmaster.com/wp-content/uploads/2021/10/Aditya-Tare-1-e1633682088369.jpg		f
293	100000	 Right Handed Bat 	India	100000	2021	Vaibhav Arora (born 14 December 1997) is an Indian cricketer. He made his first-class debut on 9 December 2019, for Himachal Pradesh in the 2019–20 Ranji Trophy. He made his Twenty20 debut on 10 January 2021, for Himachal Pradesh in the 2020–21 Syed Mushtaq Ali Trophy.In February 2021, Arora was bought by the Kolkata Knight Riders in the IPL auction ahead of the 2021 Indian Premier League.	Vaibhav Arora	https://www.insidesport.in/wp-content/uploads/2021/02/2021-02-24-1.jpg		f
294	100000	 Left Handed Bat 	India	100000	2021	Mohsin Hasan Khan (Urdu: محسن حسن خان; born 15 March 1955) is a Pakistani cricket coach and former cricketer who played in 48 Test matches and 75 One Day Internationals between 1977 and 1986 mainly as an opening batsman.\n\n\n== Early life ==\nBorn in Karachi to a father who was an officer in the Pakistan Navy and a United States-educated mother who was a teacher and vice-principal, he excelled at sports early on, in tennis, swimming and cricket, and even went on to become junior badminton champion of Pakistan.\n\n\n== International career ==\nPlaying as the opener for Pakistan against India at Lahore in 1982–83, he scored 101 not out of Pakistan's second-innings total of 135/1.	Mohsin Khan	https://www.infoknocks.com/wp-content/uploads/2020/09/Mohsin-Khan.jpg		f
295	100000	 Left Handed Bat 	India	100000	2021	Chama Milind (born 4 September 1994) is an Indian first-class cricketer plays for Hyderabad cricket team. He is a Left-handed batsman and Left-arm Medium bowler. He was also member of India Under-19 cricket team.	Chama Milind	https://img1.hscicdn.com/image/upload/f_auto,t_gn_w_352/lsci/db/PICTURES/CMS/330800/330899.jpg		f
296	100000	 Right Handed Bat 	India	100000	2021	Tejas Baroka (born 1 February 1996) is an Indian cricketer who has played for Delhi Under-19s and Under-22s. In February 2017, he was bought by the Gujarat Lions team for the 2017 Indian Premier League for 10 lakhs. He made his Twenty20 debut for Gujarat Lions in the 2017 Indian Premier League on 9 April 2017.	Tejas Baroka	https://img1.hscicdn.com/image/upload/f_auto,t_gn_w_480/lsci/db/PICTURES/CMS/261200/261240.3.jpg		f
297	100000	 Right Handed Bat 	India	100000	2021	Pardeep Sahu (born 21 August 1985) is an Indian cricketer who plays for Kings XI Punjab in the Indian Premier League.\n\n\n== Life and career ==\nSince making his first-class debut in 2002 at the age of 17, Sahu made sporadic appearances for Haryana in domestic cricket until 2011. In 2012, he shifted to Mumbai and worked as an auditor for Comptroller and Auditor General of India.	Pardeep Sahu	https://m.psecn.photoshelter.com/img-get2/I0000fUoV5CuSi7c/fit=1000x750/Pardeep-Sahu-20.jpg		f
298	100000	 Right Handed Bat 	India	100000	2021	Jalaj Sahai Saxena (born 15 December 1986) is an Indian cricketer. An all-rounder who bats right-handed and bowls right-arm off spin, he is one of the most consistent performers in the Indian domestic circuit for over a decade. He made his domestic cricket debut for Madhya Pradesh in 2005 and later switched bases to Kerala in 2016.	Jalaj Saxena	http://cricclubs.com/documentsRep/profilePics/b462aa97-9dda-4ec2-97db-ff301cb54c2a.png		f
299	100000	 Right Handed Bat 	India	100000	2021	Abhimanyu Easwaran (born 6 September 1995) is an Indian cricketer who plays for Bengal. He is a right-handed opening batsman.\n\n\n== Early life ==\nAbhimanyu was born on 6 September 1995 in Dehradun to a Tamilian father and Punjabi mother.	Abhimanyu Easwaran	https://www.crictracker.com/wp-content/uploads/2019/02/Abhimanyu-Easwaran.jpg		f
371	100000	 Left Handed Bat 	India	100000	2021	Rohan Pramod Kadam (born 5 July 1994) is an Indian cricketer. He made his List A debut for Karnataka in the 2016–17 Vijay Hazare Trophy on 6 March 2017. He made his Twenty20 debut for Karnataka in the 2018–19 Syed Mushtaq Ali Trophy on 21 February 2019.	Rohan Kadam	https://www.espncricinfo.com/db/PICTURES/CMS/297300/297390.17.jpg		f
300	100000	 Right Handed Bat 	India	100000	2021	Dhruv Shorey (born 5 June 1992) is an Indian cricketer who plays for Delhi. He made his first-class debut on 30 October in the 2015–16 Ranji Trophy.In the final of the 2017–18 Ranji Trophy, he scored a century in the first innings, batting for Delhi against Vidarbha. In January 2018, he was bought by the Chennai Super Kings in the 2018 IPL auction.In July 2018, he was named in the squad for India Blue for the 2018–19 Duleep Trophy.	Dhruv Shorey	https://www.indiafantasy.com/wp-content/uploads/2019/04/249b2d1f78e53adb61f07275d0434168.jpg		f
301	100000	 Left Handed Bat 	India	100000	2021		Saurabh Kumar	https://cdn.wisden.com/wp-content/uploads/2021/01/Untitled-design-41-e1611298820815-980x530.png		f
302	100000	 Left Handed Bat 	India	100000	2021	Shams Mulani (born 13 March 1997) is an Indian cricketer. He made his Twenty20 debut for Mumbai in the 2017–18 Zonal T20 League on 11 January 2018. He made his List A debut for Mumbai in the 2017–18 Vijay Hazare Trophy on 5 February 2018.In October 2018, he was named in India A's squad for the 2018–19 Deodhar Trophy.	Shams Mulani	https://mumbaimirror.indiatimes.com/photo/73714084.cms		f
303	100000	 Left Handed Bat 	India	100000	2021	Utkarsh Singh (born 7 May 1998) is an Indian cricketer. He made his first-class debut for Jharkhand in the 2017–18 Ranji Trophy on 9 November 2017. He made his List A debut for Jharkhand in the 2017–18 Vijay Hazare Trophy on 11 February 2018.	Utkarsh Singh	https://cricketaddictor.gumlet.io/wp-content/uploads/2021/04/Utkarsh-Singh.jpg?compress=true&quality=80&w=800&dpr=2.6		f
304	100000	 Right Handed Bat 	India	100000	2021		Nikhil Naik	https://cricketaddictor.com/wp-content/uploads/2020/02/Nikhil-Naik.jpg		f
305	100000	 Right Handed Bat 	India	100000	2021	Ganeshan Periyaswamy (born 5 March 1994) is an Indian cricketer. He made his Twenty20 debut on 8 November 2019, for Tamil Nadu in the 2019–20 Syed Mushtaq Ali Trophy.	G Periyasamy	https://www.crictracker.com/wp-content/uploads/2019/08/Ganeshan-Periyasamy-1.jpg		f
306	100000	 Left Handed Bat 	India	100000	2021	Kuldip Yadav (born 15 October 1996) is an Indian cricketer.In November 2019, he was named in India's squad for the 2019 ACC Emerging Teams Asia Cup in Bangladesh. He made his List A debut for India, against Hong Kong, in the Emerging Teams Cup on 18 November 2019.In February 2021, Yadav was bought by the Rajasthan Royals in the IPL auction ahead of the 2021 Indian Premier League (IPL). He was picked in Rajasthan after being impressive in trails on Nagpur Academy.	Kuldip Yadav	https://cricketaddictor.com/wp-content/uploads/2021/06/Kuldeep-Yadav.jpg		f
307	100000	 Right Handed Bat 	India	100000	2021		Milind Tandon	http://cricclubs.com/documentsRep/profilePics/499592.JPG		f
308	100000	 Right Handed Bat 	India	100000	2021	Akshay Anil Wakhare (born 3 October 1985) is an Indian cricketer who plays for Vidarbha in domestic cricket. He is a right-arm off break bowler who has represented Central Zone.\nWakhare made his first-class debut in November 2006.	Akshay Wakhare	https://m.psecn.photoshelter.com/img-get2/I0000KnzdyNhV1Lo/fit=1000x750/Akshay-Wakhare.jpg		f
309	100000	 Right Handed Bat 	India	100000	2021	Ishank Jaggi (born 27 January 1989) is an Indian cricketer. He is a right-handed batsman and a leg-break bowler who plays for Jharkhand. He was born in Bacheli.	Ishank Jaggi	https://www.espncricinfo.com/db/PICTURES/CMS/131500/131544.jpg		f
310	100000	 Right Handed Bat 	India	100000	2021	Baba Aparajith (born 8 July 1994) is an Indian cricketer who plays as an all-rounder. He is a right-handed batsman and off break bowler, who plays first-class cricket for Tamil Nadu. He played for the India Under-19 cricket team in the 2012 Under-19 World Cup.	Baba Aparajith	https://upload.wikimedia.org/wikipedia/commons/3/3f/Baba_Aparajith.jpg		f
311	100000	 Right Handed Bat 	India	100000	2021	Roosh Bipinbhai Kalaria (born 16 January 1993) is an Indian cricketer. He is a right-hand batsman and left-arm medium-fast bowler who plays for Gujarat in domestic cricket. He has played for the India Under-19 cricket team in the 2012 ICC Under-19 Cricket World Cup.	Roosh Kalaria	https://images.mid-day.com/images/images/2021/sep/roosh_d.jpg		f
312	100000	 Right Handed Bat 	India	100000	2021	Pradeep Sangwan (born 5 November 1990) is an Indian cricketer, who represents Delhi in first-class cricket.\n\n\n== Career ==\nSangwan is a left-arm medium pace bowler. He is quite handy with the bat as well.	Pradeep Sangwan	https://cricketaddictor.com/wp-content/uploads/2018/01/images-95-1.jpeg		f
313	100000	 Right Handed Bat 	India	100000	2021	Harvik Desai (born 4 October 1999) is an Indian cricketer. He made his List A debut for Saurashtra in the 2016–17 Vijay Hazare Trophy on 26 February 2017.In December 2017, he was named in India's squad for the 2018 Under-19 Cricket World Cup, and scored the winning runs for India in the final of the tournament. He made his first-class debut for Saurashtra in the 2018–19 Ranji Trophy on 1 November 2018.	Harvik Desai	https://img1.hscicdn.com/image/upload/f_auto,w_440/lsci/db/PICTURES/CMS/272800/272816.jpg		f
314	100000	 Right Handed Bat 	India	100000	2021	Aniket Vinod Choudhary (born 28 January 1990) is an Indian professional cricketer who plays for Rajasthan in domestic cricket. He is a left-arm medium-fast bowler. He was a member of the Kings XI Punjab squad in 2013.	Aniket Choudhary	https://www.crictracker.com/wp-content/uploads/2017/05/Aniket-Choudhary-1.jpg		f
315	100000	 Left Handed Bat 	India	100000	2021	Kulwant Khejroliya (born 13 March 1992) is an Indian cricketer. He made his List A debut for Delhi in the 2016–17 Vijay Hazare Trophy on 26 February 2017. Prior to his debut, he was bought by the Mumbai Indians team for the 2017 Indian Premier League for 10 lakhs.He made his first-class debut for Delhi in the 2017–18 Ranji Trophy on 6 October 2017.	Kulwant Khejroliya	https://gumlet.assettype.com/freepressjournal/2021-09/da598751-0d1a-4f78-add1-346da9966ada/DC.jpg?format=webp&w=400&dpr=2.6		f
316	100000	 Right Handed Bat 	India	100000	2021	Ronit Gajanan More (born 2 February 1992) is an Indian first-class cricketer who plays for Karnataka i He is a right-arm medium-fast bowler. He is a member of the Chennai Super Kings squad since 2013 and debuted in the IPL against Kolkata Knight Riders at the Eden Gardens on 30 April 2015.\n\n\n== Early life ==\nRonit did his schooling from Gomatesh High School, Belgaum and his pre university from Gogte College and now is completing his bachelor's in business from Jain College .	Ronit More	https://www.fastandup.in/images/single-images/1567579997.jpeg		f
317	100000	 Left Handed Bat 	India	100000	2021	Pratham Singh (born 31 August 1992) is an Indian cricketer. He made his List A debut for Railways in the 2016–17 Vijay Hazare Trophy on 26 February 2017. He made his first-class debut for Railways in the 2017–18 Ranji Trophy on 9 November 2017.	Pratham Singh	https://moneyball.insidesport.in/img/singleplayer/PrathamSingh1.jpg		f
318	100000	 Left Handed Bat 	India	100000	2021	Akshay Karnewar (born 12 October 1992) is an Indian cricketer who plays for Vidarbha. He made his List A debut on 10 December 2015 in the 2015–16 Vijay Hazare Trophy. He made his Twenty20 debut on 3 January 2016 in the 2015–16 Syed Mushtaq Ali Trophy.	Akshay Karnewar	https://cricketaddictor.gumlet.io/wp-content/uploads/2021/11/Akshay-Karnewar.png?compress=true&quality=80&w=800&dpr=2.6		f
319	100000	 Right Handed Bat 	India	100000	2021	Shashank Singh (born 21 November 1991) is an Indian cricketer who plays for Chhattisgarh. He made his List A debut on 10 December 2015 in the 2015–16 Vijay Hazare Trophy. In February 2017, he was bought by the Delhi Daredevils team for the 2017 Indian Premier League for 10 lakhs.In December 2018, he was bought by the Rajasthan Royals in the player auction for the 2019 Indian Premier League.	Shashank Singh	https://www.sportzcraazy.com/wp-content/uploads/2020/03/Shashank-Singh-IPL.jpg		f
320	100000	 Right Handed Bat 	India	100000	2021	Amit Mishra pronunciation  (born 24 November 1982) is an Indian cricketer. He is an attacking right-arm leg-break bowler and right-handed tail-ender batsman. He plays for Haryana in the domestic Ranji Trophy and currently appears for the T20 franchise Delhi Capitals in the Indian Premier League.	Amit Mishra	https://images.indianexpress.com/2020/10/amit-mishra-dc.jpg		f
321	100000	 Right Handed Bat 	India	100000	2021	Rahul Shukla (born 28 August 1990) is an Indian first-class cricketer from Jaunpur district who plays for Jharkhand in domestic cricket. He is a right-arm fast-medium bowler. He was part of the Mumbai Indians squad from 2010 to 2012.	Rahul Shukla	https://www.cricwaves.com/cricket/pics/players/Rahul-Shukla.png		f
322	100000	 Left Handed Bat 	India	100000	2021	Chaitanya Bishnoi (born 25 August 1994) is an Indian cricketer who plays for Haryana. He made his Twenty20 debut on 6 January 2016 in the 2015–16 Syed Mushtaq Ali Trophy. In January 2018, he was bought by the Chennai Super Kings in the 2018 IPL auction.	Chaitanya Bishnoi	https://readscoops.com/wp-content/uploads/2019/03/Capture.png		f
323	100000	 Right Handed Bat 	India	100000	2021	Mayank Jitender Dagar  (born 11 November 1996) is a domestic cricketer who plays for Himachal Pradesh in domestic cricket. He is a right-handed batsman and slow left-arm orthodox bowler. He was part of India's squad for 2016 Under-19 Cricket World Cup.	Mayank Dagar	https://lookaside.fbsbx.com/lookaside/crawler/media/?media_id=268050251544117		f
324	100000	 Right Handed Bat 	India	100000	2021	Bandaru Ayyappa (born 27 October 1992) is an Indian first-class cricketer who plays for Andhra Pradesh. In July 2018, he was named in the squad for India Blue for the 2018–19 Duleep Trophy.In December 2018, he was bought by the Delhi Capitals in the player auction for the 2019 Indian Premier League. He was released by the Delhi Capitals ahead of the 2020 IPL auction.	Bandaru Ayyappa	https://www.espncricinfo.com/db/PICTURES/CMS/259900/259911.1.jpg		f
326	100000	 Right Handed Bat 	India	100000	2021	Shubham Singh (born 5 January 1997) is an Indian cricketer. He made his first-class debut for Chhattisgarh in the 2017–18 Ranji Trophy on 14 October 2017. He made his Twenty20 debut for Chhattisgarhin the 2018–19 Syed Mushtaq Ali Trophy on 25 February 2019.	Shubham Singh	https://mir-s3-cdn-cf.behance.net/projects/404/2844ed87701901.Y3JvcCw4NzEsNjgxLDcxLDA.png		f
327	100000	 Right Handed Bat 	India	100000	2021	Shubham Singh (born 5 January 1997) is an Indian cricketer. He made his first-class debut for Chhattisgarh in the 2017–18 Ranji Trophy on 14 October 2017. He made his Twenty20 debut for Chhattisgarhin the 2018–19 Syed Mushtaq Ali Trophy on 25 February 2019.	Shubham Singh	https://mir-s3-cdn-cf.behance.net/projects/404/2844ed87701901.Y3JvcCw4NzEsNjgxLDcxLDA.png		f
328	100000	 Right Handed Bat 	India	100000	2021	Shubham Ranjane (born 26 March 1994) is an Indian first-class cricketer who plays for Goa. He made his first-class debut for Mumbai in the 2016–17 Ranji Trophy on 21 November 2016.In December 2018, he was bought by the Rajasthan Royals in the player auction for the 2019 Indian Premier League. He was released by the Rajasthan Royals ahead of the 2020 IPL auction.	Shubham Ranjane	https://res.cloudinary.com/celebritystill/image/upload/v1523803250/ipl/shubham-ranjane.png		f
329	100000	 Left Handed Bat 	India	100000	2021	Sagar Trivedi (born 20 October 1991) is an Indian cricketer who plays for Puducherry. He made his List A debut on 10 December 2015 in the 2015–16 Vijay Hazare Trophy. He made his first-class debut on 17 December 2019, for Puducherry in the 2019–20 Ranji Trophy.	Sagar Trivedi	https://cricx.b-cdn.net/wp-content/uploads/2020/02/Sagar-Trivedi-.jpg		f
330	100000	 Right Handed Bat 	India	100000	2021	Abhishek Raut (Marathi: अभिषेक राऊत) (born 3 March 1987 in Maharashtra, India) is an Indian cricketer. Raut made his debut in first-class cricket on 17–20 Dec 2005. He is an aggressive right-handed batsman and a right-arm Legbreak Bowler.	Abhishek Raut	https://editorial01.shutterstock.com/wm-preview-1500/6960835n/bb33bb8b/Shutterstock_6960835n.jpg		f
331	100000	 Right Handed Bat 	India	100000	2021	Shivam Sharma (born 9 September 1993) is a cricketer who plays for Kings XI Punjab. Sharma is an all-rounder who bats right-handed and bowls off break. In 2012, he captained the Delhi Under-19 and North Zone Under-19 cricket teams.In 2014, he was signed up by Kings XI Punjab for INR 1 million, without having played any form of senior cricket.	Shivam Sharma	https://img1.hscicdn.com/image/upload/f_auto,t_gn_w_352/esci/media/motion/cricinfo/2014/0509/cric_140509_Review_Bangalore_v_Punjab/cric_140509_Review_Bangalore_v_Punjab.jpg		f
332	100000	 Left Handed Bat 	India	100000	2021	Arjun Sachin Tendulkar (born 24 September 1999) is an Indian cricketer and the son of Sachin Tendulkar. He is a left-handed fast bowler and left-handed batsman. His Under-19 debut for India was against Sri Lanka in 2018.	Arjun Tendulkar	https://images.hindustantimes.com/img/2021/09/29/1600x900/arjun-tendulkar-mi_1632918329048_1632918333638.jpg		f
333	100000	 Right Handed Bat 	India	100000	2021	Amit Ramkumar Yadav (born 10 October 1989) is an Indian cricketer who plays for Goa cricket team. He is an all-rounder who bats right-handed and bowls right-arm off break. He made his first-class cricket debut for Goa in 2009/10.	Amit Yadav	https://sportzcraazy.com/wp-content/uploads/2019/09/Amit-Yadav-photo.png		f
334	100000	 Left Handed Bat 	India	100000	2021	Sujit Nayak (born 23 June 1989, full name Sujit Surendra Nayak) is an Indian cricketer who plays for Mumbai in the C.K Nayudu Trophy. He was born in Bombay (now Mumbai). He was brought by Mumbai Indians for the 2012 Indian Premier League (IPL) and the Delhi Daredevils for the 2013 IPL. He made his List A debut on 27 February 2014, for Mumbai in the 2013–14 Vijay Hazare Trophy.	Sujit Nayak	https://www.t20mumbai.com/static-assets/waf-images/da/a9/ce/16-9/iOxuqIrm7B.jpg		f
370	100000	 Right Handed Bat 	India	100000	2021	Air Marshal K. C. 'Nanda' Cariappa is a former Air Officer in the Indian Air Force. He is the son of Field Marshal K. M. Cariappa, who was the first Commander-in-Chief of the Indian Army post independence.\n\n\n== Military career ==\nAir Marshal Cariappa was a squadron leader with No.	K.C Cariappa	https://www.mykhel.com/img/400x90/2021/09/kccariappa1-1631102624.jpg		f
335	100000	 Left Handed Bat 	India	100000	2021	Bavanaka Parameswar Sandeep (born 25 April 1992) is an Indian first-class cricketer who plays for Hyderabad. He was the leading run-scorer for Hyderabad in the 2017–18 Ranji Trophy, with 400 runs in four matches.In July 2018, he was named in the squad for India Red for the 2018–19 Duleep Trophy. In November 2018, he scored his 3,000th run in first-class cricket, batting for Hyderabad against Kerala in the 2018–19 Ranji Trophy.	Bavanaka Sandeep	https://www.sportzcraazy.com/wp-content/uploads/2020/03/Bavanaka-Sandeep.jpg		f
337	100000	 Left Handed Bat 	India	100000	2021	Sagar Paresh Udeshi (born 14 October 1986) is an Indian cricketer. He made his first-class debut for Chilaw Marians Cricket Club in the 2018–19 Premier League Tournament in Sri Lanka on 14 December 2018. He was the leading wicket-taker for Chilaw Marians Cricket Club in the tournament, with 57 dismissals in eight matches.He made his List A debut for Puducherry in the 2018–19 Vijay Hazare Trophy on 19 September 2018.	Sagar Udeshi	https://images.mid-day.com/images/images/2022/feb/ipl-virat_d.jpg		f
338	100000	 Right Handed Bat 	India	100000	2021	Tanmay Mishra (born 22 December 1986 in Mumbai, India) is a former Kenyan cricketer. A right-handed aggressive middle-order batsman, he made his One Day International debut for Kenya in 2006 against Zimbabwe at Bulawayo.\n\n\n== Early life ==\nBorn in Mumbai, he moved to Kenya in 1994, at the age of 8.	Tanmay Mishra	https://img1.hscicdn.com/image/upload/f_auto,w_440/lsci/db/PICTURES/CMS/129900/129923.jpg		f
339	100000	 Right Handed Bat 	India	100000	2021		Anirudha Joshi	https://s3.ap-southeast-1.amazonaws.com/images.deccanchronicle.com/dc-Cover-o9jqhp8rsqo9qvu95gel7gpuq1-20180412231141.jpeg		f
340	100000	 Right Handed Bat 	India	100000	2021	Priyank Kiritbhai Panchal (born 9 April 1990) is an Indian cricketer. He is a right-handed batsman and a right-arm medium-pace bowler who plays for Gujarat. He was born in Ahmedabad.	Priyank Panchal	https://www.espncricinfo.com/db/PICTURES/CMS/280500/280501.jpg		f
341	100000	 Right Handed Bat 	India	100000	2021	Diwesh Pathania (born 22 June 1989) is an Indian cricketer who plays for Services. He made his List A debut on 27 February 2014, for Services in the 2013–14 Vijay Hazare Trophy. He made his first class debut on 1 October 2015 in the 2015–16 Ranji Trophy.	Diwesh Pathania	https://s3.ap-south-1.amazonaws.com/assets-kxip.sportz.io/prod/waf-images/39/e2/05/16-9/1CeuPagFTC.jpg		f
342	100000	 Right Handed Bat 	India	100000	2021	Arjit Gupta (born 12 September 1989) is an Indian first-class cricketer who plays for Rajasthan.	Arjit Gupta	https://www.espncricinfo.com/db/PICTURES/CMS/185500/185551.3.jpg		f
343	100000	 Left Handed Bat 	India	100000	2021	Dharmendrasinh Aniruddsinh Jadeja (born 4 August 1990) is an Indian first-class cricketer who plays for Saurashtra in domestic cricket. He was the leading wicket-taker for Saurashtra in the 2017–18 Ranji Trophy, with 34 dismissals in six matches. He was also the leading wicket-taker for Saurashtra in the group-stage of the 2018–19 Ranji Trophy, with 38 dismissals in eight matches.	Dharmendrasinh Jadeja	https://www.crictracker.com/wp-content/uploads/2018/12/Dharmendra-Jadeja.jpg		f
344	100000	 Right Handed Bat 	India	100000	2021	Chirag Jayeshkumar Gandhi (born 18 June 1990) is an Indian first-class cricketer who plays for Gujarat cricket team. He is also called CJ Gandhi. He is a Right-hand batsman and Right-arm off break bowler.He has been in the Gujarat team since 2011.	Chirag Gandhi	https://www.publicbiography.com/public/uploads/bd79589fcef58e41ef055ae5d7884ba3.webp		f
345	100000	 Left Handed Bat 	India	100000	2021		Sudip Chatterjee	https://static.toiimg.com/thumb/msid-73070456,width-1200,height-900,resizemode-4/.jpg		f
346	100000	 Right Handed Bat 	India	100000	2021	Tanvir Mashart Ul-Haq (born 3 December 1991) is an Indian cricketer. He made his first-class debut for Rajasthan in the 2014–15 Ranji Trophy on 5 January 2015. In January 2019, in the quarter-final match of the 2018–19 Ranji Trophy against Karnataka, Tanvir became the first bowler for Rajasthan to take 50 wickets in a single season.	Tanveer Ul Haq	https://static.toiimg.com/thumb/msid-70725404,imgsize-318860,width-400,resizemode-4/70725404.jpg		f
347	100000	 Right Handed Bat 	India	100000	2021	Naushad Shaikh (born 15 October 1991) is an Indian cricketer. He made his first-class debut for Maharashtra in the 2016–17 Ranji Trophy on 13 October 2016. He made his Twenty20 debut for Maharashtra in the 2016–17 Inter State Twenty-20 Tournament on 29 January 2017.	Naushad Shaikh	https://www.espncricinfo.com/db/PICTURES/CMS/254900/254964.8.jpg		f
348	100000	 Right Handed Bat 	India	100000	2021	Mattakandathil Dineshan Nidheesh (born 5 May 1991) is an Indian cricketer who represents Kerala in domestic cricket. He is a right-handed batsman and right-arm medium-fast bowler.\n\n\n== Domestic career ==\nNidheesh made his first class debut for Kerala in the 2015–16 Ranji Trophy on 21 January 2015 against Tripura.	M Nidheesh	https://sports11team.com/wp-content/uploads/2021/01/nd4-1024x580.jpg		f
349	100000	 Right Handed Bat 	India	100000	2021		R. Vivek	https://img.dtnext.in/Articles/2021/Aug/202108080028009124_Vivek-helps-Dindigul-qualify-for-TNPL-playoffs_SECVPF.gif		f
350	100000	 Right Handed Bat 	India	100000	2021	M. Mohammed (born 3 December 1991) is an Indian cricketer who plays for Tamil Nadu. On 2 November 2018, he took a hat-trick in the match against Madhya Pradesh in the 2018–19 Ranji Trophy.	M. Mohammed	https://images.indianexpress.com/2020/10/siraj-rcb.jpg		f
351	100000	 Right Handed Bat 	India	100000	2021	Vishnu Solanki (born 15 October 1992) is an Indian cricketer. He made his first-class debut for Baroda in the 2014–15 Ranji Trophy on 6 February 2015. In November 2017, he scored his maiden century in first-class cricket, batting for Baroda against Tripura in the 2017–18 Ranji Trophy.In July 2018, he was named in the squad for India Green for the 2018–19 Duleep Trophy.	Vishnu Solanki	https://mumbaimirror.indiatimes.com/photo/67111837.cms		f
352	100000	 Right Handed Bat 	India	100000	2021	Nikhil Gangta (born 1 September 1992) is an Indian cricketer who plays for Himachal Pradesh. He made his first-class debut for Himachal Pradesh against Goa in 2012-13 Ranji Trophy on 15 December 2012.In July 2018, he was named in the squad for India Blue for the 2018–19 Duleep Trophy. He scored a century in the final of the tournament, which India Blue went on to win, and he was named the man of the match.	Nikhil Gangta	https://images.tribuneindia.com/cms/gall_content/2018/1/2018_1$largeimg26_Friday_2018_012755052.jpg		f
353	100000	 Right Handed Bat 	India	100000	2021	Mohit Avasthi (born 18 November 1992) is an Indian cricketer. He made his List A debut on 1 March 2021, for Mumbai in the 2020–21 Vijay Hazare Trophy. He made his Twenty20 debut on 4 November 2021, for Mumbai in the 2021–22 Syed Mushtaq Ali Trophy.	Mohit Avasthi	https://lookaside.fbsbx.com/lookaside/crawler/media/?media_id=1309232692797248		f
354	100000	 Right Handed Bat 	India	100000	2021	Silambarasan Thesingu Rajendar, also known as S.T.R. or Simbu, is an Indian actor, filmmaker and musician in Tamil cinema. He began his acting career by playing roles as a child artist in films directed by his father T. Rajendar, before his first lead role in Kadhal Azhivathillai (2002), under his father's direction and produced by his mother Usha.\n\n\n== Early and personal life ==\nSilambarasan was born in Thogarapalli, Krishnagiri, Tamil Nadu, as the eldest child of T. Rajendar and Usha Rajendar on 3 February 1983.	R. Silambarasan	https://www.cricxtasy.com/wp-content/uploads/2021/12/R-Silambarsan-1-735x400.jpg		f
355	100000	 Left Handed Bat 	India	100000	2021	Satyajeet Bachhav (born 28 November 1992) is an Indian cricketer. He made his Twenty20 debut for Maharashtra in the 2015–16 Syed Mushtaq Ali Trophy on 3 January 2016. He made his List A debut for Maharashtra in the 2016–17 Vijay Hazare Trophy on 4 March 2017.He was the joint-leading wicket-taker for Maharashtra in the 2018–19 Vijay Hazare Trophy, with fifteen dismissals in eight matches.	Satyajeet Bachhav	https://student-stories.s3.ap-southeast-1.amazonaws.com/student-stories/wp-content/uploads/2017/02/13231109/Satyajeet-Bachhav.jpg		f
356	100000	 Right Handed Bat 	India	100000	2021	Ravikumar Samarth (born 22 January 1993) is an Indian cricketer who plays for Karnataka cricket team. He is a right-handed top-order batsman and occasional right-arm off break bowler. He played for Karnataka at various age-group levels such as Under-12, Under-14, Under-16 and Under-19, before making his first-class debut in December 2013.	R Samarth	https://static.toiimg.com/thumb/msid-81114352,width-1200,height-900,resizemode-4/.jpg		f
357	100000	 Right Handed Bat 	India	100000	2021	Writtick Chatterjee (born 28 September 1992) is an Indian cricketer who plays for Bengal. He made his Twenty20 debut for Bengal in the 2016–17 Inter State Twenty-20 Tournament on 1 February 2017.In December 2017, he scored his maiden double-century in first-class cricket, batting for Bengal against Gujarat in the quarter-finals of the 2017–18 Ranji Trophy.He made his List A debut for Bengal in the 2017–18 Vijay Hazare Trophy on 5 February 2018. In July 2018, he was named in the squad for India Red for the 2018–19 Duleep Trophy.	Writtick Chatterjee	https://staticg.sportskeeda.com/editor/2022/02/6e290-16447830499379-1920.jpg		f
358	100000	 Right Handed Bat 	India	100000	2021	Vasuki Koushik (born 19 September 1992) is an Indian cricketer. He made his Twenty20 debut for Karnataka in the 2018–19 Syed Mushtaq Ali Trophy on 24 February 2019. He made his List A debut on 8 October 2019, for Karnataka in the 2019–20 Vijay Hazare Trophy.	V Koushik	https://www.deccanherald.com/sites/dh/files/article_images/2019/03/16/file74i5befocec1ng59yl6h-1552757606.jpg		f
359	100000	 Right Handed Bat 	India	100000	2021	V. Athisayaraj Davidson (born 6 June 1992) is an Indian cricketer. He made his List A debut for Tamil Nadu in the 2018–19 Vijay Hazare Trophy on 3 October 2018.	V. Athisayaraj	https://www.espncricinfo.com/db/PICTURES/CMS/279200/279292.6.jpg		f
360	100000	 Left Handed Bat 	India	100000	2021	Parth Mukesh Sahani (born 9 March 1993) is an Indian cricketer who plays for Madhya Pradesh cricket team.	Parth Sahani	https://thebridge.in/h-upload/2022/02/12/23275-ipl-2022.webp		f
361	100000	 Right Handed Bat 	India	100000	2021	Anunay Singh (born 3 January 1993) is an Indian cricketer. He made his List A debut for Bihar in the 2018–19 Vijay Hazare Trophy on 19 September 2018. He made his first-class debut for Bihar in the 2018–19 Ranji Trophy on 1 November 2018.	Anunay Singh	https://navbharattimes.indiatimes.com/photo/msid-89582685,imgsize-77530/pic.jpg		f
362	100000	 Right Handed Bat 	India	100000	2021	KM Asif (born 24 July 1993) is an Indian cricketer who plays for Kerala in domestic cricket.\n\n\n== Early life ==\nAsif's father was a daily wager while his mother was a homemaker. His younger brother is intellectually disabled and his younger sister has challenges after suffering a brain injury during her formative years.	K.M. Asif	https://www.espncricinfo.com/db/PICTURES/CMS/275700/275704.jpg		f
363	100000	 Right Handed Bat 	India	100000	2021	Eknath Dinesh Kerkar (born 10 September 1993) is an Indian cricketer. He made his Twenty20 debut for Mumbai in the 2014–15 Syed Mushtaq Ali Trophy on 18 January 2016. He made his first-class debut for Mumbai in the 2018–19 Ranji Trophy on 14 December 2018.	Eknath Kerkar	https://www.t20mumbai.com/static-assets/waf-images/13/9c/f8/16-9/cv8ee8gfkm.jpg		f
364	100000	 Left Handed Bat 	India	100000	2021	Visakhapatnam Metropolitan Region is the metropolitan area covered by the city of Visakhapatnam in the Indian state of Andhra Pradesh. The entire region is spread over the districts of Visakhapatnam and Vizianagaram. Under the jurisdiction of Visakhapatnam Metropolitan Region Development Authority, it covers an area of 7,328.86 km2 (2,829.69 sq mi) and has a population of 60 lakhs.	Stephen Cheepurupalli	https://thebridge.in/h-upload/2022/02/12/23275-ipl-2022.jpg		f
365	100000	 Right Handed Bat 	India	100000	2021	Mukesh Chand Mathur (22 July 1923 – 27 August 1976), better known mononymously as Mukesh, was an Indian playback singer. Mukesh is considered to be one of the most popular and acclaimed playback singers of the Hindi film industry. Amongst the numerous nominations and awards he won, his song "Kai Baar Yuhi Dekha Hai" from the film Rajnigandha (1973) won him the National Film Award for Best Male Playback Singer.	Mukesh Kumar 	https://static.toiimg.com/thumb/msid-73941838,width-1200,height-900,resizemode-4/.jpg		f
366	100000	 Right Handed Bat 	India	100000	2021	Arun Chaprana (born 5 January 1994) is an Indian cricketer. He made his List A debut for Haryana in the 2018–19 Vijay Hazare Trophy on 21 September 2018. He made his Twenty20 debut for Haryana in the 2018–19 Syed Mushtaq Ali Trophy on 21 February 2019.	Arun Chaprana	https://static.toiimg.com/thumb/imgsize-123456,msid-80286455,width-600,resizemode-4/80286455.jpg		f
367	100000	 Left Handed Bat 	India	100000	2021	Divyang Hinganekar (born 14 October 1993) is an Indian cricketer. He made his List A debut for Maharashtra in the 2017–18 Vijay Hazare Trophy on 15 February 2018. He made his first-class debut on 17 February 2022, for Maharashtra in the 2021–22 Ranji Trophy.	Divyang Hinganekar	https://images.hindustantimes.com/img/2021/10/26/1600x900/Ruturaj_Gaikwad_1635224483500_1635224483706.jpg		f
368	100000	 Left Handed Bat 	India	100000	2021	Azim Kazi (born 14 October 1993) is an Indian cricketer. He made his Twenty20 debut for Maharashtra in the 2018–19 Syed Mushtaq Ali Trophy on 22 February 2019. He made his List A debut on 7 October 2019, for Maharashtra in the 2019–20 Vijay Hazare Trophy.	Azim Kazi	https://www.publicbiography.com/public/uploads/ca299afe28e703dd0f2fc727a7855018.webp		f
369	100000	 Right Handed Bat 	India	100000	2021	Ravi Chauhan (born 17 September 1993) is an Indian cricketer who plays for Services. He made his first-class debut on 1 October 2015 in the 2015–16 Ranji Trophy. He made his Twenty20 debut for Services in the 2016–17 Inter State Twenty-20 Tournament on 2 February 2017.He was the leading run-scorer for Services in the 2017–18 Ranji Trophy, with 457 runs in six matches.He made his List A debut for Services in the 2018–19 Vijay Hazare Trophy on 25 September 2018.	Ravi Chauhan	https://nettv4u.com/imagine/24-09-2018/ravi-chauhan.jpg		f
372	100000	 Right Handed Bat 	India	100000	2021	Sudhesan Midhun (born 7 October 1994) is an Indian cricketer who represents Kerala in domestic cricket.\n\n\n== Early life ==\nMidhun hails from Pullukulangara, near Kayamkulam in Alappuzha district of Kerala. His father, Sudhesan is a grocery shop owner.	Midhun Sudhesan	https://i.cdn.newsbytesapp.com/sports/players/profile/sudhesan-midhun.png		f
373	100000	 Right Handed Bat 	India	100000	2021	Baba Indrajith (born 8 July 1994 in Madras, India) is an Indian cricketer who plays as an allrounder for the Tamil Nadu cricket team. Indrajith is a right hand batsman and legbreak bowler. He plays first-class cricket for Tamil Nadu.	Baba Indrajith	https://images.newindianexpress.com/uploads/user/imagelibrary/2021/8/2/w600X390/Baba_Indrajith11.jpg		f
374	100000	 Right Handed Bat 	India	100000	2021	KM Asif (born 24 July 1993) is an Indian cricketer who plays for Kerala in domestic cricket.\n\n\n== Early life ==\nAsif's father was a daily wager while his mother was a homemaker. His younger brother is intellectually disabled and his younger sister has challenges after suffering a brain injury during her formative years.	KM Asif	https://www.espncricinfo.com/db/PICTURES/CMS/275700/275704.jpg		f
\.


--
-- TOC entry 3489 (class 0 OID 18556)
-- Dependencies: 234
-- Data for Name: user_info_player_owner; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_info_player_owner (id, price, player_id_id, user_id_id) FROM stdin;
\.


--
-- TOC entry 3486 (class 0 OID 18535)
-- Dependencies: 231
-- Data for Name: user_info_start_bidding; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_info_start_bidding (id, bid) FROM stdin;
\.


--
-- TOC entry 3488 (class 0 OID 18547)
-- Dependencies: 233
-- Data for Name: user_info_user_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_info_user_data (id, status, money, username_id) FROM stdin;
1	t	5000000	1
2	t	5000000	3
\.


--
-- TOC entry 3512 (class 0 OID 0)
-- Dependencies: 215
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- TOC entry 3513 (class 0 OID 0)
-- Dependencies: 217
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 3514 (class 0 OID 0)
-- Dependencies: 213
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 44, true);


--
-- TOC entry 3515 (class 0 OID 0)
-- Dependencies: 221
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- TOC entry 3516 (class 0 OID 0)
-- Dependencies: 219
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 3, true);


--
-- TOC entry 3517 (class 0 OID 0)
-- Dependencies: 223
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 3518 (class 0 OID 0)
-- Dependencies: 225
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- TOC entry 3519 (class 0 OID 0)
-- Dependencies: 211
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 11, true);


--
-- TOC entry 3520 (class 0 OID 0)
-- Dependencies: 209
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 24, true);


--
-- TOC entry 3521 (class 0 OID 0)
-- Dependencies: 235
-- Name: user_info_loggedinuser_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_info_loggedinuser_id_seq', 2, true);


--
-- TOC entry 3522 (class 0 OID 0)
-- Dependencies: 228
-- Name: user_info_player_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_info_player_id_seq', 374, true);


--
-- TOC entry 3523 (class 0 OID 0)
-- Dependencies: 237
-- Name: user_info_player_owner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_info_player_owner_id_seq', 1, false);


--
-- TOC entry 3524 (class 0 OID 0)
-- Dependencies: 230
-- Name: user_info_start_bidding_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_info_start_bidding_id_seq', 1, false);


--
-- TOC entry 3525 (class 0 OID 0)
-- Dependencies: 232
-- Name: user_info_user_data_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_info_user_data_id_seq', 2, true);


--
-- TOC entry 3261 (class 2606 OID 18514)
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 3266 (class 2606 OID 18444)
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- TOC entry 3269 (class 2606 OID 18410)
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3263 (class 2606 OID 18401)
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 3256 (class 2606 OID 18435)
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- TOC entry 3258 (class 2606 OID 18394)
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 3277 (class 2606 OID 18426)
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 3280 (class 2606 OID 18459)
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- TOC entry 3271 (class 2606 OID 18417)
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 3283 (class 2606 OID 18433)
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3286 (class 2606 OID 18473)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- TOC entry 3274 (class 2606 OID 18509)
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 3289 (class 2606 OID 18495)
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 3251 (class 2606 OID 18387)
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- TOC entry 3253 (class 2606 OID 18385)
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 3249 (class 2606 OID 18378)
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 3293 (class 2606 OID 18522)
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 3309 (class 2606 OID 18572)
-- Name: user_info_loggedinuser user_info_loggedinuser_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_info_loggedinuser
    ADD CONSTRAINT user_info_loggedinuser_pkey PRIMARY KEY (id);


--
-- TOC entry 3311 (class 2606 OID 18574)
-- Name: user_info_loggedinuser user_info_loggedinuser_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_info_loggedinuser
    ADD CONSTRAINT user_info_loggedinuser_user_id_key UNIQUE (user_id);


--
-- TOC entry 3304 (class 2606 OID 18624)
-- Name: user_info_player_owner user_info_player_owner_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_info_player_owner
    ADD CONSTRAINT user_info_player_owner_pkey PRIMARY KEY (id);


--
-- TOC entry 3306 (class 2606 OID 18563)
-- Name: user_info_player_owner user_info_player_owner_player_id_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_info_player_owner
    ADD CONSTRAINT user_info_player_owner_player_id_id_key UNIQUE (player_id_id);


--
-- TOC entry 3296 (class 2606 OID 18533)
-- Name: user_info_player user_info_player_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_info_player
    ADD CONSTRAINT user_info_player_pkey PRIMARY KEY (id);


--
-- TOC entry 3298 (class 2606 OID 18540)
-- Name: user_info_start_bidding user_info_start_bidding_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_info_start_bidding
    ADD CONSTRAINT user_info_start_bidding_pkey PRIMARY KEY (id);


--
-- TOC entry 3300 (class 2606 OID 18552)
-- Name: user_info_user_data user_info_user_data_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_info_user_data
    ADD CONSTRAINT user_info_user_data_pkey PRIMARY KEY (id);


--
-- TOC entry 3302 (class 2606 OID 18554)
-- Name: user_info_user_data user_info_user_data_username_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_info_user_data
    ADD CONSTRAINT user_info_user_data_username_id_key UNIQUE (username_id);


--
-- TOC entry 3259 (class 1259 OID 18515)
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 3264 (class 1259 OID 18455)
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- TOC entry 3267 (class 1259 OID 18456)
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- TOC entry 3254 (class 1259 OID 18441)
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- TOC entry 3275 (class 1259 OID 18471)
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- TOC entry 3278 (class 1259 OID 18470)
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- TOC entry 3281 (class 1259 OID 18485)
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 3284 (class 1259 OID 18484)
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 3272 (class 1259 OID 18510)
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 3287 (class 1259 OID 18506)
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- TOC entry 3290 (class 1259 OID 18507)
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- TOC entry 3291 (class 1259 OID 18524)
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- TOC entry 3294 (class 1259 OID 18523)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 3307 (class 1259 OID 18638)
-- Name: user_info_player_owner_user_id_id_2f6c58d3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_info_player_owner_user_id_id_2f6c58d3 ON public.user_info_player_owner USING btree (user_id_id);


--
-- TOC entry 3314 (class 2606 OID 18450)
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3313 (class 2606 OID 18445)
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3312 (class 2606 OID 18436)
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3316 (class 2606 OID 18465)
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3315 (class 2606 OID 18460)
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3318 (class 2606 OID 18479)
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3317 (class 2606 OID 18474)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3319 (class 2606 OID 18496)
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3320 (class 2606 OID 18501)
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3324 (class 2606 OID 18595)
-- Name: user_info_loggedinuser user_info_loggedinuser_user_id_5161754d_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_info_loggedinuser
    ADD CONSTRAINT user_info_loggedinuser_user_id_5161754d_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3322 (class 2606 OID 18633)
-- Name: user_info_player_owner user_info_player_own_player_id_id_8637acbe_fk_user_info; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_info_player_owner
    ADD CONSTRAINT user_info_player_own_player_id_id_8637acbe_fk_user_info FOREIGN KEY (player_id_id) REFERENCES public.user_info_player(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3323 (class 2606 OID 18639)
-- Name: user_info_player_owner user_info_player_own_user_id_id_2f6c58d3_fk_user_info; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_info_player_owner
    ADD CONSTRAINT user_info_player_own_user_id_id_2f6c58d3_fk_user_info FOREIGN KEY (user_id_id) REFERENCES public.user_info_user_data(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3321 (class 2606 OID 18580)
-- Name: user_info_user_data user_info_user_data_username_id_f15e4c43_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_info_user_data
    ADD CONSTRAINT user_info_user_data_username_id_f15e4c43_fk_auth_user_id FOREIGN KEY (username_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2022-02-17 16:19:34

--
-- PostgreSQL database dump complete
--

