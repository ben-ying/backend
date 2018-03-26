--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.5
-- Dumped by pg_dump version 9.5.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: ben
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE auth_group OWNER TO ben;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: ben
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_id_seq OWNER TO ben;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ben
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: ben
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_group_permissions OWNER TO ben;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: ben
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_permissions_id_seq OWNER TO ben;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ben
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: ben
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE auth_permission OWNER TO ben;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: ben
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_permission_id_seq OWNER TO ben;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ben
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: ben
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE auth_user OWNER TO ben;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: ben
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE auth_user_groups OWNER TO ben;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: ben
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_groups_id_seq OWNER TO ben;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ben
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: ben
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_id_seq OWNER TO ben;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ben
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: ben
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_user_user_permissions OWNER TO ben;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: ben
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_user_permissions_id_seq OWNER TO ben;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ben
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: authtoken_token; Type: TABLE; Schema: public; Owner: ben
--

CREATE TABLE authtoken_token (
    key character varying(40) NOT NULL,
    created timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE authtoken_token OWNER TO ben;

--
-- Name: babycare_appinfo; Type: TABLE; Schema: public; Owner: ben
--

CREATE TABLE babycare_appinfo (
    id integer NOT NULL,
    version_name character varying(50) NOT NULL,
    version_code integer NOT NULL,
    version_type integer NOT NULL,
    update_info text NOT NULL,
    app_file character varying(100) NOT NULL,
    datetime timestamp with time zone
);


ALTER TABLE babycare_appinfo OWNER TO ben;

--
-- Name: babycare_appinfo_id_seq; Type: SEQUENCE; Schema: public; Owner: ben
--

CREATE SEQUENCE babycare_appinfo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE babycare_appinfo_id_seq OWNER TO ben;

--
-- Name: babycare_appinfo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ben
--

ALTER SEQUENCE babycare_appinfo_id_seq OWNED BY babycare_appinfo.id;


--
-- Name: babycare_babyuser; Type: TABLE; Schema: public; Owner: ben
--

CREATE TABLE babycare_babyuser (
    id integer NOT NULL,
    baby_name character varying(100),
    phone character varying(30),
    gender integer NOT NULL,
    profile character varying(200),
    type integer NOT NULL,
    region character varying(100),
    locale character varying(10),
    whats_up character varying(200),
    zone character varying(50),
    birth date,
    hobbies text,
    highlighted text,
    created timestamp with time zone,
    modified timestamp with time zone,
    is_email_activate boolean NOT NULL,
    is_phone_activate boolean NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE babycare_babyuser OWNER TO ben;

--
-- Name: babycare_babyuser_id_seq; Type: SEQUENCE; Schema: public; Owner: ben
--

CREATE SEQUENCE babycare_babyuser_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE babycare_babyuser_id_seq OWNER TO ben;

--
-- Name: babycare_babyuser_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ben
--

ALTER SEQUENCE babycare_babyuser_id_seq OWNED BY babycare_babyuser.id;


--
-- Name: babycare_comment; Type: TABLE; Schema: public; Owner: ben
--

CREATE TABLE babycare_comment (
    id integer NOT NULL,
    text text NOT NULL,
    datetime timestamp with time zone,
    baby_id integer NOT NULL,
    event_id integer NOT NULL,
    source_comment_id integer
);


ALTER TABLE babycare_comment OWNER TO ben;

--
-- Name: babycare_comment_id_seq; Type: SEQUENCE; Schema: public; Owner: ben
--

CREATE SEQUENCE babycare_comment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE babycare_comment_id_seq OWNER TO ben;

--
-- Name: babycare_comment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ben
--

ALTER SEQUENCE babycare_comment_id_seq OWNED BY babycare_comment.id;


--
-- Name: babycare_event; Type: TABLE; Schema: public; Owner: ben
--

CREATE TABLE babycare_event (
    id integer NOT NULL,
    type integer NOT NULL,
    title character varying(100),
    content text,
    image1 character varying(200),
    image2 character varying(200),
    image3 character varying(200),
    image4 character varying(200),
    image5 character varying(200),
    image6 character varying(200),
    image7 character varying(200),
    image8 character varying(200),
    image9 character varying(200),
    video_url character varying(200),
    video_width integer,
    video_height integer,
    video_thumbnail character varying(200),
    created timestamp with time zone,
    modified timestamp with time zone,
    baby_id integer NOT NULL
);


ALTER TABLE babycare_event OWNER TO ben;

--
-- Name: babycare_event_id_seq; Type: SEQUENCE; Schema: public; Owner: ben
--

CREATE SEQUENCE babycare_event_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE babycare_event_id_seq OWNER TO ben;

--
-- Name: babycare_event_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ben
--

ALTER SEQUENCE babycare_event_id_seq OWNED BY babycare_event.id;


--
-- Name: babycare_feedback; Type: TABLE; Schema: public; Owner: ben
--

CREATE TABLE babycare_feedback (
    id integer NOT NULL,
    description text NOT NULL,
    image1 character varying(200),
    image2 character varying(200),
    image3 character varying(200),
    image4 character varying(200),
    image5 character varying(200),
    image6 character varying(200),
    image7 character varying(200),
    image8 character varying(200),
    image9 character varying(200),
    created timestamp with time zone,
    modified timestamp with time zone,
    baby_id integer NOT NULL
);


ALTER TABLE babycare_feedback OWNER TO ben;

--
-- Name: babycare_feedback_id_seq; Type: SEQUENCE; Schema: public; Owner: ben
--

CREATE SEQUENCE babycare_feedback_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE babycare_feedback_id_seq OWNER TO ben;

--
-- Name: babycare_feedback_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ben
--

ALTER SEQUENCE babycare_feedback_id_seq OWNED BY babycare_feedback.id;


--
-- Name: babycare_iaer; Type: TABLE; Schema: public; Owner: ben
--

CREATE TABLE babycare_iaer (
    id integer NOT NULL,
    money integer NOT NULL,
    category character varying(30) NOT NULL,
    money_type integer NOT NULL,
    remark character varying(100),
    created timestamp with time zone,
    type integer NOT NULL,
    chart_type integer NOT NULL,
    format character varying(50),
    datetime timestamp with time zone,
    description text,
    timing character varying(100),
    user_id integer NOT NULL
);


ALTER TABLE babycare_iaer OWNER TO ben;

--
-- Name: babycare_iaer_id_seq; Type: SEQUENCE; Schema: public; Owner: ben
--

CREATE SEQUENCE babycare_iaer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE babycare_iaer_id_seq OWNER TO ben;

--
-- Name: babycare_iaer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ben
--

ALTER SEQUENCE babycare_iaer_id_seq OWNED BY babycare_iaer.id;


--
-- Name: babycare_like; Type: TABLE; Schema: public; Owner: ben
--

CREATE TABLE babycare_like (
    id integer NOT NULL,
    datetime timestamp with time zone,
    baby_id integer NOT NULL,
    event_id integer NOT NULL
);


ALTER TABLE babycare_like OWNER TO ben;

--
-- Name: babycare_like_id_seq; Type: SEQUENCE; Schema: public; Owner: ben
--

CREATE SEQUENCE babycare_like_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE babycare_like_id_seq OWNER TO ben;

--
-- Name: babycare_like_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ben
--

ALTER SEQUENCE babycare_like_id_seq OWNED BY babycare_like.id;


--
-- Name: babycare_loginlog; Type: TABLE; Schema: public; Owner: ben
--

CREATE TABLE babycare_loginlog (
    id integer NOT NULL,
    system_type character varying(10) NOT NULL,
    system_version character varying(30) NOT NULL,
    phone_model character varying(30) NOT NULL,
    country character varying(30) NOT NULL,
    state character varying(30) NOT NULL,
    city character varying(30) NOT NULL,
    created timestamp with time zone,
    baby_id integer NOT NULL
);


ALTER TABLE babycare_loginlog OWNER TO ben;

--
-- Name: babycare_loginlog_id_seq; Type: SEQUENCE; Schema: public; Owner: ben
--

CREATE SEQUENCE babycare_loginlog_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE babycare_loginlog_id_seq OWNER TO ben;

--
-- Name: babycare_loginlog_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ben
--

ALTER SEQUENCE babycare_loginlog_id_seq OWNED BY babycare_loginlog.id;


--
-- Name: babycare_redenvelope; Type: TABLE; Schema: public; Owner: ben
--

CREATE TABLE babycare_redenvelope (
    id integer NOT NULL,
    money character varying(10),
    money_type integer NOT NULL,
    money_from character varying(100),
    remark character varying(100),
    created timestamp with time zone,
    baby_id integer NOT NULL
);


ALTER TABLE babycare_redenvelope OWNER TO ben;

--
-- Name: babycare_redenvelope_id_seq; Type: SEQUENCE; Schema: public; Owner: ben
--

CREATE SEQUENCE babycare_redenvelope_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE babycare_redenvelope_id_seq OWNER TO ben;

--
-- Name: babycare_redenvelope_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ben
--

ALTER SEQUENCE babycare_redenvelope_id_seq OWNED BY babycare_redenvelope.id;


--
-- Name: babycare_verify; Type: TABLE; Schema: public; Owner: ben
--

CREATE TABLE babycare_verify (
    id integer NOT NULL,
    email_verify_code character varying(10),
    phone_verify_code character varying(10),
    created timestamp with time zone,
    baby_id integer NOT NULL
);


ALTER TABLE babycare_verify OWNER TO ben;

--
-- Name: babycare_verify_id_seq; Type: SEQUENCE; Schema: public; Owner: ben
--

CREATE SEQUENCE babycare_verify_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE babycare_verify_id_seq OWNER TO ben;

--
-- Name: babycare_verify_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ben
--

ALTER SEQUENCE babycare_verify_id_seq OWNED BY babycare_verify.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: ben
--

CREATE TABLE django_admin_log (
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


ALTER TABLE django_admin_log OWNER TO ben;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: ben
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_admin_log_id_seq OWNER TO ben;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ben
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: ben
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE django_content_type OWNER TO ben;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: ben
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_content_type_id_seq OWNER TO ben;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ben
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: ben
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE django_migrations OWNER TO ben;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: ben
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_migrations_id_seq OWNER TO ben;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ben
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: ben
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE django_session OWNER TO ben;

--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ben
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ben
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ben
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ben
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ben
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ben
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ben
--

ALTER TABLE ONLY babycare_appinfo ALTER COLUMN id SET DEFAULT nextval('babycare_appinfo_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ben
--

ALTER TABLE ONLY babycare_babyuser ALTER COLUMN id SET DEFAULT nextval('babycare_babyuser_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ben
--

ALTER TABLE ONLY babycare_comment ALTER COLUMN id SET DEFAULT nextval('babycare_comment_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ben
--

ALTER TABLE ONLY babycare_event ALTER COLUMN id SET DEFAULT nextval('babycare_event_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ben
--

ALTER TABLE ONLY babycare_feedback ALTER COLUMN id SET DEFAULT nextval('babycare_feedback_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ben
--

ALTER TABLE ONLY babycare_iaer ALTER COLUMN id SET DEFAULT nextval('babycare_iaer_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ben
--

ALTER TABLE ONLY babycare_like ALTER COLUMN id SET DEFAULT nextval('babycare_like_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ben
--

ALTER TABLE ONLY babycare_loginlog ALTER COLUMN id SET DEFAULT nextval('babycare_loginlog_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ben
--

ALTER TABLE ONLY babycare_redenvelope ALTER COLUMN id SET DEFAULT nextval('babycare_redenvelope_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ben
--

ALTER TABLE ONLY babycare_verify ALTER COLUMN id SET DEFAULT nextval('babycare_verify_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ben
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ben
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ben
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: ben
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ben
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: ben
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ben
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: ben
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add permission	2	add_permission
5	Can change permission	2	change_permission
6	Can delete permission	2	delete_permission
7	Can add user	3	add_user
8	Can change user	3	change_user
9	Can delete user	3	delete_user
10	Can add group	4	add_group
11	Can change group	4	change_group
12	Can delete group	4	delete_group
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add Token	7	add_token
20	Can change Token	7	change_token
21	Can delete Token	7	delete_token
22	Can add app info	8	add_appinfo
23	Can change app info	8	change_appinfo
24	Can delete app info	8	delete_appinfo
25	Can add like	9	add_like
26	Can change like	9	change_like
27	Can delete like	9	delete_like
28	Can add event	10	add_event
29	Can change event	10	change_event
30	Can delete event	10	delete_event
31	Can add baby user	11	add_babyuser
32	Can change baby user	11	change_babyuser
33	Can delete baby user	11	delete_babyuser
34	Can add login log	12	add_loginlog
35	Can change login log	12	change_loginlog
36	Can delete login log	12	delete_loginlog
37	Can add verify	13	add_verify
38	Can change verify	13	change_verify
39	Can delete verify	13	delete_verify
40	Can add feedback	14	add_feedback
41	Can change feedback	14	change_feedback
42	Can delete feedback	14	delete_feedback
43	Can add comment	15	add_comment
44	Can change comment	15	change_comment
45	Can delete comment	15	delete_comment
46	Can add red envelope	16	add_redenvelope
47	Can change red envelope	16	change_redenvelope
48	Can delete red envelope	16	delete_redenvelope
52	Can add iaer	18	add_iaer
53	Can change iaer	18	change_iaer
54	Can delete iaer	18	delete_iaer
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ben
--

SELECT pg_catalog.setval('auth_permission_id_seq', 54, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: ben
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
2	pbkdf2_sha256$30000$nzAqq8taQAaE$y9K4AWOxm2sEaWHmdfOjPjldhpx90H6oNNflUo3NGPk=	\N	f	babycare			babycare.ben@gmail.com	t	t	2017-05-26 16:29:52.490171+08
5	pbkdf2_sha256$30000$eDvdYVfHriZq$RY0V8QCr7dfy2CFl68I4xmDc0Hzt3j4piRNB++6C9oM=	\N	f	lisq			455677560@qq.com	t	t	2017-08-04 15:56:20.326447+08
8	pbkdf2_sha256$30000$kKiZhcQIgj0I$hDHGvicNH4UhB2y28dB1Ywlg73FtQ+R2UAQBcocUm4I=	\N	f	emily			616897923@qq.com	t	t	2017-10-18 16:59:47.969802+08
11	pbkdf2_sha256$30000$FBWCon4ho08J$a+15YBU72O0BttXN9E1B3mt37Df5dOzCXJXvpquMWck=	\N	f	ben			380668771@qq.com	t	t	2017-10-25 14:02:33.760052+08
12	pbkdf2_sha256$30000$8anXT0zuCnFn$BVr7pGXftqsu4kPrfnxlFFE909J/Lg39F7jhguXmUck=	\N	f	hiemma			alloyi@ymail.com	t	t	2018-02-07 11:10:19.580181+08
1	pbkdf2_sha256$30000$2j8nisBGCA4o$HKfUAjblumCQYZ+li0fVoy3/MDRteQjG+oDojkVAHto=	2018-03-19 20:46:28.363785+08	t	admin			benying1988@gmail.com	t	t	2017-05-26 16:28:41+08
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: ben
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ben
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ben
--

SELECT pg_catalog.setval('auth_user_id_seq', 12, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: ben
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ben
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: authtoken_token; Type: TABLE DATA; Schema: public; Owner: ben
--

COPY authtoken_token (key, created, user_id) FROM stdin;
1272dc0fe06c52383c7a9bdfef33255b940c195b	2017-05-26 16:29:52.530902+08	2
d87fd853962ab5cb95a22d063367c24476a3a4ec	2017-08-04 15:56:20.607313+08	5
a989f981b2a5c4283835e94d9565a7c81ea3a3b8	2017-10-18 16:59:48.007198+08	8
78a3c646f1bd29dc886b1ebc98cc8b81c8c680d6	2017-10-25 14:02:33.797325+08	11
dcd4c45b95575e396dc3404e9e23ddedf1766f8d	2018-02-07 11:10:19.642146+08	12
\.


--
-- Data for Name: babycare_appinfo; Type: TABLE DATA; Schema: public; Owner: ben
--

COPY babycare_appinfo (id, version_name, version_code, version_type, update_info, app_file, datetime) FROM stdin;
5	0.2	2	0	1. 修复红包最后一个不显示\r\n2. 修复用户信息后面2个标签页不能移动	apk/2017-06-19 16:30:09/BabyCare0.2.apk	2017-06-19 16:34:06.348313+08
6	0.3	3	0	修复首页动态不能删除的bug	apk/2017-06-24 08:49:51/BabyCare0.3.apk	2017-06-24 08:49:51.623847+08
\.


--
-- Name: babycare_appinfo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ben
--

SELECT pg_catalog.setval('babycare_appinfo_id_seq', 6, true);


--
-- Data for Name: babycare_babyuser; Type: TABLE DATA; Schema: public; Owner: ben
--

COPY babycare_babyuser (id, baby_name, phone, gender, profile, type, region, locale, whats_up, zone, birth, hobbies, highlighted, created, modified, is_email_activate, is_phone_activate, user_id) FROM stdin;
1	嘟嘟	\N	0	https://bensbabycare.oss-cn-hangzhou.aliyuncs.com/babycare/profile/babycare20170616163521_profile.jpg	0	\N	\N	\N	Asia/Shanghai	\N	\N	\N	\N	2017-06-16 16:35:21.743079+08	f	f	2
4	test	\N	0	\N	0	\N	\N	\N	Asia/Shanghai	\N	\N	\N	\N	2017-08-04 15:56:20.591056+08	f	f	5
7	嘟嘟	\N	0	\N	0	\N	\N	\N	Asia/Shanghai	\N	\N	\N	\N	2017-10-18 16:59:48.004229+08	f	f	8
10	ben	\N	2	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	2017-10-25 14:02:33.794502+08	f	f	11
11	E	\N	0	\N	0	\N	\N	\N	America/Toronto	\N	\N	\N	2018-02-07 11:10:19.647069+08	2018-02-07 11:12:23.306105+08	f	f	12
\.


--
-- Name: babycare_babyuser_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ben
--

SELECT pg_catalog.setval('babycare_babyuser_id_seq', 11, true);


--
-- Data for Name: babycare_comment; Type: TABLE DATA; Schema: public; Owner: ben
--

COPY babycare_comment (id, text, datetime, baby_id, event_id, source_comment_id) FROM stdin;
\.


--
-- Name: babycare_comment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ben
--

SELECT pg_catalog.setval('babycare_comment_id_seq', 1, true);


--
-- Data for Name: babycare_event; Type: TABLE DATA; Schema: public; Owner: ben
--

COPY babycare_event (id, type, title, content, image1, image2, image3, image4, image5, image6, image7, image8, image9, video_url, video_width, video_height, video_thumbnail, created, modified, baby_id) FROM stdin;
2	0	\N	9点16分，经历255天的等待，24小时的镇痛，终于在这个666（6月10号，周六，五月十六）的日子迎来了宝宝。\n伟大的妈妈！	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2017-06-10 21:33:55.351245+08	2017-06-10 21:33:55.351683+08	1
4	0		回家咯	https://bensbabycare.oss-cn-hangzhou.aliyuncs.com/babycare/image/babycare20170614100000_event.jpg										\N	\N		2017-06-14 10:00:00.824409+08	2017-06-16 16:46:45.69651+08	1
3	0		谁家的小女婿啊？	https://bensbabycare.oss-cn-hangzhou.aliyuncs.com/babycare/image/babycare20170611073837_event.jpg										\N	\N		2017-06-11 07:38:37.875067+08	2017-06-16 16:47:05.613294+08	1
1	0		人生中最开心的住院和手术就应该是这个了吧！\r\n愿一切顺利！	https://bensbabycare.oss-cn-hangzhou.aliyuncs.com/babycare/image/babycare20170610190210_event.jpg										\N	\N		2017-06-10 19:02:10.336044+08	2017-06-16 16:47:23.995288+08	1
19	0	\N	\N	https://bensbabycare.oss-cn-hangzhou.aliyuncs.com/babycare/image/babycare20170628145543_event.jpg	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2017-06-28 14:55:43.060458+08	2017-06-28 14:55:43.17013+08	1
20	0	\N	宝宝睡觉发出各种怪声，各种伸手和弹腿，原来是胀气。抚摸肚子，然后发了几个P就好多了	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2017-06-29 03:23:13.254431+08	2017-06-29 03:23:13.254843+08	1
21	0	\N	哭作宝满月啦！	https://bensbabycare.oss-cn-hangzhou.aliyuncs.com/babycare/image/babycare20170710092543_event.jpg	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2017-07-10 09:25:43.242209+08	2017-07-10 09:25:43.524517+08	1
29	0	\N	十一第一次翻身	https://bensbabycare.oss-cn-hangzhou.aliyuncs.com/babycare/image/babycare20171001150329_event.jpg	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2017-10-01 15:03:29.550188+08	2017-10-01 15:03:29.782307+08	1
30	0	\N	12月1号发现长牙啦！	https://bensbabycare.oss-cn-hangzhou.aliyuncs.com/babycare/image/babycare20171203111341_event.jpg	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2017-12-03 11:13:41.845936+08	2017-12-03 11:13:54.511638+08	1
31	0	\N	开荤啦！	https://bensbabycare.oss-cn-hangzhou.aliyuncs.com/babycare/image/babycare20171203111416_event.jpg	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2017-12-03 11:14:16.32671+08	2017-12-03 11:14:31.603369+08	1
32	0	\N	25号长了上牙	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2017-12-28 18:55:45.876287+08	2017-12-28 18:55:45.876666+08	1
\.


--
-- Name: babycare_event_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ben
--

SELECT pg_catalog.setval('babycare_event_id_seq', 32, true);


--
-- Data for Name: babycare_feedback; Type: TABLE DATA; Schema: public; Owner: ben
--

COPY babycare_feedback (id, description, image1, image2, image3, image4, image5, image6, image7, image8, image9, created, modified, baby_id) FROM stdin;
\.


--
-- Name: babycare_feedback_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ben
--

SELECT pg_catalog.setval('babycare_feedback_id_seq', 3, true);


--
-- Data for Name: babycare_iaer; Type: TABLE DATA; Schema: public; Owner: ben
--

COPY babycare_iaer (id, money, category, money_type, remark, created, type, chart_type, format, datetime, description, timing, user_id) FROM stdin;
32	-55	餐饮	0	老婆大人零食	2017-10-26 09:03:24.445768+08	0	0	\N	2017-10-26 09:03:24.446111+08	\N	\N	10
33	-279	其他	0	树莓派3b	2017-10-26 10:03:31.877377+08	0	0	\N	2017-10-26 10:05:28.234898+08	\N	\N	10
31	-179	其他	0	BroadLink RM pro	2017-10-25 14:10:01.284436+08	0	0	\N	2017-10-26 10:05:36.61402+08	\N	\N	10
37	-159	生活用品	0	电饭煲	2017-11-02 18:40:40.375058+08	0	0	\N	2017-11-02 18:40:40.375373+08	\N	\N	7
38	-100	餐饮	0	老婆大人	2017-11-02 18:40:59.408416+08	0	0	\N	2017-11-02 18:40:59.408886+08	\N	\N	7
39	-26	餐饮	0	零食	2017-11-02 21:34:58.47793+08	0	0	\N	2017-11-02 21:34:58.478246+08	\N	\N	7
40	-100	生活用品	0	话费	2017-11-03 17:34:42.91856+08	0	0	\N	2017-11-03 17:34:42.918906+08	\N	\N	10
41	-1500	生活用品	0	生活费	2017-11-03 18:39:22.155274+08	0	0	\N	2017-11-03 18:39:22.155587+08	\N	\N	7
42	-36	服饰	0	淘宝	2017-11-03 18:40:30.256204+08	0	0	\N	2017-11-03 18:40:30.256582+08	\N	\N	7
43	-31	餐饮	0	阿香米线	2017-11-04 14:55:39.884817+08	0	0	\N	2017-11-04 14:55:39.88518+08	\N	\N	7
44	-22	餐饮	0	KFC早餐	2017-11-05 09:43:16.61815+08	0	0	\N	2017-11-05 09:43:16.618476+08	\N	\N	7
45	-11	孩子	0	挂号费	2017-11-05 09:43:34.429566+08	0	0	\N	2017-11-05 09:43:34.429934+08	\N	\N	7
46	-183	孩子	0	咳嗽，感冒	2017-11-05 09:44:09.035628+08	0	0	\N	2017-11-05 09:44:09.035994+08	\N	\N	10
47	-17	孩子	0	挂号费	2017-11-05 09:44:42.416552+08	0	0	\N	2017-11-05 09:44:42.416863+08	\N	\N	10
48	-10	餐饮	0	蛋卷	2017-11-05 13:15:42.388377+08	0	0	\N	2017-11-05 13:15:42.388693+08	\N	\N	7
49	-32	餐饮	0	2碗泡馍	2017-11-05 13:28:48.392915+08	0	0	\N	2017-11-05 13:28:48.393286+08	\N	\N	10
51	-72	生活用品	0	眼镜2付	2017-11-05 20:27:33.211475+08	0	0	\N	2017-11-05 20:27:33.211794+08	\N	\N	10
52	-22	生活用品	0	剪头发	2017-11-06 20:04:08.29547+08	0	0	\N	2017-11-06 20:04:08.295809+08	\N	\N	10
53	-38	生活用品	0	雨刮器	2017-11-09 07:10:53.685936+08	0	0	\N	2017-11-09 07:10:53.68625+08	\N	\N	7
54	-30	生活用品	0	高速收费两趟	2017-11-09 07:11:23.498331+08	0	0	\N	2017-11-09 07:11:23.498693+08	\N	\N	7
55	-8	生活用品	0	停车费	2017-11-09 07:11:51.364417+08	0	0	\N	2017-11-09 07:11:51.364732+08	\N	\N	7
56	-36	孩子	0	嘟嘟看医生	2017-11-09 07:12:36.873701+08	0	0	\N	2017-11-09 07:12:36.874015+08	\N	\N	7
58	-25	生活用品	0	高速费	2017-11-10 21:18:42.70278+08	0	0	\N	2017-11-10 21:18:42.703102+08	\N	\N	7
59	-30	餐饮	0	午餐	2017-11-10 21:19:00.028468+08	0	0	\N	2017-11-10 21:19:00.028807+08	\N	\N	7
60	-10	生活用品	0	高速费	2017-11-10 21:19:19.08342+08	0	0	\N	2017-11-10 21:19:19.083805+08	\N	\N	7
61	-1000	生活用品	0	油卡	2017-11-10 21:20:01.886332+08	0	0	\N	2017-11-10 21:20:01.887193+08	\N	\N	7
63	-165	孩子	0	奶瓶，沙茶油，润肤油	2017-11-10 21:22:27.167598+08	0	0	\N	2017-11-10 21:22:27.168064+08	\N	\N	7
64	-304	孩子	0	全棉时代柔纸巾	2017-11-11 09:19:13.957817+08	0	0	\N	2017-11-11 09:19:13.958166+08	\N	\N	7
65	-208	孩子	0	恒温调温器	2017-11-11 09:24:36.159997+08	0	0	\N	2017-11-11 09:24:36.160397+08	\N	\N	7
67	-244	生活用品	0	膳魔师保温杯X2	2017-11-11 09:26:18.38913+08	0	0	\N	2017-11-11 09:26:18.389552+08	\N	\N	7
68	-50	生活用品	0	蓝月亮	2017-11-11 13:38:13.422007+08	0	0	\N	2017-11-11 13:38:13.42233+08	\N	\N	7
70	-103	生活用品	0	食用油3瓶	2017-11-11 13:42:54.766302+08	0	0	\N	2017-11-11 13:42:54.766705+08	\N	\N	7
72	-108	生活用品	0	清风卷纸11x10卷	2017-11-11 13:45:38.708949+08	0	0	\N	2017-11-11 13:45:38.709361+08	\N	\N	7
73	-98	生活用品	0	清风抽纸3包x16	2017-11-11 13:46:25.295459+08	0	0	\N	2017-11-11 13:46:25.295856+08	\N	\N	7
74	-78	生活用品	0	大米5kgx4	2017-11-11 15:53:24.444758+08	0	0	\N	2017-11-11 15:53:24.445241+08	\N	\N	7
76	-15	生活用品	0	高速费用	2017-11-15 08:06:43.355226+08	0	0	\N	2017-11-15 08:06:43.355549+08	\N	\N	7
77	-6	餐饮	0	肠粉	2017-11-15 08:07:07.564757+08	0	0	\N	2017-11-15 08:07:07.56509+08	\N	\N	7
80	-20	生活用品	0	手机壳	2017-11-15 15:18:19.533071+08	0	0	\N	2017-11-15 15:18:19.533351+08	\N	\N	10
81	-18	生活用品	0	手机后盖	2017-11-15 15:18:32.691316+08	0	0	\N	2017-11-15 15:18:32.691633+08	\N	\N	10
82	-100	生活用品	0	妈妈手机充值	2017-11-15 18:40:16.846086+08	0	0	\N	2017-11-15 18:40:16.846685+08	\N	\N	7
83	-13	餐饮	0	甘蔗	2017-11-15 22:02:19.89842+08	0	0	\N	2017-11-15 22:02:19.898771+08	\N	\N	7
84	-91	餐饮	0	三江购物	2017-11-15 22:02:46.166259+08	0	0	\N	2017-11-15 22:02:46.166532+08	\N	\N	7
85	-333	孩子	0	床上7件套	2017-11-16 21:38:27.648406+08	0	0	\N	2017-11-16 21:38:27.648729+08	\N	\N	7
86	-13	餐饮	0	甘蔗	2017-11-17 21:40:02.836566+08	0	0	\N	2017-11-17 21:40:02.836896+08	\N	\N	7
87	-22	餐饮	0	肯德基	2017-11-17 21:40:17.193701+08	0	0	\N	2017-11-17 21:40:17.194029+08	\N	\N	7
88	-9	餐饮	0	水果	2017-11-17 21:40:34.946457+08	0	0	\N	2017-11-17 21:40:34.947048+08	\N	\N	7
89	-102	服饰	0	睡衣	2017-11-18 08:40:07.123313+08	0	0	\N	2017-11-18 08:40:07.123641+08	\N	\N	7
92	-103	餐饮	0	午饭	2017-11-18 14:37:51.283287+08	0	0	\N	2017-11-18 14:37:51.283686+08	\N	\N	7
93	-249	孩子	0	max win连体服	2017-11-18 14:38:29.958686+08	0	0	\N	2017-11-18 14:38:29.959053+08	\N	\N	7
94	-9	生活用品	0	停车费	2017-11-18 14:42:40.055166+08	0	0	\N	2017-11-18 14:42:40.055531+08	\N	\N	7
95	-158	孩子	0	乳钙2盒	2017-11-18 15:15:10.288898+08	0	0	\N	2017-11-18 15:15:10.28933+08	\N	\N	7
96	-350	服饰	0	Jason wood外套	2017-11-18 16:45:59.195976+08	0	0	\N	2017-11-18 16:45:59.196321+08	\N	\N	7
97	-11	餐饮	0	coco奶茶	2017-11-18 16:46:21.210381+08	0	0	\N	2017-11-18 16:46:21.210683+08	\N	\N	7
98	-22	生活用品	0	理发	2017-11-19 07:36:44.214905+08	0	0	\N	2017-11-19 07:36:44.215234+08	\N	\N	7
99	-6	餐饮	0	山东煎饼	2017-11-20 08:02:36.69043+08	0	0	\N	2017-11-20 08:02:36.690787+08	\N	\N	10
34	-105	其他	0	SanDisk TF卡	2017-10-26 10:12:48.612084+08	0	0	\N	2017-11-20 09:19:10.694263+08	\N	\N	10
35	-102	其他	0	micro sd卡和零食	2017-10-27 19:44:36.671843+08	0	0	\N	2017-11-20 09:19:25.309808+08	\N	\N	10
36	-199	其他	0	bandwagon vps	2017-11-02 11:21:48.634341+08	0	0	\N	2017-11-20 09:19:38.378574+08	\N	\N	10
91	-8	其他	0	按摩	2017-11-18 12:40:22.525212+08	0	0	\N	2017-11-20 09:19:49.64188+08	\N	\N	7
57	4627	收入	0	工资	2017-11-09 07:13:20.039306+08	0	0	\N	2018-01-10 09:07:02.580091+08	\N	\N	7
79	1000	收入	0	三江卡	2017-11-15 08:07:52.732903+08	0	0	\N	2018-01-10 09:07:15.997968+08	\N	\N	7
78	1400	收入	0	车险报销	2017-11-15 08:07:32.995334+08	0	0	\N	2018-01-10 09:07:09.039727+08	\N	\N	7
102	-15	生活用品	0	Z5P边角	2017-11-21 12:31:42.831615+08	0	0	\N	2017-11-21 12:31:42.831944+08	\N	\N	10
103	-168	孩子	0	辅食机	2017-11-21 22:07:23.730359+08	0	0	\N	2017-11-21 22:07:23.730773+08	\N	\N	7
104	-34	孩子	0	奶瓶收纳盒	2017-11-21 22:07:41.200737+08	0	0	\N	2017-11-21 22:07:41.201022+08	\N	\N	7
105	-11	餐饮	0	coco奶茶	2017-11-24 21:51:13.178445+08	0	0	\N	2017-11-24 21:51:13.178855+08	\N	\N	7
106	-31	餐饮	0	KFC	2017-11-24 22:00:50.115141+08	0	0	\N	2017-11-24 22:00:50.115433+08	\N	\N	7
107	-16	孩子	0	三角巾	2017-11-24 23:13:42.96698+08	0	0	\N	2017-11-24 23:13:42.967306+08	\N	\N	7
108	-21000	装修	0	半包30%	2017-11-26 21:16:25.384292+08	0	0	\N	2017-11-26 21:16:25.384729+08	\N	\N	10
109	-3500	装修	0	设计	2017-11-26 21:16:40.25851+08	0	0	\N	2017-11-26 21:16:40.258908+08	\N	\N	10
110	-97	服饰	0	背心马甲	2017-11-26 21:18:58.327712+08	0	0	\N	2017-11-26 21:18:58.327987+08	\N	\N	7
111	-29	孩子	0	婴儿鞋	2017-11-26 21:19:16.651793+08	0	0	\N	2017-11-26 21:19:16.652079+08	\N	\N	7
112	-89	孩子	0	储奶袋	2017-11-26 21:21:50.302489+08	0	0	\N	2017-11-26 21:21:50.302932+08	\N	\N	7
113	-213	生活用品	0	大米12袋	2017-11-26 21:23:44.03519+08	0	0	\N	2017-11-26 21:23:44.035564+08	\N	\N	7
115	-48	餐饮	0	三江购物	2017-11-28 20:50:48.398702+08	0	0	\N	2017-11-28 20:50:48.399046+08	\N	\N	7
116	-72	服饰	0	秋衣	2017-11-28 20:51:08.013941+08	0	0	\N	2017-11-28 20:51:08.014432+08	\N	\N	7
117	-8	餐饮	0	冬枣	2017-11-28 20:51:26.321286+08	0	0	\N	2017-11-28 20:51:26.321616+08	\N	\N	7
119	-22	餐饮	0	夜宵米线	2017-11-29 22:42:16.008659+08	0	0	\N	2017-11-29 22:42:16.009003+08	\N	\N	7
123	-46	餐饮	0	老婆大人零食	2017-11-30 20:21:06.089228+08	0	0	\N	2017-11-30 20:21:06.089568+08	\N	\N	7
124	-100	生活用品	0	油费	2017-11-30 20:21:25.781024+08	0	0	\N	2017-11-30 20:21:25.781334+08	\N	\N	7
187	-280	生活用品	0	汽车保养	2017-12-31 21:03:48.405286+08	0	0	\N	2018-01-10 09:14:49.992048+08	\N	\N	7
125	-48	孩子	0	嘉宝米粉	2017-12-02 13:42:42.712851+08	0	0	\N	2017-12-02 13:42:42.713183+08	\N	\N	10
126	-37	生活用品	0	红肠	2017-12-02 13:42:59.119832+08	0	0	\N	2017-12-02 13:42:59.120175+08	\N	\N	10
127	-132	餐饮	0	涌上外婆桥	2017-12-02 13:44:16.221191+08	0	0	\N	2017-12-02 13:44:16.221502+08	\N	\N	7
128	-21	孩子	0	妇儿医院挂号	2017-12-02 13:45:11.503384+08	0	0	\N	2017-12-02 13:45:11.503784+08	\N	\N	7
129	-22	餐饮	0	肯德基早餐	2017-12-02 13:45:49.762954+08	0	0	\N	2017-12-02 13:45:49.763317+08	\N	\N	7
130	-17	生活用品	0	停车费	2017-12-02 13:47:08.46381+08	0	0	\N	2017-12-02 13:47:08.464103+08	\N	\N	7
131	-15	餐饮	0	油赞子	2017-12-03 11:40:54.8752+08	0	0	\N	2017-12-03 11:40:54.875521+08	\N	\N	7
132	-11600	装修	0	1.5+2.5风管机	2017-12-03 11:42:18.959408+08	0	0	\N	2017-12-03 11:42:18.95982+08	\N	\N	10
133	-108	餐饮	0	稻花香米5kg	2017-12-05 15:43:52.450831+08	0	0	\N	2017-12-05 15:43:52.451189+08	\N	\N	10
134	-69	生活用品	0	生活用品	2017-12-05 19:37:46.098004+08	0	0	\N	2017-12-05 19:37:46.098356+08	\N	\N	10
135	-27	餐饮	0	零食	2017-12-05 20:43:51.993112+08	0	0	\N	2017-12-05 20:43:51.993447+08	\N	\N	10
136	-1500	生活用品	0	生活费	2017-12-06 22:34:08.039676+08	0	0	\N	2017-12-06 22:34:08.040009+08	\N	\N	7
137	-13	餐饮	0	甘蔗	2017-12-06 22:34:23.461944+08	0	0	\N	2017-12-06 22:34:23.462281+08	\N	\N	7
138	-27	餐饮	0	五斤锅巴	2017-12-06 22:34:41.155732+08	0	0	\N	2017-12-06 22:34:41.156065+08	\N	\N	7
139	-18	生活用品	0	生活用品	2017-12-06 22:34:56.134455+08	0	0	\N	2017-12-06 22:34:56.134804+08	\N	\N	7
140	-226	餐饮	0	柠檬泰	2017-12-09 14:34:05.884473+08	0	0	\N	2017-12-09 14:34:05.88487+08	\N	\N	10
141	-5	生活用品	0	西瓜霜含片	2017-12-09 21:16:45.732218+08	0	0	\N	2017-12-09 21:16:45.732603+08	\N	\N	7
142	-58	孩子	0	围嘴	2017-12-09 21:17:06.558772+08	0	0	\N	2017-12-09 21:17:06.559103+08	\N	\N	7
143	-208	生活用品	0	即热水龙头	2017-12-09 21:18:23.443621+08	0	0	\N	2017-12-09 21:18:23.444004+08	\N	\N	7
146	-6033	装修	0	AO Smith前置+净水器	2017-12-10 15:05:46.270305+08	0	0	\N	2017-12-10 15:05:46.270753+08	\N	\N	10
147	-199	孩子	0	婴儿推车	2017-12-12 19:46:22.204875+08	0	0	\N	2017-12-12 19:46:22.205281+08	\N	\N	7
148	-129	孩子	0	羽绒服+马甲	2017-12-12 19:47:08.680303+08	0	0	\N	2017-12-12 19:47:08.680687+08	\N	\N	7
149	-25	孩子	0	帽子	2017-12-12 19:47:44.100566+08	0	0	\N	2017-12-12 19:47:44.100898+08	\N	\N	7
150	-59	生活用品	0	润唇膏	2017-12-12 19:48:05.134375+08	0	0	\N	2017-12-12 19:48:05.134791+08	\N	\N	7
151	-81	餐饮	0	老婆大人	2017-12-14 22:12:26.929959+08	0	0	\N	2017-12-14 22:12:26.930477+08	\N	\N	7
152	-206	生活用品	0	中石化	2017-12-14 22:13:04.693198+08	0	0	\N	2017-12-14 22:13:04.693645+08	\N	\N	7
153	-400	生活用品	0	眼镜	2017-12-14 22:13:18.034112+08	0	0	\N	2017-12-14 22:13:18.034488+08	\N	\N	7
154	-159	生活用品	0	京东生活用品	2017-12-14 22:14:48.661791+08	0	0	\N	2017-12-14 22:14:48.662143+08	\N	\N	7
155	-23	餐饮	0	晚饭	2017-12-14 22:16:12.03599+08	0	0	\N	2017-12-14 22:16:12.036338+08	\N	\N	7
159	-31	餐饮	0	午饭	2017-12-23 19:39:13.399385+08	0	0	\N	2017-12-23 19:39:13.399924+08	\N	\N	7
160	-6	生活用品	0	玻璃水	2017-12-23 19:39:25.949935+08	0	0	\N	2017-12-23 19:39:25.950259+08	\N	\N	7
161	-10	孩子	0	袜子3双	2017-12-23 19:39:59.658231+08	0	0	\N	2017-12-23 19:39:59.658549+08	\N	\N	7
162	-8	生活用品	0	洗衣液	2017-12-23 19:40:18.54884+08	0	0	\N	2017-12-23 19:40:18.549299+08	\N	\N	7
163	-50	餐饮	0	零食	2017-12-23 19:41:00.504886+08	0	0	\N	2017-12-23 19:41:00.505208+08	\N	\N	7
164	-13	餐饮	0	大饼&奶茶	2017-12-23 19:41:29.352431+08	0	0	\N	2017-12-23 19:41:29.352828+08	\N	\N	7
165	-28	生活用品	0	手机壳	2017-12-23 19:43:30.489018+08	0	0	\N	2017-12-23 19:43:30.489379+08	\N	\N	7
166	-19	孩子	0	松紧带	2017-12-23 20:33:17.635992+08	0	0	\N	2017-12-23 20:33:17.636268+08	\N	\N	7
167	-9	生活用品	0	快递	2017-12-23 20:35:04.450666+08	0	0	\N	2017-12-23 20:35:04.450932+08	\N	\N	7
168	-20	生活用品	0	手机充值	2017-12-23 20:36:53.704144+08	0	0	\N	2017-12-23 20:36:53.704426+08	\N	\N	7
169	-10	餐饮	0	苹果	2017-12-23 20:37:22.835202+08	0	0	\N	2017-12-23 20:37:22.835523+08	\N	\N	7
170	-840	生活用品	0	手机充值包一年流量	2017-12-23 20:38:02.416842+08	0	0	\N	2017-12-23 20:38:02.417224+08	\N	\N	7
171	-12	生活用品	0	忘记了	2017-12-23 20:39:15.709404+08	0	0	\N	2017-12-23 20:39:15.709788+08	\N	\N	7
172	-400	装修	0	空调铜管+支架	2017-12-24 18:35:17.730471+08	0	0	\N	2017-12-24 18:35:17.730876+08	\N	\N	10
173	-315	生活用品	0	小米智能家居套装	2017-12-27 20:07:42.574535+08	0	0	\N	2017-12-27 20:07:42.575024+08	\N	\N	10
174	-100	生活用品	0	手机话费	2017-12-27 20:07:55.563934+08	0	0	\N	2017-12-27 20:07:55.564251+08	\N	\N	10
158	-12773	装修	0	瓷砖	2017-12-20 21:48:10.642265+08	0	0	\N	2017-12-27 20:09:47.973206+08	\N	\N	10
175	-21000	装修	0	装修半包30%	2017-12-27 20:10:54.1212+08	0	0	\N	2017-12-27 20:10:54.121525+08	\N	\N	10
176	-7	餐饮	0	甘蔗	2017-12-27 21:43:02.276259+08	0	0	\N	2017-12-27 21:43:02.276618+08	\N	\N	7
177	-5	餐饮	0	包子	2017-12-27 21:43:16.226116+08	0	0	\N	2017-12-27 21:43:16.226441+08	\N	\N	7
178	-101	孩子	0	奶嘴LL3个、牙胶一个	2017-12-27 21:44:12.362474+08	0	0	\N	2017-12-27 21:44:12.362849+08	\N	\N	7
179	-143	孩子	0	膳魔师保温杯	2017-12-27 21:44:48.488481+08	0	0	\N	2017-12-27 21:44:48.48881+08	\N	\N	7
180	-128	孩子	0	保暖衣服一套，一件裤子	2017-12-27 21:45:53.067172+08	0	0	\N	2017-12-27 21:45:53.067517+08	\N	\N	7
181	-12	孩子	0	A D剂	2017-12-27 21:46:23.735085+08	0	0	\N	2017-12-27 21:46:23.735511+08	\N	\N	7
183	-188	餐饮	0	餐饮	2017-12-30 19:29:43.88078+08	0	0	\N	2017-12-30 19:29:43.8811+08	\N	\N	7
184	-13	餐饮	0	午餐	2017-12-31 20:53:34.078949+08	0	0	\N	2017-12-31 20:53:34.079265+08	\N	\N	7
185	-2500	装修	0	奥普吊顶+2个灯	2017-12-31 20:55:05.285167+08	0	0	\N	2017-12-31 20:55:05.285493+08	\N	\N	10
186	-16	餐饮	0	蛋糕	2017-12-31 21:03:17.443866+08	0	0	\N	2017-12-31 21:03:17.444366+08	\N	\N	7
188	-26	孩子	0	磨牙棒	2018-01-01 19:14:20.816682+08	0	0	\N	2018-01-01 19:14:20.817+08	\N	\N	10
189	-5	生活用品	0	停车费	2018-01-01 19:30:41.070043+08	0	0	\N	2018-01-01 19:30:41.070382+08	\N	\N	10
156	11838	收入	0	工资	2017-12-15 22:11:04.518179+08	0	0	\N	2018-01-10 09:06:33.119018+08	\N	\N	10
122	4627	收入	0	工资	2017-11-29 22:44:34.750905+08	0	0	\N	2018-01-10 09:06:55.838788+08	\N	\N	7
157	-66	其他	0	公司圣诞礼物音乐台灯	2017-12-20 21:47:14.323122+08	0	0	\N	2018-01-10 09:14:58.242858+08	\N	\N	10
145	-66	其他	0	新人红包	2017-12-10 09:08:54.604249+08	0	0	\N	2018-01-10 09:15:07.917845+08	\N	\N	10
144	-100	其他	0	泡脚药	2017-12-09 21:19:16.011129+08	0	0	\N	2018-01-10 09:15:16.665164+08	\N	\N	10
118	-55	其他	0	域名benying.com	2017-11-28 20:52:10.876787+08	0	0	\N	2018-01-10 09:15:25.84233+08	\N	\N	10
190	-150	服饰	0	hm衣服	2018-01-01 20:33:01.651728+08	0	0	\N	2018-01-01 20:33:01.652011+08	\N	\N	10
191	-130	餐饮	0	草莓	2018-01-01 20:33:14.219922+08	0	0	\N	2018-01-01 20:33:14.220303+08	\N	\N	10
192	-10	餐饮	0	coco奶茶	2018-01-01 20:33:35.578728+08	0	0	\N	2018-01-01 20:33:35.579058+08	\N	\N	10
193	-40	孩子	0	袜子和衣服	2018-01-01 20:34:13.532851+08	0	0	\N	2018-01-01 20:34:13.533179+08	\N	\N	7
194	-51	餐饮	0	泡芙加米线	2018-01-01 20:34:44.927631+08	0	0	\N	2018-01-01 20:34:44.927903+08	\N	\N	7
195	-22	餐饮	0	肯德基早餐	2018-01-01 20:35:41.646533+08	0	0	\N	2018-01-01 20:35:41.646873+08	\N	\N	7
196	-10	餐饮	0	甘蔗	2018-01-03 20:30:22.760883+08	0	0	\N	2018-01-03 20:30:22.761252+08	\N	\N	7
197	-35	生活用品	0	空调外机储水架	2018-01-03 20:30:53.911462+08	0	0	\N	2018-01-03 20:30:53.911828+08	\N	\N	7
198	-500	生活用品	0	三江卡	2018-01-03 20:31:18.286682+08	0	0	\N	2018-01-03 20:31:18.287149+08	\N	\N	7
199	-190	生活用品	0	加油	2018-01-03 20:31:41.825223+08	0	0	\N	2018-01-03 20:31:41.825649+08	\N	\N	7
201	-40	生活用品	0	理发	2018-01-04 22:28:39.660332+08	0	0	\N	2018-01-04 22:28:39.660684+08	\N	\N	7
203	-229	餐饮	0	自助餐x2	2018-01-05 19:45:47.171477+08	0	0	\N	2018-01-05 19:45:47.171838+08	\N	\N	7
205	-9	餐饮	0	大饼油条豆腐脑x2	2018-01-06 16:18:52.996059+08	0	0	\N	2018-01-06 16:18:52.996406+08	\N	\N	7
206	-230	服饰	0	鞋+两件T恤+围巾	2018-01-06 16:19:41.537133+08	0	0	\N	2018-01-06 16:19:41.537574+08	\N	\N	7
207	-269	孩子	0	连体衣	2018-01-06 16:19:57.956943+08	0	0	\N	2018-01-06 16:19:57.957277+08	\N	\N	7
208	-5	生活用品	0	停车费	2018-01-06 16:20:55.018245+08	0	0	\N	2018-01-06 16:20:55.018523+08	\N	\N	10
209	-100	餐饮	0	螃蟹	2018-01-07 21:41:36.394873+08	0	0	\N	2018-01-07 21:41:36.395299+08	\N	\N	7
210	-24	餐饮	0	山药片7包	2018-01-07 21:42:36.501108+08	0	0	\N	2018-01-07 21:42:36.501432+08	\N	\N	7
211	-22	餐饮	0	粥	2018-01-07 21:44:00.511642+08	0	0	\N	2018-01-07 21:44:00.512014+08	\N	\N	7
212	-75	餐饮	0	老婆大人	2018-01-08 20:28:20.325027+08	0	0	\N	2018-01-08 20:28:20.325361+08	\N	\N	7
213	-5	餐饮	0	臭豆腐	2018-01-08 20:28:30.175709+08	0	0	\N	2018-01-08 20:28:30.176054+08	\N	\N	7
200	200	收入	0	车子刮擦	2018-01-03 20:32:04.313747+08	0	0	\N	2018-01-10 09:06:04.859193+08	\N	\N	7
121	26858	收入	0	2016提成	2017-11-29 22:43:29.540102+08	0	0	\N	2018-01-10 09:06:26.518177+08	\N	\N	7
90	11825	收入	0	工资	2017-11-18 08:42:00.108541+08	0	0	\N	2018-01-10 09:06:39.781986+08	\N	\N	10
120	5095	收入	0	生育保险	2017-11-29 22:43:01.764796+08	0	0	\N	2018-01-10 09:06:48.16224+08	\N	\N	7
254	-39	生活用品	0	药鸡蛋饼矿泉水	2018-01-20 09:56:01.342458+08	0	0	\N	2018-01-20 09:56:01.342755+08	\N	\N	10
204	-830	其他	0	戒指	2018-01-06 16:18:20.947627+08	0	0	\N	2018-01-10 09:14:31.830785+08	\N	\N	10
255	-18	餐饮	0	老北京	2018-01-20 09:56:35.181186+08	0	0	\N	2018-01-20 09:56:35.181551+08	\N	\N	10
220	-1208	生活用品	0	照片打印机	2018-01-10 20:10:45.560806+08	0	0	\N	2018-01-10 20:10:45.561242+08	\N	\N	7
221	-40	餐饮	0	三江购物水香蕉梨	2018-01-10 20:11:22.572949+08	0	0	\N	2018-01-10 20:11:22.573282+08	\N	\N	7
222	-558	生活用品	0	倒车雷达	2018-01-11 21:43:04.043907+08	0	0	\N	2018-01-11 21:43:04.04423+08	\N	\N	7
224	-94	孩子	0	磨牙棒等用品	2018-01-11 21:44:50.320412+08	0	0	\N	2018-01-11 21:44:50.320832+08	\N	\N	7
228	-55	餐饮	0	聚餐	2018-01-12 22:03:19.66514+08	0	0	\N	2018-01-12 22:03:19.665529+08	\N	\N	10
230	4627	收入	0	工资	2018-01-12 22:04:54.582393+08	0	0	\N	2018-01-12 22:04:54.582761+08	\N	\N	7
231	-1400	装修	0	奥普浴霸	2018-01-13 20:27:40.896845+08	0	0	\N	2018-01-13 20:27:40.897187+08	\N	\N	10
232	-9745	装修	0	窗	2018-01-13 20:28:00.891141+08	0	0	\N	2018-01-13 20:28:00.891499+08	\N	\N	10
233	-363	装修	0	雷士筒灯21个	2018-01-13 20:29:56.028854+08	0	0	\N	2018-01-13 20:29:56.029439+08	\N	\N	10
234	-328	餐饮	0	黄记煌	2018-01-13 20:31:10.777542+08	0	0	\N	2018-01-13 20:31:10.777983+08	\N	\N	7
235	-263	孩子	0	max win连体衣+内衣	2018-01-13 20:31:51.722438+08	0	0	\N	2018-01-13 20:31:51.722745+08	\N	\N	7
236	-10	其它	0	停车费	2018-01-13 20:32:15.741016+08	0	0	\N	2018-01-13 20:32:15.741295+08	\N	\N	7
237	-5	孩子	0	泳裤	2018-01-13 20:32:28.113215+08	0	0	\N	2018-01-13 20:32:28.11356+08	\N	\N	7
238	-66	餐饮	0	o2	2018-01-13 20:32:46.633743+08	0	0	\N	2018-01-13 20:32:46.634079+08	\N	\N	7
239	-15	生活用品	0	甘蔗	2018-01-13 20:33:02.702857+08	0	0	\N	2018-01-13 20:33:02.703214+08	\N	\N	7
240	-60	生活用品	0	洗衣	2018-01-13 20:33:20.785578+08	0	0	\N	2018-01-13 20:33:20.785851+08	\N	\N	7
241	-1500	生活用品	0	生活费	2018-01-13 20:33:42.17357+08	0	0	\N	2018-01-13 20:33:42.173966+08	\N	\N	7
242	-5	其它	0	英超直播	2018-01-15 13:31:50.788876+08	0	0	\N	2018-01-15 13:31:50.789208+08	\N	\N	10
243	-51	餐饮	0	肯德基加关东煮	2018-01-15 19:47:47.450392+08	0	0	\N	2018-01-15 19:47:47.450779+08	\N	\N	7
244	-29	生活用品	0	收纳袋	2018-01-15 19:48:29.613415+08	0	0	\N	2018-01-15 19:48:29.613681+08	\N	\N	7
245	-40	服饰	0	毛衣链	2018-01-15 19:48:42.188021+08	0	0	\N	2018-01-15 19:48:42.188371+08	\N	\N	7
246	-299	生活用品	0	echo dot	2018-01-16 10:06:32.958859+08	0	0	\N	2018-01-16 10:06:32.95925+08	\N	\N	10
247	11838	收入	0	工资	2018-01-16 13:09:32.107744+08	0	0	\N	2018-01-16 13:09:32.108031+08	\N	\N	10
248	-269	餐饮	0	榴莲14斤	2018-01-18 19:30:24.710136+08	0	0	\N	2018-01-18 19:30:24.710498+08	\N	\N	10
249	-160	生活用品	0	桌面版板	2018-01-20 09:50:56.560414+08	0	0	\N	2018-01-20 09:50:56.56082+08	\N	\N	7
250	-21	生活用品	0	快递桌架	2018-01-20 09:51:27.258964+08	0	0	\N	2018-01-20 09:51:27.259293+08	\N	\N	7
251	-62	孩子	0	内衣	2018-01-20 09:51:51.8791+08	0	0	\N	2018-01-20 09:51:51.879531+08	\N	\N	7
252	-185	孩子	0	4罐米粉	2018-01-20 09:52:52.004366+08	0	0	\N	2018-01-20 09:52:52.004699+08	\N	\N	7
253	-129	其它	0	小伯伯礼	2018-01-20 09:54:31.572998+08	0	0	\N	2018-01-20 09:54:31.573329+08	\N	\N	7
256	-11	餐饮	0	鸡块	2018-01-20 09:58:58.417546+08	0	0	\N	2018-01-20 09:58:58.417907+08	\N	\N	7
257	4612	收入	0	工资	2018-01-20 09:59:35.501686+08	0	0	\N	2018-01-20 09:59:35.50203+08	\N	\N	7
258	-15	其它	0	停车费	2018-01-23 21:54:13.734796+08	0	0	\N	2018-01-23 21:54:13.735138+08	\N	\N	7
259	-53	餐饮	0	老婆大人	2018-01-23 21:54:31.559062+08	0	0	\N	2018-01-23 21:54:31.559459+08	\N	\N	7
260	-26	餐饮	0	山竹	2018-01-23 21:54:47.799303+08	0	0	\N	2018-01-23 21:54:47.799661+08	\N	\N	7
261	-59	生活用品	0	牙膏牙刷	2018-01-26 21:51:13.588052+08	0	0	\N	2018-01-26 21:51:13.5884+08	\N	\N	7
262	-29	服饰	0	珍珠项链	2018-01-26 21:51:56.319873+08	0	0	\N	2018-01-26 21:51:56.320247+08	\N	\N	7
263	-20	其它	0	公司罚款	2018-01-26 21:54:04.041952+08	0	0	\N	2018-01-26 21:54:04.042485+08	\N	\N	7
264	-679	装修	0	9付50导轨2个挂衣杆	2018-01-26 21:55:42.57114+08	0	0	\N	2018-01-26 21:55:42.571531+08	\N	\N	10
265	-66	餐饮	0	阿香米线	2018-01-27 11:55:50.113236+08	0	0	\N	2018-01-27 11:55:50.113575+08	\N	\N	10
266	-55	餐饮	0	麦当劳	2018-01-28 11:11:57.318761+08	0	0	\N	2018-01-28 11:11:57.319165+08	\N	\N	10
267	-21000	装修	0	装修30%	2018-01-28 14:59:38.120757+08	0	0	\N	2018-01-28 14:59:38.121133+08	\N	\N	10
268	-36	餐饮	0	KFC	2018-01-30 20:50:58.138676+08	0	0	\N	2018-01-30 20:50:58.138973+08	\N	\N	10
269	-55	餐饮	0	宜家	2018-01-30 20:51:18.479903+08	0	0	\N	2018-01-30 20:51:18.480215+08	\N	\N	10
270	-7560	装修	0	油烟机+煤气灶	2018-01-30 20:52:27.24554+08	0	0	\N	2018-01-30 20:52:27.245826+08	\N	\N	10
271	-25	餐饮	0	夜宵	2018-01-30 20:53:27.166761+08	0	0	\N	2018-01-30 20:53:27.16712+08	\N	\N	7
273	-51	孩子	0	磨牙棒2盒	2018-01-30 20:53:47.278521+08	0	0	\N	2018-01-30 20:53:47.2788+08	\N	\N	7
274	-170	餐饮	0	牛奶x3，大米x4	2018-01-30 20:54:34.130476+08	0	0	\N	2018-01-30 20:54:34.130762+08	\N	\N	7
275	-200	生活用品	0	加油	2018-01-30 20:54:55.010847+08	0	0	\N	2018-01-30 20:54:55.011206+08	\N	\N	7
276	-65	生活用品	0	雨刮器x4	2018-01-30 20:55:16.230819+08	0	0	\N	2018-01-30 20:55:16.231169+08	\N	\N	7
277	-22	生活用品	0	挂衣架	2018-01-30 20:56:06.860863+08	0	0	\N	2018-01-30 20:56:06.861119+08	\N	\N	7
278	-23	生活用品	0	云石胶	2018-02-02 20:33:45.198158+08	0	0	\N	2018-02-02 20:33:45.198461+08	\N	\N	7
279	-38	餐饮	0	老婆大人	2018-02-02 20:34:21.369938+08	0	0	\N	2018-02-02 20:34:21.370254+08	\N	\N	7
280	-22	餐饮	0	西瓜	2018-02-02 20:34:32.341006+08	0	0	\N	2018-02-02 20:34:32.341322+08	\N	\N	7
281	-2	餐饮	0	肉串	2018-02-02 20:34:46.432633+08	0	0	\N	2018-02-02 20:34:46.432997+08	\N	\N	7
283	-70	餐饮	0	甜品	2018-02-04 09:40:31.264191+08	0	0	\N	2018-02-04 09:40:31.2645+08	\N	\N	10
284	-16	装修	0	饰面板样品邮费	2018-02-04 09:41:33.596913+08	0	0	\N	2018-02-04 09:41:33.597252+08	\N	\N	10
285	-350	生活用品	0	保养	2018-02-04 14:12:58.076817+08	0	0	\N	2018-02-04 14:12:58.077089+08	\N	\N	10
286	-676	餐饮	0	团圆饭	2018-02-04 20:46:07.901101+08	0	0	\N	2018-02-04 20:46:07.901602+08	\N	\N	10
287	-1840	孩子	0	cybex安全座椅	2018-02-06 10:29:44.744443+08	0	0	\N	2018-02-06 10:29:44.74475+08	\N	\N	10
288	-50	生活用品	0	无限流量卡	2018-02-07 10:15:25.279443+08	0	0	\N	2018-02-07 10:15:25.279927+08	\N	\N	10
289	-27	餐饮	0	KFC	2018-02-07 10:15:38.375999+08	0	0	\N	2018-02-07 10:15:38.376306+08	\N	\N	10
290	-99	生活用品	0	broadlink MP1插排	2018-02-09 14:22:06.732995+08	0	0	\N	2018-02-09 14:22:06.733328+08	\N	\N	10
293	12072	收入	0	工资	2018-02-09 18:11:12.157577+08	0	0	\N	2018-02-09 18:11:12.157909+08	\N	\N	10
294	14666	收入	0	奖金	2018-02-09 18:11:28.913842+08	0	0	\N	2018-02-09 18:11:28.914114+08	\N	\N	10
295	-182	餐饮	0	午餐	2018-02-10 13:04:52.060615+08	0	0	\N	2018-02-10 13:04:52.060962+08	\N	\N	10
296	-100	孩子	0	电炖锅	2018-02-11 07:28:31.012923+08	0	0	\N	2018-02-11 07:28:31.013226+08	\N	\N	7
297	-30	其它	0	停车费＋高速	2018-02-11 07:29:01.710286+08	0	0	\N	2018-02-11 07:29:01.710622+08	\N	\N	7
298	-55	孩子	0	检查费	2018-02-11 07:30:23.914068+08	0	0	\N	2018-02-11 07:30:23.914402+08	\N	\N	7
299	-1000	生活用品	0	烧酒费	2018-02-11 07:31:23.232559+08	0	0	\N	2018-02-11 07:31:23.232817+08	\N	\N	7
300	-20	其它	0	捐款	2018-02-11 07:31:53.473747+08	0	0	\N	2018-02-11 07:31:53.474025+08	\N	\N	7
301	-15	生活用品	0	两瓶矿泉水	2018-02-11 07:33:22.933238+08	0	0	\N	2018-02-11 07:33:22.933579+08	\N	\N	7
302	-109	服饰	0	棉裤	2018-02-11 07:36:07.092754+08	0	0	\N	2018-02-11 07:36:07.093091+08	\N	\N	7
303	-463	服饰	0	一件棉服＋毛线裙	2018-02-11 07:37:51.749042+08	0	0	\N	2018-02-11 07:37:51.74929+08	\N	\N	7
304	-1500	生活用品	0	生活费	2018-02-11 07:38:13.052033+08	0	0	\N	2018-02-11 07:38:13.052377+08	\N	\N	7
305	-30	餐饮	0	KFC午餐	2018-02-13 11:19:29.948934+08	0	0	\N	2018-02-13 11:19:29.949235+08	\N	\N	10
306	-200	服饰	0	新年毛衣	2018-02-13 12:21:42.941808+08	0	0	\N	2018-02-13 12:21:42.942113+08	\N	\N	10
307	15000	收入	0	提成	2018-02-14 13:00:34.440716+08	0	0	\N	2018-02-14 13:00:34.441042+08	\N	\N	7
308	-168	孩子	0	优衣库外套	2018-02-14 13:01:20.372654+08	0	0	\N	2018-02-14 13:01:20.37299+08	\N	\N	7
309	-49	孩子	0	gap毛衣	2018-02-14 13:01:59.557331+08	0	0	\N	2018-02-14 13:01:59.557679+08	\N	\N	7
310	-149	孩子	0	爱婴岛衣外套＋卫衣	2018-02-14 13:02:43.132087+08	0	0	\N	2018-02-14 13:02:43.132399+08	\N	\N	7
311	-17	餐饮	0	火龙果	2018-02-14 13:03:03.50168+08	0	0	\N	2018-02-14 13:03:03.501984+08	\N	\N	7
312	-6	餐饮	0	甜筒	2018-02-14 13:03:24.875836+08	0	0	\N	2018-02-14 13:03:24.87618+08	\N	\N	7
313	-298	服饰	0	羽绒服外套	2018-02-14 13:03:51.849129+08	0	0	\N	2018-02-14 13:03:51.849445+08	\N	\N	7
315	-800	生活用品	0	外婆新年红包	2018-02-16 19:52:52.941886+08	0	0	\N	2018-02-16 19:52:52.942217+08	\N	\N	10
317	-107	餐饮	0	KFC	2018-02-20 18:18:17.045178+08	0	0	\N	2018-02-20 18:18:17.045499+08	\N	\N	7
318	-15	餐饮	0	三江购物	2018-02-20 18:18:38.521651+08	0	0	\N	2018-02-20 18:18:38.521973+08	\N	\N	7
319	-22	餐饮	0	KFC早餐	2018-02-20 18:18:53.413374+08	0	0	\N	2018-02-20 18:18:53.413722+08	\N	\N	7
314	-118	餐饮	0	胖二哥午餐	2018-02-14 13:08:58.264507+08	0	0	\N	2018-02-20 18:20:25.406991+08	\N	\N	7
320	-13	餐饮	0	coco饮料	2018-02-23 07:32:05.49678+08	0	0	\N	2018-02-23 07:32:05.497085+08	\N	\N	7
321	-100	其它	0	电影票	2018-02-23 07:32:38.156281+08	0	0	\N	2018-02-23 07:32:38.156591+08	\N	\N	7
322	-69	孩子	0	安抚奶嘴	2018-02-23 07:33:00.907579+08	0	0	\N	2018-02-23 07:33:00.90789+08	\N	\N	7
323	-23	餐饮	0	老婆大人	2018-02-23 07:33:27.177025+08	0	0	\N	2018-02-23 07:33:27.177334+08	\N	\N	7
324	-115	孩子	0	嘟嘟检查	2018-02-23 07:34:53.854926+08	0	0	\N	2018-02-23 07:34:53.855228+08	\N	\N	7
325	-114	孩子	0	水杯，温奶器，碗－京东	2018-02-23 07:36:27.625311+08	0	0	\N	2018-02-23 07:36:27.625628+08	\N	\N	7
326	-100	孩子	0	两盒星鲨D剂＋一盒美林	2018-02-23 07:37:41.868244+08	0	0	\N	2018-02-23 07:37:41.868614+08	\N	\N	7
327	-78	孩子	0	钙片爱因保	2018-02-23 07:40:03.72919+08	0	0	\N	2018-02-23 07:40:03.729532+08	\N	\N	7
328	-107	餐饮	0	肯德基套餐	2018-02-23 07:40:54.204119+08	0	0	\N	2018-02-23 07:40:54.204368+08	\N	\N	7
329	-41	餐饮	0	欧文蛋糕	2018-02-23 07:42:18.768683+08	0	0	\N	2018-02-23 07:42:18.76899+08	\N	\N	7
330	-45	生活用品	0	手机后盖	2018-02-23 19:10:17.59287+08	0	0	\N	2018-02-23 19:10:17.593196+08	\N	\N	10
331	-81	生活用品	0	鱼缸过滤器	2018-02-23 19:11:01.004435+08	0	0	\N	2018-02-23 19:11:01.004782+08	\N	\N	10
332	-237	孩子	0	小孩看病	2018-02-26 19:01:15.654918+08	0	0	\N	2018-02-26 19:01:15.655254+08	\N	\N	7
333	-47	餐饮	0	欧文蛋糕	2018-02-26 19:01:40.45015+08	0	0	\N	2018-02-26 19:01:40.450476+08	\N	\N	7
334	-20	餐饮	0	草莓	2018-02-26 19:01:51.775254+08	0	0	\N	2018-02-26 19:01:51.775609+08	\N	\N	7
335	-16	餐饮	0	牛肉干	2018-02-26 19:02:02.916571+08	0	0	\N	2018-02-26 19:02:02.916938+08	\N	\N	7
337	-16	孩子	0	灯笼	2018-02-26 19:02:39.948129+08	0	0	\N	2018-02-26 19:02:39.948479+08	\N	\N	7
338	-7	孩子	0	车上遮阳布	2018-02-26 19:02:59.241658+08	0	0	\N	2018-02-26 19:02:59.241984+08	\N	\N	7
340	-200	生活用品	0	加油	2018-02-26 19:04:33.498744+08	0	0	\N	2018-02-26 19:04:33.499101+08	\N	\N	10
341	-3008	生活用品	0	iPad 128G	2018-02-26 19:07:05.490255+08	0	0	\N	2018-02-26 19:07:05.490511+08	\N	\N	10
342	-23	其它	0	鱼食红虫干	2018-02-27 18:14:56.730508+08	0	0	\N	2018-02-27 18:14:56.73084+08	\N	\N	10
343	-139	其它	0	64G micro SD卡	2018-02-27 21:41:19.201086+08	0	0	\N	2018-02-27 21:41:19.201382+08	\N	\N	10
344	-252	其它	0	树莓派3b E14中国版	2018-02-27 21:44:03.927744+08	0	0	\N	2018-02-27 21:44:03.928066+08	\N	\N	10
345	-30	生活用品	0	iPad外套	2018-03-01 18:32:03.418446+08	0	0	\N	2018-03-01 18:32:03.418749+08	\N	\N	10
346	-8	生活用品	0	遮阳帘车子	2018-03-01 21:35:03.062966+08	0	0	\N	2018-03-01 21:35:03.063267+08	\N	\N	7
347	-10	生活用品	0	开水瓶口中子	2018-03-01 21:35:21.828208+08	0	0	\N	2018-03-01 21:35:21.828524+08	\N	\N	7
348	-39	生活用品	0	安全坐椅罩	2018-03-01 21:36:11.426702+08	0	0	\N	2018-03-01 21:36:11.426965+08	\N	\N	7
349	-19	餐饮	0	老婆大人	2018-03-01 21:36:26.502206+08	0	0	\N	2018-03-01 21:36:26.502501+08	\N	\N	7
350	-37	餐饮	0	绿资	2018-03-01 21:36:54.95502+08	0	0	\N	2018-03-01 21:36:54.955374+08	\N	\N	7
351	-198	孩子	0	全面时代餐巾纸24包	2018-03-01 21:39:14.202903+08	0	0	\N	2018-03-01 21:39:14.203256+08	\N	\N	7
352	-14	生活用品	0	钢化膜2张	2018-03-01 21:40:48.251921+08	0	0	\N	2018-03-01 21:40:48.252258+08	\N	\N	7
353	-180	孩子	0	爱他美奶粉	2018-03-03 10:09:43.154262+08	0	0	\N	2018-03-03 10:09:43.15459+08	\N	\N	7
354	-21	其它	0	滴滴	2018-03-03 10:10:03.910005+08	0	0	\N	2018-03-03 10:10:03.910406+08	\N	\N	7
355	-105	生活用品	0	洗发水	2018-03-04 17:12:35.327545+08	0	0	\N	2018-03-04 17:12:35.327836+08	\N	\N	7
356	-185	生活用品	0	华润万家	2018-03-04 17:12:55.169482+08	0	0	\N	2018-03-04 17:12:55.1698+08	\N	\N	7
357	-7000	装修	0	三扇门x1150+5个门套	2018-03-04 17:21:38.465804+08	0	0	\N	2018-03-04 17:21:38.466116+08	\N	\N	10
358	-89	生活用品	0	生活用品	2018-03-09 20:56:50.367298+08	0	0	\N	2018-03-09 20:56:50.367644+08	\N	\N	7
359	-55	餐饮	0	肯德基24＋o216＋鸡本部16	2018-03-09 20:57:56.852463+08	0	0	\N	2018-03-09 20:57:56.852909+08	\N	\N	7
360	-12	生活用品	0	手机壳	2018-03-09 20:59:02.902386+08	0	0	\N	2018-03-09 20:59:02.902712+08	\N	\N	7
361	-200	其它	0	加油	2018-03-09 20:59:33.806153+08	0	0	\N	2018-03-09 20:59:33.806454+08	\N	\N	7
362	-100	孩子	0	书	2018-03-09 21:00:26.596315+08	0	0	\N	2018-03-09 21:00:26.596638+08	\N	\N	7
363	5391	收入	0	工资	2018-03-09 21:01:12.548382+08	0	0	\N	2018-03-09 21:01:12.548767+08	\N	\N	7
364	-300	装修	0	奥普结余	2018-03-10 10:10:31.269358+08	0	0	\N	2018-03-10 10:10:31.269718+08	\N	\N	10
365	-1500	生活用品	0	生活费	2018-03-10 17:50:15.357698+08	0	0	\N	2018-03-10 17:50:15.358051+08	\N	\N	7
366	-20	餐饮	0	草莓	2018-03-10 17:50:27.237722+08	0	0	\N	2018-03-10 17:50:27.238112+08	\N	\N	7
367	-46	餐饮	0	新江厦	2018-03-10 17:51:00.351406+08	0	0	\N	2018-03-10 17:51:00.351764+08	\N	\N	7
368	-15	生活用品	0	高速费	2018-03-11 17:07:48.454885+08	0	0	\N	2018-03-11 17:07:48.455225+08	\N	\N	7
369	-47	生活用品	0	超市	2018-03-12 22:23:47.247469+08	0	0	\N	2018-03-12 22:23:47.247806+08	\N	\N	7
370	-209	生活用品	0	羽毛球拍一副	2018-03-15 14:19:44.5757+08	0	0	\N	2018-03-15 14:19:44.576029+08	\N	\N	10
371	-328	生活用品	0	帐篷	2018-03-15 14:57:09.198035+08	0	0	\N	2018-03-15 14:57:09.198482+08	\N	\N	10
372	12287	收入	0	工资	2018-03-15 15:35:57.670828+08	0	0	\N	2018-03-15 15:35:57.671086+08	\N	\N	10
373	-287	餐饮	0	牛很鲜火锅	2018-03-15 19:56:24.77846+08	0	0	\N	2018-03-15 19:56:24.778818+08	\N	\N	7
374	-6	餐饮	0	肯德基	2018-03-15 19:56:38.43921+08	0	0	\N	2018-03-15 19:56:38.439535+08	\N	\N	7
375	-54	餐饮	0	肯德基24基本部15o215	2018-03-15 19:59:18.651479+08	0	0	\N	2018-03-15 19:59:18.651756+08	\N	\N	7
376	-10	餐饮	0	薯条	2018-03-15 20:11:29.700135+08	0	0	\N	2018-03-15 20:11:29.700493+08	\N	\N	7
377	-69	其它	0	域名	2018-03-16 11:24:13.434151+08	0	0	\N	2018-03-16 11:24:13.434646+08	\N	\N	10
378	-1450	装修	0	开关插座	2018-03-17 12:54:41.99654+08	0	0	\N	2018-03-17 12:54:41.996872+08	\N	\N	10
379	-3798	装修	0	AO Smith热水器	2018-03-17 21:36:41.811631+08	0	0	\N	2018-03-17 21:36:41.811949+08	\N	\N	10
380	-19	餐饮	0	盐水鸡鱿鱼须	2018-03-17 21:38:15.132558+08	0	0	\N	2018-03-17 21:38:15.132848+08	\N	\N	7
381	-84	孩子	0	max win背心	2018-03-17 21:38:43.172773+08	0	0	\N	2018-03-17 21:38:43.173114+08	\N	\N	7
382	-108	孩子	0	米粉面条	2018-03-17 21:39:05.97838+08	0	0	\N	2018-03-17 21:39:05.978844+08	\N	\N	7
383	-399	孩子	0	拍照	2018-03-17 21:39:18.265657+08	0	0	\N	2018-03-17 21:39:18.266032+08	\N	\N	7
384	-22	生活用品	0	理发	2018-03-17 21:42:22.581668+08	0	0	\N	2018-03-17 21:42:22.58209+08	\N	\N	10
385	-100	装修	0	烟道材料费	2018-03-19 17:59:48.935314+08	0	0	\N	2018-03-19 17:59:48.935665+08	\N	\N	10
386	-250	装修	0	燃气灶安装材料费	2018-03-19 18:27:57.656201+08	0	0	\N	2018-03-19 18:27:57.656537+08	\N	\N	10
387	-1200	装修	0	欧琳水槽	2018-03-20 07:58:58.428982+08	0	0	\N	2018-03-20 07:58:58.429294+08	\N	\N	10
388	-58	孩子	0	怡宝矿泉水8瓶	2018-03-22 20:58:01.569206+08	0	0	\N	2018-03-22 20:58:01.569553+08	\N	\N	7
389	-200	其它	0	加油	2018-03-22 20:58:12.825403+08	0	0	\N	2018-03-22 20:58:12.825717+08	\N	\N	7
390	-78	孩子	0	勺子	2018-03-22 20:58:25.745767+08	0	0	\N	2018-03-22 20:58:25.7462+08	\N	\N	7
391	-26	餐饮	0	茶香香	2018-03-22 20:59:02.873751+08	0	0	\N	2018-03-22 20:59:02.874372+08	\N	\N	7
392	-17	孩子	0	帽子	2018-03-22 20:59:59.271301+08	0	0	\N	2018-03-22 20:59:59.271706+08	\N	\N	7
393	-17	孩子	0	帽子	2018-03-22 21:00:00.214408+08	0	0	\N	2018-03-22 21:00:00.214935+08	\N	\N	7
394	5013	收入	0	工资	2018-03-22 21:01:49.268527+08	0	0	\N	2018-03-22 21:01:49.268938+08	\N	\N	7
395	-96	餐饮	0	午餐美蛙	2018-03-24 14:01:49.10461+08	0	0	\N	2018-03-24 14:01:49.104969+08	\N	\N	7
396	-338	服饰	0	上衣＋裤子	2018-03-24 14:02:33.872851+08	0	0	\N	2018-03-24 14:02:33.873276+08	\N	\N	7
397	-157	孩子	0	衣服	2018-03-24 14:02:51.656192+08	0	0	\N	2018-03-24 14:02:51.656585+08	\N	\N	7
398	-60	其它	0	植物园门票	2018-03-25 21:24:12.748699+08	0	0	\N	2018-03-25 21:24:12.749032+08	\N	\N	7
399	-37	餐饮	0	o2	2018-03-25 21:24:36.736021+08	0	0	\N	2018-03-25 21:24:36.737738+08	\N	\N	7
400	-30	餐饮	0	o2	2018-03-25 21:25:03.062174+08	0	0	\N	2018-03-25 21:25:03.062577+08	\N	\N	7
401	-80	孩子	0	米粉＋零食	2018-03-25 21:25:42.922035+08	0	0	\N	2018-03-25 21:25:42.92243+08	\N	\N	7
402	-43	孩子	0	鞋子	2018-03-25 21:26:46.182147+08	0	0	\N	2018-03-25 21:26:46.182532+08	\N	\N	7
403	-103	生活用品	0	MacBook网口转换器	2018-03-26 10:51:47.66997+08	0	0	\N	2018-03-26 10:51:47.670316+08	\N	\N	10
\.


--
-- Name: babycare_iaer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ben
--

SELECT pg_catalog.setval('babycare_iaer_id_seq', 403, true);


--
-- Data for Name: babycare_like; Type: TABLE DATA; Schema: public; Owner: ben
--

COPY babycare_like (id, datetime, baby_id, event_id) FROM stdin;
6	2018-02-07 11:13:02.358108+08	11	32
\.


--
-- Name: babycare_like_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ben
--

SELECT pg_catalog.setval('babycare_like_id_seq', 6, true);


--
-- Data for Name: babycare_loginlog; Type: TABLE DATA; Schema: public; Owner: ben
--

COPY babycare_loginlog (id, system_type, system_version, phone_model, country, state, city, created, baby_id) FROM stdin;
\.


--
-- Name: babycare_loginlog_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ben
--

SELECT pg_catalog.setval('babycare_loginlog_id_seq', 1, false);


--
-- Data for Name: babycare_redenvelope; Type: TABLE DATA; Schema: public; Owner: ben
--

COPY babycare_redenvelope (id, money, money_type, money_from, remark, created, baby_id) FROM stdin;
2	880	0	磊艳姐	出生红包	2017-06-18 20:23:48.382078+08	1
3	188	0	小强	出生红包	2017-06-18 20:24:04.21992+08	1
4	1000	0	宁波嬷嬷	出生红包	2017-06-18 20:24:32.295148+08	1
5	800	0	咸祥嬷嬷	出生红包	2017-06-18 20:27:53.33798+08	1
6	600	0	咸祥哥哥	出生红包	2017-06-18 20:28:40.339832+08	1
7	2000	0	大姐姐	出生红包	2017-06-18 20:29:12.58767+08	1
8	10000	0	丈母娘	出生红包	2017-06-18 20:29:42.928428+08	1
9	1500	0	丈母娘	催生红包	2017-06-18 20:30:00.026331+08	1
10	1200	0	江陆嬷嬷	出生红包	2017-06-18 20:30:46.200995+08	1
11	800	0	江陆大哥哥	出生红包	2017-06-18 20:31:04.54314+08	1
12	800	0	江陆小哥哥	出生红包	2017-06-18 20:31:22.459012+08	1
13	600	0	大伯伯	出生红包	2017-06-18 20:31:43.151531+08	1
14	1000	0	二伯伯	出生红包	2017-06-18 20:32:04.609331+08	1
15	1000	0	三姐姐	出生红包	2017-06-18 20:32:27.740332+08	1
16	600	0	舅舅	出生红包	2017-06-18 20:32:39.499006+08	1
17	1200	0	外婆	出生红包	2017-06-18 20:32:55.949876+08	1
18	1600	0	阿姨	出生红包	2017-06-18 20:33:08.480811+08	1
24	1600	0	管江阿姨	出生红包	2017-06-19 15:48:12.146769+08	1
25	1000	0	上海嬷嬷	出生红包	2017-06-19 15:56:08.231509+08	1
26	13000	0	妈妈	出生红包	2017-06-19 15:56:24.576739+08	1
27	1200	0	奶奶	出生红包	2017-06-20 09:23:52.182672+08	1
28	1200	0	沙村嬷嬷	出生红包	2017-06-21 08:08:29.253738+08	1
29	1200	0	沙村大阿姆	出生红包	2017-06-21 08:08:55.263453+08	1
30	1200	0	沙村小阿姆	出生红包	2017-06-21 08:09:14.296094+08	1
31	5600	0	红霞	出生红包	2017-06-22 13:57:16.857961+08	1
32	3600	0	五姐	出生红包	2017-06-22 13:58:18.451322+08	1
33	1200	0	六姐	出生红包	2017-06-22 13:58:51.728138+08	1
34	1600	0	二姐	出生红包	2017-06-22 13:59:31.027873+08	1
36	1000	0	建华哥哥	出生红包	2017-06-25 09:46:07.657558+08	1
38	600	0	小龙	出生红包	2017-07-01 19:09:59.361237+08	1
39	1200	0	塘溪舅舅	出生红包	2017-07-01 19:10:21.219857+08	1
40	1000	0	建辉哥	出生红包	2017-07-09 16:10:01.194495+08	1
42	300	0	沙村小阿姆	见面红包	2017-08-05 09:34:24.315802+08	1
43	2800	0	丈母娘	见面红包	2017-08-05 09:34:45.029717+08	1
44	1600	0	奶奶	见面红包	2017-08-05 09:35:04.622308+08	1
45	2000	0	老婆老板	出生红包	2017-08-05 09:38:17.605805+08	1
143	508	0	外婆	见面红包	2017-10-19 21:17:47.148152+08	1
144	300	0	沙村嬷嬷	见面红包	2017-10-19 21:18:07.891939+08	1
145	660	0	五姐	满月红包	2017-10-19 21:18:55.11675+08	1
146	800	0	二姐姐	新年红包	2018-02-09 18:50:23.14149+08	1
147	600	0	宁波嬷嬷	新年红包	2018-02-09 18:50:49.837051+08	1
148	1000	0	五姐	过年红包	2018-02-11 18:12:06.021698+08	1
149	800	0	六姐	新年红包	2018-02-13 22:23:40.739161+08	1
151	500	0	奶奶	新年红包	2018-02-15 13:45:20.683989+08	1
152	600	0	建华哥	新年红包	2018-02-15 18:53:50.311889+08	1
153	600	0	外婆	新年红包	2018-02-16 19:30:41.023052+08	1
154	800	0	舅舅	新年红包	2018-02-16 19:30:51.972515+08	1
155	1000	0	江陆嬷嬷	新年红包	2018-02-16 19:31:07.942173+08	1
156	500	0	二伯伯	新年红包	2018-02-16 19:31:20.766115+08	1
157	10000	0	妈妈	新年红包	2018-02-16 19:35:07.004468+08	1
158	500	0	沙村大阿姆	新年红包	2018-02-18 17:09:41.916614+08	1
159	300	0	沙村小阿姆	新年红包	2018-02-18 17:09:56.393998+08	1
160	800	0	阿姨	新年红包	2018-02-18 17:17:46.756471+08	1
161	800	0	舅舅	新年红包	2018-02-18 17:17:58.245673+08	1
162	600	0	外婆	新年红包	2018-02-18 17:18:08.994977+08	1
163	300	0	沙村嬷嬷	新年红包	2018-02-18 18:16:12.372293+08	1
164	300	0	塘溪舅舅	新年红包	2018-02-18 18:16:32.901781+08	1
165	300	0	咸祥嬷嬷	新年红包	2018-02-18 18:16:59.123331+08	1
166	200	0	塘溪阿姨	过年红包	2018-02-27 10:26:13.506074+08	1
167	600	0	建辉哥	过年红包	2018-02-27 10:26:31.816098+08	1
169	600	0	大姐姐	新年红包	2018-03-08 21:26:07.828657+08	1
\.


--
-- Name: babycare_redenvelope_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ben
--

SELECT pg_catalog.setval('babycare_redenvelope_id_seq', 169, true);


--
-- Data for Name: babycare_verify; Type: TABLE DATA; Schema: public; Owner: ben
--

COPY babycare_verify (id, email_verify_code, phone_verify_code, created, baby_id) FROM stdin;
2	289457	\N	2017-06-24 07:31:49.886294+08	1
3	789517	\N	2017-12-15 13:49:12.606191+08	10
\.


--
-- Name: babycare_verify_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ben
--

SELECT pg_catalog.setval('babycare_verify_id_seq', 3, true);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: ben
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2017-05-26 16:29:35.88564+08	1	1.0(2)	1	[{"added": {}}]	8	1
2	2017-06-07 10:13:54.015758+08	1	1.0(2)	3		8	1
3	2017-06-07 13:19:16.277786+08	2	0.2(2)	1	[{"added": {}}]	8	1
4	2017-06-07 13:22:26.862825+08	3	0.3(3)	1	[{"added": {}}]	8	1
5	2017-06-07 13:50:16.218849+08	3	0.3(3)	3		8	1
6	2017-06-07 13:51:16.218915+08	2	0.2(2)	2	[{"changed": {"fields": ["app_file"]}}]	8	1
7	2017-06-16 16:46:45.700181+08	4	babycare	2	[{"changed": {"fields": ["image1"]}}]	10	1
8	2017-06-16 16:47:05.61688+08	3	babycare	2	[{"changed": {"fields": ["image1"]}}]	10	1
9	2017-06-16 16:47:23.998842+08	1	babycare	2	[{"changed": {"fields": ["content", "image1"]}}]	10	1
10	2017-06-18 20:21:29.81507+08	2	0.2(2)	3		8	1
11	2017-06-18 20:55:51.331649+08	20	RedEnvelope object	3		16	1
12	2017-06-18 20:55:51.33483+08	19	RedEnvelope object	3		16	1
13	2017-06-19 16:16:51.504696+08	4	0.2(2)	1	[{"added": {}}]	8	1
14	2017-06-19 16:28:21.909536+08	4	0.2(2)	3		8	1
15	2017-06-19 16:32:19.754351+08	5	0.2(1)	1	[{"added": {}}]	8	1
16	2017-06-19 16:36:16.77356+08	5	0.2(2)	2	[{"changed": {"fields": ["version_code"]}}]	8	1
17	2017-06-24 08:42:31.037762+08	2	test1	3		9	1
18	2017-06-24 08:42:31.040515+08	1	test1	3		9	1
19	2017-06-24 08:43:25.854956+08	5	test1	3		9	1
20	2017-06-24 08:43:25.857721+08	4	test1	3		9	1
21	2017-06-24 08:43:25.859454+08	3	test1	3		9	1
22	2017-06-24 08:52:02.217776+08	6	0.3(3)	1	[{"added": {}}]	8	1
23	2017-07-27 15:38:27.82901+08	41	RedEnvelope object	1	[{"added": {}}]	16	1
24	2017-08-21 13:31:59.485781+08	46	RedEnvelope object	1	[{"added": {}}]	16	1
25	2017-08-23 14:58:08.202641+08	97	RedEnvelope object	3		16	1
26	2017-08-23 14:58:08.206172+08	96	RedEnvelope object	3		16	1
27	2017-08-23 14:58:08.208256+08	95	RedEnvelope object	3		16	1
28	2017-08-23 14:58:08.209938+08	94	RedEnvelope object	3		16	1
29	2017-08-23 14:58:08.211589+08	93	RedEnvelope object	3		16	1
30	2017-08-23 14:58:08.213114+08	92	RedEnvelope object	3		16	1
31	2017-08-23 14:58:08.215016+08	91	RedEnvelope object	3		16	1
32	2017-08-23 14:58:08.216583+08	90	RedEnvelope object	3		16	1
33	2017-08-23 14:58:08.218283+08	89	RedEnvelope object	3		16	1
34	2017-08-23 14:58:08.219796+08	88	RedEnvelope object	3		16	1
35	2017-08-23 14:58:08.221245+08	87	RedEnvelope object	3		16	1
36	2017-08-23 14:58:08.222787+08	86	RedEnvelope object	3		16	1
37	2017-08-23 14:58:08.224362+08	85	RedEnvelope object	3		16	1
38	2017-08-23 14:58:08.226055+08	84	RedEnvelope object	3		16	1
39	2017-08-23 14:58:08.227646+08	83	RedEnvelope object	3		16	1
40	2017-08-23 14:58:08.229217+08	82	RedEnvelope object	3		16	1
41	2017-08-23 14:58:08.230787+08	81	RedEnvelope object	3		16	1
42	2017-08-23 14:58:08.232276+08	80	RedEnvelope object	3		16	1
43	2017-08-23 14:58:08.233765+08	79	RedEnvelope object	3		16	1
44	2017-08-23 14:58:08.235608+08	77	RedEnvelope object	3		16	1
45	2017-08-23 14:58:08.237262+08	76	RedEnvelope object	3		16	1
46	2017-08-31 15:30:10.217083+08	123	RedEnvelope object	3		16	1
47	2017-08-31 15:30:10.220766+08	122	RedEnvelope object	3		16	1
48	2017-08-31 15:30:10.22288+08	121	RedEnvelope object	3		16	1
49	2017-08-31 15:30:10.224696+08	120	RedEnvelope object	3		16	1
50	2017-08-31 15:30:10.226632+08	119	RedEnvelope object	3		16	1
51	2017-08-31 15:30:10.228458+08	118	RedEnvelope object	3		16	1
52	2017-08-31 15:30:10.230206+08	117	RedEnvelope object	3		16	1
53	2017-08-31 15:30:10.231798+08	116	RedEnvelope object	3		16	1
54	2017-08-31 15:30:10.233732+08	115	RedEnvelope object	3		16	1
55	2017-08-31 15:30:10.235395+08	114	RedEnvelope object	3		16	1
56	2017-08-31 15:30:10.237017+08	113	RedEnvelope object	3		16	1
57	2017-08-31 15:30:10.238969+08	112	RedEnvelope object	3		16	1
58	2017-08-31 15:30:10.240626+08	111	RedEnvelope object	3		16	1
59	2017-08-31 15:30:10.242688+08	110	RedEnvelope object	3		16	1
60	2017-08-31 15:30:10.244341+08	109	RedEnvelope object	3		16	1
61	2017-08-31 15:30:10.245932+08	108	RedEnvelope object	3		16	1
62	2017-08-31 15:30:10.247775+08	107	RedEnvelope object	3		16	1
63	2017-08-31 15:30:10.249324+08	106	RedEnvelope object	3		16	1
64	2017-08-31 15:30:10.250978+08	105	RedEnvelope object	3		16	1
65	2017-08-31 15:30:10.252487+08	104	RedEnvelope object	3		16	1
66	2017-08-31 15:30:10.254006+08	103	RedEnvelope object	3		16	1
67	2017-08-31 15:30:10.255783+08	102	RedEnvelope object	3		16	1
68	2017-08-31 15:30:10.258824+08	101	RedEnvelope object	3		16	1
69	2017-08-31 15:30:10.260561+08	100	RedEnvelope object	3		16	1
70	2017-08-31 15:30:10.262246+08	99	RedEnvelope object	3		16	1
71	2017-08-31 15:30:10.264499+08	98	RedEnvelope object	3		16	1
72	2017-08-31 15:30:10.266488+08	75	RedEnvelope object	3		16	1
73	2017-08-31 15:30:10.26807+08	74	RedEnvelope object	3		16	1
74	2017-08-31 15:30:10.26966+08	73	RedEnvelope object	3		16	1
75	2017-08-31 15:30:10.271408+08	72	RedEnvelope object	3		16	1
76	2017-08-31 15:30:10.272929+08	71	RedEnvelope object	3		16	1
77	2017-08-31 15:30:10.274624+08	70	RedEnvelope object	3		16	1
78	2017-08-31 15:30:10.276305+08	69	RedEnvelope object	3		16	1
79	2017-08-31 15:30:10.278726+08	68	RedEnvelope object	3		16	1
80	2017-08-31 15:30:10.280409+08	67	RedEnvelope object	3		16	1
81	2017-08-31 15:30:10.282064+08	66	RedEnvelope object	3		16	1
82	2017-08-31 15:30:10.283787+08	65	RedEnvelope object	3		16	1
83	2017-08-31 15:30:10.285628+08	64	RedEnvelope object	3		16	1
84	2017-08-31 15:30:10.28744+08	63	RedEnvelope object	3		16	1
85	2017-08-31 15:30:10.289201+08	62	RedEnvelope object	3		16	1
86	2017-08-31 15:30:10.290777+08	61	RedEnvelope object	3		16	1
87	2017-08-31 15:30:10.292448+08	60	RedEnvelope object	3		16	1
88	2017-08-31 15:30:10.293983+08	59	RedEnvelope object	3		16	1
89	2017-08-31 15:30:10.295651+08	58	RedEnvelope object	3		16	1
90	2017-08-31 15:30:10.297287+08	57	RedEnvelope object	3		16	1
91	2017-08-31 15:30:10.298978+08	56	RedEnvelope object	3		16	1
92	2017-08-31 15:30:10.30069+08	55	RedEnvelope object	3		16	1
93	2017-08-31 15:30:10.302363+08	54	RedEnvelope object	3		16	1
94	2017-08-31 15:30:10.304275+08	53	RedEnvelope object	3		16	1
95	2017-08-31 15:30:10.305972+08	52	RedEnvelope object	3		16	1
96	2017-08-31 15:30:10.307713+08	51	RedEnvelope object	3		16	1
97	2017-08-31 15:30:10.309381+08	50	RedEnvelope object	3		16	1
98	2017-08-31 15:30:10.311056+08	49	RedEnvelope object	3		16	1
99	2017-08-31 15:30:10.31288+08	48	RedEnvelope object	3		16	1
100	2017-08-31 15:30:10.314712+08	47	RedEnvelope object	3		16	1
101	2017-08-31 15:30:10.31638+08	46	RedEnvelope object	3		16	1
102	2017-08-31 16:57:54.717053+08	126	RedEnvelope object	3		16	1
103	2017-08-31 16:57:54.72014+08	125	RedEnvelope object	3		16	1
104	2017-08-31 16:57:54.721941+08	124	RedEnvelope object	3		16	1
105	2017-09-14 10:31:33.335609+08	132	RedEnvelope object	3		16	1
106	2017-09-14 10:44:56.096296+08	133	RedEnvelope object	3		16	1
107	2017-09-14 10:44:56.099591+08	131	RedEnvelope object	3		16	1
108	2017-09-14 10:44:56.101454+08	130	RedEnvelope object	3		16	1
109	2017-09-14 10:44:56.103229+08	129	RedEnvelope object	3		16	1
110	2017-09-14 10:44:56.104928+08	128	RedEnvelope object	3		16	1
111	2017-09-14 10:44:56.10734+08	127	RedEnvelope object	3		16	1
112	2017-09-20 11:15:51.478485+08	138	RedEnvelope object	3		16	1
113	2017-09-20 11:15:51.481903+08	137	RedEnvelope object	3		16	1
114	2017-09-20 11:15:51.483657+08	136	RedEnvelope object	3		16	1
115	2017-09-20 11:15:51.485515+08	135	RedEnvelope object	3		16	1
116	2017-09-20 11:15:51.487167+08	134	RedEnvelope object	3		16	1
117	2017-10-14 17:01:19.43668+08	3	test1@gmail.com(test1)	3		11	1
118	2017-10-14 17:01:19.439851+08	2	test@gmail.com(test)	3		11	1
119	2017-10-14 17:02:21.549428+08	3	test	3		3	1
120	2017-10-14 17:02:21.551878+08	4	test1	3		3	1
121	2017-10-14 17:05:02.738415+08	0a73b72c5a93a493a19fc37770c4fda4a48bc9c9	0a73b72c5a93a493a19fc37770c4fda4a48bc9c9	3		7	1
122	2017-10-14 17:08:38.879222+08	6	11	2	[{"changed": {"fields": ["username", "is_staff"]}}]	3	1
123	2017-10-14 17:08:50.216404+08	6	11	3		3	1
124	2017-10-14 20:35:23.488495+08	1	Iaer object	1	[{"added": {}}]	18	1
125	2017-10-14 20:35:44.123929+08	1	Iaer object	3		18	1
126	2017-10-18 10:50:29.477356+08	3	Iaer object	3		18	1
127	2017-10-18 10:50:29.480329+08	4	Iaer object	3		18	1
128	2017-10-18 10:50:29.482076+08	5	Iaer object	3		18	1
129	2017-10-18 10:50:29.483906+08	2	Iaer object	3		18	1
130	2017-10-18 16:52:16.740808+08	7	Emily	2	[{"changed": {"fields": ["is_superuser"]}}]	3	1
131	2017-10-18 16:57:51.660403+08	7	Emily	3		3	1
132	2017-10-23 11:22:44.49896+08	11	Iaer object	3		18	1
133	2017-10-23 11:22:44.501701+08	7	Iaer object	3		18	1
134	2017-10-25 10:36:02.713168+08	8	hshsj@djdjdj.com(test)	3		11	1
135	2017-10-25 13:56:12.856166+08	1	admin	2	[{"changed": {"fields": ["username"]}}]	3	1
136	2017-10-25 14:01:03.347613+08	9	380668771@qq.com(ben)	3		11	1
137	2017-10-25 14:02:30.314688+08	10	ben	3		3	1
138	2017-10-25 14:02:30.317198+08	9	test	3		3	1
139	2017-10-26 10:05:28.237107+08	33	Iaer object	2	[{"changed": {"fields": ["money", "category"]}}]	18	1
140	2017-10-26 10:05:36.615242+08	31	Iaer object	2	[{"changed": {"fields": ["category"]}}]	18	1
141	2017-11-20 09:19:10.696658+08	34	Iaer object	2	[{"changed": {"fields": ["category"]}}]	18	1
142	2017-11-20 09:19:25.312167+08	35	Iaer object	2	[{"changed": {"fields": ["category"]}}]	18	1
143	2017-11-20 09:19:38.380887+08	36	Iaer object	2	[{"changed": {"fields": ["category"]}}]	18	1
144	2017-11-20 09:19:49.644339+08	91	Iaer object	2	[{"changed": {"fields": ["category"]}}]	18	1
145	2017-11-20 09:20:00.448035+08	90	Iaer object	2	[{"changed": {"fields": ["category"]}}]	18	1
146	2017-11-20 09:20:10.408821+08	79	Iaer object	2	[{"changed": {"fields": ["category"]}}]	18	1
147	2017-11-20 09:20:21.113914+08	78	Iaer object	2	[{"changed": {"fields": ["category"]}}]	18	1
148	2017-11-20 09:20:32.788634+08	57	Iaer object	2	[{"changed": {"fields": ["category"]}}]	18	1
149	2017-11-24 21:50:43.814806+08	75	Iaer object	2	[{"changed": {"fields": ["category"]}}]	18	1
150	2017-11-30 20:23:01.255057+08	122	Iaer object	2	[{"changed": {"fields": ["money", "category"]}}]	18	1
151	2017-12-27 20:09:47.975967+08	158	Iaer object	2	[{"changed": {"fields": ["money"]}}]	18	1
152	2018-01-09 17:35:56.709133+08	214	Iaer object	3		18	1
153	2018-01-10 09:03:37.181224+08	215	Iaer object	3		18	1
154	2018-01-10 09:05:50.901828+08	217	Iaer object	3		18	1
155	2018-01-10 09:05:50.904471+08	216	Iaer object	3		18	1
156	2018-01-10 09:06:04.86045+08	200	Iaer object	2	[{"changed": {"fields": ["category"]}}]	18	1
157	2018-01-10 09:06:26.519635+08	121	Iaer object	2	[{"changed": {"fields": ["category"]}}]	18	1
158	2018-01-10 09:06:33.12031+08	156	Iaer object	2	[{"changed": {"fields": ["category"]}}]	18	1
159	2018-01-10 09:06:39.783721+08	90	Iaer object	2	[{"changed": {"fields": ["category"]}}]	18	1
160	2018-01-10 09:06:48.164623+08	120	Iaer object	2	[{"changed": {"fields": ["category"]}}]	18	1
161	2018-01-10 09:06:55.839998+08	122	Iaer object	2	[{"changed": {"fields": ["category"]}}]	18	1
162	2018-01-10 09:07:02.581293+08	57	Iaer object	2	[{"changed": {"fields": ["category"]}}]	18	1
163	2018-01-10 09:07:09.040901+08	78	Iaer object	2	[{"changed": {"fields": ["category"]}}]	18	1
164	2018-01-10 09:07:15.999202+08	79	Iaer object	2	[{"changed": {"fields": ["category"]}}]	18	1
165	2018-01-10 09:14:22.300157+08	218	Iaer object	2	[{"changed": {"fields": ["category"]}}]	18	1
166	2018-01-10 09:14:31.831946+08	204	Iaer object	2	[{"changed": {"fields": ["category"]}}]	18	1
167	2018-01-10 09:14:37.60055+08	202	Iaer object	2	[{"changed": {"fields": ["category"]}}]	18	1
168	2018-01-10 09:14:49.994221+08	187	Iaer object	2	[{"changed": {"fields": ["category"]}}]	18	1
169	2018-01-10 09:14:58.244073+08	157	Iaer object	2	[{"changed": {"fields": ["category"]}}]	18	1
170	2018-01-10 09:15:07.9193+08	145	Iaer object	2	[{"changed": {"fields": ["category"]}}]	18	1
171	2018-01-10 09:15:16.666396+08	144	Iaer object	2	[{"changed": {"fields": ["category"]}}]	18	1
172	2018-01-10 09:15:25.843609+08	118	Iaer object	2	[{"changed": {"fields": ["category"]}}]	18	1
173	2018-01-11 21:41:32.267171+08	218	Iaer object	3		18	1
174	2018-02-19 15:14:11.972584+08	140	RedEnvelope object	3		16	1
175	2018-02-19 15:14:34.194144+08	139	RedEnvelope object	3		16	1
176	2018-02-20 18:20:25.409121+08	314	Iaer object	2	[{"changed": {"fields": ["remark"]}}]	18	1
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ben
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 176, true);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: ben
--

COPY django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	user
4	auth	group
5	contenttypes	contenttype
6	sessions	session
7	authtoken	token
8	babycare	appinfo
9	babycare	like
10	babycare	event
11	babycare	babyuser
12	babycare	loginlog
13	babycare	verify
14	babycare	feedback
15	babycare	comment
16	babycare	redenvelope
18	babycare	iaer
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ben
--

SELECT pg_catalog.setval('django_content_type_id_seq', 18, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: ben
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2017-05-26 16:28:33.264639+08
2	auth	0001_initial	2017-05-26 16:28:33.372451+08
3	admin	0001_initial	2017-05-26 16:28:33.440142+08
4	admin	0002_logentry_remove_auto_add	2017-05-26 16:28:33.466668+08
5	contenttypes	0002_remove_content_type_name	2017-05-26 16:28:33.511678+08
6	auth	0002_alter_permission_name_max_length	2017-05-26 16:28:33.529278+08
7	auth	0003_alter_user_email_max_length	2017-05-26 16:28:33.547924+08
8	auth	0004_alter_user_username_opts	2017-05-26 16:28:33.561652+08
9	auth	0005_alter_user_last_login_null	2017-05-26 16:28:33.577062+08
10	auth	0006_require_contenttypes_0002	2017-05-26 16:28:33.579685+08
11	auth	0007_alter_validators_add_error_messages	2017-05-26 16:28:33.593712+08
12	auth	0008_alter_user_username_max_length	2017-05-26 16:28:33.624266+08
13	authtoken	0001_initial	2017-05-26 16:28:33.658024+08
14	authtoken	0002_auto_20160226_1747	2017-05-26 16:28:33.733906+08
15	sessions	0001_initial	2017-05-26 16:28:33.75598+08
16	babycare	0001_initial	2017-05-26 16:28:36.003975+08
17	babycare	0002_redenvelope	2017-06-18 19:53:55.098877+08
18	babycare	0002_iaer	2017-10-14 16:55:24.146335+08
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ben
--

SELECT pg_catalog.setval('django_migrations_id_seq', 18, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: ben
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
8c4oc1fcqlbq2sr99gjcf2pd2a6r4h5x	Zjg4NTE3MzlhNmMzNTJhNzYwZDEzZjZiNmRjN2Q4NjI1ZWRjMTMwNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjZTNjZmYwNzY0NDA2NzdjNDdkODhjMDBhNTU1MzJjYjZiN2IwYzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-06-09 16:29:06.48297+08
dnhen4gikyi9oe9sb6lp07du1pnm0n32	Zjg4NTE3MzlhNmMzNTJhNzYwZDEzZjZiNmRjN2Q4NjI1ZWRjMTMwNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjZTNjZmYwNzY0NDA2NzdjNDdkODhjMDBhNTU1MzJjYjZiN2IwYzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-06-21 10:13:41.79168+08
ulz6iawp9xn3tni60k5vys1odwospek4	Zjg4NTE3MzlhNmMzNTJhNzYwZDEzZjZiNmRjN2Q4NjI1ZWRjMTMwNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjZTNjZmYwNzY0NDA2NzdjNDdkODhjMDBhNTU1MzJjYjZiN2IwYzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-07-08 08:42:21.434107+08
j14n98mmry821nf03eppdri3a6ks7iyr	Zjg4NTE3MzlhNmMzNTJhNzYwZDEzZjZiNmRjN2Q4NjI1ZWRjMTMwNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjZTNjZmYwNzY0NDA2NzdjNDdkODhjMDBhNTU1MzJjYjZiN2IwYzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-08-10 15:37:16.033751+08
x4b63ba5bp2bziolw2nuy6nsspqs5u7n	Zjg4NTE3MzlhNmMzNTJhNzYwZDEzZjZiNmRjN2Q4NjI1ZWRjMTMwNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjZTNjZmYwNzY0NDA2NzdjNDdkODhjMDBhNTU1MzJjYjZiN2IwYzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-08-19 09:28:49.979641+08
cjlt2bqnxa5xr2xv4rbygafam9u0esv3	Zjg4NTE3MzlhNmMzNTJhNzYwZDEzZjZiNmRjN2Q4NjI1ZWRjMTMwNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjZTNjZmYwNzY0NDA2NzdjNDdkODhjMDBhNTU1MzJjYjZiN2IwYzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-08-30 13:09:10.742477+08
28edmtoyi6m8p1mwju1lxkl18bb3r3cy	Zjg4NTE3MzlhNmMzNTJhNzYwZDEzZjZiNmRjN2Q4NjI1ZWRjMTMwNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjZTNjZmYwNzY0NDA2NzdjNDdkODhjMDBhNTU1MzJjYjZiN2IwYzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-09-05 14:14:17.821626+08
v1t6buldu4a1ef0nopp5fxn4bbl3aiho	Zjg4NTE3MzlhNmMzNTJhNzYwZDEzZjZiNmRjN2Q4NjI1ZWRjMTMwNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjZTNjZmYwNzY0NDA2NzdjNDdkODhjMDBhNTU1MzJjYjZiN2IwYzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-09-14 15:28:37.988596+08
z8qc1p2dj5pdsy7e9hx8xpebesoi20lk	Zjg4NTE3MzlhNmMzNTJhNzYwZDEzZjZiNmRjN2Q4NjI1ZWRjMTMwNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjZTNjZmYwNzY0NDA2NzdjNDdkODhjMDBhNTU1MzJjYjZiN2IwYzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-10-02 09:57:10.098971+08
uaeafsod2n7upli016z6vcwbxhxemzq2	Zjg4NTE3MzlhNmMzNTJhNzYwZDEzZjZiNmRjN2Q4NjI1ZWRjMTMwNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjZTNjZmYwNzY0NDA2NzdjNDdkODhjMDBhNTU1MzJjYjZiN2IwYzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-10-09 11:41:17.277341+08
cogq40tq5k45mtzsrmm84qruab6li2jh	Zjg4NTE3MzlhNmMzNTJhNzYwZDEzZjZiNmRjN2Q4NjI1ZWRjMTMwNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjZTNjZmYwNzY0NDA2NzdjNDdkODhjMDBhNTU1MzJjYjZiN2IwYzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-10-09 13:32:26.982427+08
96fakcfwmcuukg0otp9wk3g3at99oepg	Zjg4NTE3MzlhNmMzNTJhNzYwZDEzZjZiNmRjN2Q4NjI1ZWRjMTMwNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjZTNjZmYwNzY0NDA2NzdjNDdkODhjMDBhNTU1MzJjYjZiN2IwYzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-10-28 16:54:37.192216+08
emprgjr3tqki5jaouad863bi4ob7yyh4	Zjg4NTE3MzlhNmMzNTJhNzYwZDEzZjZiNmRjN2Q4NjI1ZWRjMTMwNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjZTNjZmYwNzY0NDA2NzdjNDdkODhjMDBhNTU1MzJjYjZiN2IwYzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-10-28 17:12:14.816145+08
e9h244eb638frg11iqgauplpvo9qt3f9	Zjg4NTE3MzlhNmMzNTJhNzYwZDEzZjZiNmRjN2Q4NjI1ZWRjMTMwNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjZTNjZmYwNzY0NDA2NzdjNDdkODhjMDBhNTU1MzJjYjZiN2IwYzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-10-28 20:33:54.20908+08
rm34i96sn32tuhxppk14sw4s5cbrzdjr	Zjg4NTE3MzlhNmMzNTJhNzYwZDEzZjZiNmRjN2Q4NjI1ZWRjMTMwNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjZTNjZmYwNzY0NDA2NzdjNDdkODhjMDBhNTU1MzJjYjZiN2IwYzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-11-01 16:53:25.232287+08
h2rdpatb1b09853iktkif7m7cbk1k7vs	Zjg4NTE3MzlhNmMzNTJhNzYwZDEzZjZiNmRjN2Q4NjI1ZWRjMTMwNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjZTNjZmYwNzY0NDA2NzdjNDdkODhjMDBhNTU1MzJjYjZiN2IwYzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-11-04 08:26:22.066241+08
u10uxr1th85v92htm49rl9h6l0v4v3w5	Zjg4NTE3MzlhNmMzNTJhNzYwZDEzZjZiNmRjN2Q4NjI1ZWRjMTMwNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjZTNjZmYwNzY0NDA2NzdjNDdkODhjMDBhNTU1MzJjYjZiN2IwYzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-11-06 11:22:13.927972+08
m3hgl38dbywa2zis6t2igxgj4j0ezwop	Zjg4NTE3MzlhNmMzNTJhNzYwZDEzZjZiNmRjN2Q4NjI1ZWRjMTMwNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjZTNjZmYwNzY0NDA2NzdjNDdkODhjMDBhNTU1MzJjYjZiN2IwYzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-11-29 14:47:45.474352+08
2y0y3l8b8rqgq3449smt58r64kqx57dd	Zjg4NTE3MzlhNmMzNTJhNzYwZDEzZjZiNmRjN2Q4NjI1ZWRjMTMwNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjZTNjZmYwNzY0NDA2NzdjNDdkODhjMDBhNTU1MzJjYjZiN2IwYzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-12-04 09:12:05.971599+08
0901ji80z4nme8aenpnszvc4r5z0zx8g	Zjg4NTE3MzlhNmMzNTJhNzYwZDEzZjZiNmRjN2Q4NjI1ZWRjMTMwNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjZTNjZmYwNzY0NDA2NzdjNDdkODhjMDBhNTU1MzJjYjZiN2IwYzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-12-08 21:49:23.528665+08
mxcx52s3t6o2ldkj60x8yt53r2uc0unf	Zjg4NTE3MzlhNmMzNTJhNzYwZDEzZjZiNmRjN2Q4NjI1ZWRjMTMwNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjZTNjZmYwNzY0NDA2NzdjNDdkODhjMDBhNTU1MzJjYjZiN2IwYzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2018-01-10 20:08:30.628985+08
1hdu792zyzzat8fd5nuktsjmofgmldme	Zjg4NTE3MzlhNmMzNTJhNzYwZDEzZjZiNmRjN2Q4NjI1ZWRjMTMwNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjZTNjZmYwNzY0NDA2NzdjNDdkODhjMDBhNTU1MzJjYjZiN2IwYzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2018-01-23 17:34:07.240673+08
enp5k452852eizjs7hfhb2y29grr8xt0	Zjg4NTE3MzlhNmMzNTJhNzYwZDEzZjZiNmRjN2Q4NjI1ZWRjMTMwNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjZTNjZmYwNzY0NDA2NzdjNDdkODhjMDBhNTU1MzJjYjZiN2IwYzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2018-01-25 21:41:15.246441+08
sppyhdcffbmdcsbl9q9oylvr6fideawg	Zjg4NTE3MzlhNmMzNTJhNzYwZDEzZjZiNmRjN2Q4NjI1ZWRjMTMwNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjZTNjZmYwNzY0NDA2NzdjNDdkODhjMDBhNTU1MzJjYjZiN2IwYzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2018-03-05 15:13:35.883518+08
o50653hus5xvbk0bcustgp96ih3fbqxr	Zjg4NTE3MzlhNmMzNTJhNzYwZDEzZjZiNmRjN2Q4NjI1ZWRjMTMwNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjZTNjZmYwNzY0NDA2NzdjNDdkODhjMDBhNTU1MzJjYjZiN2IwYzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2018-03-13 09:59:57.124276+08
i0suzvpd6a5pvs7krpvv986j32x739oy	Zjg4NTE3MzlhNmMzNTJhNzYwZDEzZjZiNmRjN2Q4NjI1ZWRjMTMwNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjZTNjZmYwNzY0NDA2NzdjNDdkODhjMDBhNTU1MzJjYjZiN2IwYzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2018-04-02 20:46:28.369014+08
\.


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: ben
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: ben
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: ben
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: ben
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: ben
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: ben
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: ben
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: ben
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: ben
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: ben
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: ben
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: ben
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: authtoken_token_pkey; Type: CONSTRAINT; Schema: public; Owner: ben
--

ALTER TABLE ONLY authtoken_token
    ADD CONSTRAINT authtoken_token_pkey PRIMARY KEY (key);


--
-- Name: authtoken_token_user_id_key; Type: CONSTRAINT; Schema: public; Owner: ben
--

ALTER TABLE ONLY authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_key UNIQUE (user_id);


--
-- Name: babycare_appinfo_pkey; Type: CONSTRAINT; Schema: public; Owner: ben
--

ALTER TABLE ONLY babycare_appinfo
    ADD CONSTRAINT babycare_appinfo_pkey PRIMARY KEY (id);


--
-- Name: babycare_babyuser_pkey; Type: CONSTRAINT; Schema: public; Owner: ben
--

ALTER TABLE ONLY babycare_babyuser
    ADD CONSTRAINT babycare_babyuser_pkey PRIMARY KEY (id);


--
-- Name: babycare_comment_pkey; Type: CONSTRAINT; Schema: public; Owner: ben
--

ALTER TABLE ONLY babycare_comment
    ADD CONSTRAINT babycare_comment_pkey PRIMARY KEY (id);


--
-- Name: babycare_event_pkey; Type: CONSTRAINT; Schema: public; Owner: ben
--

ALTER TABLE ONLY babycare_event
    ADD CONSTRAINT babycare_event_pkey PRIMARY KEY (id);


--
-- Name: babycare_feedback_pkey; Type: CONSTRAINT; Schema: public; Owner: ben
--

ALTER TABLE ONLY babycare_feedback
    ADD CONSTRAINT babycare_feedback_pkey PRIMARY KEY (id);


--
-- Name: babycare_iaer_pkey; Type: CONSTRAINT; Schema: public; Owner: ben
--

ALTER TABLE ONLY babycare_iaer
    ADD CONSTRAINT babycare_iaer_pkey PRIMARY KEY (id);


--
-- Name: babycare_like_pkey; Type: CONSTRAINT; Schema: public; Owner: ben
--

ALTER TABLE ONLY babycare_like
    ADD CONSTRAINT babycare_like_pkey PRIMARY KEY (id);


--
-- Name: babycare_loginlog_pkey; Type: CONSTRAINT; Schema: public; Owner: ben
--

ALTER TABLE ONLY babycare_loginlog
    ADD CONSTRAINT babycare_loginlog_pkey PRIMARY KEY (id);


--
-- Name: babycare_redenvelope_pkey; Type: CONSTRAINT; Schema: public; Owner: ben
--

ALTER TABLE ONLY babycare_redenvelope
    ADD CONSTRAINT babycare_redenvelope_pkey PRIMARY KEY (id);


--
-- Name: babycare_verify_pkey; Type: CONSTRAINT; Schema: public; Owner: ben
--

ALTER TABLE ONLY babycare_verify
    ADD CONSTRAINT babycare_verify_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: ben
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: ben
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: ben
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: ben
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: ben
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: ben
--

CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_0e939a4f; Type: INDEX; Schema: public; Owner: ben
--

CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_8373b171; Type: INDEX; Schema: public; Owner: ben
--

CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_417f1b1c; Type: INDEX; Schema: public; Owner: ben
--

CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_0e939a4f; Type: INDEX; Schema: public; Owner: ben
--

CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_e8701ad4; Type: INDEX; Schema: public; Owner: ben
--

CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_8373b171; Type: INDEX; Schema: public; Owner: ben
--

CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_e8701ad4; Type: INDEX; Schema: public; Owner: ben
--

CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: ben
--

CREATE INDEX auth_user_username_6821ab7c_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: authtoken_token_key_10f0b77e_like; Type: INDEX; Schema: public; Owner: ben
--

CREATE INDEX authtoken_token_key_10f0b77e_like ON authtoken_token USING btree (key varchar_pattern_ops);


--
-- Name: babycare_babyuser_e8701ad4; Type: INDEX; Schema: public; Owner: ben
--

CREATE INDEX babycare_babyuser_e8701ad4 ON babycare_babyuser USING btree (user_id);


--
-- Name: babycare_comment_4437cfac; Type: INDEX; Schema: public; Owner: ben
--

CREATE INDEX babycare_comment_4437cfac ON babycare_comment USING btree (event_id);


--
-- Name: babycare_comment_d12af49a; Type: INDEX; Schema: public; Owner: ben
--

CREATE INDEX babycare_comment_d12af49a ON babycare_comment USING btree (baby_id);


--
-- Name: babycare_comment_f2aa0a2c; Type: INDEX; Schema: public; Owner: ben
--

CREATE INDEX babycare_comment_f2aa0a2c ON babycare_comment USING btree (source_comment_id);


--
-- Name: babycare_event_d12af49a; Type: INDEX; Schema: public; Owner: ben
--

CREATE INDEX babycare_event_d12af49a ON babycare_event USING btree (baby_id);


--
-- Name: babycare_feedback_d12af49a; Type: INDEX; Schema: public; Owner: ben
--

CREATE INDEX babycare_feedback_d12af49a ON babycare_feedback USING btree (baby_id);


--
-- Name: babycare_iaer_e8701ad4; Type: INDEX; Schema: public; Owner: ben
--

CREATE INDEX babycare_iaer_e8701ad4 ON babycare_iaer USING btree (user_id);


--
-- Name: babycare_like_4437cfac; Type: INDEX; Schema: public; Owner: ben
--

CREATE INDEX babycare_like_4437cfac ON babycare_like USING btree (event_id);


--
-- Name: babycare_like_d12af49a; Type: INDEX; Schema: public; Owner: ben
--

CREATE INDEX babycare_like_d12af49a ON babycare_like USING btree (baby_id);


--
-- Name: babycare_loginlog_d12af49a; Type: INDEX; Schema: public; Owner: ben
--

CREATE INDEX babycare_loginlog_d12af49a ON babycare_loginlog USING btree (baby_id);


--
-- Name: babycare_redenvelope_d12af49a; Type: INDEX; Schema: public; Owner: ben
--

CREATE INDEX babycare_redenvelope_d12af49a ON babycare_redenvelope USING btree (baby_id);


--
-- Name: babycare_verify_d12af49a; Type: INDEX; Schema: public; Owner: ben
--

CREATE INDEX babycare_verify_d12af49a ON babycare_verify USING btree (baby_id);


--
-- Name: django_admin_log_417f1b1c; Type: INDEX; Schema: public; Owner: ben
--

CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_e8701ad4; Type: INDEX; Schema: public; Owner: ben
--

CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);


--
-- Name: django_session_de54fa62; Type: INDEX; Schema: public; Owner: ben
--

CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: ben
--

CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: ben
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: ben
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: ben
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: ben
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ben
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: ben
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ben
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: authtoken_token_user_id_35299eff_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ben
--

ALTER TABLE ONLY authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_35299eff_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: babycare_babyuser_user_id_a3aed8d8_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ben
--

ALTER TABLE ONLY babycare_babyuser
    ADD CONSTRAINT babycare_babyuser_user_id_a3aed8d8_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: babycare_comm_source_comment_id_7e9e0d8b_fk_babycare_comment_id; Type: FK CONSTRAINT; Schema: public; Owner: ben
--

ALTER TABLE ONLY babycare_comment
    ADD CONSTRAINT babycare_comm_source_comment_id_7e9e0d8b_fk_babycare_comment_id FOREIGN KEY (source_comment_id) REFERENCES babycare_comment(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: babycare_comment_baby_id_5692e7f8_fk_babycare_babyuser_id; Type: FK CONSTRAINT; Schema: public; Owner: ben
--

ALTER TABLE ONLY babycare_comment
    ADD CONSTRAINT babycare_comment_baby_id_5692e7f8_fk_babycare_babyuser_id FOREIGN KEY (baby_id) REFERENCES babycare_babyuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: babycare_comment_event_id_dd13a261_fk_babycare_event_id; Type: FK CONSTRAINT; Schema: public; Owner: ben
--

ALTER TABLE ONLY babycare_comment
    ADD CONSTRAINT babycare_comment_event_id_dd13a261_fk_babycare_event_id FOREIGN KEY (event_id) REFERENCES babycare_event(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: babycare_event_baby_id_cbfba2fd_fk_babycare_babyuser_id; Type: FK CONSTRAINT; Schema: public; Owner: ben
--

ALTER TABLE ONLY babycare_event
    ADD CONSTRAINT babycare_event_baby_id_cbfba2fd_fk_babycare_babyuser_id FOREIGN KEY (baby_id) REFERENCES babycare_babyuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: babycare_feedback_baby_id_fbbc63b9_fk_babycare_babyuser_id; Type: FK CONSTRAINT; Schema: public; Owner: ben
--

ALTER TABLE ONLY babycare_feedback
    ADD CONSTRAINT babycare_feedback_baby_id_fbbc63b9_fk_babycare_babyuser_id FOREIGN KEY (baby_id) REFERENCES babycare_babyuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: babycare_iaer_user_id_4bf3a62d_fk_babycare_babyuser_id; Type: FK CONSTRAINT; Schema: public; Owner: ben
--

ALTER TABLE ONLY babycare_iaer
    ADD CONSTRAINT babycare_iaer_user_id_4bf3a62d_fk_babycare_babyuser_id FOREIGN KEY (user_id) REFERENCES babycare_babyuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: babycare_like_baby_id_cacfa94b_fk_babycare_babyuser_id; Type: FK CONSTRAINT; Schema: public; Owner: ben
--

ALTER TABLE ONLY babycare_like
    ADD CONSTRAINT babycare_like_baby_id_cacfa94b_fk_babycare_babyuser_id FOREIGN KEY (baby_id) REFERENCES babycare_babyuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: babycare_like_event_id_e4584794_fk_babycare_event_id; Type: FK CONSTRAINT; Schema: public; Owner: ben
--

ALTER TABLE ONLY babycare_like
    ADD CONSTRAINT babycare_like_event_id_e4584794_fk_babycare_event_id FOREIGN KEY (event_id) REFERENCES babycare_event(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: babycare_loginlog_baby_id_b7de5fa8_fk_babycare_babyuser_id; Type: FK CONSTRAINT; Schema: public; Owner: ben
--

ALTER TABLE ONLY babycare_loginlog
    ADD CONSTRAINT babycare_loginlog_baby_id_b7de5fa8_fk_babycare_babyuser_id FOREIGN KEY (baby_id) REFERENCES babycare_babyuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: babycare_redenvelope_baby_id_6fb45d26_fk_babycare_babyuser_id; Type: FK CONSTRAINT; Schema: public; Owner: ben
--

ALTER TABLE ONLY babycare_redenvelope
    ADD CONSTRAINT babycare_redenvelope_baby_id_6fb45d26_fk_babycare_babyuser_id FOREIGN KEY (baby_id) REFERENCES babycare_babyuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: babycare_verify_baby_id_426c8def_fk_babycare_babyuser_id; Type: FK CONSTRAINT; Schema: public; Owner: ben
--

ALTER TABLE ONLY babycare_verify
    ADD CONSTRAINT babycare_verify_baby_id_426c8def_fk_babycare_babyuser_id FOREIGN KEY (baby_id) REFERENCES babycare_babyuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_content_type_id_c4bce8eb_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: ben
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_content_type_id_c4bce8eb_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ben
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

