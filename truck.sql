--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3
-- Dumped by pg_dump version 12.3

-- Started on 2020-07-23 23:34:37

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
-- TOC entry 209 (class 1259 OID 16425)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 16423)
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
-- TOC entry 3015 (class 0 OID 0)
-- Dependencies: 208
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- TOC entry 211 (class 1259 OID 16435)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 16433)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 3016 (class 0 OID 0)
-- Dependencies: 210
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- TOC entry 207 (class 1259 OID 16417)
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
-- TOC entry 206 (class 1259 OID 16415)
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
-- TOC entry 3017 (class 0 OID 0)
-- Dependencies: 206
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- TOC entry 213 (class 1259 OID 16443)
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16453)
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16451)
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- TOC entry 3018 (class 0 OID 0)
-- Dependencies: 214
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- TOC entry 212 (class 1259 OID 16441)
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
-- TOC entry 3019 (class 0 OID 0)
-- Dependencies: 212
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- TOC entry 217 (class 1259 OID 16461)
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16459)
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 3020 (class 0 OID 0)
-- Dependencies: 216
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- TOC entry 228 (class 1259 OID 16596)
-- Name: dashboard_rf_card_info; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dashboard_rf_card_info (
    id integer NOT NULL,
    rf_card_number character varying(150) NOT NULL,
    start_date date NOT NULL,
    end_date date NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    active_status integer NOT NULL,
    vehicle_info_id integer NOT NULL
);


ALTER TABLE public.dashboard_rf_card_info OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 16594)
-- Name: dashboard_rf_card_info_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.dashboard_rf_card_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dashboard_rf_card_info_id_seq OWNER TO postgres;

--
-- TOC entry 3021 (class 0 OID 0)
-- Dependencies: 227
-- Name: dashboard_rf_card_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.dashboard_rf_card_info_id_seq OWNED BY public.dashboard_rf_card_info.id;


--
-- TOC entry 226 (class 1259 OID 16583)
-- Name: dashboard_vehicle_info; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dashboard_vehicle_info (
    id integer NOT NULL,
    vehicle_reg_number character varying(150) NOT NULL,
    brand_name character varying(150) NOT NULL,
    driver_name character varying(150) NOT NULL,
    model character varying(150) NOT NULL,
    vehicle_type_id integer NOT NULL
);


ALTER TABLE public.dashboard_vehicle_info OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16581)
-- Name: dashboard_vehicle_info_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.dashboard_vehicle_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dashboard_vehicle_info_id_seq OWNER TO postgres;

--
-- TOC entry 3022 (class 0 OID 0)
-- Dependencies: 225
-- Name: dashboard_vehicle_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.dashboard_vehicle_info_id_seq OWNED BY public.dashboard_vehicle_info.id;


--
-- TOC entry 224 (class 1259 OID 16572)
-- Name: dashboard_vehicle_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dashboard_vehicle_log (
    id integer NOT NULL,
    rf_card_number character varying(150) NOT NULL,
    vehicle_id character varying(100) NOT NULL,
    vehicle_reg_number character varying(150) NOT NULL,
    driver_name character varying(150) NOT NULL,
    event_date_time timestamp with time zone NOT NULL,
    event_date date NOT NULL,
    event_time time without time zone NOT NULL,
    event_type integer NOT NULL
);


ALTER TABLE public.dashboard_vehicle_log OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16570)
-- Name: dashboard_vehicle_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.dashboard_vehicle_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dashboard_vehicle_log_id_seq OWNER TO postgres;

--
-- TOC entry 3023 (class 0 OID 0)
-- Dependencies: 223
-- Name: dashboard_vehicle_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.dashboard_vehicle_log_id_seq OWNED BY public.dashboard_vehicle_log.id;


--
-- TOC entry 221 (class 1259 OID 16554)
-- Name: dashboard_vehicle_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dashboard_vehicle_type (
    id integer NOT NULL,
    vehicle_type character varying(150) NOT NULL
);


ALTER TABLE public.dashboard_vehicle_type OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16552)
-- Name: dashboard_vehicle_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.dashboard_vehicle_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dashboard_vehicle_type_id_seq OWNER TO postgres;

--
-- TOC entry 3024 (class 0 OID 0)
-- Dependencies: 220
-- Name: dashboard_vehicle_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.dashboard_vehicle_type_id_seq OWNED BY public.dashboard_vehicle_type.id;


--
-- TOC entry 219 (class 1259 OID 16521)
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
-- TOC entry 218 (class 1259 OID 16519)
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
-- TOC entry 3025 (class 0 OID 0)
-- Dependencies: 218
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- TOC entry 205 (class 1259 OID 16407)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16405)
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
-- TOC entry 3026 (class 0 OID 0)
-- Dependencies: 204
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- TOC entry 203 (class 1259 OID 16396)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16394)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- TOC entry 3027 (class 0 OID 0)
-- Dependencies: 202
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- TOC entry 222 (class 1259 OID 16560)
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- TOC entry 2772 (class 2604 OID 16428)
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- TOC entry 2773 (class 2604 OID 16438)
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 2771 (class 2604 OID 16420)
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- TOC entry 2774 (class 2604 OID 16446)
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- TOC entry 2775 (class 2604 OID 16456)
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- TOC entry 2776 (class 2604 OID 16464)
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 2782 (class 2604 OID 16599)
-- Name: dashboard_rf_card_info id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dashboard_rf_card_info ALTER COLUMN id SET DEFAULT nextval('public.dashboard_rf_card_info_id_seq'::regclass);


--
-- TOC entry 2781 (class 2604 OID 16586)
-- Name: dashboard_vehicle_info id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dashboard_vehicle_info ALTER COLUMN id SET DEFAULT nextval('public.dashboard_vehicle_info_id_seq'::regclass);


--
-- TOC entry 2780 (class 2604 OID 16575)
-- Name: dashboard_vehicle_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dashboard_vehicle_log ALTER COLUMN id SET DEFAULT nextval('public.dashboard_vehicle_log_id_seq'::regclass);


--
-- TOC entry 2779 (class 2604 OID 16557)
-- Name: dashboard_vehicle_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dashboard_vehicle_type ALTER COLUMN id SET DEFAULT nextval('public.dashboard_vehicle_type_id_seq'::regclass);


--
-- TOC entry 2777 (class 2604 OID 16524)
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- TOC entry 2770 (class 2604 OID 16410)
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- TOC entry 2769 (class 2604 OID 16399)
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- TOC entry 2990 (class 0 OID 16425)
-- Dependencies: 209
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- TOC entry 2992 (class 0 OID 16435)
-- Dependencies: 211
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- TOC entry 2988 (class 0 OID 16417)
-- Dependencies: 207
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
25	Can add vehicle_type	7	add_vehicle_type
26	Can change vehicle_type	7	change_vehicle_type
27	Can delete vehicle_type	7	delete_vehicle_type
28	Can view vehicle_type	7	view_vehicle_type
29	Can add vehicle_log	8	add_vehicle_log
30	Can change vehicle_log	8	change_vehicle_log
31	Can delete vehicle_log	8	delete_vehicle_log
32	Can view vehicle_log	8	view_vehicle_log
33	Can add vehicle_info	9	add_vehicle_info
34	Can change vehicle_info	9	change_vehicle_info
35	Can delete vehicle_info	9	delete_vehicle_info
36	Can view vehicle_info	9	view_vehicle_info
37	Can add r f_card_info	10	add_rf_card_info
38	Can change r f_card_info	10	change_rf_card_info
39	Can delete r f_card_info	10	delete_rf_card_info
40	Can view r f_card_info	10	view_rf_card_info
\.


--
-- TOC entry 2994 (class 0 OID 16443)
-- Dependencies: 213
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$180000$XeJf7LQTvpOy$djVHKemEat+2AmrPP+6+jIoBTEj1PY/X04z3/Hm2J0M=	2020-07-22 11:58:25.537333+06	t	faisal			faisalakon444@gmail.com	t	t	2020-07-22 11:55:38.516207+06
\.


--
-- TOC entry 2996 (class 0 OID 16453)
-- Dependencies: 215
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- TOC entry 2998 (class 0 OID 16461)
-- Dependencies: 217
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3009 (class 0 OID 16596)
-- Dependencies: 228
-- Data for Name: dashboard_rf_card_info; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dashboard_rf_card_info (id, rf_card_number, start_date, end_date, created_at, updated_at, active_status, vehicle_info_id) FROM stdin;
1	1	2020-07-22	2021-04-28	2020-07-23 00:18:00.49953+06	2020-07-23 00:18:00.49953+06	1	1
2	2	2020-07-22	2021-04-20	2020-07-23 00:18:27.438136+06	2020-07-23 00:18:27.438136+06	1	2
3	3	2020-07-22	2021-10-19	2020-07-23 00:18:50.276442+06	2020-07-23 00:18:50.276442+06	1	3
\.


--
-- TOC entry 3007 (class 0 OID 16583)
-- Dependencies: 226
-- Data for Name: dashboard_vehicle_info; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dashboard_vehicle_info (id, vehicle_reg_number, brand_name, driver_name, model, vehicle_type_id) FROM stdin;
1	1	tesla	elon mask	model s	1
2	2	BMW	digonto	ex-gtr	6
3	3	audi	faisal	gh-df	5
4	4	QTS	MARK	BIG01	4
5	5	BMW	tonmoy	bm-gt	3
\.


--
-- TOC entry 3005 (class 0 OID 16572)
-- Dependencies: 224
-- Data for Name: dashboard_vehicle_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dashboard_vehicle_log (id, rf_card_number, vehicle_id, vehicle_reg_number, driver_name, event_date_time, event_date, event_time, event_type) FROM stdin;
3	2	2	2	digonto	2020-07-23 00:26:34.265279+06	2020-07-23	00:26:34.265279	0
4	3	3	3	faisal	2020-07-23 00:27:02.697492+06	2020-07-23	00:27:02.697492	1
2	1	1	1	elon musk	2020-07-23 00:25:58.976681+06	2020-07-23	00:25:58.976681	1
\.


--
-- TOC entry 3002 (class 0 OID 16554)
-- Dependencies: 221
-- Data for Name: dashboard_vehicle_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dashboard_vehicle_type (id, vehicle_type) FROM stdin;
1	car
2	micro
3	pickup
4	van
5	mini-truck
6	big-truck
\.


--
-- TOC entry 3000 (class 0 OID 16521)
-- Dependencies: 219
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2020-07-23 00:11:12.077976+06	1	car	1	[{"added": {}}]	7	1
2	2020-07-23 00:11:40.619109+06	2	micro	1	[{"added": {}}]	7	1
3	2020-07-23 00:12:16.986005+06	3	pickup	1	[{"added": {}}]	7	1
4	2020-07-23 00:12:25.082906+06	4	van	1	[{"added": {}}]	7	1
5	2020-07-23 00:12:52.604832+06	5	mini-truck	1	[{"added": {}}]	7	1
6	2020-07-23 00:13:12.679173+06	6	big-truck	1	[{"added": {}}]	7	1
7	2020-07-23 00:14:26.321779+06	1	1	1	[{"added": {}}]	9	1
8	2020-07-23 00:15:34.118693+06	2	2	1	[{"added": {}}]	9	1
9	2020-07-23 00:16:18.149251+06	3	3	1	[{"added": {}}]	9	1
10	2020-07-23 00:18:00.516249+06	1	1	1	[{"added": {}}]	10	1
11	2020-07-23 00:18:27.439133+06	2	2	1	[{"added": {}}]	10	1
12	2020-07-23 00:18:50.277441+06	3	3	1	[{"added": {}}]	10	1
13	2020-07-23 00:19:30.412071+06	1	1	1	[{"added": {}}]	8	1
14	2020-07-23 00:25:58.978638+06	2	1	1	[{"added": {}}]	8	1
15	2020-07-23 00:26:09.579965+06	2	1	2	[]	8	1
16	2020-07-23 00:26:17.473641+06	1	1	3		8	1
17	2020-07-23 00:26:34.268345+06	3	2	1	[{"added": {}}]	8	1
18	2020-07-23 00:27:02.699523+06	4	3	1	[{"added": {}}]	8	1
19	2020-07-23 03:13:24.293307+06	2	1	2	[{"changed": {"fields": ["Driver name"]}}]	8	1
\.


--
-- TOC entry 2986 (class 0 OID 16407)
-- Dependencies: 205
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	dashboard	vehicle_type
8	dashboard	vehicle_log
9	dashboard	vehicle_info
10	dashboard	rf_card_info
\.


--
-- TOC entry 2984 (class 0 OID 16396)
-- Dependencies: 203
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2020-07-22 09:22:41.028252+06
2	auth	0001_initial	2020-07-22 09:22:41.419062+06
3	admin	0001_initial	2020-07-22 09:22:41.992445+06
4	admin	0002_logentry_remove_auto_add	2020-07-22 09:22:42.053211+06
5	admin	0003_logentry_add_action_flag_choices	2020-07-22 09:22:42.067176+06
6	contenttypes	0002_remove_content_type_name	2020-07-22 09:22:42.099088+06
7	auth	0002_alter_permission_name_max_length	2020-07-22 09:22:42.105135+06
8	auth	0003_alter_user_email_max_length	2020-07-22 09:22:42.116082+06
9	auth	0004_alter_user_username_opts	2020-07-22 09:22:42.12706+06
10	auth	0005_alter_user_last_login_null	2020-07-22 09:22:42.139981+06
11	auth	0006_require_contenttypes_0002	2020-07-22 09:22:42.142975+06
12	auth	0007_alter_validators_add_error_messages	2020-07-22 09:22:42.153944+06
13	auth	0008_alter_user_username_max_length	2020-07-22 09:22:42.282057+06
14	auth	0009_alter_user_last_name_max_length	2020-07-22 09:22:42.294879+06
15	auth	0010_alter_group_name_max_length	2020-07-22 09:22:42.308002+06
16	auth	0011_update_proxy_permissions	2020-07-22 09:22:42.321973+06
17	dashboard	0001_initial	2020-07-22 09:22:42.376764+06
18	sessions	0001_initial	2020-07-22 09:22:42.465691+06
19	dashboard	0002_rf_card_info_vehicle_info_vehicle_log	2020-07-22 11:50:44.150031+06
20	dashboard	0003_vehicle_log_event_type	2020-07-23 00:25:10.550141+06
\.


--
-- TOC entry 3003 (class 0 OID 16560)
-- Dependencies: 222
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
1u5gq53uktov6ok17cxuyusqfqaqg6qn	ZDI2OTI3NTE5MTQ3MGY0ZmNiY2Q1NTQwMDEyYzI3Y2ExMmE3ODAzNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0NTU2YTk3ZjYxNDY3NGQ4YjVhZmE0ZGJmMWQ0NjNlNmZhNjM2N2I0In0=	2020-08-05 11:58:25.562559+06
\.


--
-- TOC entry 3028 (class 0 OID 0)
-- Dependencies: 208
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- TOC entry 3029 (class 0 OID 0)
-- Dependencies: 210
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 3030 (class 0 OID 0)
-- Dependencies: 206
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 40, true);


--
-- TOC entry 3031 (class 0 OID 0)
-- Dependencies: 214
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- TOC entry 3032 (class 0 OID 0)
-- Dependencies: 212
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- TOC entry 3033 (class 0 OID 0)
-- Dependencies: 216
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 3034 (class 0 OID 0)
-- Dependencies: 227
-- Name: dashboard_rf_card_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.dashboard_rf_card_info_id_seq', 3, true);


--
-- TOC entry 3035 (class 0 OID 0)
-- Dependencies: 225
-- Name: dashboard_vehicle_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.dashboard_vehicle_info_id_seq', 5, true);


--
-- TOC entry 3036 (class 0 OID 0)
-- Dependencies: 223
-- Name: dashboard_vehicle_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.dashboard_vehicle_log_id_seq', 4, true);


--
-- TOC entry 3037 (class 0 OID 0)
-- Dependencies: 220
-- Name: dashboard_vehicle_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.dashboard_vehicle_type_id_seq', 6, true);


--
-- TOC entry 3038 (class 0 OID 0)
-- Dependencies: 218
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 19, true);


--
-- TOC entry 3039 (class 0 OID 0)
-- Dependencies: 204
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 10, true);


--
-- TOC entry 3040 (class 0 OID 0)
-- Dependencies: 202
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 20, true);


--
-- TOC entry 2796 (class 2606 OID 16550)
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 2801 (class 2606 OID 16477)
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- TOC entry 2804 (class 2606 OID 16440)
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2798 (class 2606 OID 16430)
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 2791 (class 2606 OID 16468)
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- TOC entry 2793 (class 2606 OID 16422)
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 2812 (class 2606 OID 16458)
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 2815 (class 2606 OID 16492)
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- TOC entry 2806 (class 2606 OID 16448)
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 2818 (class 2606 OID 16466)
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2821 (class 2606 OID 16506)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- TOC entry 2809 (class 2606 OID 16544)
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 2841 (class 2606 OID 16601)
-- Name: dashboard_rf_card_info dashboard_rf_card_info_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dashboard_rf_card_info
    ADD CONSTRAINT dashboard_rf_card_info_pkey PRIMARY KEY (id);


--
-- TOC entry 2844 (class 2606 OID 16603)
-- Name: dashboard_rf_card_info dashboard_rf_card_info_rf_card_number_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dashboard_rf_card_info
    ADD CONSTRAINT dashboard_rf_card_info_rf_card_number_key UNIQUE (rf_card_number);


--
-- TOC entry 2835 (class 2606 OID 16591)
-- Name: dashboard_vehicle_info dashboard_vehicle_info_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dashboard_vehicle_info
    ADD CONSTRAINT dashboard_vehicle_info_pkey PRIMARY KEY (id);


--
-- TOC entry 2838 (class 2606 OID 16593)
-- Name: dashboard_vehicle_info dashboard_vehicle_info_vehicle_reg_number_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dashboard_vehicle_info
    ADD CONSTRAINT dashboard_vehicle_info_vehicle_reg_number_key UNIQUE (vehicle_reg_number);


--
-- TOC entry 2833 (class 2606 OID 16580)
-- Name: dashboard_vehicle_log dashboard_vehicle_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dashboard_vehicle_log
    ADD CONSTRAINT dashboard_vehicle_log_pkey PRIMARY KEY (id);


--
-- TOC entry 2827 (class 2606 OID 16559)
-- Name: dashboard_vehicle_type dashboard_vehicle_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dashboard_vehicle_type
    ADD CONSTRAINT dashboard_vehicle_type_pkey PRIMARY KEY (id);


--
-- TOC entry 2824 (class 2606 OID 16530)
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 2786 (class 2606 OID 16414)
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- TOC entry 2788 (class 2606 OID 16412)
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 2784 (class 2606 OID 16404)
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 2830 (class 2606 OID 16567)
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 2794 (class 1259 OID 16551)
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 2799 (class 1259 OID 16488)
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- TOC entry 2802 (class 1259 OID 16489)
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- TOC entry 2789 (class 1259 OID 16474)
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- TOC entry 2810 (class 1259 OID 16504)
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- TOC entry 2813 (class 1259 OID 16503)
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- TOC entry 2816 (class 1259 OID 16518)
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 2819 (class 1259 OID 16517)
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 2807 (class 1259 OID 16545)
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 2842 (class 1259 OID 16616)
-- Name: dashboard_rf_card_info_rf_card_number_e606a4cb_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX dashboard_rf_card_info_rf_card_number_e606a4cb_like ON public.dashboard_rf_card_info USING btree (rf_card_number varchar_pattern_ops);


--
-- TOC entry 2845 (class 1259 OID 16617)
-- Name: dashboard_rf_card_info_vehicle_info_id_31e33666; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX dashboard_rf_card_info_vehicle_info_id_31e33666 ON public.dashboard_rf_card_info USING btree (vehicle_info_id);


--
-- TOC entry 2836 (class 1259 OID 16609)
-- Name: dashboard_vehicle_info_vehicle_reg_number_0aaa2b1c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX dashboard_vehicle_info_vehicle_reg_number_0aaa2b1c_like ON public.dashboard_vehicle_info USING btree (vehicle_reg_number varchar_pattern_ops);


--
-- TOC entry 2839 (class 1259 OID 16610)
-- Name: dashboard_vehicle_info_vehicle_type_id_ddd286d3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX dashboard_vehicle_info_vehicle_type_id_ddd286d3 ON public.dashboard_vehicle_info USING btree (vehicle_type_id);


--
-- TOC entry 2822 (class 1259 OID 16541)
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- TOC entry 2825 (class 1259 OID 16542)
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- TOC entry 2828 (class 1259 OID 16569)
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- TOC entry 2831 (class 1259 OID 16568)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 2848 (class 2606 OID 16483)
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2847 (class 2606 OID 16478)
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2846 (class 2606 OID 16469)
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2850 (class 2606 OID 16498)
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2849 (class 2606 OID 16493)
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2852 (class 2606 OID 16512)
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2851 (class 2606 OID 16507)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2856 (class 2606 OID 16611)
-- Name: dashboard_rf_card_info dashboard_rf_card_in_vehicle_info_id_31e33666_fk_dashboard; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dashboard_rf_card_info
    ADD CONSTRAINT dashboard_rf_card_in_vehicle_info_id_31e33666_fk_dashboard FOREIGN KEY (vehicle_info_id) REFERENCES public.dashboard_vehicle_info(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2855 (class 2606 OID 16604)
-- Name: dashboard_vehicle_info dashboard_vehicle_in_vehicle_type_id_ddd286d3_fk_dashboard; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dashboard_vehicle_info
    ADD CONSTRAINT dashboard_vehicle_in_vehicle_type_id_ddd286d3_fk_dashboard FOREIGN KEY (vehicle_type_id) REFERENCES public.dashboard_vehicle_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2853 (class 2606 OID 16531)
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2854 (class 2606 OID 16536)
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2020-07-23 23:34:37

--
-- PostgreSQL database dump complete
--

