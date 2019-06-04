--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.6
-- Dumped by pg_dump version 9.6.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: pi
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE auth_group OWNER TO pi;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: pi
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_id_seq OWNER TO pi;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pi
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: pi
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_group_permissions OWNER TO pi;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: pi
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_permissions_id_seq OWNER TO pi;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pi
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: pi
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE auth_permission OWNER TO pi;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: pi
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_permission_id_seq OWNER TO pi;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pi
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: pi
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


ALTER TABLE auth_user OWNER TO pi;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: pi
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE auth_user_groups OWNER TO pi;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: pi
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_groups_id_seq OWNER TO pi;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pi
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: pi
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_id_seq OWNER TO pi;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pi
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: pi
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_user_user_permissions OWNER TO pi;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: pi
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_user_permissions_id_seq OWNER TO pi;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pi
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: authtoken_token; Type: TABLE; Schema: public; Owner: pi
--

CREATE TABLE authtoken_token (
    key character varying(40) NOT NULL,
    created timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE authtoken_token OWNER TO pi;

--
-- Name: babycare_appinfo; Type: TABLE; Schema: public; Owner: pi
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


ALTER TABLE babycare_appinfo OWNER TO pi;

--
-- Name: babycare_appinfo_id_seq; Type: SEQUENCE; Schema: public; Owner: pi
--

CREATE SEQUENCE babycare_appinfo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE babycare_appinfo_id_seq OWNER TO pi;

--
-- Name: babycare_appinfo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pi
--

ALTER SEQUENCE babycare_appinfo_id_seq OWNED BY babycare_appinfo.id;


--
-- Name: babycare_babyuser; Type: TABLE; Schema: public; Owner: pi
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


ALTER TABLE babycare_babyuser OWNER TO pi;

--
-- Name: babycare_babyuser_id_seq; Type: SEQUENCE; Schema: public; Owner: pi
--

CREATE SEQUENCE babycare_babyuser_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE babycare_babyuser_id_seq OWNER TO pi;

--
-- Name: babycare_babyuser_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pi
--

ALTER SEQUENCE babycare_babyuser_id_seq OWNED BY babycare_babyuser.id;


--
-- Name: babycare_comment; Type: TABLE; Schema: public; Owner: pi
--

CREATE TABLE babycare_comment (
    id integer NOT NULL,
    text text NOT NULL,
    datetime timestamp with time zone,
    baby_id integer NOT NULL,
    event_id integer NOT NULL,
    source_comment_id integer
);


ALTER TABLE babycare_comment OWNER TO pi;

--
-- Name: babycare_comment_id_seq; Type: SEQUENCE; Schema: public; Owner: pi
--

CREATE SEQUENCE babycare_comment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE babycare_comment_id_seq OWNER TO pi;

--
-- Name: babycare_comment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pi
--

ALTER SEQUENCE babycare_comment_id_seq OWNED BY babycare_comment.id;


--
-- Name: babycare_event; Type: TABLE; Schema: public; Owner: pi
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


ALTER TABLE babycare_event OWNER TO pi;

--
-- Name: babycare_event_id_seq; Type: SEQUENCE; Schema: public; Owner: pi
--

CREATE SEQUENCE babycare_event_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE babycare_event_id_seq OWNER TO pi;

--
-- Name: babycare_event_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pi
--

ALTER SEQUENCE babycare_event_id_seq OWNED BY babycare_event.id;


--
-- Name: babycare_feedback; Type: TABLE; Schema: public; Owner: pi
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


ALTER TABLE babycare_feedback OWNER TO pi;

--
-- Name: babycare_feedback_id_seq; Type: SEQUENCE; Schema: public; Owner: pi
--

CREATE SEQUENCE babycare_feedback_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE babycare_feedback_id_seq OWNER TO pi;

--
-- Name: babycare_feedback_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pi
--

ALTER SEQUENCE babycare_feedback_id_seq OWNED BY babycare_feedback.id;


--
-- Name: babycare_iaer; Type: TABLE; Schema: public; Owner: pi
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


ALTER TABLE babycare_iaer OWNER TO pi;

--
-- Name: babycare_iaer_id_seq; Type: SEQUENCE; Schema: public; Owner: pi
--

CREATE SEQUENCE babycare_iaer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE babycare_iaer_id_seq OWNER TO pi;

--
-- Name: babycare_iaer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pi
--

ALTER SEQUENCE babycare_iaer_id_seq OWNED BY babycare_iaer.id;


--
-- Name: babycare_like; Type: TABLE; Schema: public; Owner: pi
--

CREATE TABLE babycare_like (
    id integer NOT NULL,
    datetime timestamp with time zone,
    baby_id integer NOT NULL,
    event_id integer NOT NULL
);


ALTER TABLE babycare_like OWNER TO pi;

--
-- Name: babycare_like_id_seq; Type: SEQUENCE; Schema: public; Owner: pi
--

CREATE SEQUENCE babycare_like_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE babycare_like_id_seq OWNER TO pi;

--
-- Name: babycare_like_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pi
--

ALTER SEQUENCE babycare_like_id_seq OWNED BY babycare_like.id;


--
-- Name: babycare_loginlog; Type: TABLE; Schema: public; Owner: pi
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


ALTER TABLE babycare_loginlog OWNER TO pi;

--
-- Name: babycare_loginlog_id_seq; Type: SEQUENCE; Schema: public; Owner: pi
--

CREATE SEQUENCE babycare_loginlog_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE babycare_loginlog_id_seq OWNER TO pi;

--
-- Name: babycare_loginlog_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pi
--

ALTER SEQUENCE babycare_loginlog_id_seq OWNED BY babycare_loginlog.id;


--
-- Name: babycare_redenvelope; Type: TABLE; Schema: public; Owner: pi
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


ALTER TABLE babycare_redenvelope OWNER TO pi;

--
-- Name: babycare_redenvelope_id_seq; Type: SEQUENCE; Schema: public; Owner: pi
--

CREATE SEQUENCE babycare_redenvelope_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE babycare_redenvelope_id_seq OWNER TO pi;

--
-- Name: babycare_redenvelope_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pi
--

ALTER SEQUENCE babycare_redenvelope_id_seq OWNED BY babycare_redenvelope.id;


--
-- Name: babycare_verify; Type: TABLE; Schema: public; Owner: pi
--

CREATE TABLE babycare_verify (
    id integer NOT NULL,
    email_verify_code character varying(10),
    phone_verify_code character varying(10),
    created timestamp with time zone,
    baby_id integer NOT NULL
);


ALTER TABLE babycare_verify OWNER TO pi;

--
-- Name: babycare_verify_id_seq; Type: SEQUENCE; Schema: public; Owner: pi
--

CREATE SEQUENCE babycare_verify_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE babycare_verify_id_seq OWNER TO pi;

--
-- Name: babycare_verify_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pi
--

ALTER SEQUENCE babycare_verify_id_seq OWNED BY babycare_verify.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: pi
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


ALTER TABLE django_admin_log OWNER TO pi;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: pi
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_admin_log_id_seq OWNER TO pi;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pi
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: pi
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE django_content_type OWNER TO pi;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: pi
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_content_type_id_seq OWNER TO pi;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pi
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: pi
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE django_migrations OWNER TO pi;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: pi
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_migrations_id_seq OWNER TO pi;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pi
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: pi
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE django_session OWNER TO pi;

--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: pi
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: pi
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: pi
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: pi
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: pi
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: pi
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: babycare_appinfo id; Type: DEFAULT; Schema: public; Owner: pi
--

ALTER TABLE ONLY babycare_appinfo ALTER COLUMN id SET DEFAULT nextval('babycare_appinfo_id_seq'::regclass);


--
-- Name: babycare_babyuser id; Type: DEFAULT; Schema: public; Owner: pi
--

ALTER TABLE ONLY babycare_babyuser ALTER COLUMN id SET DEFAULT nextval('babycare_babyuser_id_seq'::regclass);


--
-- Name: babycare_comment id; Type: DEFAULT; Schema: public; Owner: pi
--

ALTER TABLE ONLY babycare_comment ALTER COLUMN id SET DEFAULT nextval('babycare_comment_id_seq'::regclass);


--
-- Name: babycare_event id; Type: DEFAULT; Schema: public; Owner: pi
--

ALTER TABLE ONLY babycare_event ALTER COLUMN id SET DEFAULT nextval('babycare_event_id_seq'::regclass);


--
-- Name: babycare_feedback id; Type: DEFAULT; Schema: public; Owner: pi
--

ALTER TABLE ONLY babycare_feedback ALTER COLUMN id SET DEFAULT nextval('babycare_feedback_id_seq'::regclass);


--
-- Name: babycare_iaer id; Type: DEFAULT; Schema: public; Owner: pi
--

ALTER TABLE ONLY babycare_iaer ALTER COLUMN id SET DEFAULT nextval('babycare_iaer_id_seq'::regclass);


--
-- Name: babycare_like id; Type: DEFAULT; Schema: public; Owner: pi
--

ALTER TABLE ONLY babycare_like ALTER COLUMN id SET DEFAULT nextval('babycare_like_id_seq'::regclass);


--
-- Name: babycare_loginlog id; Type: DEFAULT; Schema: public; Owner: pi
--

ALTER TABLE ONLY babycare_loginlog ALTER COLUMN id SET DEFAULT nextval('babycare_loginlog_id_seq'::regclass);


--
-- Name: babycare_redenvelope id; Type: DEFAULT; Schema: public; Owner: pi
--

ALTER TABLE ONLY babycare_redenvelope ALTER COLUMN id SET DEFAULT nextval('babycare_redenvelope_id_seq'::regclass);


--
-- Name: babycare_verify id; Type: DEFAULT; Schema: public; Owner: pi
--

ALTER TABLE ONLY babycare_verify ALTER COLUMN id SET DEFAULT nextval('babycare_verify_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: pi
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: pi
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: pi
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: pi
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pi
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: pi
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pi
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: pi
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
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pi
--

SELECT pg_catalog.setval('auth_permission_id_seq', 54, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: pi
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
2	pbkdf2_sha256$30000$nzAqq8taQAaE$y9K4AWOxm2sEaWHmdfOjPjldhpx90H6oNNflUo3NGPk=	\N	f	babycare			babycare.ben@gmail.com	t	t	2017-05-26 08:29:52.490171+00
5	pbkdf2_sha256$30000$eDvdYVfHriZq$RY0V8QCr7dfy2CFl68I4xmDc0Hzt3j4piRNB++6C9oM=	\N	f	lisq			455677560@qq.com	t	t	2017-08-04 07:56:20.326447+00
12	pbkdf2_sha256$30000$8anXT0zuCnFn$BVr7pGXftqsu4kPrfnxlFFE909J/Lg39F7jhguXmUck=	\N	f	hiemma			alloyi@ymail.com	t	t	2018-02-07 03:10:19.580181+00
11	pbkdf2_sha256$100000$FZpWONvoloEo$zyHVaLs08LVFknkurMTOSZrDZIpYxnn+dk9ZC0lKeEY=	\N	f	ben			380668771@qq.com	t	t	2017-10-25 06:02:33.760052+00
8	pbkdf2_sha256$100000$txolWwJFrAOH$k+aVV1A/NfzmutBUg+Az1B5UamcVUGC1enTEvsXPBIU=	\N	f	emily			616897923@qq.com	t	t	2017-10-18 08:59:47.969802+00
1	pbkdf2_sha256$100000$MlCspioqCOPY$2D5mJnB7WoB0SUCNHcWkc6kj6QBBawH2h/K6JPu92mI=	2018-11-16 08:38:10.930749+00	t	admin			benying1988@gmail.com	t	t	2017-05-26 08:28:41+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: pi
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pi
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pi
--

SELECT pg_catalog.setval('auth_user_id_seq', 12, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: pi
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pi
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: authtoken_token; Type: TABLE DATA; Schema: public; Owner: pi
--

COPY authtoken_token (key, created, user_id) FROM stdin;
1272dc0fe06c52383c7a9bdfef33255b940c195b	2017-05-26 08:29:52.530902+00	2
d87fd853962ab5cb95a22d063367c24476a3a4ec	2017-08-04 07:56:20.607313+00	5
a989f981b2a5c4283835e94d9565a7c81ea3a3b8	2017-10-18 08:59:48.007198+00	8
78a3c646f1bd29dc886b1ebc98cc8b81c8c680d6	2017-10-25 06:02:33.797325+00	11
dcd4c45b95575e396dc3404e9e23ddedf1766f8d	2018-02-07 03:10:19.642146+00	12
\.


--
-- Data for Name: babycare_appinfo; Type: TABLE DATA; Schema: public; Owner: pi
--

COPY babycare_appinfo (id, version_name, version_code, version_type, update_info, app_file, datetime) FROM stdin;
5	0.2	2	0	1. 修复红包最后一个不显示\r\n2. 修复用户信息后面2个标签页不能移动	apk/2017-06-19 16:30:09/BabyCare0.2.apk	2017-06-19 08:34:06.348313+00
6	0.3	3	0	修复首页动态不能删除的bug	apk/2017-06-24 08:49:51/BabyCare0.3.apk	2017-06-24 00:49:51.623847+00
\.


--
-- Name: babycare_appinfo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pi
--

SELECT pg_catalog.setval('babycare_appinfo_id_seq', 6, true);


--
-- Data for Name: babycare_babyuser; Type: TABLE DATA; Schema: public; Owner: pi
--

COPY babycare_babyuser (id, baby_name, phone, gender, profile, type, region, locale, whats_up, zone, birth, hobbies, highlighted, created, modified, is_email_activate, is_phone_activate, user_id) FROM stdin;
1	嘟嘟	\N	0	https://bensbabycare.oss-cn-hangzhou.aliyuncs.com/babycare/profile/babycare20170616163521_profile.jpg	0	\N	\N	\N	Asia/Shanghai	\N	\N	\N	\N	2017-06-16 08:35:21.743079+00	f	f	2
4	test	\N	0	\N	0	\N	\N	\N	Asia/Shanghai	\N	\N	\N	\N	2017-08-04 07:56:20.591056+00	f	f	5
7	嘟嘟	\N	0	\N	0	\N	\N	\N	Asia/Shanghai	\N	\N	\N	\N	2017-10-18 08:59:48.004229+00	f	f	8
10	ben	\N	2	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	2017-10-25 06:02:33.794502+00	f	f	11
11	E	\N	0	\N	0	\N	\N	\N	America/Toronto	\N	\N	\N	2018-02-07 03:10:19.647069+00	2018-02-07 03:12:23.306105+00	f	f	12
\.


--
-- Name: babycare_babyuser_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pi
--

SELECT pg_catalog.setval('babycare_babyuser_id_seq', 11, true);


--
-- Data for Name: babycare_comment; Type: TABLE DATA; Schema: public; Owner: pi
--

COPY babycare_comment (id, text, datetime, baby_id, event_id, source_comment_id) FROM stdin;
\.


--
-- Name: babycare_comment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pi
--

SELECT pg_catalog.setval('babycare_comment_id_seq', 1, true);


--
-- Data for Name: babycare_event; Type: TABLE DATA; Schema: public; Owner: pi
--

COPY babycare_event (id, type, title, content, image1, image2, image3, image4, image5, image6, image7, image8, image9, video_url, video_width, video_height, video_thumbnail, created, modified, baby_id) FROM stdin;
2	0	\N	9点16分，经历255天的等待，24小时的镇痛，终于在这个666（6月10号，周六，五月十六）的日子迎来了宝宝。\n伟大的妈妈！	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2017-06-10 13:33:55.351245+00	2017-06-10 13:33:55.351683+00	1
4	0		回家咯	https://bensbabycare.oss-cn-hangzhou.aliyuncs.com/babycare/image/babycare20170614100000_event.jpg										\N	\N		2017-06-14 02:00:00.824409+00	2017-06-16 08:46:45.69651+00	1
3	0		谁家的小女婿啊？	https://bensbabycare.oss-cn-hangzhou.aliyuncs.com/babycare/image/babycare20170611073837_event.jpg										\N	\N		2017-06-10 23:38:37.875067+00	2017-06-16 08:47:05.613294+00	1
1	0		人生中最开心的住院和手术就应该是这个了吧！\r\n愿一切顺利！	https://bensbabycare.oss-cn-hangzhou.aliyuncs.com/babycare/image/babycare20170610190210_event.jpg										\N	\N		2017-06-10 11:02:10.336044+00	2017-06-16 08:47:23.995288+00	1
19	0	\N	\N	https://bensbabycare.oss-cn-hangzhou.aliyuncs.com/babycare/image/babycare20170628145543_event.jpg	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2017-06-28 06:55:43.060458+00	2017-06-28 06:55:43.17013+00	1
20	0	\N	宝宝睡觉发出各种怪声，各种伸手和弹腿，原来是胀气。抚摸肚子，然后发了几个P就好多了	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2017-06-28 19:23:13.254431+00	2017-06-28 19:23:13.254843+00	1
21	0	\N	哭作宝满月啦！	https://bensbabycare.oss-cn-hangzhou.aliyuncs.com/babycare/image/babycare20170710092543_event.jpg	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2017-07-10 01:25:43.242209+00	2017-07-10 01:25:43.524517+00	1
29	0	\N	十一第一次翻身	https://bensbabycare.oss-cn-hangzhou.aliyuncs.com/babycare/image/babycare20171001150329_event.jpg	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2017-10-01 07:03:29.550188+00	2017-10-01 07:03:29.782307+00	1
30	0	\N	12月1号发现长牙啦！	https://bensbabycare.oss-cn-hangzhou.aliyuncs.com/babycare/image/babycare20171203111341_event.jpg	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2017-12-03 03:13:41.845936+00	2017-12-03 03:13:54.511638+00	1
31	0	\N	开荤啦！	https://bensbabycare.oss-cn-hangzhou.aliyuncs.com/babycare/image/babycare20171203111416_event.jpg	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2017-12-03 03:14:16.32671+00	2017-12-03 03:14:31.603369+00	1
32	0	\N	25号长了上牙	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2017-12-28 10:55:45.876287+00	2017-12-28 10:55:45.876666+00	1
\.


--
-- Name: babycare_event_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pi
--

SELECT pg_catalog.setval('babycare_event_id_seq', 32, true);


--
-- Data for Name: babycare_feedback; Type: TABLE DATA; Schema: public; Owner: pi
--

COPY babycare_feedback (id, description, image1, image2, image3, image4, image5, image6, image7, image8, image9, created, modified, baby_id) FROM stdin;
\.


--
-- Name: babycare_feedback_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pi
--

SELECT pg_catalog.setval('babycare_feedback_id_seq', 3, true);


--
-- Data for Name: babycare_iaer; Type: TABLE DATA; Schema: public; Owner: pi
--

COPY babycare_iaer (id, money, category, money_type, remark, created, type, chart_type, format, datetime, description, timing, user_id) FROM stdin;
32	-55	餐饮	0	老婆大人零食	2017-10-26 01:03:24.445768+00	0	0	\N	2017-10-26 01:03:24.446111+00	\N	\N	10
33	-279	其他	0	树莓派3b	2017-10-26 02:03:31.877377+00	0	0	\N	2017-10-26 02:05:28.234898+00	\N	\N	10
31	-179	其他	0	BroadLink RM pro	2017-10-25 06:10:01.284436+00	0	0	\N	2017-10-26 02:05:36.61402+00	\N	\N	10
37	-159	生活用品	0	电饭煲	2017-11-02 10:40:40.375058+00	0	0	\N	2017-11-02 10:40:40.375373+00	\N	\N	7
38	-100	餐饮	0	老婆大人	2017-11-02 10:40:59.408416+00	0	0	\N	2017-11-02 10:40:59.408886+00	\N	\N	7
39	-26	餐饮	0	零食	2017-11-02 13:34:58.47793+00	0	0	\N	2017-11-02 13:34:58.478246+00	\N	\N	7
40	-100	生活用品	0	话费	2017-11-03 09:34:42.91856+00	0	0	\N	2017-11-03 09:34:42.918906+00	\N	\N	10
41	-1500	生活用品	0	生活费	2017-11-03 10:39:22.155274+00	0	0	\N	2017-11-03 10:39:22.155587+00	\N	\N	7
42	-36	服饰	0	淘宝	2017-11-03 10:40:30.256204+00	0	0	\N	2017-11-03 10:40:30.256582+00	\N	\N	7
43	-31	餐饮	0	阿香米线	2017-11-04 06:55:39.884817+00	0	0	\N	2017-11-04 06:55:39.88518+00	\N	\N	7
44	-22	餐饮	0	KFC早餐	2017-11-05 01:43:16.61815+00	0	0	\N	2017-11-05 01:43:16.618476+00	\N	\N	7
45	-11	孩子	0	挂号费	2017-11-05 01:43:34.429566+00	0	0	\N	2017-11-05 01:43:34.429934+00	\N	\N	7
46	-183	孩子	0	咳嗽，感冒	2017-11-05 01:44:09.035628+00	0	0	\N	2017-11-05 01:44:09.035994+00	\N	\N	10
47	-17	孩子	0	挂号费	2017-11-05 01:44:42.416552+00	0	0	\N	2017-11-05 01:44:42.416863+00	\N	\N	10
48	-10	餐饮	0	蛋卷	2017-11-05 05:15:42.388377+00	0	0	\N	2017-11-05 05:15:42.388693+00	\N	\N	7
49	-32	餐饮	0	2碗泡馍	2017-11-05 05:28:48.392915+00	0	0	\N	2017-11-05 05:28:48.393286+00	\N	\N	10
51	-72	生活用品	0	眼镜2付	2017-11-05 12:27:33.211475+00	0	0	\N	2017-11-05 12:27:33.211794+00	\N	\N	10
52	-22	生活用品	0	剪头发	2017-11-06 12:04:08.29547+00	0	0	\N	2017-11-06 12:04:08.295809+00	\N	\N	10
53	-38	生活用品	0	雨刮器	2017-11-08 23:10:53.685936+00	0	0	\N	2017-11-08 23:10:53.68625+00	\N	\N	7
54	-30	生活用品	0	高速收费两趟	2017-11-08 23:11:23.498331+00	0	0	\N	2017-11-08 23:11:23.498693+00	\N	\N	7
55	-8	生活用品	0	停车费	2017-11-08 23:11:51.364417+00	0	0	\N	2017-11-08 23:11:51.364732+00	\N	\N	7
56	-36	孩子	0	嘟嘟看医生	2017-11-08 23:12:36.873701+00	0	0	\N	2017-11-08 23:12:36.874015+00	\N	\N	7
58	-25	生活用品	0	高速费	2017-11-10 13:18:42.70278+00	0	0	\N	2017-11-10 13:18:42.703102+00	\N	\N	7
59	-30	餐饮	0	午餐	2017-11-10 13:19:00.028468+00	0	0	\N	2017-11-10 13:19:00.028807+00	\N	\N	7
60	-10	生活用品	0	高速费	2017-11-10 13:19:19.08342+00	0	0	\N	2017-11-10 13:19:19.083805+00	\N	\N	7
61	-1000	生活用品	0	油卡	2017-11-10 13:20:01.886332+00	0	0	\N	2017-11-10 13:20:01.887193+00	\N	\N	7
63	-165	孩子	0	奶瓶，沙茶油，润肤油	2017-11-10 13:22:27.167598+00	0	0	\N	2017-11-10 13:22:27.168064+00	\N	\N	7
64	-304	孩子	0	全棉时代柔纸巾	2017-11-11 01:19:13.957817+00	0	0	\N	2017-11-11 01:19:13.958166+00	\N	\N	7
65	-208	孩子	0	恒温调温器	2017-11-11 01:24:36.159997+00	0	0	\N	2017-11-11 01:24:36.160397+00	\N	\N	7
67	-244	生活用品	0	膳魔师保温杯X2	2017-11-11 01:26:18.38913+00	0	0	\N	2017-11-11 01:26:18.389552+00	\N	\N	7
68	-50	生活用品	0	蓝月亮	2017-11-11 05:38:13.422007+00	0	0	\N	2017-11-11 05:38:13.42233+00	\N	\N	7
70	-103	生活用品	0	食用油3瓶	2017-11-11 05:42:54.766302+00	0	0	\N	2017-11-11 05:42:54.766705+00	\N	\N	7
72	-108	生活用品	0	清风卷纸11x10卷	2017-11-11 05:45:38.708949+00	0	0	\N	2017-11-11 05:45:38.709361+00	\N	\N	7
73	-98	生活用品	0	清风抽纸3包x16	2017-11-11 05:46:25.295459+00	0	0	\N	2017-11-11 05:46:25.295856+00	\N	\N	7
74	-78	生活用品	0	大米5kgx4	2017-11-11 07:53:24.444758+00	0	0	\N	2017-11-11 07:53:24.445241+00	\N	\N	7
76	-15	生活用品	0	高速费用	2017-11-15 00:06:43.355226+00	0	0	\N	2017-11-15 00:06:43.355549+00	\N	\N	7
77	-6	餐饮	0	肠粉	2017-11-15 00:07:07.564757+00	0	0	\N	2017-11-15 00:07:07.56509+00	\N	\N	7
80	-20	生活用品	0	手机壳	2017-11-15 07:18:19.533071+00	0	0	\N	2017-11-15 07:18:19.533351+00	\N	\N	10
81	-18	生活用品	0	手机后盖	2017-11-15 07:18:32.691316+00	0	0	\N	2017-11-15 07:18:32.691633+00	\N	\N	10
82	-100	生活用品	0	妈妈手机充值	2017-11-15 10:40:16.846086+00	0	0	\N	2017-11-15 10:40:16.846685+00	\N	\N	7
83	-13	餐饮	0	甘蔗	2017-11-15 14:02:19.89842+00	0	0	\N	2017-11-15 14:02:19.898771+00	\N	\N	7
84	-91	餐饮	0	三江购物	2017-11-15 14:02:46.166259+00	0	0	\N	2017-11-15 14:02:46.166532+00	\N	\N	7
85	-333	孩子	0	床上7件套	2017-11-16 13:38:27.648406+00	0	0	\N	2017-11-16 13:38:27.648729+00	\N	\N	7
86	-13	餐饮	0	甘蔗	2017-11-17 13:40:02.836566+00	0	0	\N	2017-11-17 13:40:02.836896+00	\N	\N	7
87	-22	餐饮	0	肯德基	2017-11-17 13:40:17.193701+00	0	0	\N	2017-11-17 13:40:17.194029+00	\N	\N	7
88	-9	餐饮	0	水果	2017-11-17 13:40:34.946457+00	0	0	\N	2017-11-17 13:40:34.947048+00	\N	\N	7
89	-102	服饰	0	睡衣	2017-11-18 00:40:07.123313+00	0	0	\N	2017-11-18 00:40:07.123641+00	\N	\N	7
92	-103	餐饮	0	午饭	2017-11-18 06:37:51.283287+00	0	0	\N	2017-11-18 06:37:51.283686+00	\N	\N	7
93	-249	孩子	0	max win连体服	2017-11-18 06:38:29.958686+00	0	0	\N	2017-11-18 06:38:29.959053+00	\N	\N	7
94	-9	生活用品	0	停车费	2017-11-18 06:42:40.055166+00	0	0	\N	2017-11-18 06:42:40.055531+00	\N	\N	7
95	-158	孩子	0	乳钙2盒	2017-11-18 07:15:10.288898+00	0	0	\N	2017-11-18 07:15:10.28933+00	\N	\N	7
96	-350	服饰	0	Jason wood外套	2017-11-18 08:45:59.195976+00	0	0	\N	2017-11-18 08:45:59.196321+00	\N	\N	7
97	-11	餐饮	0	coco奶茶	2017-11-18 08:46:21.210381+00	0	0	\N	2017-11-18 08:46:21.210683+00	\N	\N	7
98	-22	生活用品	0	理发	2017-11-18 23:36:44.214905+00	0	0	\N	2017-11-18 23:36:44.215234+00	\N	\N	7
99	-6	餐饮	0	山东煎饼	2017-11-20 00:02:36.69043+00	0	0	\N	2017-11-20 00:02:36.690787+00	\N	\N	10
34	-105	其他	0	SanDisk TF卡	2017-10-26 02:12:48.612084+00	0	0	\N	2017-11-20 01:19:10.694263+00	\N	\N	10
35	-102	其他	0	micro sd卡和零食	2017-10-27 11:44:36.671843+00	0	0	\N	2017-11-20 01:19:25.309808+00	\N	\N	10
36	-199	其他	0	bandwagon vps	2017-11-02 03:21:48.634341+00	0	0	\N	2017-11-20 01:19:38.378574+00	\N	\N	10
91	-8	其他	0	按摩	2017-11-18 04:40:22.525212+00	0	0	\N	2017-11-20 01:19:49.64188+00	\N	\N	7
57	4627	收入	0	工资	2017-11-08 23:13:20.039306+00	0	0	\N	2018-01-10 01:07:02.580091+00	\N	\N	7
79	1000	收入	0	三江卡	2017-11-15 00:07:52.732903+00	0	0	\N	2018-01-10 01:07:15.997968+00	\N	\N	7
78	1400	收入	0	车险报销	2017-11-15 00:07:32.995334+00	0	0	\N	2018-01-10 01:07:09.039727+00	\N	\N	7
102	-15	生活用品	0	Z5P边角	2017-11-21 04:31:42.831615+00	0	0	\N	2017-11-21 04:31:42.831944+00	\N	\N	10
103	-168	孩子	0	辅食机	2017-11-21 14:07:23.730359+00	0	0	\N	2017-11-21 14:07:23.730773+00	\N	\N	7
104	-34	孩子	0	奶瓶收纳盒	2017-11-21 14:07:41.200737+00	0	0	\N	2017-11-21 14:07:41.201022+00	\N	\N	7
105	-11	餐饮	0	coco奶茶	2017-11-24 13:51:13.178445+00	0	0	\N	2017-11-24 13:51:13.178855+00	\N	\N	7
106	-31	餐饮	0	KFC	2017-11-24 14:00:50.115141+00	0	0	\N	2017-11-24 14:00:50.115433+00	\N	\N	7
107	-16	孩子	0	三角巾	2017-11-24 15:13:42.96698+00	0	0	\N	2017-11-24 15:13:42.967306+00	\N	\N	7
108	-21000	装修	0	半包30%	2017-11-26 13:16:25.384292+00	0	0	\N	2017-11-26 13:16:25.384729+00	\N	\N	10
109	-3500	装修	0	设计	2017-11-26 13:16:40.25851+00	0	0	\N	2017-11-26 13:16:40.258908+00	\N	\N	10
110	-97	服饰	0	背心马甲	2017-11-26 13:18:58.327712+00	0	0	\N	2017-11-26 13:18:58.327987+00	\N	\N	7
111	-29	孩子	0	婴儿鞋	2017-11-26 13:19:16.651793+00	0	0	\N	2017-11-26 13:19:16.652079+00	\N	\N	7
112	-89	孩子	0	储奶袋	2017-11-26 13:21:50.302489+00	0	0	\N	2017-11-26 13:21:50.302932+00	\N	\N	7
113	-213	生活用品	0	大米12袋	2017-11-26 13:23:44.03519+00	0	0	\N	2017-11-26 13:23:44.035564+00	\N	\N	7
115	-48	餐饮	0	三江购物	2017-11-28 12:50:48.398702+00	0	0	\N	2017-11-28 12:50:48.399046+00	\N	\N	7
116	-72	服饰	0	秋衣	2017-11-28 12:51:08.013941+00	0	0	\N	2017-11-28 12:51:08.014432+00	\N	\N	7
117	-8	餐饮	0	冬枣	2017-11-28 12:51:26.321286+00	0	0	\N	2017-11-28 12:51:26.321616+00	\N	\N	7
119	-22	餐饮	0	夜宵米线	2017-11-29 14:42:16.008659+00	0	0	\N	2017-11-29 14:42:16.009003+00	\N	\N	7
123	-46	餐饮	0	老婆大人零食	2017-11-30 12:21:06.089228+00	0	0	\N	2017-11-30 12:21:06.089568+00	\N	\N	7
124	-100	生活用品	0	油费	2017-11-30 12:21:25.781024+00	0	0	\N	2017-11-30 12:21:25.781334+00	\N	\N	7
187	-280	生活用品	0	汽车保养	2017-12-31 13:03:48.405286+00	0	0	\N	2018-01-10 01:14:49.992048+00	\N	\N	7
125	-48	孩子	0	嘉宝米粉	2017-12-02 05:42:42.712851+00	0	0	\N	2017-12-02 05:42:42.713183+00	\N	\N	10
126	-37	生活用品	0	红肠	2017-12-02 05:42:59.119832+00	0	0	\N	2017-12-02 05:42:59.120175+00	\N	\N	10
127	-132	餐饮	0	涌上外婆桥	2017-12-02 05:44:16.221191+00	0	0	\N	2017-12-02 05:44:16.221502+00	\N	\N	7
128	-21	孩子	0	妇儿医院挂号	2017-12-02 05:45:11.503384+00	0	0	\N	2017-12-02 05:45:11.503784+00	\N	\N	7
129	-22	餐饮	0	肯德基早餐	2017-12-02 05:45:49.762954+00	0	0	\N	2017-12-02 05:45:49.763317+00	\N	\N	7
130	-17	生活用品	0	停车费	2017-12-02 05:47:08.46381+00	0	0	\N	2017-12-02 05:47:08.464103+00	\N	\N	7
131	-15	餐饮	0	油赞子	2017-12-03 03:40:54.8752+00	0	0	\N	2017-12-03 03:40:54.875521+00	\N	\N	7
132	-11600	装修	0	1.5+2.5风管机	2017-12-03 03:42:18.959408+00	0	0	\N	2017-12-03 03:42:18.95982+00	\N	\N	10
133	-108	餐饮	0	稻花香米5kg	2017-12-05 07:43:52.450831+00	0	0	\N	2017-12-05 07:43:52.451189+00	\N	\N	10
134	-69	生活用品	0	生活用品	2017-12-05 11:37:46.098004+00	0	0	\N	2017-12-05 11:37:46.098356+00	\N	\N	10
135	-27	餐饮	0	零食	2017-12-05 12:43:51.993112+00	0	0	\N	2017-12-05 12:43:51.993447+00	\N	\N	10
136	-1500	生活用品	0	生活费	2017-12-06 14:34:08.039676+00	0	0	\N	2017-12-06 14:34:08.040009+00	\N	\N	7
137	-13	餐饮	0	甘蔗	2017-12-06 14:34:23.461944+00	0	0	\N	2017-12-06 14:34:23.462281+00	\N	\N	7
138	-27	餐饮	0	五斤锅巴	2017-12-06 14:34:41.155732+00	0	0	\N	2017-12-06 14:34:41.156065+00	\N	\N	7
139	-18	生活用品	0	生活用品	2017-12-06 14:34:56.134455+00	0	0	\N	2017-12-06 14:34:56.134804+00	\N	\N	7
140	-226	餐饮	0	柠檬泰	2017-12-09 06:34:05.884473+00	0	0	\N	2017-12-09 06:34:05.88487+00	\N	\N	10
141	-5	生活用品	0	西瓜霜含片	2017-12-09 13:16:45.732218+00	0	0	\N	2017-12-09 13:16:45.732603+00	\N	\N	7
142	-58	孩子	0	围嘴	2017-12-09 13:17:06.558772+00	0	0	\N	2017-12-09 13:17:06.559103+00	\N	\N	7
143	-208	生活用品	0	即热水龙头	2017-12-09 13:18:23.443621+00	0	0	\N	2017-12-09 13:18:23.444004+00	\N	\N	7
146	-6033	装修	0	AO Smith前置+净水器	2017-12-10 07:05:46.270305+00	0	0	\N	2017-12-10 07:05:46.270753+00	\N	\N	10
147	-199	孩子	0	婴儿推车	2017-12-12 11:46:22.204875+00	0	0	\N	2017-12-12 11:46:22.205281+00	\N	\N	7
148	-129	孩子	0	羽绒服+马甲	2017-12-12 11:47:08.680303+00	0	0	\N	2017-12-12 11:47:08.680687+00	\N	\N	7
149	-25	孩子	0	帽子	2017-12-12 11:47:44.100566+00	0	0	\N	2017-12-12 11:47:44.100898+00	\N	\N	7
150	-59	生活用品	0	润唇膏	2017-12-12 11:48:05.134375+00	0	0	\N	2017-12-12 11:48:05.134791+00	\N	\N	7
151	-81	餐饮	0	老婆大人	2017-12-14 14:12:26.929959+00	0	0	\N	2017-12-14 14:12:26.930477+00	\N	\N	7
152	-206	生活用品	0	中石化	2017-12-14 14:13:04.693198+00	0	0	\N	2017-12-14 14:13:04.693645+00	\N	\N	7
153	-400	生活用品	0	眼镜	2017-12-14 14:13:18.034112+00	0	0	\N	2017-12-14 14:13:18.034488+00	\N	\N	7
154	-159	生活用品	0	京东生活用品	2017-12-14 14:14:48.661791+00	0	0	\N	2017-12-14 14:14:48.662143+00	\N	\N	7
155	-23	餐饮	0	晚饭	2017-12-14 14:16:12.03599+00	0	0	\N	2017-12-14 14:16:12.036338+00	\N	\N	7
159	-31	餐饮	0	午饭	2017-12-23 11:39:13.399385+00	0	0	\N	2017-12-23 11:39:13.399924+00	\N	\N	7
160	-6	生活用品	0	玻璃水	2017-12-23 11:39:25.949935+00	0	0	\N	2017-12-23 11:39:25.950259+00	\N	\N	7
161	-10	孩子	0	袜子3双	2017-12-23 11:39:59.658231+00	0	0	\N	2017-12-23 11:39:59.658549+00	\N	\N	7
162	-8	生活用品	0	洗衣液	2017-12-23 11:40:18.54884+00	0	0	\N	2017-12-23 11:40:18.549299+00	\N	\N	7
163	-50	餐饮	0	零食	2017-12-23 11:41:00.504886+00	0	0	\N	2017-12-23 11:41:00.505208+00	\N	\N	7
164	-13	餐饮	0	大饼&奶茶	2017-12-23 11:41:29.352431+00	0	0	\N	2017-12-23 11:41:29.352828+00	\N	\N	7
165	-28	生活用品	0	手机壳	2017-12-23 11:43:30.489018+00	0	0	\N	2017-12-23 11:43:30.489379+00	\N	\N	7
166	-19	孩子	0	松紧带	2017-12-23 12:33:17.635992+00	0	0	\N	2017-12-23 12:33:17.636268+00	\N	\N	7
167	-9	生活用品	0	快递	2017-12-23 12:35:04.450666+00	0	0	\N	2017-12-23 12:35:04.450932+00	\N	\N	7
168	-20	生活用品	0	手机充值	2017-12-23 12:36:53.704144+00	0	0	\N	2017-12-23 12:36:53.704426+00	\N	\N	7
169	-10	餐饮	0	苹果	2017-12-23 12:37:22.835202+00	0	0	\N	2017-12-23 12:37:22.835523+00	\N	\N	7
170	-840	生活用品	0	手机充值包一年流量	2017-12-23 12:38:02.416842+00	0	0	\N	2017-12-23 12:38:02.417224+00	\N	\N	7
171	-12	生活用品	0	忘记了	2017-12-23 12:39:15.709404+00	0	0	\N	2017-12-23 12:39:15.709788+00	\N	\N	7
172	-400	装修	0	空调铜管+支架	2017-12-24 10:35:17.730471+00	0	0	\N	2017-12-24 10:35:17.730876+00	\N	\N	10
173	-315	生活用品	0	小米智能家居套装	2017-12-27 12:07:42.574535+00	0	0	\N	2017-12-27 12:07:42.575024+00	\N	\N	10
174	-100	生活用品	0	手机话费	2017-12-27 12:07:55.563934+00	0	0	\N	2017-12-27 12:07:55.564251+00	\N	\N	10
158	-12773	装修	0	瓷砖	2017-12-20 13:48:10.642265+00	0	0	\N	2017-12-27 12:09:47.973206+00	\N	\N	10
175	-21000	装修	0	装修半包30%	2017-12-27 12:10:54.1212+00	0	0	\N	2017-12-27 12:10:54.121525+00	\N	\N	10
176	-7	餐饮	0	甘蔗	2017-12-27 13:43:02.276259+00	0	0	\N	2017-12-27 13:43:02.276618+00	\N	\N	7
177	-5	餐饮	0	包子	2017-12-27 13:43:16.226116+00	0	0	\N	2017-12-27 13:43:16.226441+00	\N	\N	7
178	-101	孩子	0	奶嘴LL3个、牙胶一个	2017-12-27 13:44:12.362474+00	0	0	\N	2017-12-27 13:44:12.362849+00	\N	\N	7
179	-143	孩子	0	膳魔师保温杯	2017-12-27 13:44:48.488481+00	0	0	\N	2017-12-27 13:44:48.48881+00	\N	\N	7
180	-128	孩子	0	保暖衣服一套，一件裤子	2017-12-27 13:45:53.067172+00	0	0	\N	2017-12-27 13:45:53.067517+00	\N	\N	7
181	-12	孩子	0	A D剂	2017-12-27 13:46:23.735085+00	0	0	\N	2017-12-27 13:46:23.735511+00	\N	\N	7
183	-188	餐饮	0	餐饮	2017-12-30 11:29:43.88078+00	0	0	\N	2017-12-30 11:29:43.8811+00	\N	\N	7
184	-13	餐饮	0	午餐	2017-12-31 12:53:34.078949+00	0	0	\N	2017-12-31 12:53:34.079265+00	\N	\N	7
185	-2500	装修	0	奥普吊顶+2个灯	2017-12-31 12:55:05.285167+00	0	0	\N	2017-12-31 12:55:05.285493+00	\N	\N	10
186	-16	餐饮	0	蛋糕	2017-12-31 13:03:17.443866+00	0	0	\N	2017-12-31 13:03:17.444366+00	\N	\N	7
188	-26	孩子	0	磨牙棒	2018-01-01 11:14:20.816682+00	0	0	\N	2018-01-01 11:14:20.817+00	\N	\N	10
189	-5	生活用品	0	停车费	2018-01-01 11:30:41.070043+00	0	0	\N	2018-01-01 11:30:41.070382+00	\N	\N	10
156	11838	收入	0	工资	2017-12-15 14:11:04.518179+00	0	0	\N	2018-01-10 01:06:33.119018+00	\N	\N	10
122	4627	收入	0	工资	2017-11-29 14:44:34.750905+00	0	0	\N	2018-01-10 01:06:55.838788+00	\N	\N	7
157	-66	其他	0	公司圣诞礼物音乐台灯	2017-12-20 13:47:14.323122+00	0	0	\N	2018-01-10 01:14:58.242858+00	\N	\N	10
145	-66	其他	0	新人红包	2017-12-10 01:08:54.604249+00	0	0	\N	2018-01-10 01:15:07.917845+00	\N	\N	10
144	-100	其他	0	泡脚药	2017-12-09 13:19:16.011129+00	0	0	\N	2018-01-10 01:15:16.665164+00	\N	\N	10
118	-55	其他	0	域名benying.com	2017-11-28 12:52:10.876787+00	0	0	\N	2018-01-10 01:15:25.84233+00	\N	\N	10
190	-150	服饰	0	hm衣服	2018-01-01 12:33:01.651728+00	0	0	\N	2018-01-01 12:33:01.652011+00	\N	\N	10
191	-130	餐饮	0	草莓	2018-01-01 12:33:14.219922+00	0	0	\N	2018-01-01 12:33:14.220303+00	\N	\N	10
192	-10	餐饮	0	coco奶茶	2018-01-01 12:33:35.578728+00	0	0	\N	2018-01-01 12:33:35.579058+00	\N	\N	10
193	-40	孩子	0	袜子和衣服	2018-01-01 12:34:13.532851+00	0	0	\N	2018-01-01 12:34:13.533179+00	\N	\N	7
194	-51	餐饮	0	泡芙加米线	2018-01-01 12:34:44.927631+00	0	0	\N	2018-01-01 12:34:44.927903+00	\N	\N	7
195	-22	餐饮	0	肯德基早餐	2018-01-01 12:35:41.646533+00	0	0	\N	2018-01-01 12:35:41.646873+00	\N	\N	7
196	-10	餐饮	0	甘蔗	2018-01-03 12:30:22.760883+00	0	0	\N	2018-01-03 12:30:22.761252+00	\N	\N	7
197	-35	生活用品	0	空调外机储水架	2018-01-03 12:30:53.911462+00	0	0	\N	2018-01-03 12:30:53.911828+00	\N	\N	7
198	-500	生活用品	0	三江卡	2018-01-03 12:31:18.286682+00	0	0	\N	2018-01-03 12:31:18.287149+00	\N	\N	7
199	-190	生活用品	0	加油	2018-01-03 12:31:41.825223+00	0	0	\N	2018-01-03 12:31:41.825649+00	\N	\N	7
201	-40	生活用品	0	理发	2018-01-04 14:28:39.660332+00	0	0	\N	2018-01-04 14:28:39.660684+00	\N	\N	7
203	-229	餐饮	0	自助餐x2	2018-01-05 11:45:47.171477+00	0	0	\N	2018-01-05 11:45:47.171838+00	\N	\N	7
205	-9	餐饮	0	大饼油条豆腐脑x2	2018-01-06 08:18:52.996059+00	0	0	\N	2018-01-06 08:18:52.996406+00	\N	\N	7
206	-230	服饰	0	鞋+两件T恤+围巾	2018-01-06 08:19:41.537133+00	0	0	\N	2018-01-06 08:19:41.537574+00	\N	\N	7
207	-269	孩子	0	连体衣	2018-01-06 08:19:57.956943+00	0	0	\N	2018-01-06 08:19:57.957277+00	\N	\N	7
208	-5	生活用品	0	停车费	2018-01-06 08:20:55.018245+00	0	0	\N	2018-01-06 08:20:55.018523+00	\N	\N	10
209	-100	餐饮	0	螃蟹	2018-01-07 13:41:36.394873+00	0	0	\N	2018-01-07 13:41:36.395299+00	\N	\N	7
210	-24	餐饮	0	山药片7包	2018-01-07 13:42:36.501108+00	0	0	\N	2018-01-07 13:42:36.501432+00	\N	\N	7
211	-22	餐饮	0	粥	2018-01-07 13:44:00.511642+00	0	0	\N	2018-01-07 13:44:00.512014+00	\N	\N	7
212	-75	餐饮	0	老婆大人	2018-01-08 12:28:20.325027+00	0	0	\N	2018-01-08 12:28:20.325361+00	\N	\N	7
213	-5	餐饮	0	臭豆腐	2018-01-08 12:28:30.175709+00	0	0	\N	2018-01-08 12:28:30.176054+00	\N	\N	7
200	200	收入	0	车子刮擦	2018-01-03 12:32:04.313747+00	0	0	\N	2018-01-10 01:06:04.859193+00	\N	\N	7
121	26858	收入	0	2016提成	2017-11-29 14:43:29.540102+00	0	0	\N	2018-01-10 01:06:26.518177+00	\N	\N	7
90	11825	收入	0	工资	2017-11-18 00:42:00.108541+00	0	0	\N	2018-01-10 01:06:39.781986+00	\N	\N	10
120	5095	收入	0	生育保险	2017-11-29 14:43:01.764796+00	0	0	\N	2018-01-10 01:06:48.16224+00	\N	\N	7
254	-39	生活用品	0	药鸡蛋饼矿泉水	2018-01-20 01:56:01.342458+00	0	0	\N	2018-01-20 01:56:01.342755+00	\N	\N	10
204	-830	其他	0	戒指	2018-01-06 08:18:20.947627+00	0	0	\N	2018-01-10 01:14:31.830785+00	\N	\N	10
255	-18	餐饮	0	老北京	2018-01-20 01:56:35.181186+00	0	0	\N	2018-01-20 01:56:35.181551+00	\N	\N	10
220	-1208	生活用品	0	照片打印机	2018-01-10 12:10:45.560806+00	0	0	\N	2018-01-10 12:10:45.561242+00	\N	\N	7
221	-40	餐饮	0	三江购物水香蕉梨	2018-01-10 12:11:22.572949+00	0	0	\N	2018-01-10 12:11:22.573282+00	\N	\N	7
222	-558	生活用品	0	倒车雷达	2018-01-11 13:43:04.043907+00	0	0	\N	2018-01-11 13:43:04.04423+00	\N	\N	7
224	-94	孩子	0	磨牙棒等用品	2018-01-11 13:44:50.320412+00	0	0	\N	2018-01-11 13:44:50.320832+00	\N	\N	7
228	-55	餐饮	0	聚餐	2018-01-12 14:03:19.66514+00	0	0	\N	2018-01-12 14:03:19.665529+00	\N	\N	10
230	4627	收入	0	工资	2018-01-12 14:04:54.582393+00	0	0	\N	2018-01-12 14:04:54.582761+00	\N	\N	7
231	-1400	装修	0	奥普浴霸	2018-01-13 12:27:40.896845+00	0	0	\N	2018-01-13 12:27:40.897187+00	\N	\N	10
232	-9745	装修	0	窗	2018-01-13 12:28:00.891141+00	0	0	\N	2018-01-13 12:28:00.891499+00	\N	\N	10
233	-363	装修	0	雷士筒灯21个	2018-01-13 12:29:56.028854+00	0	0	\N	2018-01-13 12:29:56.029439+00	\N	\N	10
234	-328	餐饮	0	黄记煌	2018-01-13 12:31:10.777542+00	0	0	\N	2018-01-13 12:31:10.777983+00	\N	\N	7
235	-263	孩子	0	max win连体衣+内衣	2018-01-13 12:31:51.722438+00	0	0	\N	2018-01-13 12:31:51.722745+00	\N	\N	7
236	-10	其它	0	停车费	2018-01-13 12:32:15.741016+00	0	0	\N	2018-01-13 12:32:15.741295+00	\N	\N	7
237	-5	孩子	0	泳裤	2018-01-13 12:32:28.113215+00	0	0	\N	2018-01-13 12:32:28.11356+00	\N	\N	7
238	-66	餐饮	0	o2	2018-01-13 12:32:46.633743+00	0	0	\N	2018-01-13 12:32:46.634079+00	\N	\N	7
239	-15	生活用品	0	甘蔗	2018-01-13 12:33:02.702857+00	0	0	\N	2018-01-13 12:33:02.703214+00	\N	\N	7
240	-60	生活用品	0	洗衣	2018-01-13 12:33:20.785578+00	0	0	\N	2018-01-13 12:33:20.785851+00	\N	\N	7
241	-1500	生活用品	0	生活费	2018-01-13 12:33:42.17357+00	0	0	\N	2018-01-13 12:33:42.173966+00	\N	\N	7
242	-5	其它	0	英超直播	2018-01-15 05:31:50.788876+00	0	0	\N	2018-01-15 05:31:50.789208+00	\N	\N	10
243	-51	餐饮	0	肯德基加关东煮	2018-01-15 11:47:47.450392+00	0	0	\N	2018-01-15 11:47:47.450779+00	\N	\N	7
244	-29	生活用品	0	收纳袋	2018-01-15 11:48:29.613415+00	0	0	\N	2018-01-15 11:48:29.613681+00	\N	\N	7
245	-40	服饰	0	毛衣链	2018-01-15 11:48:42.188021+00	0	0	\N	2018-01-15 11:48:42.188371+00	\N	\N	7
246	-299	生活用品	0	echo dot	2018-01-16 02:06:32.958859+00	0	0	\N	2018-01-16 02:06:32.95925+00	\N	\N	10
247	11838	收入	0	工资	2018-01-16 05:09:32.107744+00	0	0	\N	2018-01-16 05:09:32.108031+00	\N	\N	10
248	-269	餐饮	0	榴莲14斤	2018-01-18 11:30:24.710136+00	0	0	\N	2018-01-18 11:30:24.710498+00	\N	\N	10
249	-160	生活用品	0	桌面版板	2018-01-20 01:50:56.560414+00	0	0	\N	2018-01-20 01:50:56.56082+00	\N	\N	7
250	-21	生活用品	0	快递桌架	2018-01-20 01:51:27.258964+00	0	0	\N	2018-01-20 01:51:27.259293+00	\N	\N	7
251	-62	孩子	0	内衣	2018-01-20 01:51:51.8791+00	0	0	\N	2018-01-20 01:51:51.879531+00	\N	\N	7
252	-185	孩子	0	4罐米粉	2018-01-20 01:52:52.004366+00	0	0	\N	2018-01-20 01:52:52.004699+00	\N	\N	7
253	-129	其它	0	小伯伯礼	2018-01-20 01:54:31.572998+00	0	0	\N	2018-01-20 01:54:31.573329+00	\N	\N	7
256	-11	餐饮	0	鸡块	2018-01-20 01:58:58.417546+00	0	0	\N	2018-01-20 01:58:58.417907+00	\N	\N	7
257	4612	收入	0	工资	2018-01-20 01:59:35.501686+00	0	0	\N	2018-01-20 01:59:35.50203+00	\N	\N	7
258	-15	其它	0	停车费	2018-01-23 13:54:13.734796+00	0	0	\N	2018-01-23 13:54:13.735138+00	\N	\N	7
259	-53	餐饮	0	老婆大人	2018-01-23 13:54:31.559062+00	0	0	\N	2018-01-23 13:54:31.559459+00	\N	\N	7
260	-26	餐饮	0	山竹	2018-01-23 13:54:47.799303+00	0	0	\N	2018-01-23 13:54:47.799661+00	\N	\N	7
261	-59	生活用品	0	牙膏牙刷	2018-01-26 13:51:13.588052+00	0	0	\N	2018-01-26 13:51:13.5884+00	\N	\N	7
262	-29	服饰	0	珍珠项链	2018-01-26 13:51:56.319873+00	0	0	\N	2018-01-26 13:51:56.320247+00	\N	\N	7
263	-20	其它	0	公司罚款	2018-01-26 13:54:04.041952+00	0	0	\N	2018-01-26 13:54:04.042485+00	\N	\N	7
264	-679	装修	0	9付50导轨2个挂衣杆	2018-01-26 13:55:42.57114+00	0	0	\N	2018-01-26 13:55:42.571531+00	\N	\N	10
265	-66	餐饮	0	阿香米线	2018-01-27 03:55:50.113236+00	0	0	\N	2018-01-27 03:55:50.113575+00	\N	\N	10
266	-55	餐饮	0	麦当劳	2018-01-28 03:11:57.318761+00	0	0	\N	2018-01-28 03:11:57.319165+00	\N	\N	10
267	-21000	装修	0	装修30%	2018-01-28 06:59:38.120757+00	0	0	\N	2018-01-28 06:59:38.121133+00	\N	\N	10
268	-36	餐饮	0	KFC	2018-01-30 12:50:58.138676+00	0	0	\N	2018-01-30 12:50:58.138973+00	\N	\N	10
269	-55	餐饮	0	宜家	2018-01-30 12:51:18.479903+00	0	0	\N	2018-01-30 12:51:18.480215+00	\N	\N	10
270	-7560	装修	0	油烟机+煤气灶	2018-01-30 12:52:27.24554+00	0	0	\N	2018-01-30 12:52:27.245826+00	\N	\N	10
271	-25	餐饮	0	夜宵	2018-01-30 12:53:27.166761+00	0	0	\N	2018-01-30 12:53:27.16712+00	\N	\N	7
273	-51	孩子	0	磨牙棒2盒	2018-01-30 12:53:47.278521+00	0	0	\N	2018-01-30 12:53:47.2788+00	\N	\N	7
274	-170	餐饮	0	牛奶x3，大米x4	2018-01-30 12:54:34.130476+00	0	0	\N	2018-01-30 12:54:34.130762+00	\N	\N	7
275	-200	生活用品	0	加油	2018-01-30 12:54:55.010847+00	0	0	\N	2018-01-30 12:54:55.011206+00	\N	\N	7
276	-65	生活用品	0	雨刮器x4	2018-01-30 12:55:16.230819+00	0	0	\N	2018-01-30 12:55:16.231169+00	\N	\N	7
277	-22	生活用品	0	挂衣架	2018-01-30 12:56:06.860863+00	0	0	\N	2018-01-30 12:56:06.861119+00	\N	\N	7
278	-23	生活用品	0	云石胶	2018-02-02 12:33:45.198158+00	0	0	\N	2018-02-02 12:33:45.198461+00	\N	\N	7
279	-38	餐饮	0	老婆大人	2018-02-02 12:34:21.369938+00	0	0	\N	2018-02-02 12:34:21.370254+00	\N	\N	7
280	-22	餐饮	0	西瓜	2018-02-02 12:34:32.341006+00	0	0	\N	2018-02-02 12:34:32.341322+00	\N	\N	7
281	-2	餐饮	0	肉串	2018-02-02 12:34:46.432633+00	0	0	\N	2018-02-02 12:34:46.432997+00	\N	\N	7
283	-70	餐饮	0	甜品	2018-02-04 01:40:31.264191+00	0	0	\N	2018-02-04 01:40:31.2645+00	\N	\N	10
284	-16	装修	0	饰面板样品邮费	2018-02-04 01:41:33.596913+00	0	0	\N	2018-02-04 01:41:33.597252+00	\N	\N	10
285	-350	生活用品	0	保养	2018-02-04 06:12:58.076817+00	0	0	\N	2018-02-04 06:12:58.077089+00	\N	\N	10
286	-676	餐饮	0	团圆饭	2018-02-04 12:46:07.901101+00	0	0	\N	2018-02-04 12:46:07.901602+00	\N	\N	10
287	-1840	孩子	0	cybex安全座椅	2018-02-06 02:29:44.744443+00	0	0	\N	2018-02-06 02:29:44.74475+00	\N	\N	10
288	-50	生活用品	0	无限流量卡	2018-02-07 02:15:25.279443+00	0	0	\N	2018-02-07 02:15:25.279927+00	\N	\N	10
289	-27	餐饮	0	KFC	2018-02-07 02:15:38.375999+00	0	0	\N	2018-02-07 02:15:38.376306+00	\N	\N	10
290	-99	生活用品	0	broadlink MP1插排	2018-02-09 06:22:06.732995+00	0	0	\N	2018-02-09 06:22:06.733328+00	\N	\N	10
293	12072	收入	0	工资	2018-02-09 10:11:12.157577+00	0	0	\N	2018-02-09 10:11:12.157909+00	\N	\N	10
294	14666	收入	0	奖金	2018-02-09 10:11:28.913842+00	0	0	\N	2018-02-09 10:11:28.914114+00	\N	\N	10
295	-182	餐饮	0	午餐	2018-02-10 05:04:52.060615+00	0	0	\N	2018-02-10 05:04:52.060962+00	\N	\N	10
296	-100	孩子	0	电炖锅	2018-02-10 23:28:31.012923+00	0	0	\N	2018-02-10 23:28:31.013226+00	\N	\N	7
297	-30	其它	0	停车费＋高速	2018-02-10 23:29:01.710286+00	0	0	\N	2018-02-10 23:29:01.710622+00	\N	\N	7
298	-55	孩子	0	检查费	2018-02-10 23:30:23.914068+00	0	0	\N	2018-02-10 23:30:23.914402+00	\N	\N	7
299	-1000	生活用品	0	烧酒费	2018-02-10 23:31:23.232559+00	0	0	\N	2018-02-10 23:31:23.232817+00	\N	\N	7
300	-20	其它	0	捐款	2018-02-10 23:31:53.473747+00	0	0	\N	2018-02-10 23:31:53.474025+00	\N	\N	7
301	-15	生活用品	0	两瓶矿泉水	2018-02-10 23:33:22.933238+00	0	0	\N	2018-02-10 23:33:22.933579+00	\N	\N	7
302	-109	服饰	0	棉裤	2018-02-10 23:36:07.092754+00	0	0	\N	2018-02-10 23:36:07.093091+00	\N	\N	7
303	-463	服饰	0	一件棉服＋毛线裙	2018-02-10 23:37:51.749042+00	0	0	\N	2018-02-10 23:37:51.74929+00	\N	\N	7
304	-1500	生活用品	0	生活费	2018-02-10 23:38:13.052033+00	0	0	\N	2018-02-10 23:38:13.052377+00	\N	\N	7
305	-30	餐饮	0	KFC午餐	2018-02-13 03:19:29.948934+00	0	0	\N	2018-02-13 03:19:29.949235+00	\N	\N	10
306	-200	服饰	0	新年毛衣	2018-02-13 04:21:42.941808+00	0	0	\N	2018-02-13 04:21:42.942113+00	\N	\N	10
307	15000	收入	0	提成	2018-02-14 05:00:34.440716+00	0	0	\N	2018-02-14 05:00:34.441042+00	\N	\N	7
308	-168	孩子	0	优衣库外套	2018-02-14 05:01:20.372654+00	0	0	\N	2018-02-14 05:01:20.37299+00	\N	\N	7
309	-49	孩子	0	gap毛衣	2018-02-14 05:01:59.557331+00	0	0	\N	2018-02-14 05:01:59.557679+00	\N	\N	7
310	-149	孩子	0	爱婴岛衣外套＋卫衣	2018-02-14 05:02:43.132087+00	0	0	\N	2018-02-14 05:02:43.132399+00	\N	\N	7
311	-17	餐饮	0	火龙果	2018-02-14 05:03:03.50168+00	0	0	\N	2018-02-14 05:03:03.501984+00	\N	\N	7
312	-6	餐饮	0	甜筒	2018-02-14 05:03:24.875836+00	0	0	\N	2018-02-14 05:03:24.87618+00	\N	\N	7
313	-298	服饰	0	羽绒服外套	2018-02-14 05:03:51.849129+00	0	0	\N	2018-02-14 05:03:51.849445+00	\N	\N	7
315	-800	生活用品	0	外婆新年红包	2018-02-16 11:52:52.941886+00	0	0	\N	2018-02-16 11:52:52.942217+00	\N	\N	10
317	-107	餐饮	0	KFC	2018-02-20 10:18:17.045178+00	0	0	\N	2018-02-20 10:18:17.045499+00	\N	\N	7
318	-15	餐饮	0	三江购物	2018-02-20 10:18:38.521651+00	0	0	\N	2018-02-20 10:18:38.521973+00	\N	\N	7
319	-22	餐饮	0	KFC早餐	2018-02-20 10:18:53.413374+00	0	0	\N	2018-02-20 10:18:53.413722+00	\N	\N	7
314	-118	餐饮	0	胖二哥午餐	2018-02-14 05:08:58.264507+00	0	0	\N	2018-02-20 10:20:25.406991+00	\N	\N	7
320	-13	餐饮	0	coco饮料	2018-02-22 23:32:05.49678+00	0	0	\N	2018-02-22 23:32:05.497085+00	\N	\N	7
321	-100	其它	0	电影票	2018-02-22 23:32:38.156281+00	0	0	\N	2018-02-22 23:32:38.156591+00	\N	\N	7
322	-69	孩子	0	安抚奶嘴	2018-02-22 23:33:00.907579+00	0	0	\N	2018-02-22 23:33:00.90789+00	\N	\N	7
323	-23	餐饮	0	老婆大人	2018-02-22 23:33:27.177025+00	0	0	\N	2018-02-22 23:33:27.177334+00	\N	\N	7
324	-115	孩子	0	嘟嘟检查	2018-02-22 23:34:53.854926+00	0	0	\N	2018-02-22 23:34:53.855228+00	\N	\N	7
325	-114	孩子	0	水杯，温奶器，碗－京东	2018-02-22 23:36:27.625311+00	0	0	\N	2018-02-22 23:36:27.625628+00	\N	\N	7
326	-100	孩子	0	两盒星鲨D剂＋一盒美林	2018-02-22 23:37:41.868244+00	0	0	\N	2018-02-22 23:37:41.868614+00	\N	\N	7
327	-78	孩子	0	钙片爱因保	2018-02-22 23:40:03.72919+00	0	0	\N	2018-02-22 23:40:03.729532+00	\N	\N	7
328	-107	餐饮	0	肯德基套餐	2018-02-22 23:40:54.204119+00	0	0	\N	2018-02-22 23:40:54.204368+00	\N	\N	7
329	-41	餐饮	0	欧文蛋糕	2018-02-22 23:42:18.768683+00	0	0	\N	2018-02-22 23:42:18.76899+00	\N	\N	7
330	-45	生活用品	0	手机后盖	2018-02-23 11:10:17.59287+00	0	0	\N	2018-02-23 11:10:17.593196+00	\N	\N	10
331	-81	生活用品	0	鱼缸过滤器	2018-02-23 11:11:01.004435+00	0	0	\N	2018-02-23 11:11:01.004782+00	\N	\N	10
332	-237	孩子	0	小孩看病	2018-02-26 11:01:15.654918+00	0	0	\N	2018-02-26 11:01:15.655254+00	\N	\N	7
333	-47	餐饮	0	欧文蛋糕	2018-02-26 11:01:40.45015+00	0	0	\N	2018-02-26 11:01:40.450476+00	\N	\N	7
334	-20	餐饮	0	草莓	2018-02-26 11:01:51.775254+00	0	0	\N	2018-02-26 11:01:51.775609+00	\N	\N	7
335	-16	餐饮	0	牛肉干	2018-02-26 11:02:02.916571+00	0	0	\N	2018-02-26 11:02:02.916938+00	\N	\N	7
337	-16	孩子	0	灯笼	2018-02-26 11:02:39.948129+00	0	0	\N	2018-02-26 11:02:39.948479+00	\N	\N	7
338	-7	孩子	0	车上遮阳布	2018-02-26 11:02:59.241658+00	0	0	\N	2018-02-26 11:02:59.241984+00	\N	\N	7
340	-200	生活用品	0	加油	2018-02-26 11:04:33.498744+00	0	0	\N	2018-02-26 11:04:33.499101+00	\N	\N	10
341	-3008	生活用品	0	iPad 128G	2018-02-26 11:07:05.490255+00	0	0	\N	2018-02-26 11:07:05.490511+00	\N	\N	10
342	-23	其它	0	鱼食红虫干	2018-02-27 10:14:56.730508+00	0	0	\N	2018-02-27 10:14:56.73084+00	\N	\N	10
343	-139	其它	0	64G micro SD卡	2018-02-27 13:41:19.201086+00	0	0	\N	2018-02-27 13:41:19.201382+00	\N	\N	10
344	-252	其它	0	树莓派3b E14中国版	2018-02-27 13:44:03.927744+00	0	0	\N	2018-02-27 13:44:03.928066+00	\N	\N	10
345	-30	生活用品	0	iPad外套	2018-03-01 10:32:03.418446+00	0	0	\N	2018-03-01 10:32:03.418749+00	\N	\N	10
346	-8	生活用品	0	遮阳帘车子	2018-03-01 13:35:03.062966+00	0	0	\N	2018-03-01 13:35:03.063267+00	\N	\N	7
347	-10	生活用品	0	开水瓶口中子	2018-03-01 13:35:21.828208+00	0	0	\N	2018-03-01 13:35:21.828524+00	\N	\N	7
348	-39	生活用品	0	安全坐椅罩	2018-03-01 13:36:11.426702+00	0	0	\N	2018-03-01 13:36:11.426965+00	\N	\N	7
349	-19	餐饮	0	老婆大人	2018-03-01 13:36:26.502206+00	0	0	\N	2018-03-01 13:36:26.502501+00	\N	\N	7
350	-37	餐饮	0	绿资	2018-03-01 13:36:54.95502+00	0	0	\N	2018-03-01 13:36:54.955374+00	\N	\N	7
351	-198	孩子	0	全面时代餐巾纸24包	2018-03-01 13:39:14.202903+00	0	0	\N	2018-03-01 13:39:14.203256+00	\N	\N	7
352	-14	生活用品	0	钢化膜2张	2018-03-01 13:40:48.251921+00	0	0	\N	2018-03-01 13:40:48.252258+00	\N	\N	7
353	-180	孩子	0	爱他美奶粉	2018-03-03 02:09:43.154262+00	0	0	\N	2018-03-03 02:09:43.15459+00	\N	\N	7
354	-21	其它	0	滴滴	2018-03-03 02:10:03.910005+00	0	0	\N	2018-03-03 02:10:03.910406+00	\N	\N	7
355	-105	生活用品	0	洗发水	2018-03-04 09:12:35.327545+00	0	0	\N	2018-03-04 09:12:35.327836+00	\N	\N	7
356	-185	生活用品	0	华润万家	2018-03-04 09:12:55.169482+00	0	0	\N	2018-03-04 09:12:55.1698+00	\N	\N	7
357	-7000	装修	0	三扇门x1150+5个门套	2018-03-04 09:21:38.465804+00	0	0	\N	2018-03-04 09:21:38.466116+00	\N	\N	10
358	-89	生活用品	0	生活用品	2018-03-09 12:56:50.367298+00	0	0	\N	2018-03-09 12:56:50.367644+00	\N	\N	7
359	-55	餐饮	0	肯德基24＋o216＋鸡本部16	2018-03-09 12:57:56.852463+00	0	0	\N	2018-03-09 12:57:56.852909+00	\N	\N	7
360	-12	生活用品	0	手机壳	2018-03-09 12:59:02.902386+00	0	0	\N	2018-03-09 12:59:02.902712+00	\N	\N	7
361	-200	其它	0	加油	2018-03-09 12:59:33.806153+00	0	0	\N	2018-03-09 12:59:33.806454+00	\N	\N	7
362	-100	孩子	0	书	2018-03-09 13:00:26.596315+00	0	0	\N	2018-03-09 13:00:26.596638+00	\N	\N	7
363	5391	收入	0	工资	2018-03-09 13:01:12.548382+00	0	0	\N	2018-03-09 13:01:12.548767+00	\N	\N	7
364	-300	装修	0	奥普结余	2018-03-10 02:10:31.269358+00	0	0	\N	2018-03-10 02:10:31.269718+00	\N	\N	10
365	-1500	生活用品	0	生活费	2018-03-10 09:50:15.357698+00	0	0	\N	2018-03-10 09:50:15.358051+00	\N	\N	7
366	-20	餐饮	0	草莓	2018-03-10 09:50:27.237722+00	0	0	\N	2018-03-10 09:50:27.238112+00	\N	\N	7
367	-46	餐饮	0	新江厦	2018-03-10 09:51:00.351406+00	0	0	\N	2018-03-10 09:51:00.351764+00	\N	\N	7
368	-15	生活用品	0	高速费	2018-03-11 09:07:48.454885+00	0	0	\N	2018-03-11 09:07:48.455225+00	\N	\N	7
369	-47	生活用品	0	超市	2018-03-12 14:23:47.247469+00	0	0	\N	2018-03-12 14:23:47.247806+00	\N	\N	7
370	-209	生活用品	0	羽毛球拍一副	2018-03-15 06:19:44.5757+00	0	0	\N	2018-03-15 06:19:44.576029+00	\N	\N	10
371	-328	生活用品	0	帐篷	2018-03-15 06:57:09.198035+00	0	0	\N	2018-03-15 06:57:09.198482+00	\N	\N	10
372	12287	收入	0	工资	2018-03-15 07:35:57.670828+00	0	0	\N	2018-03-15 07:35:57.671086+00	\N	\N	10
373	-287	餐饮	0	牛很鲜火锅	2018-03-15 11:56:24.77846+00	0	0	\N	2018-03-15 11:56:24.778818+00	\N	\N	7
374	-6	餐饮	0	肯德基	2018-03-15 11:56:38.43921+00	0	0	\N	2018-03-15 11:56:38.439535+00	\N	\N	7
375	-54	餐饮	0	肯德基24基本部15o215	2018-03-15 11:59:18.651479+00	0	0	\N	2018-03-15 11:59:18.651756+00	\N	\N	7
376	-10	餐饮	0	薯条	2018-03-15 12:11:29.700135+00	0	0	\N	2018-03-15 12:11:29.700493+00	\N	\N	7
377	-69	其它	0	域名	2018-03-16 03:24:13.434151+00	0	0	\N	2018-03-16 03:24:13.434646+00	\N	\N	10
378	-1450	装修	0	开关插座	2018-03-17 04:54:41.99654+00	0	0	\N	2018-03-17 04:54:41.996872+00	\N	\N	10
379	-3798	装修	0	AO Smith热水器	2018-03-17 13:36:41.811631+00	0	0	\N	2018-03-17 13:36:41.811949+00	\N	\N	10
380	-19	餐饮	0	盐水鸡鱿鱼须	2018-03-17 13:38:15.132558+00	0	0	\N	2018-03-17 13:38:15.132848+00	\N	\N	7
381	-84	孩子	0	max win背心	2018-03-17 13:38:43.172773+00	0	0	\N	2018-03-17 13:38:43.173114+00	\N	\N	7
382	-108	孩子	0	米粉面条	2018-03-17 13:39:05.97838+00	0	0	\N	2018-03-17 13:39:05.978844+00	\N	\N	7
383	-399	孩子	0	拍照	2018-03-17 13:39:18.265657+00	0	0	\N	2018-03-17 13:39:18.266032+00	\N	\N	7
384	-22	生活用品	0	理发	2018-03-17 13:42:22.581668+00	0	0	\N	2018-03-17 13:42:22.58209+00	\N	\N	10
385	-100	装修	0	烟道材料费	2018-03-19 09:59:48.935314+00	0	0	\N	2018-03-19 09:59:48.935665+00	\N	\N	10
386	-250	装修	0	燃气灶安装材料费	2018-03-19 10:27:57.656201+00	0	0	\N	2018-03-19 10:27:57.656537+00	\N	\N	10
387	-1200	装修	0	欧琳水槽	2018-03-19 23:58:58.428982+00	0	0	\N	2018-03-19 23:58:58.429294+00	\N	\N	10
388	-58	孩子	0	怡宝矿泉水8瓶	2018-03-22 12:58:01.569206+00	0	0	\N	2018-03-22 12:58:01.569553+00	\N	\N	7
389	-200	其它	0	加油	2018-03-22 12:58:12.825403+00	0	0	\N	2018-03-22 12:58:12.825717+00	\N	\N	7
390	-78	孩子	0	勺子	2018-03-22 12:58:25.745767+00	0	0	\N	2018-03-22 12:58:25.7462+00	\N	\N	7
391	-26	餐饮	0	茶香香	2018-03-22 12:59:02.873751+00	0	0	\N	2018-03-22 12:59:02.874372+00	\N	\N	7
392	-17	孩子	0	帽子	2018-03-22 12:59:59.271301+00	0	0	\N	2018-03-22 12:59:59.271706+00	\N	\N	7
393	-17	孩子	0	帽子	2018-03-22 13:00:00.214408+00	0	0	\N	2018-03-22 13:00:00.214935+00	\N	\N	7
394	5013	收入	0	工资	2018-03-22 13:01:49.268527+00	0	0	\N	2018-03-22 13:01:49.268938+00	\N	\N	7
395	-96	餐饮	0	午餐美蛙	2018-03-24 06:01:49.10461+00	0	0	\N	2018-03-24 06:01:49.104969+00	\N	\N	7
396	-338	服饰	0	上衣＋裤子	2018-03-24 06:02:33.872851+00	0	0	\N	2018-03-24 06:02:33.873276+00	\N	\N	7
397	-157	孩子	0	衣服	2018-03-24 06:02:51.656192+00	0	0	\N	2018-03-24 06:02:51.656585+00	\N	\N	7
398	-60	其它	0	植物园门票	2018-03-25 13:24:12.748699+00	0	0	\N	2018-03-25 13:24:12.749032+00	\N	\N	7
399	-37	餐饮	0	o2	2018-03-25 13:24:36.736021+00	0	0	\N	2018-03-25 13:24:36.737738+00	\N	\N	7
400	-30	餐饮	0	o2	2018-03-25 13:25:03.062174+00	0	0	\N	2018-03-25 13:25:03.062577+00	\N	\N	7
401	-80	孩子	0	米粉＋零食	2018-03-25 13:25:42.922035+00	0	0	\N	2018-03-25 13:25:42.92243+00	\N	\N	7
402	-43	孩子	0	鞋子	2018-03-25 13:26:46.182147+00	0	0	\N	2018-03-25 13:26:46.182532+00	\N	\N	7
403	-103	生活用品	0	MacBook网口转换器	2018-03-26 02:51:47.66997+00	0	0	\N	2018-03-26 02:51:47.670316+00	\N	\N	10
408	-48	餐饮	0	绿姿	2018-03-26 14:05:17.360084+00	0	0	\N	2018-03-26 14:05:17.362404+00	\N	\N	7
409	-14	餐饮	0	老婆大人	2018-03-26 14:05:29.433575+00	0	0	\N	2018-03-26 14:05:29.434831+00	\N	\N	7
410	-179	装修	0	凉霸	2018-03-27 13:02:17.603844+00	0	0	\N	2018-03-27 13:02:17.605481+00	\N	\N	10
411	-15	生活用品	0	勺子筷子	2018-04-04 13:37:34.802246+00	0	0	\N	2018-04-04 13:37:34.803761+00	\N	\N	7
412	-50	服饰	0	裤子	2018-04-04 13:38:05.818666+00	0	0	\N	2018-04-04 13:38:05.820186+00	\N	\N	7
413	-21	服饰	0	袜子3条	2018-04-04 13:38:28.500231+00	0	0	\N	2018-04-04 13:38:28.501488+00	\N	\N	7
414	-25	餐饮	0	美团外卖	2018-04-04 13:38:45.951554+00	0	0	\N	2018-04-04 13:38:45.952801+00	\N	\N	7
415	-309	孩子	0	奶粉零食	2018-04-04 13:39:19.735463+00	0	0	\N	2018-04-04 13:39:19.736783+00	\N	\N	7
416	-112	生活用品	0	电费东兴	2018-04-04 13:39:48.586144+00	0	0	\N	2018-04-04 13:39:48.588253+00	\N	\N	7
417	-6	餐饮	0	肯德基	2018-04-04 13:40:15.752301+00	0	0	\N	2018-04-04 13:40:15.753544+00	\N	\N	7
418	-50	餐饮	0	烧烤	2018-04-04 13:40:29.365793+00	0	0	\N	2018-04-04 13:40:29.367148+00	\N	\N	7
419	-478	孩子	0	儿童围栏	2018-04-04 13:41:20.441538+00	0	0	\N	2018-04-04 13:41:20.442797+00	\N	\N	7
420	-5	餐饮	0	大饼油条	2018-04-04 13:46:26.954467+00	0	0	\N	2018-04-04 13:46:26.955746+00	\N	\N	10
421	-3	餐饮	0	棒冰	2018-04-04 13:46:37.566018+00	0	0	\N	2018-04-04 13:46:37.567364+00	\N	\N	10
422	-350	餐饮	0	烧烤	2018-04-10 13:47:12.537877+00	0	0	\N	2018-04-10 13:47:12.539394+00	\N	\N	7
423	-82	孩子	0	退热贴+两双袜子+小馒头	2018-04-10 13:49:26.814443+00	0	0	\N	2018-04-10 13:49:26.815933+00	\N	\N	7
424	-275	餐饮	0	湘菜	2018-04-10 13:50:02.166762+00	0	0	\N	2018-04-10 13:50:02.168022+00	\N	\N	7
425	-216	孩子	0	被子	2018-04-10 13:50:12.089846+00	0	0	\N	2018-04-10 13:50:12.091098+00	\N	\N	7
426	-35	孩子	0	退热贴	2018-04-10 13:50:54.941713+00	0	0	\N	2018-04-10 13:50:54.94296+00	\N	\N	7
427	-325	孩子	0	看病	2018-04-10 13:52:07.127976+00	0	0	\N	2018-04-10 13:52:07.129364+00	\N	\N	7
428	-60	餐饮	0	西瓜	2018-04-10 13:52:20.227921+00	0	0	\N	2018-04-10 13:52:20.229219+00	\N	\N	7
429	-20	其它	0	停车费	2018-04-10 13:52:43.555896+00	0	0	\N	2018-04-10 13:52:43.557237+00	\N	\N	7
430	-150	孩子	0	奶瓶x2	2018-04-10 13:53:04.063269+00	0	0	\N	2018-04-10 13:53:04.06452+00	\N	\N	7
431	-193	孩子	0	爬行垫	2018-04-10 13:53:31.80604+00	0	0	\N	2018-04-10 13:53:31.807421+00	\N	\N	7
432	-79	孩子	0	尿不湿	2018-04-10 13:53:53.029544+00	0	0	\N	2018-04-10 13:53:53.030789+00	\N	\N	7
433	-39	孩子	0	退热贴	2018-04-10 13:54:05.309074+00	0	0	\N	2018-04-10 13:54:05.310322+00	\N	\N	7
434	-40	孩子	0	退烧药	2018-04-10 13:54:22.217898+00	0	0	\N	2018-04-10 13:54:22.219137+00	\N	\N	7
435	-56	孩子	0	看病	2018-04-11 13:24:32.589568+00	0	0	\N	2018-04-11 13:24:32.591083+00	\N	\N	7
436	-11087	装修	0	地板	2018-04-14 09:21:07.188517+00	0	0	\N	2018-04-14 09:21:07.190016+00	\N	\N	10
437	-17200	装修	0	橱柜，卫生间，阳台，榻榻米门	2018-04-14 09:22:06.8383+00	0	0	\N	2018-04-14 09:22:06.839815+00	\N	\N	10
438	12200	收入	0	工资	2018-04-14 09:24:27.511344+00	0	0	\N	2018-04-14 09:24:27.512592+00	\N	\N	10
439	-23	孩子	0	看骨科	2018-04-20 13:40:51.538313+00	0	0	\N	2018-04-20 13:40:51.53981+00	\N	\N	7
440	-39	孩子	0	饮水杯	2018-04-20 13:45:30.029735+00	0	0	\N	2018-04-20 13:45:30.031243+00	\N	\N	7
441	-27	孩子	0	纱布巾	2018-04-20 13:45:58.142907+00	0	0	\N	2018-04-20 13:45:58.144158+00	\N	\N	7
442	-57	餐饮	0	美团外卖	2018-04-20 13:46:16.464384+00	0	0	\N	2018-04-20 13:46:16.465643+00	\N	\N	7
443	-14	服饰	0	袜子	2018-04-20 13:46:41.428938+00	0	0	\N	2018-04-20 13:46:41.43023+00	\N	\N	7
444	-67	餐饮	0	肯德基coco	2018-04-20 13:47:06.794787+00	0	0	\N	2018-04-20 13:47:06.796034+00	\N	\N	7
445	-636	餐饮	0	阿毛饭店	2018-04-20 13:47:26.419906+00	0	0	\N	2018-04-20 13:47:26.421167+00	\N	\N	7
846	13356	收入	0	工资	2018-10-28 10:50:55.847241+00	0	0	\N	2018-10-28 10:50:55.849809+00	\N	\N	10
446	-108	生活用品	0	大米两袋	2018-04-20 13:48:27.362143+00	0	0	\N	2018-04-20 13:48:27.363408+00	\N	\N	7
447	-151	孩子	0	奶瓶3个	2018-04-20 13:48:51.05561+00	0	0	\N	2018-04-20 13:48:51.056948+00	\N	\N	7
448	-118	生活用品	0	3瓶油	2018-04-20 13:49:19.759266+00	0	0	\N	2018-04-20 13:49:19.760514+00	\N	\N	7
449	-77	孩子	0	12瓶水	2018-04-20 13:50:12.802976+00	0	0	\N	2018-04-20 13:50:12.804252+00	\N	\N	7
450	-799	装修	0	九牧花洒	2018-04-20 13:51:02.933762+00	0	0	\N	2018-04-20 13:51:02.935038+00	\N	\N	10
451	-18	装修	0	平拉手	2018-04-20 13:51:56.518205+00	0	0	\N	2018-04-20 13:51:56.519454+00	\N	\N	10
452	-100	其它	0	罚单	2018-04-20 13:52:15.109223+00	0	0	\N	2018-04-20 13:52:15.111502+00	\N	\N	10
453	-15	其它	0	英超	2018-04-20 13:52:27.68631+00	0	0	\N	2018-04-20 13:52:27.687662+00	\N	\N	10
454	7551	收入	0	工资	2018-04-20 13:52:59.652492+00	0	0	\N	2018-04-20 13:52:59.653779+00	\N	\N	7
455	-3500	其它	0	合资	2018-04-20 13:53:33.061906+00	0	0	\N	2018-04-20 13:53:33.063171+00	\N	\N	7
456	-8	餐饮	0	饮料	2018-04-22 11:14:25.775841+00	0	0	\N	2018-04-22 11:14:25.777471+00	\N	\N	10
457	-143	装修	0	地板尾款	2018-04-22 11:14:41.5846+00	0	0	\N	2018-04-22 11:14:41.585883+00	\N	\N	10
458	-100	孩子	0	医药费	2018-04-22 11:15:37.447203+00	0	0	\N	2018-04-22 11:15:37.44849+00	\N	\N	7
459	-868	餐饮	0	奶粉+零食	2018-04-22 11:16:30.511536+00	0	0	\N	2018-04-22 11:16:30.513033+00	\N	\N	7
460	-20	餐饮	0	串烧	2018-04-22 11:32:42.459873+00	0	0	\N	2018-04-22 11:32:42.461193+00	\N	\N	10
461	-1679	装修	0	yeelight三室一厅灯	2018-04-24 14:08:46.47179+00	0	0	\N	2018-04-24 14:08:46.473347+00	\N	\N	10
462	-239	装修	0	yeelight餐厅灯	2018-04-24 14:09:11.963699+00	0	0	\N	2018-04-24 14:09:11.965999+00	\N	\N	10
463	-53	生活用品	0	蟑螂贴2付	2018-05-01 12:12:24.511682+00	0	0	\N	2018-05-01 12:12:24.513192+00	\N	\N	10
464	-650	其它	0	象山影视城门票5张	2018-05-01 12:14:32.08143+00	0	0	\N	2018-05-01 12:14:32.082942+00	\N	\N	7
465	-3000	生活用品	0	生活费	2018-05-01 13:13:40.78655+00	0	0	\N	2018-05-01 13:13:40.787847+00	\N	\N	7
466	-90	孩子	0	睡衣	2018-05-01 13:14:35.568002+00	0	0	\N	2018-05-01 13:14:35.56926+00	\N	\N	7
467	-74	餐饮	0	零食	2018-05-01 13:15:45.551463+00	0	0	\N	2018-05-01 13:15:45.552719+00	\N	\N	7
468	-216	其它	0	汽车票	2018-05-01 13:16:28.715783+00	0	0	\N	2018-05-01 13:16:28.717118+00	\N	\N	7
469	-312	孩子	0	尿不湿4包	2018-05-01 13:18:02.504041+00	0	0	\N	2018-05-01 13:18:02.505523+00	\N	\N	7
470	-112	孩子	0	喜宝奶粉	2018-05-01 13:18:23.496849+00	0	0	\N	2018-05-01 13:18:23.498121+00	\N	\N	7
471	-556	餐饮	0	华侨豪生自助餐	2018-05-01 13:21:34.653436+00	0	0	\N	2018-05-01 13:21:34.654697+00	\N	\N	7
472	-3500	装修	0	大理石	2018-05-06 10:23:12.695054+00	0	0	\N	2018-05-06 10:23:12.696797+00	\N	\N	10
473	-200	生活用品	0	加油	2018-05-06 12:20:47.879675+00	0	0	\N	2018-05-06 12:20:47.881168+00	\N	\N	7
474	-22	餐饮	0	水果	2018-05-06 12:20:58.855182+00	0	0	\N	2018-05-06 12:20:58.856548+00	\N	\N	7
475	-22	餐饮	0	茶香香	2018-05-06 12:21:13.873467+00	0	0	\N	2018-05-06 12:21:13.874717+00	\N	\N	7
476	-300	其它	0	KTV	2018-05-06 12:21:35.431676+00	0	0	\N	2018-05-06 12:21:35.432925+00	\N	\N	7
477	-19	餐饮	0	饮料	2018-05-06 12:21:47.658175+00	0	0	\N	2018-05-06 12:21:47.659425+00	\N	\N	7
478	-28	生活用品	0	袖套	2018-05-06 12:21:57.732779+00	0	0	\N	2018-05-06 12:21:57.735142+00	\N	\N	7
479	-71	孩子	0	衣服	2018-05-06 12:22:08.361758+00	0	0	\N	2018-05-06 12:22:08.363194+00	\N	\N	7
480	-98	生活用品	0	电费	2018-05-06 12:22:26.616637+00	0	0	\N	2018-05-06 12:22:26.617916+00	\N	\N	7
481	-108	服饰	0	裙子	2018-05-06 12:22:53.074198+00	0	0	\N	2018-05-06 12:22:53.07547+00	\N	\N	7
482	-4833	其它	0	车保	2018-05-06 12:23:08.560328+00	0	0	\N	2018-05-06 12:23:08.561772+00	\N	\N	7
483	-42	餐饮	0	串烧	2018-05-06 12:23:33.841652+00	0	0	\N	2018-05-06 12:23:33.842909+00	\N	\N	7
484	-10	生活用品	0	水费	2018-05-06 12:24:11.863503+00	0	0	\N	2018-05-06 12:24:11.86476+00	\N	\N	7
485	-76	生活用品	0	超市	2018-05-06 12:24:36.882661+00	0	0	\N	2018-05-06 12:24:36.883972+00	\N	\N	7
486	-66	服饰	0	双肩包	2018-05-06 12:24:55.280284+00	0	0	\N	2018-05-06 12:24:55.281534+00	\N	\N	7
487	-10	生活用品	0	锅盖把手	2018-05-06 12:25:11.987785+00	0	0	\N	2018-05-06 12:25:11.989054+00	\N	\N	7
488	-2713	装修	0	衣柜门	2018-05-06 12:25:49.255789+00	0	0	\N	2018-05-06 12:25:49.257152+00	\N	\N	10
489	-18	餐饮	0	茶香香	2018-05-06 12:32:56.190693+00	0	0	\N	2018-05-06 12:32:56.191981+00	\N	\N	10
491	-220	孩子	0	奶粉	2018-05-07 13:50:49.155266+00	0	0	\N	2018-05-07 13:50:49.15684+00	\N	\N	7
492	-578	装修	0	台盆	2018-05-07 13:51:16.266137+00	0	0	\N	2018-05-07 13:51:16.267542+00	\N	\N	10
493	-300	装修	0	门锁	2018-05-07 13:53:01.774947+00	0	0	\N	2018-05-07 13:53:01.776237+00	\N	\N	10
494	-58	餐饮	0	零食	2018-05-09 14:00:12.46867+00	0	0	\N	2018-05-09 14:00:12.470451+00	\N	\N	10
495	-70	餐饮	0	水果	2018-05-09 14:02:27.220239+00	0	0	\N	2018-05-09 14:02:27.221743+00	\N	\N	7
496	-26	生活用品	0	门吸	2018-05-09 14:03:08.00259+00	0	0	\N	2018-05-09 14:03:08.003867+00	\N	\N	7
497	-26	生活用品	0	插座	2018-05-09 14:03:22.475558+00	0	0	\N	2018-05-09 14:03:22.476902+00	\N	\N	7
498	-88	生活用品	0	防晒霜X4	2018-05-09 14:08:04.081661+00	0	0	\N	2018-05-09 14:08:04.082938+00	\N	\N	7
499	13128	收入	0	工资	2018-05-15 11:47:20.008748+00	0	0	\N	2018-05-15 11:47:20.010653+00	\N	\N	10
500	-112	餐饮	0	烘培	2018-05-17 12:27:37.513723+00	0	0	\N	2018-05-17 12:27:37.517988+00	\N	\N	7
501	-26	生活用品	0	米桶	2018-05-17 12:28:01.469213+00	0	0	\N	2018-05-17 12:28:01.478183+00	\N	\N	7
502	-7	生活用品	0	头绳	2018-05-17 12:28:14.316813+00	0	0	\N	2018-05-17 12:28:14.318066+00	\N	\N	7
503	-135	孩子	0	夏装T恤	2018-05-17 12:29:37.873462+00	0	0	\N	2018-05-17 12:29:37.874722+00	\N	\N	7
504	-196	生活用品	0	水费	2018-05-17 12:30:05.406064+00	0	0	\N	2018-05-17 12:30:05.407327+00	\N	\N	7
505	-20	餐饮	0	棒冰	2018-05-17 12:31:15.433867+00	0	0	\N	2018-05-17 12:31:15.435397+00	\N	\N	7
506	-37	餐饮	0	荔枝	2018-05-17 12:31:26.546622+00	0	0	\N	2018-05-17 12:31:26.547872+00	\N	\N	7
507	-466	孩子	0	6罐奶粉	2018-05-17 12:32:14.885832+00	0	0	\N	2018-05-17 12:32:14.887084+00	\N	\N	7
508	-38	餐饮	0	零食	2018-05-20 07:37:28.38857+00	0	0	\N	2018-05-20 07:37:28.390099+00	\N	\N	10
509	-22	生活用品	0	插座	2018-05-22 13:07:24.424818+00	0	0	\N	2018-05-22 13:07:24.426356+00	\N	\N	7
510	-59	生活用品	0	伸缩杆	2018-05-22 13:07:54.25265+00	0	0	\N	2018-05-22 13:07:54.254167+00	\N	\N	7
511	-35	孩子	0	理发加游泳裤	2018-05-22 13:08:25.924356+00	0	0	\N	2018-05-22 13:08:25.925614+00	\N	\N	7
512	-61	餐饮	0	春饼	2018-05-22 13:08:43.673408+00	0	0	\N	2018-05-22 13:08:43.6747+00	\N	\N	7
513	-10	其它	0	停车费	2018-05-22 13:08:56.520689+00	0	0	\N	2018-05-22 13:08:56.521966+00	\N	\N	7
514	-51	生活用品	0	美购超市	2018-05-22 13:09:34.53729+00	0	0	\N	2018-05-22 13:09:34.538567+00	\N	\N	7
515	-300	其它	0	加油	2018-05-22 13:09:47.310882+00	0	0	\N	2018-05-22 13:09:47.312184+00	\N	\N	7
516	-9	其它	0	电影票	2018-05-22 13:10:06.379481+00	0	0	\N	2018-05-22 13:10:06.380841+00	\N	\N	7
517	-276	餐饮	0	韩宫宴烧烤	2018-05-22 13:10:50.419631+00	0	0	\N	2018-05-22 13:10:50.42095+00	\N	\N	7
518	-113	生活用品	0	餐巾纸	2018-05-22 13:11:48.789755+00	0	0	\N	2018-05-22 13:11:48.791037+00	\N	\N	7
519	-74	生活用品	0	大米	2018-05-22 13:12:08.89877+00	0	0	\N	2018-05-22 13:12:08.900308+00	\N	\N	7
520	-46	餐饮	0	干脆面	2018-05-22 13:12:23.742701+00	0	0	\N	2018-05-22 13:12:23.743973+00	\N	\N	7
521	5391	收入	0	工资	2018-05-22 13:12:56.700776+00	0	0	\N	2018-05-22 13:12:56.702042+00	\N	\N	7
522	-9	生活用品	0	电影票	2018-05-22 13:15:30.57712+00	0	0	\N	2018-05-22 13:15:30.578419+00	\N	\N	10
523	-54	生活用品	0	补漆笔	2018-05-24 13:06:48.395219+00	0	0	\N	2018-05-24 13:06:48.396733+00	\N	\N	10
524	-216	生活用品	0	帘子	2018-05-24 13:09:22.88405+00	0	0	\N	2018-05-24 13:09:22.885571+00	\N	\N	7
525	-29	生活用品	0	置物架	2018-05-24 13:09:41.992893+00	0	0	\N	2018-05-24 13:09:41.994253+00	\N	\N	7
526	-21	生活用品	0	小风扇	2018-05-24 13:09:56.93909+00	0	0	\N	2018-05-24 13:09:56.940358+00	\N	\N	7
527	-100	生活用品	0	加油	2018-06-03 12:56:11.651132+00	0	0	\N	2018-06-03 12:56:11.652629+00	\N	\N	10
529	-290	孩子	0	看医生	2018-06-03 12:57:34.259718+00	0	0	\N	2018-06-03 12:57:34.261043+00	\N	\N	10
530	-58	餐饮	0	欧文蛋糕	2018-06-03 12:57:49.961772+00	0	0	\N	2018-06-03 12:57:49.963039+00	\N	\N	10
531	-100	生活用品	0	手机充值	2018-06-03 12:58:10.882818+00	0	0	\N	2018-06-03 12:58:10.884114+00	\N	\N	10
532	-45	生活用品	0	高速费	2018-06-03 12:58:52.585197+00	0	0	\N	2018-06-03 12:58:52.586474+00	\N	\N	10
533	-50	餐饮	0	绿姿	2018-06-05 12:39:09.778941+00	0	0	\N	2018-06-05 12:39:09.780502+00	\N	\N	7
534	-19	生活用品	0	灯头带线	2018-06-05 12:40:01.590713+00	0	0	\N	2018-06-05 12:40:01.593493+00	\N	\N	7
535	-14	生活用品	0	窗帘挂钩	2018-06-05 12:40:22.796344+00	0	0	\N	2018-06-05 12:40:22.797745+00	\N	\N	7
536	-373	服饰	0	服饰鞋子	2018-06-05 12:42:46.134014+00	0	0	\N	2018-06-05 12:42:46.136336+00	\N	\N	7
537	-57	生活用品	0	超市	2018-06-05 12:43:43.463521+00	0	0	\N	2018-06-05 12:43:43.464793+00	\N	\N	7
538	-50	餐饮	0	重庆小面	2018-06-05 12:44:07.658109+00	0	0	\N	2018-06-05 12:44:07.659374+00	\N	\N	7
539	-103	生活用品	0	电费	2018-06-05 12:44:41.62788+00	0	0	\N	2018-06-05 12:44:41.629153+00	\N	\N	7
540	-59	餐饮	0	茶香香	2018-06-05 12:45:29.729047+00	0	0	\N	2018-06-05 12:45:29.730324+00	\N	\N	7
541	-208	生活用品	0	大米四袋	2018-06-05 12:48:16.109593+00	0	0	\N	2018-06-05 12:48:16.110851+00	\N	\N	7
542	-161	孩子	0	尿不湿	2018-06-05 12:48:32.80351+00	0	0	\N	2018-06-05 12:48:32.804855+00	\N	\N	7
543	-346	其它	0	其他	2018-06-05 12:50:08.914915+00	0	0	\N	2018-06-05 12:50:08.916171+00	\N	\N	7
544	-230	生活用品	0	加油	2018-06-05 12:51:54.82255+00	0	0	\N	2018-06-05 12:51:54.823892+00	\N	\N	7
545	-200	生活用品	0	加油	2018-06-05 12:52:16.601965+00	0	0	\N	2018-06-05 12:52:16.603232+00	\N	\N	7
546	-67	其它	0	脚垫	2018-06-05 12:53:03.388615+00	0	0	\N	2018-06-05 12:53:03.389882+00	\N	\N	7
547	-12	生活用品	0	水桶	2018-06-05 12:53:23.543928+00	0	0	\N	2018-06-05 12:53:23.545179+00	\N	\N	7
548	-5200	装修	0	移门	2018-06-07 12:56:35.577261+00	0	0	\N	2018-06-07 12:56:35.578796+00	\N	\N	10
549	-106	其它	0	鱼类用品	2018-06-07 12:58:20.492779+00	0	0	\N	2018-06-07 12:58:20.494296+00	\N	\N	10
550	-2	生活用品	0	吸管	2018-06-10 08:35:19.791576+00	0	0	\N	2018-06-10 08:35:19.793127+00	\N	\N	10
551	-10	餐饮	0	一点点奶茶	2018-06-10 08:35:35.756307+00	0	0	\N	2018-06-10 08:35:35.758021+00	\N	\N	10
552	-108	孩子	0	尿不湿	2018-06-10 08:35:55.335938+00	0	0	\N	2018-06-10 08:35:55.337289+00	\N	\N	10
553	-26	餐饮	0	串烧	2018-06-10 08:36:12.012742+00	0	0	\N	2018-06-10 08:36:12.014001+00	\N	\N	10
554	-5	餐饮	0	可乐	2018-06-10 08:36:31.122883+00	0	0	\N	2018-06-10 08:36:31.124145+00	\N	\N	10
555	-39	生活用品	0	靠垫	2018-06-10 08:37:01.184432+00	0	0	\N	2018-06-10 08:37:01.185683+00	\N	\N	10
556	-700	餐饮	0	儿子生日聚餐	2018-06-10 08:38:14.895493+00	0	0	\N	2018-06-10 08:38:14.8968+00	\N	\N	7
557	-300	餐饮	0	生日蛋糕	2018-06-10 08:38:35.292313+00	0	0	\N	2018-06-10 08:38:35.293585+00	\N	\N	7
558	-300	生活用品	0	包包	2018-06-10 08:38:59.881294+00	0	0	\N	2018-06-10 08:38:59.882593+00	\N	\N	7
559	-1020	生活用品	0	手表	2018-06-10 08:39:13.337919+00	0	0	\N	2018-06-10 08:39:13.339197+00	\N	\N	7
560	-152	生活用品	0	椅子	2018-06-10 08:39:57.396621+00	0	0	\N	2018-06-10 08:39:57.398001+00	\N	\N	7
561	-77	孩子	0	零食	2018-06-10 08:40:23.420434+00	0	0	\N	2018-06-10 08:40:23.421689+00	\N	\N	7
562	-588	装修	0	毛巾架	2018-06-10 08:43:02.533797+00	0	0	\N	2018-06-10 08:43:02.535101+00	\N	\N	10
563	-80	装修	0	浴巾架	2018-06-10 08:43:23.160521+00	0	0	\N	2018-06-10 08:43:23.161779+00	\N	\N	10
564	-110	装修	0	雷士阳台灯	2018-06-10 08:43:57.011544+00	0	0	\N	2018-06-10 08:43:57.012805+00	\N	\N	10
565	-40	装修	0	空调开关X2	2018-06-10 08:44:13.223936+00	0	0	\N	2018-06-10 08:44:13.225195+00	\N	\N	10
567	-1000	装修	0	背景墙	2018-06-10 08:46:01.279849+00	0	0	\N	2018-06-10 08:46:01.281216+00	\N	\N	10
568	-4000	装修	0	窗帘	2018-06-10 08:46:12.800218+00	0	0	\N	2018-06-10 08:46:12.802504+00	\N	\N	10
569	-3000	装修	0	墙纸	2018-06-11 13:13:10.911937+00	0	0	\N	2018-06-11 13:13:10.913689+00	\N	\N	10
570	-1000	生活用品	0	生活费	2018-06-11 13:13:28.370153+00	0	0	\N	2018-06-11 13:13:28.37188+00	\N	\N	7
571	-121	孩子	0	小孩零食	2018-06-11 13:14:18.066948+00	0	0	\N	2018-06-11 13:14:18.068237+00	\N	\N	7
572	-28	生活用品	0	窗帘配件	2018-06-11 13:16:09.166077+00	0	0	\N	2018-06-11 13:16:09.167482+00	\N	\N	7
574	-153	孩子	0	奶瓶2个	2018-06-15 12:59:11.921434+00	0	0	\N	2018-06-15 12:59:11.922719+00	\N	\N	7
575	-25	孩子	0	睡衣	2018-06-15 12:59:41.615605+00	0	0	\N	2018-06-15 12:59:41.617048+00	\N	\N	7
576	-23	孩子	0	泳裤	2018-06-15 13:00:54.154924+00	0	0	\N	2018-06-15 13:00:54.156449+00	\N	\N	7
577	-20	孩子	0	浴巾	2018-06-15 13:01:05.875093+00	0	0	\N	2018-06-15 13:01:05.876374+00	\N	\N	7
578	-338	装修	0	晾衣架	2018-06-15 13:02:26.634583+00	0	0	\N	2018-06-15 13:02:26.635831+00	\N	\N	10
579	-779	装修	0	马桶	2018-06-15 13:02:44.925568+00	0	0	\N	2018-06-15 13:02:44.926821+00	\N	\N	10
580	13111	收入	0	工资	2018-06-15 13:03:18.918734+00	0	0	\N	2018-06-15 13:03:18.920021+00	\N	\N	10
581	-2249	装修	0	格力空调	2018-06-17 06:08:33.350023+00	0	0	\N	2018-06-17 06:08:33.352002+00	\N	\N	10
582	-137	餐饮	0	晚餐	2018-06-17 06:09:22.395555+00	0	0	\N	2018-06-17 06:09:22.397197+00	\N	\N	7
583	-292	餐饮	0	午餐	2018-06-17 06:09:38.870307+00	0	0	\N	2018-06-17 06:09:38.871697+00	\N	\N	7
584	-100	生活用品	0	邮费	2018-06-17 06:10:02.205977+00	0	0	\N	2018-06-17 06:10:02.207864+00	\N	\N	7
585	-20	生活用品	0	停车费	2018-06-17 06:10:29.997109+00	0	0	\N	2018-06-17 06:10:29.998568+00	\N	\N	7
586	-200	生活用品	0	一个月高速费	2018-06-17 06:10:53.821287+00	0	0	\N	2018-06-17 06:10:53.822707+00	\N	\N	7
587	-2199	装修	0	美的空调	2018-06-18 00:55:33.969267+00	0	0	\N	2018-06-18 00:55:33.971054+00	\N	\N	10
588	-5499	装修	0	西门子冰箱	2018-06-18 00:55:53.71055+00	0	0	\N	2018-06-18 00:55:53.712053+00	\N	\N	10
589	-1899	餐饮	0	松下43寸电视机	2018-06-18 00:56:13.718438+00	0	0	\N	2018-06-18 00:56:13.719934+00	\N	\N	10
590	-6199	装修	0	索尼65寸电视	2018-06-18 00:56:38.121068+00	0	0	\N	2018-06-18 00:56:38.122891+00	\N	\N	10
591	-3649	装修	0	西门子洗衣机	2018-06-18 00:56:53.763332+00	0	0	\N	2018-06-18 00:56:53.765051+00	\N	\N	10
592	-3459	生活用品	0	太保3889返430	2018-06-18 02:34:23.283385+00	0	0	\N	2018-06-18 02:34:23.284778+00	\N	\N	10
593	-230	装修	0	空调和油烟机安装材料费	2018-06-18 04:15:32.639799+00	0	0	\N	2018-06-18 04:15:32.641263+00	\N	\N	10
594	-179	装修	0	电饭煲	2018-06-18 14:50:07.839546+00	0	0	\N	2018-06-18 14:50:07.841169+00	\N	\N	10
595	-703	装修	0	电压力锅，烤箱，电热水壶	2018-06-18 14:50:35.490175+00	0	0	\N	2018-06-18 14:50:35.491761+00	\N	\N	10
596	-101	生活用品	0	炒锅	2018-06-18 14:50:54.794685+00	0	0	\N	2018-06-18 14:50:54.796594+00	\N	\N	10
597	-108	孩子	0	小孩零食	2018-06-18 14:51:38.803825+00	0	0	\N	2018-06-18 14:51:38.805399+00	\N	\N	7
598	-4	餐饮	0	馕	2018-06-18 14:52:30.249187+00	0	0	\N	2018-06-18 14:52:30.250809+00	\N	\N	7
599	-28	装修	0	四把锁	2018-06-18 14:53:09.520126+00	0	0	\N	2018-06-18 14:53:09.521715+00	\N	\N	10
600	-45	生活用品	0	洗衣机管子	2018-06-18 14:53:39.37853+00	0	0	\N	2018-06-18 14:53:39.380111+00	\N	\N	7
603	-126	其它	0	鱼+水草	2018-06-20 11:39:17.791131+00	0	0	\N	2018-06-20 11:39:17.792698+00	\N	\N	10
604	-26	餐饮	0	水果	2018-06-20 11:39:27.524845+00	0	0	\N	2018-06-20 11:39:27.526351+00	\N	\N	10
605	-1000	装修	0	300材料+700人工费	2018-06-23 02:52:02.226167+00	0	0	\N	2018-06-23 02:52:02.22832+00	\N	\N	10
606	-73	生活用品	0	手机配件	2018-07-05 12:08:44.352416+00	0	0	\N	2018-07-05 12:08:44.354359+00	\N	\N	10
607	-7380	装修	0	防盗窗	2018-07-05 12:09:39.243447+00	0	0	\N	2018-07-05 12:09:39.244729+00	\N	\N	10
608	-21	生活用品	0	鱼缸气泵	2018-07-05 12:10:23.393919+00	0	0	\N	2018-07-05 12:10:23.395677+00	\N	\N	10
609	-8484	装修	0	沙发+电视柜+客房床	2018-07-05 12:11:11.482136+00	0	0	\N	2018-07-05 12:11:11.483446+00	\N	\N	10
610	-43	餐饮	0	零食	2018-07-05 12:11:36.528204+00	0	0	\N	2018-07-05 12:11:36.529535+00	\N	\N	10
611	-11	餐饮	0	荔枝	2018-07-05 12:11:54.276154+00	0	0	\N	2018-07-05 12:11:54.277614+00	\N	\N	10
612	-40	生活用品	0	数据线X2	2018-07-05 12:26:57.825444+00	0	0	\N	2018-07-05 12:26:57.826816+00	\N	\N	10
613	-25	生活用品	0	充电电池套装	2018-07-06 12:52:16.965338+00	0	0	\N	2018-07-06 12:52:16.967535+00	\N	\N	7
614	-35	生活用品	0	老家浴室置物架	2018-07-06 12:52:50.792397+00	0	0	\N	2018-07-06 12:52:50.794116+00	\N	\N	7
615	-35	生活用品	0	茶几脚	2018-07-06 12:53:07.049125+00	0	0	\N	2018-07-06 12:53:07.050562+00	\N	\N	7
616	-26	生活用品	0	迷你烧烤	2018-07-06 12:53:31.017029+00	0	0	\N	2018-07-06 12:53:31.0185+00	\N	\N	7
617	-30	生活用品	0	毛巾架	2018-07-06 12:54:01.351277+00	0	0	\N	2018-07-06 12:54:01.352756+00	\N	\N	7
618	-108	生活用品	0	厨房置物架	2018-07-06 12:54:42.85571+00	0	0	\N	2018-07-06 12:54:42.857256+00	\N	\N	7
619	-58	生活用品	0	风扇	2018-07-06 12:54:56.70791+00	0	0	\N	2018-07-06 12:54:56.709376+00	\N	\N	7
620	-27	生活用品	0	美购	2018-07-06 12:55:21.33604+00	0	0	\N	2018-07-06 12:55:21.337557+00	\N	\N	7
621	-72	餐饮	0	烘培工具	2018-07-06 12:55:39.196471+00	0	0	\N	2018-07-06 12:55:39.197984+00	\N	\N	7
622	-19	服饰	0	袜子	2018-07-06 12:55:58.469988+00	0	0	\N	2018-07-06 12:55:58.471385+00	\N	\N	7
623	-134	餐饮	0	午餐	2018-07-06 12:57:31.351514+00	0	0	\N	2018-07-06 12:57:31.352943+00	\N	\N	7
624	-57	孩子	0	衣服	2018-07-06 12:58:13.961278+00	0	0	\N	2018-07-06 12:58:13.962699+00	\N	\N	7
625	-22	餐饮	0	午餐	2018-07-06 12:58:50.06225+00	0	0	\N	2018-07-06 12:58:50.063809+00	\N	\N	7
626	-119	生活用品	0	电费	2018-07-06 12:59:05.995866+00	0	0	\N	2018-07-06 12:59:05.997552+00	\N	\N	7
627	-10	生活用品	0	零食	2018-07-06 12:59:43.309981+00	0	0	\N	2018-07-06 12:59:43.311454+00	\N	\N	7
628	-80	生活用品	0	汽车保养	2018-07-06 13:00:05.241475+00	0	0	\N	2018-07-06 13:00:05.242914+00	\N	\N	7
629	-200	生活用品	0	加油	2018-07-06 13:00:19.518498+00	0	0	\N	2018-07-06 13:00:19.519954+00	\N	\N	7
630	-51	孩子	0	儿童酱油	2018-07-06 13:00:53.263682+00	0	0	\N	2018-07-06 13:00:53.265132+00	\N	\N	7
631	-193	孩子	0	尿不湿	2018-07-06 13:01:13.353342+00	0	0	\N	2018-07-06 13:01:13.354826+00	\N	\N	7
632	-441	孩子	0	奶粉喜宝	2018-07-06 13:02:11.428801+00	0	0	\N	2018-07-06 13:02:11.430256+00	\N	\N	7
634	-101	生活用品	0	苏泊尔锅	2018-07-06 13:04:15.433001+00	0	0	\N	2018-07-06 13:04:15.434741+00	\N	\N	7
635	5362	收入	0	工资	2018-07-06 13:04:45.161443+00	0	0	\N	2018-07-06 13:04:45.162878+00	\N	\N	7
636	-1299	生活用品	0	诺基亚手机	2018-07-06 13:24:28.546523+00	0	0	\N	2018-07-06 13:24:28.548285+00	\N	\N	10
637	-142	生活用品	0	水费	2018-07-12 23:43:11.676555+00	0	0	\N	2018-07-12 23:43:11.678781+00	\N	\N	7
638	-87	孩子	0	马桶和围兜	2018-07-12 23:44:40.268389+00	0	0	\N	2018-07-12 23:44:40.274296+00	\N	\N	7
639	-81	生活用品	0	美购	2018-07-12 23:45:27.716189+00	0	0	\N	2018-07-12 23:45:27.718614+00	\N	\N	7
640	-183	孩子	0	钙零食	2018-07-12 23:45:58.819849+00	0	0	\N	2018-07-12 23:45:58.822119+00	\N	\N	7
641	-6000	装修	0	装修尾款	2018-07-15 06:16:29.339395+00	0	0	\N	2018-07-15 06:16:29.341741+00	\N	\N	10
643	-479	服饰	0	优衣库衣服	2018-07-15 06:17:47.622261+00	0	0	\N	2018-07-15 06:17:47.624275+00	\N	\N	10
644	-130	服饰	0	hm衣服	2018-07-15 06:18:07.8894+00	0	0	\N	2018-07-15 06:18:07.891334+00	\N	\N	10
645	-73	孩子	0	酱油+肉松	2018-07-15 06:18:37.794125+00	0	0	\N	2018-07-15 06:18:37.796175+00	\N	\N	10
646	-58	其它	0	电影票X2	2018-07-15 06:19:07.752045+00	0	0	\N	2018-07-15 06:19:07.753963+00	\N	\N	10
647	-16	餐饮	0	零食	2018-07-15 06:19:32.776258+00	0	0	\N	2018-07-15 06:19:32.778292+00	\N	\N	10
648	-125	餐饮	0	夜宵	2018-07-15 06:19:50.509415+00	0	0	\N	2018-07-15 06:19:50.511347+00	\N	\N	10
649	16800	收入	0	工资+换公司补贴	2018-07-20 13:27:56.917456+00	0	0	\N	2018-07-20 13:27:56.919452+00	\N	\N	10
650	-24	餐饮	0	零食	2018-07-20 13:28:52.503376+00	0	0	\N	2018-07-20 13:28:52.505377+00	\N	\N	10
651	-10	生活用品	0	停车费	2018-07-20 13:29:13.951582+00	0	0	\N	2018-07-20 13:29:13.953692+00	\N	\N	10
652	-118	孩子	0	洗澡玩具	2018-07-20 13:29:35.099807+00	0	0	\N	2018-07-20 13:29:35.102087+00	\N	\N	10
653	-198	其它	0	乐高玩具礼物	2018-07-20 13:30:11.80917+00	0	0	\N	2018-07-20 13:30:11.810928+00	\N	\N	10
654	-1197	装修	0	茶几	2018-07-20 13:57:47.700261+00	0	0	\N	2018-07-20 13:57:47.701965+00	\N	\N	10
655	-632	装修	0	鞋柜	2018-07-20 13:58:37.062662+00	0	0	\N	2018-07-20 13:58:37.064636+00	\N	\N	10
656	-316	孩子	0	鞋子	2018-07-20 13:59:30.62905+00	0	0	\N	2018-07-20 13:59:30.630759+00	\N	\N	7
657	-3	餐饮	0	大饼	2018-07-20 14:00:16.679831+00	0	0	\N	2018-07-20 14:00:16.682093+00	\N	\N	7
658	-170	餐饮	0	夜宵	2018-07-20 14:00:50.941324+00	0	0	\N	2018-07-20 14:00:50.943136+00	\N	\N	7
659	-61	餐饮	0	五天午饭	2018-07-20 14:01:35.995216+00	0	0	\N	2018-07-20 14:01:35.998168+00	\N	\N	7
660	-61	餐饮	0	五天午饭	2018-07-20 14:02:25.820082+00	0	0	\N	2018-07-20 14:02:25.822546+00	\N	\N	7
661	-179	服饰	0	睡衣	2018-07-20 14:02:38.329936+00	0	0	\N	2018-07-20 14:02:38.33223+00	\N	\N	7
662	-40	孩子	0	袜子	2018-07-20 14:03:01.662432+00	0	0	\N	2018-07-20 14:03:01.664706+00	\N	\N	7
663	-11	生活用品	0	美购	2018-07-20 14:03:19.716363+00	0	0	\N	2018-07-20 14:03:19.71887+00	\N	\N	7
664	-204	餐饮	0	芒果3箱	2018-07-20 14:04:01.886168+00	0	0	\N	2018-07-20 14:04:01.88869+00	\N	\N	7
665	-177	孩子	0	零食	2018-07-20 14:05:34.699891+00	0	0	\N	2018-07-20 14:05:34.702222+00	\N	\N	7
666	-119	孩子	0	门栏	2018-07-20 14:05:46.999906+00	0	0	\N	2018-07-20 14:05:47.002208+00	\N	\N	7
667	-157	孩子	0	游泳池	2018-07-20 14:06:54.420763+00	0	0	\N	2018-07-20 14:06:54.423067+00	\N	\N	7
668	-174	孩子	0	尿不湿	2018-07-20 14:07:07.772642+00	0	0	\N	2018-07-20 14:07:07.775147+00	\N	\N	7
669	-440	孩子	0	奶粉	2018-07-20 14:07:26.044811+00	0	0	\N	2018-07-20 14:07:26.047399+00	\N	\N	7
670	-8000	装修	0	黑胡桃木床	2018-07-22 10:31:33.931966+00	0	0	\N	2018-07-22 10:31:33.934787+00	\N	\N	10
671	-1000	装修	0	棕榈床垫	2018-07-22 10:32:05.470991+00	0	0	\N	2018-07-22 10:32:05.47405+00	\N	\N	10
672	-10	餐饮	0	西瓜	2018-07-22 10:32:51.941376+00	0	0	\N	2018-07-22 10:32:51.943708+00	\N	\N	10
673	-100	生活用品	0	理发冲卡	2018-07-22 10:33:17.103775+00	0	0	\N	2018-07-22 10:33:17.105974+00	\N	\N	10
675	-2850	装修	0	餐桌带四把椅子	2018-07-30 15:10:20.659926+00	0	0	\N	2018-07-30 15:10:20.667754+00	\N	\N	10
676	-129	装修	0	榻榻米靠垫	2018-07-30 15:10:55.171839+00	0	0	\N	2018-07-30 15:10:55.189118+00	\N	\N	10
677	-49	装修	0	牙刷杯	2018-07-30 15:11:11.818146+00	0	0	\N	2018-07-30 15:11:11.820521+00	\N	\N	10
678	-818	其它	0	椰棕榈床垫1.5＊2	2018-07-30 15:11:44.255161+00	0	0	\N	2018-07-30 15:11:44.257527+00	\N	\N	10
679	-135	其它	0	卫浴置物栏	2018-07-30 15:12:14.849657+00	0	0	\N	2018-07-30 15:12:14.852026+00	\N	\N	10
680	-52	孩子	0	防幢条	2018-07-30 15:13:29.014419+00	0	0	\N	2018-07-30 15:13:29.016819+00	\N	\N	7
681	-23	生活用品	0	美购	2018-07-30 15:13:45.953371+00	0	0	\N	2018-07-30 15:13:45.955005+00	\N	\N	7
682	-110	餐饮	0	棒冰	2018-07-30 15:14:26.04232+00	0	0	\N	2018-07-30 15:14:26.044261+00	\N	\N	7
683	-20	生活用品	0	美购	2018-07-30 15:14:52.716315+00	0	0	\N	2018-07-30 15:14:52.718953+00	\N	\N	7
684	-100	餐饮	0	老婆大人	2018-07-30 15:15:08.479093+00	0	0	\N	2018-07-30 15:15:08.480776+00	\N	\N	7
685	-36	生活用品	0	滴滴	2018-07-30 15:15:37.12656+00	0	0	\N	2018-07-30 15:15:37.129388+00	\N	\N	7
686	-16	餐饮	0	早餐	2018-07-30 15:15:52.240438+00	0	0	\N	2018-07-30 15:15:52.24289+00	\N	\N	7
687	-198	生活用品	0	洗牙	2018-07-30 15:16:05.025255+00	0	0	\N	2018-07-30 15:16:05.027763+00	\N	\N	7
688	-436	餐饮	0	四份自助餐	2018-07-30 15:16:25.0607+00	0	0	\N	2018-07-30 15:16:25.06317+00	\N	\N	7
690	-18	孩子	0	早教书	2018-08-12 11:38:08.021836+00	0	0	\N	2018-08-12 11:38:08.033269+00	\N	\N	10
691	-15	餐饮	0	蛋糕	2018-08-12 11:38:54.599387+00	0	0	\N	2018-08-12 11:38:54.608064+00	\N	\N	10
692	-45	孩子	0	钙片	2018-08-12 11:39:11.270649+00	0	0	\N	2018-08-12 11:39:11.2733+00	\N	\N	10
693	-55	餐饮	0	零食	2018-08-12 11:39:39.110393+00	0	0	\N	2018-08-12 11:39:39.112935+00	\N	\N	10
694	-30	餐饮	0	蛋糕	2018-08-12 11:40:06.31983+00	0	0	\N	2018-08-12 11:40:06.322588+00	\N	\N	10
695	-28	其它	0	验血型	2018-08-12 11:40:52.582935+00	0	0	\N	2018-08-12 11:40:52.58474+00	\N	\N	10
696	-97	服饰	0	优衣库衣服	2018-08-12 11:41:15.119227+00	0	0	\N	2018-08-12 11:41:15.121626+00	\N	\N	10
697	-30	餐饮	0	O2	2018-08-12 11:41:31.799085+00	0	0	\N	2018-08-12 11:41:31.800842+00	\N	\N	10
698	-5	其它	0	停车费	2018-08-12 11:41:54.399232+00	0	0	\N	2018-08-12 11:41:54.401586+00	\N	\N	10
699	-1214	装修	0	小沙发	2018-08-12 11:42:11.869848+00	0	0	\N	2018-08-12 11:42:11.872144+00	\N	\N	10
700	-100	其它	0	话费	2018-08-12 11:42:29.149849+00	0	0	\N	2018-08-12 11:42:29.152144+00	\N	\N	10
701	-65	餐饮	0	美购	2018-08-12 11:52:48.89025+00	0	0	\N	2018-08-12 11:52:48.900612+00	\N	\N	7
702	-251	生活用品	0	电费	2018-08-12 11:53:09.586303+00	0	0	\N	2018-08-12 11:53:09.604884+00	\N	\N	7
703	-77	服饰	0	衣服卫衣	2018-08-12 11:53:32.125073+00	0	0	\N	2018-08-12 11:53:32.127434+00	\N	\N	7
704	-172	生活用品	0	洗面奶	2018-08-12 11:54:07.849906+00	0	0	\N	2018-08-12 11:54:07.852219+00	\N	\N	7
705	-100	餐饮	0	棒冰	2018-08-12 11:54:24.399845+00	0	0	\N	2018-08-12 11:54:24.402121+00	\N	\N	7
706	-43	生活用品	0	抹布	2018-08-12 11:54:46.130235+00	0	0	\N	2018-08-12 11:54:46.132819+00	\N	\N	7
707	-229	生活用品	0	卸妆水	2018-08-12 11:55:24.305151+00	0	0	\N	2018-08-12 11:55:24.30752+00	\N	\N	7
708	-120	服饰	0	鞋子	2018-08-12 11:56:07.303468+00	0	0	\N	2018-08-12 11:56:07.305987+00	\N	\N	7
709	-750	生活用品	0	爽肤水BB霜	2018-08-12 11:57:10.709879+00	0	0	\N	2018-08-12 11:57:10.712222+00	\N	\N	7
712	-19	生活用品	0	玻璃水	2018-09-10 13:05:53.823099+00	0	0	\N	2018-09-10 13:05:53.824624+00	\N	\N	7
714	-18	生活用品	0	重庆小面	2018-09-10 13:07:17.366916+00	0	0	\N	2018-09-10 13:07:17.368284+00	\N	\N	7
715	-288	服饰	0	衣服	2018-09-10 13:09:51.606558+00	0	0	\N	2018-09-10 13:09:51.607811+00	\N	\N	7
716	-55	服饰	0	衣服	2018-09-10 13:10:39.011139+00	0	0	\N	2018-09-10 13:10:39.012385+00	\N	\N	7
717	-26	生活用品	0	优酷	2018-09-10 13:11:02.228883+00	0	0	\N	2018-09-10 13:11:02.230189+00	\N	\N	7
718	-15	生活用品	0	购物和停车费	2018-09-10 13:11:28.959917+00	0	0	\N	2018-09-10 13:11:28.961189+00	\N	\N	7
719	-108	生活用品	0	车票	2018-09-10 13:11:43.493407+00	0	0	\N	2018-09-10 13:11:43.494655+00	\N	\N	7
720	-38	生活用品	0	凳子	2018-09-10 13:15:39.900756+00	0	0	\N	2018-09-10 13:15:39.902058+00	\N	\N	7
721	-215	服饰	0	衣服	2018-09-10 13:16:03.82115+00	0	0	\N	2018-09-10 13:16:03.822492+00	\N	\N	7
722	-128	餐饮	0	蛋糕	2018-09-10 13:16:23.32728+00	0	0	\N	2018-09-10 13:16:23.328632+00	\N	\N	7
723	-7	生活用品	0	超市	2018-09-10 13:16:42.235366+00	0	0	\N	2018-09-10 13:16:42.236637+00	\N	\N	7
724	-318	生活用品	0	电费	2018-09-10 13:17:02.841543+00	0	0	\N	2018-09-10 13:17:02.842869+00	\N	\N	7
725	-17	生活用品	0	水费	2018-09-10 13:17:18.965276+00	0	0	\N	2018-09-10 13:17:18.96653+00	\N	\N	7
726	-214	生活用品	0	面膜	2018-09-10 13:17:46.762276+00	0	0	\N	2018-09-10 13:17:46.763526+00	\N	\N	7
727	-40	生活用品	0	水果	2018-09-10 13:18:15.068463+00	0	0	\N	2018-09-10 13:18:15.069729+00	\N	\N	7
728	-230	生活用品	0	超市	2018-09-10 13:18:43.316397+00	0	0	\N	2018-09-10 13:18:43.317669+00	\N	\N	7
729	-142	生活用品	0	水费	2018-09-10 13:18:57.791148+00	0	0	\N	2018-09-10 13:18:57.792407+00	\N	\N	7
730	-6	生活用品	0	饼	2018-09-10 13:19:20.733762+00	0	0	\N	2018-09-10 13:19:20.735051+00	\N	\N	7
731	-173	生活用品	0	老家凳子	2018-09-10 13:19:53.549757+00	0	0	\N	2018-09-10 13:19:53.551061+00	\N	\N	7
732	-104	服饰	0	午餐	2018-09-10 13:20:19.099265+00	0	0	\N	2018-09-10 13:20:19.101553+00	\N	\N	7
733	-42	孩子	0	尿不湿	2018-09-10 13:22:01.97092+00	0	0	\N	2018-09-10 13:22:01.97218+00	\N	\N	7
734	-126	孩子	0	零食	2018-09-10 13:22:18.741072+00	0	0	\N	2018-09-10 13:22:18.742333+00	\N	\N	7
735	-61	生活用品	0	垃圾袋	2018-09-10 13:22:30.870155+00	0	0	\N	2018-09-10 13:22:30.871429+00	\N	\N	7
736	-256	孩子	0	尿不湿	2018-09-10 13:23:36.468797+00	0	0	\N	2018-09-10 13:23:36.470067+00	\N	\N	7
737	-109	生活用品	0	大米	2018-09-10 13:23:49.767052+00	0	0	\N	2018-09-10 13:23:49.768401+00	\N	\N	7
738	-29	孩子	0	尿不湿	2018-09-10 13:24:03.444257+00	0	0	\N	2018-09-10 13:24:03.445582+00	\N	\N	7
739	-440	孩子	0	奶粉	2018-09-10 13:24:21.017743+00	0	0	\N	2018-09-10 13:24:21.019125+00	\N	\N	7
740	-83	孩子	0	零食	2018-09-10 13:24:33.972857+00	0	0	\N	2018-09-10 13:24:33.974126+00	\N	\N	7
741	-41	生活用品	0	零食	2018-09-10 13:24:52.731401+00	0	0	\N	2018-09-10 13:24:52.732662+00	\N	\N	7
742	-95	孩子	0	洗衣液	2018-09-10 13:25:15.33678+00	0	0	\N	2018-09-10 13:25:15.338036+00	\N	\N	7
743	-176	孩子	0	钙	2018-09-10 13:25:35.002229+00	0	0	\N	2018-09-10 13:25:35.003507+00	\N	\N	7
744	-106	生活用品	0	餐巾纸	2018-09-10 13:26:16.470029+00	0	0	\N	2018-09-10 13:26:16.471295+00	\N	\N	7
745	-92	生活用品	0	生活用品	2018-09-10 13:26:31.200121+00	0	0	\N	2018-09-10 13:26:31.201402+00	\N	\N	7
746	-364	生活用品	0	硬盘	2018-09-10 13:26:48.149934+00	0	0	\N	2018-09-10 13:26:48.1512+00	\N	\N	7
747	-100	餐饮	0	美蛙	2018-09-10 13:29:37.37144+00	0	0	\N	2018-09-10 13:29:37.372709+00	\N	\N	7
748	-1000	生活用品	0	油卡	2018-09-10 13:29:50.456891+00	0	0	\N	2018-09-10 13:29:50.458154+00	\N	\N	7
749	-724	装修	0	塌塌米垫	2018-09-10 13:31:48.156967+00	0	0	\N	2018-09-10 13:31:48.158305+00	\N	\N	10
750	-49	装修	0	植物6盆	2018-09-10 13:32:51.639312+00	0	0	\N	2018-09-10 13:32:51.640616+00	\N	\N	10
751	-10	餐饮	0	小吃	2018-09-12 00:01:47.516703+00	0	0	\N	2018-09-12 00:01:47.518313+00	\N	\N	10
752	-27	其它	0	百合花	2018-09-12 00:02:07.117612+00	0	0	\N	2018-09-12 00:02:07.126401+00	\N	\N	10
754	-53	生活用品	0	蟑螂贴	2018-09-12 00:03:56.132158+00	0	0	\N	2018-09-12 00:03:56.133436+00	\N	\N	10
755	-100	生活用品	0	话费	2018-09-12 00:04:12.358362+00	0	0	\N	2018-09-12 00:04:12.359626+00	\N	\N	10
756	-119	餐饮	0	美购超市	2018-09-12 00:04:41.07638+00	0	0	\N	2018-09-12 00:04:41.077631+00	\N	\N	10
757	-40	餐饮	0	阿香米线	2018-09-12 00:05:09.411137+00	0	0	\N	2018-09-12 00:05:09.412384+00	\N	\N	10
758	-373	装修	0	沙发靠脚	2018-09-12 00:05:48.940575+00	0	0	\N	2018-09-12 00:05:48.941915+00	\N	\N	10
759	-5	其它	0	停车费	2018-09-12 00:06:20.235481+00	0	0	\N	2018-09-12 00:06:20.236742+00	\N	\N	10
760	-26	餐饮	0	石锅饭	2018-09-12 00:06:57.036432+00	0	0	\N	2018-09-12 00:06:57.037759+00	\N	\N	10
761	-65	餐饮	0	乐购	2018-09-12 00:07:18.995503+00	0	0	\N	2018-09-12 00:07:18.997798+00	\N	\N	10
762	-95	生活用品	0	车保养	2018-09-12 00:07:41.224981+00	0	0	\N	2018-09-12 00:07:41.226251+00	\N	\N	10
763	-100	其它	0	手机充值	2018-09-12 00:08:19.64429+00	0	0	\N	2018-09-12 00:08:19.64553+00	\N	\N	10
764	-88	其它	0	助行器	2018-09-12 00:08:58.311257+00	0	0	\N	2018-09-12 00:08:58.312542+00	\N	\N	10
765	-70	其它	0	宠物鱼虾	2018-09-12 00:09:28.892512+00	0	0	\N	2018-09-12 00:09:28.893771+00	\N	\N	10
766	-15	餐饮	0	绿姿	2018-09-12 00:10:02.282651+00	0	0	\N	2018-09-12 00:10:02.284043+00	\N	\N	10
767	-6	餐饮	0	饮料	2018-09-12 00:10:25.712609+00	0	0	\N	2018-09-12 00:10:25.713849+00	\N	\N	10
768	-279	装修	0	电视柜架子	2018-09-12 00:10:46.252111+00	0	0	\N	2018-09-12 00:10:46.253379+00	\N	\N	10
769	-12	装修	0	小挂架	2018-09-12 00:11:19.975291+00	0	0	\N	2018-09-12 00:11:19.976533+00	\N	\N	10
770	-3043	装修	0	酒柜+小东西	2018-09-12 00:12:02.561299+00	0	0	\N	2018-09-12 00:12:02.562532+00	\N	\N	10
771	-2728	生活用品	0	S8	2018-09-12 00:12:24.490773+00	0	0	\N	2018-09-12 00:12:24.492023+00	\N	\N	10
772	12662	收入	0	工资	2018-09-12 00:15:28.706776+00	0	0	\N	2018-09-12 00:15:28.708032+00	\N	\N	10
774	-25	餐饮	0	夜宵	2018-09-29 14:31:03.53761+00	0	0	\N	2018-09-29 14:31:03.538912+00	\N	\N	7
775	-34	餐饮	0	美团	2018-09-29 14:34:20.140353+00	0	0	\N	2018-09-29 14:34:20.141639+00	\N	\N	7
776	-5	餐饮	0	麦饺	2018-09-29 14:34:37.829348+00	0	0	\N	2018-09-29 14:34:37.83085+00	\N	\N	7
777	-18	餐饮	0	绿资	2018-09-29 14:34:53.787178+00	0	0	\N	2018-09-29 14:34:53.788437+00	\N	\N	7
778	-18	餐饮	0	水果	2018-09-29 14:35:04.557162+00	0	0	\N	2018-09-29 14:35:04.558475+00	\N	\N	7
779	-22	餐饮	0	美团外卖	2018-09-29 14:35:18.673503+00	0	0	\N	2018-09-29 14:35:18.674877+00	\N	\N	7
780	-94	生活用品	0	支付宝	2018-09-29 14:37:02.84587+00	0	0	\N	2018-09-29 14:37:02.847121+00	\N	\N	7
781	-35	生活用品	0	肯德基	2018-09-29 14:37:24.674332+00	0	0	\N	2018-09-29 14:37:24.675595+00	\N	\N	7
782	-29	生活用品	0	三江购物	2018-09-29 14:37:48.231767+00	0	0	\N	2018-09-29 14:37:48.233182+00	\N	\N	7
783	-58	餐饮	0	过桥米线	2018-09-29 14:38:52.194292+00	0	0	\N	2018-09-29 14:38:52.195817+00	\N	\N	7
784	-237	服饰	0	鞋子	2018-09-29 14:39:04.738784+00	0	0	\N	2018-09-29 14:39:04.740046+00	\N	\N	7
785	-3	餐饮	0	麦饺	2018-09-29 14:39:24.732275+00	0	0	\N	2018-09-29 14:39:24.733646+00	\N	\N	7
786	-439	孩子	0	三轮车	2018-09-29 14:39:42.253518+00	0	0	\N	2018-09-29 14:39:42.254785+00	\N	\N	7
787	-13	餐饮	0	水果	2018-09-29 14:39:54.87663+00	0	0	\N	2018-09-29 14:39:54.877901+00	\N	\N	7
788	-23	生活用品	0	水管	2018-09-29 14:40:21.71091+00	0	0	\N	2018-09-29 14:40:21.712173+00	\N	\N	7
789	-8	餐饮	0	水果	2018-09-29 14:40:55.743375+00	0	0	\N	2018-09-29 14:40:55.744642+00	\N	\N	7
790	-2888	其它	0	红包	2018-09-29 14:41:21.378569+00	0	0	\N	2018-09-29 14:41:21.380015+00	\N	\N	7
791	-16	生活用品	0	拖鞋	2018-09-29 14:41:36.47503+00	0	0	\N	2018-09-29 14:41:36.478374+00	\N	\N	7
793	-32	生活用品	0	抽屉垫	2018-09-29 14:42:24.432134+00	0	0	\N	2018-09-29 14:42:24.433512+00	\N	\N	7
795	-15	其它	0	腾讯VIP	2018-09-29 14:43:03.131632+00	0	0	\N	2018-09-29 14:43:03.133124+00	\N	\N	7
796	-369	孩子	0	婴儿床	2018-09-29 14:43:16.949576+00	0	0	\N	2018-09-29 14:43:16.950839+00	\N	\N	7
798	-40	孩子	0	袜子	2018-09-29 14:43:52.830378+00	0	0	\N	2018-09-29 14:43:52.831955+00	\N	\N	7
799	-284	生活用品	0	油米	2018-09-29 14:45:45.193774+00	0	0	\N	2018-09-29 14:45:45.195045+00	\N	\N	7
800	-110	孩子	0	帐篷和滑梯	2018-09-29 14:46:12.492136+00	0	0	\N	2018-09-29 14:46:12.494604+00	\N	\N	7
804	-250	其它	0	过路费	2018-09-29 14:48:00.345685+00	0	0	\N	2018-09-29 14:48:00.346958+00	\N	\N	7
805	-200	生活用品	0	零花钱	2018-09-29 14:48:11.364281+00	0	0	\N	2018-09-29 14:48:11.365545+00	\N	\N	7
806	5366	收入	0	工资	2018-09-29 14:49:34.97276+00	0	0	\N	2018-09-29 14:49:34.974272+00	\N	\N	7
807	5362	收入	0	工资	2018-09-29 14:49:58.237812+00	0	0	\N	2018-09-29 14:49:58.239321+00	\N	\N	7
809	-388	孩子	0	奶粉	2018-09-29 14:53:30.308155+00	0	0	\N	2018-09-29 14:53:30.30944+00	\N	\N	7
810	-45	餐饮	0	无印良品咖喱	2018-09-29 14:53:53.233403+00	0	0	\N	2018-09-29 14:53:53.234695+00	\N	\N	7
811	5366	收入	0	工资	2018-09-29 14:57:11.709689+00	0	0	\N	2018-09-29 14:57:11.710951+00	\N	\N	7
812	-173	生活用品	0	板凳	2018-09-29 15:04:20.741833+00	0	0	\N	2018-09-29 15:04:20.74329+00	\N	\N	7
814	-15	餐饮	0	葡萄	2018-10-06 11:31:53.320472+00	0	0	\N	2018-10-06 11:31:53.323482+00	\N	\N	10
815	-17	餐饮	0	葡萄	2018-10-06 11:32:20.247606+00	0	0	\N	2018-10-06 11:32:20.250866+00	\N	\N	10
816	-80	生活用品	0	NITOR生活用品	2018-10-06 11:33:16.938521+00	0	0	\N	2018-10-06 11:33:16.940265+00	\N	\N	10
817	-59	其它	0	外婆毛巾袜	2018-10-06 11:33:48.063656+00	0	0	\N	2018-10-06 11:33:48.065055+00	\N	\N	10
818	-26	餐饮	0	水果	2018-10-06 11:34:02.920585+00	0	0	\N	2018-10-06 11:34:02.921943+00	\N	\N	10
820	-536	生活用品	0	麦德龙	2018-10-06 11:34:58.599132+00	0	0	\N	2018-10-06 11:34:58.600417+00	\N	\N	10
821	-139	餐饮	0	西贝莜面	2018-10-06 11:35:32.341604+00	0	0	\N	2018-10-06 11:35:32.342899+00	\N	\N	10
822	-44	餐饮	0	三江超市	2018-10-06 11:35:54.133962+00	0	0	\N	2018-10-06 11:35:54.135263+00	\N	\N	10
823	-3	餐饮	0	豆奶	2018-10-06 11:36:21.964655+00	0	0	\N	2018-10-06 11:36:21.969245+00	\N	\N	10
824	-336	孩子	0	maxwin衣服	2018-10-06 11:36:57.359945+00	0	0	\N	2018-10-06 11:36:57.361383+00	\N	\N	10
825	-340	孩子	0	hm衣服	2018-10-06 11:37:17.92176+00	0	0	\N	2018-10-06 11:37:17.92302+00	\N	\N	10
826	-34	生活用品	0	茶杯	2018-10-06 11:37:46.673462+00	0	0	\N	2018-10-06 11:37:46.674715+00	\N	\N	10
827	-172	餐饮	0	捞王	2018-10-06 11:38:34.114938+00	0	0	\N	2018-10-06 11:38:34.116315+00	\N	\N	10
828	-15	其它	0	停车费	2018-10-06 11:38:51.21169+00	0	0	\N	2018-10-06 11:38:51.213043+00	\N	\N	10
829	-647	生活用品	0	麦德龙	2018-10-06 11:39:07.572176+00	0	0	\N	2018-10-06 11:39:07.573441+00	\N	\N	10
830	-942	生活用品	0	宜家	2018-10-06 11:39:24.791611+00	0	0	\N	2018-10-06 11:39:24.792866+00	\N	\N	10
831	12662	收入	0	八月工资	2018-10-06 11:40:46.467755+00	0	0	\N	2018-10-06 11:40:46.469055+00	\N	\N	10
813	-50	生活用品	0	盆栽	2018-09-29 15:04:48.380637+00	0	0	\N	2018-10-06 11:41:43.356804+00	\N	\N	7
803	-150	生活用品	0	电视支架	2018-09-29 14:47:46.319133+00	0	0	\N	2018-10-06 11:42:05.356249+00	\N	\N	7
802	-300	生活用品	0	铁锅和奶锅	2018-09-29 14:47:31.500681+00	0	0	\N	2018-10-06 11:42:21.639612+00	\N	\N	7
797	-112	生活用品	0	保洁	2018-09-29 14:43:36.820251+00	0	0	\N	2018-10-06 11:42:41.751288+00	\N	\N	7
794	-214	生活用品	0	碗	2018-09-29 14:42:39.840786+00	0	0	\N	2018-10-06 11:43:08.831886+00	\N	\N	7
832	-26	餐饮	0	KFC	2018-10-06 11:45:36.409805+00	0	0	\N	2018-10-06 11:45:36.411225+00	\N	\N	7
833	-26	餐饮	0	KFC	2018-10-06 11:45:55.47814+00	0	0	\N	2018-10-06 11:45:55.479448+00	\N	\N	7
834	-13	餐饮	0	coco	2018-10-06 11:46:09.432062+00	0	0	\N	2018-10-06 11:46:09.433325+00	\N	\N	7
835	-385	生活用品	0	沃尔玛	2018-10-06 11:46:27.614162+00	0	0	\N	2018-10-06 11:46:27.615421+00	\N	\N	7
836	-16	餐饮	0	煎饼	2018-10-28 10:44:01.979742+00	0	0	\N	2018-10-28 10:44:01.981337+00	\N	\N	10
837	-702	生活用品	0	碗，桌垫等	2018-10-28 10:45:02.551568+00	0	0	\N	2018-10-28 10:45:02.553087+00	\N	\N	10
838	-10	餐饮	0	早餐	2018-10-28 10:45:42.795424+00	0	0	\N	2018-10-28 10:45:42.796712+00	\N	\N	10
839	-9	餐饮	0	水果	2018-10-28 10:45:59.293902+00	0	0	\N	2018-10-28 10:45:59.295168+00	\N	\N	10
840	-40	餐饮	0	老婆大人	2018-10-28 10:46:09.285264+00	0	0	\N	2018-10-28 10:46:09.286515+00	\N	\N	10
841	-109	服饰	0	hm	2018-10-28 10:46:40.478777+00	0	0	\N	2018-10-28 10:46:40.481407+00	\N	\N	10
842	-420	生活用品	0	尿不湿x2，奶粉	2018-10-28 10:47:34.87934+00	0	0	\N	2018-10-28 10:47:34.881715+00	\N	\N	10
843	-18	餐饮	0	饮料	2018-10-28 10:48:24.485127+00	0	0	\N	2018-10-28 10:48:24.486401+00	\N	\N	10
844	-2114	其它	0	电信3年	2018-10-28 10:48:55.156352+00	0	0	\N	2018-10-28 10:48:55.157635+00	\N	\N	10
845	-260	餐饮	0	外婆家	2018-10-28 10:49:34.189064+00	0	0	\N	2018-10-28 10:49:34.190343+00	\N	\N	10
847	-91	餐饮	0	美团3次	2018-10-28 10:51:47.158209+00	0	0	\N	2018-10-28 10:51:47.160604+00	\N	\N	10
849	-233	服饰	0	in time365	2018-10-28 10:58:27.789815+00	0	0	\N	2018-10-28 10:58:27.791125+00	\N	\N	7
850	-462	服饰	0	衣服	2018-10-28 10:58:50.707349+00	0	0	\N	2018-10-28 10:58:50.708718+00	\N	\N	7
851	-199	服饰	0	优衣库	2018-10-28 10:59:03.071687+00	0	0	\N	2018-10-28 10:59:03.073587+00	\N	\N	7
852	-35	餐饮	0	欧文西点	2018-10-28 10:59:20.970789+00	0	0	\N	2018-10-28 10:59:20.972046+00	\N	\N	7
853	-5	生活用品	0	停车费	2018-10-28 10:59:36.946754+00	0	0	\N	2018-10-28 10:59:36.948116+00	\N	\N	7
854	-14	生活用品	0	晾衣杆	2018-10-28 11:00:04.024749+00	0	0	\N	2018-10-28 11:00:04.026002+00	\N	\N	7
855	-175	生活用品	0	电费	2018-10-28 11:00:19.8598+00	0	0	\N	2018-10-28 11:00:19.861085+00	\N	\N	7
856	-31	生活用品	0	妈咪包	2018-10-28 11:00:37.140375+00	0	0	\N	2018-10-28 11:00:37.141642+00	\N	\N	7
857	-16	生活用品	0	小夜灯	2018-10-28 11:01:01.097362+00	0	0	\N	2018-10-28 11:01:01.098915+00	\N	\N	7
858	-19	生活用品	0	土豆切丝	2018-10-28 11:01:20.522945+00	0	0	\N	2018-10-28 11:01:20.525405+00	\N	\N	7
859	-703	服饰	0	耐克鞋	2018-10-28 11:01:41.874321+00	0	0	\N	2018-10-28 11:01:41.875565+00	\N	\N	7
860	-248	生活用品	0	猪猪	2018-10-28 11:01:57.096648+00	0	0	\N	2018-10-28 11:01:57.097986+00	\N	\N	7
861	-38	生活用品	0	水果盘	2018-10-28 11:02:20.155016+00	0	0	\N	2018-10-28 11:02:20.156286+00	\N	\N	7
862	-63	生活用品	0	电表箱装饰	2018-10-28 11:02:40.374177+00	0	0	\N	2018-10-28 11:02:40.375453+00	\N	\N	7
864	-27	生活用品	0	硅藻泥垫	2018-10-28 11:03:26.622482+00	0	0	\N	2018-10-28 11:03:26.623757+00	\N	\N	7
865	-100	餐饮	0	02	2018-10-28 11:03:42.230293+00	0	0	\N	2018-10-28 11:03:42.231555+00	\N	\N	7
866	-39	生活用品	0	密封胶	2018-10-28 11:04:21.324808+00	0	0	\N	2018-10-28 11:04:21.326156+00	\N	\N	7
867	-25	生活用品	0	鞋套	2018-10-28 11:04:35.535618+00	0	0	\N	2018-10-28 11:04:35.536878+00	\N	\N	7
868	-138	生活用品	0	实木凳子6把	2018-10-28 11:05:01.59176+00	0	0	\N	2018-10-28 11:05:01.593015+00	\N	\N	7
869	-30	生活用品	0	洗脸盆	2018-10-28 11:05:15.176875+00	0	0	\N	2018-10-28 11:05:15.179465+00	\N	\N	7
870	-43	生活用品	0	垃圾桶	2018-10-28 11:05:26.277667+00	0	0	\N	2018-10-28 11:05:26.280202+00	\N	\N	7
871	-140	生活用品	0	垃圾桶麦桶桶	2018-10-28 11:05:59.473886+00	0	0	\N	2018-10-28 11:05:59.475195+00	\N	\N	7
873	-24	餐饮	0	水果	2018-10-28 11:06:46.692497+00	0	0	\N	2018-10-28 11:06:46.693815+00	\N	\N	7
874	-20	孩子	0	零售米饼	2018-10-28 11:07:37.635988+00	0	0	\N	2018-10-28 11:07:37.637263+00	\N	\N	7
875	-103	生活用品	0	刀架	2018-10-28 11:07:50.6745+00	0	0	\N	2018-10-28 11:07:50.675771+00	\N	\N	7
876	-87	生活用品	0	黑色调味架	2018-10-28 11:08:13.371043+00	0	0	\N	2018-10-28 11:08:13.372298+00	\N	\N	7
877	-66	生活用品	0	餐巾纸盒	2018-10-28 11:08:35.756433+00	0	0	\N	2018-10-28 11:08:35.757712+00	\N	\N	7
878	-249	生活用品	0	相框	2018-10-28 11:08:52.070074+00	0	0	\N	2018-10-28 11:08:52.071498+00	\N	\N	7
879	-66	生活用品	0	拖鞋	2018-10-28 11:09:34.288493+00	0	0	\N	2018-10-28 11:09:34.289759+00	\N	\N	7
880	-100	生活用品	0	4个油瓶	2018-10-28 11:09:51.286799+00	0	0	\N	2018-10-28 11:09:51.288257+00	\N	\N	7
881	-26	生活用品	0	垃圾袋	2018-10-28 11:10:02.082561+00	0	0	\N	2018-10-28 11:10:02.084034+00	\N	\N	7
882	-16	餐饮	0	卤人甲	2018-10-28 11:10:25.665516+00	0	0	\N	2018-10-28 11:10:25.666818+00	\N	\N	7
883	-20	生活用品	0	钻头	2018-10-28 11:10:41.860811+00	0	0	\N	2018-10-28 11:10:41.862073+00	\N	\N	7
884	-198	生活用品	0	睡袋2件	2018-10-28 11:11:02.369244+00	0	0	\N	2018-10-28 11:11:02.371617+00	\N	\N	7
885	-400	孩子	0	社保	2018-10-28 11:11:17.176704+00	0	0	\N	2018-10-28 11:11:17.178073+00	\N	\N	7
886	-70	餐饮	0	美购	2018-10-28 11:11:34.720873+00	0	0	\N	2018-10-28 11:11:34.722137+00	\N	\N	7
887	-179	服饰	0	戈美其	2018-10-28 11:11:58.300446+00	0	0	\N	2018-10-28 11:11:58.301788+00	\N	\N	7
888	-20	生活用品	0	餐饮	2018-10-28 11:12:14.681765+00	0	0	\N	2018-10-28 11:12:14.683041+00	\N	\N	7
889	-26	孩子	0	背带	2018-10-28 11:18:32.824078+00	0	0	\N	2018-10-28 11:18:32.825347+00	\N	\N	7
890	-66	生活用品	0	米桶杂物	2018-10-28 11:18:46.506599+00	0	0	\N	2018-10-28 11:18:46.507953+00	\N	\N	7
891	-30	生活用品	0	美购	2018-10-28 11:19:00.396588+00	0	0	\N	2018-10-28 11:19:00.39802+00	\N	\N	7
892	-79	生活用品	0	马桶疏通器	2018-10-28 11:20:23.916193+00	0	0	\N	2018-10-28 11:20:23.917458+00	\N	\N	7
893	-10	生活用品	0	三江	2018-10-28 11:20:40.828358+00	0	0	\N	2018-10-28 11:20:40.829767+00	\N	\N	7
894	-341	孩子	0	鞋子	2018-10-28 11:20:54.571906+00	0	0	\N	2018-10-28 11:20:54.57316+00	\N	\N	7
895	-25	生活用品	0	硅藻泥垫	2018-10-28 11:21:17.74903+00	0	0	\N	2018-10-28 11:21:17.750308+00	\N	\N	7
896	-79	服饰	0	睡衣	2018-10-28 11:21:30.298908+00	0	0	\N	2018-10-28 11:21:30.300162+00	\N	\N	7
897	-52	生活用品	0	鞋架	2018-10-28 11:21:48.697742+00	0	0	\N	2018-10-28 11:21:48.699155+00	\N	\N	7
898	-158	服饰	0	睡衣	2018-10-28 11:22:00.651007+00	0	0	\N	2018-10-28 11:22:00.652279+00	\N	\N	7
899	-32	孩子	0	A D剂	2018-10-28 11:22:37.952903+00	0	0	\N	2018-10-28 11:22:37.954213+00	\N	\N	7
900	-15	生活用品	0	优酷	2018-10-28 11:22:53.680992+00	0	0	\N	2018-10-28 11:22:53.682295+00	\N	\N	7
901	-27	餐饮	0	重庆面馆	2018-10-28 11:23:28.553105+00	0	0	\N	2018-10-28 11:23:28.554492+00	\N	\N	7
902	-260	生活用品	0	眼镜	2018-10-28 11:23:49.866154+00	0	0	\N	2018-10-28 11:23:49.867408+00	\N	\N	7
903	-42	生活用品	0	美购	2018-10-28 11:24:02.560859+00	0	0	\N	2018-10-28 11:24:02.562189+00	\N	\N	7
904	-75	生活用品	0	钟	2018-10-28 11:25:29.198973+00	0	0	\N	2018-10-28 11:25:29.200235+00	\N	\N	7
905	-9	生活用品	0	泡面碗	2018-10-28 11:25:43.183836+00	0	0	\N	2018-10-28 11:25:43.186115+00	\N	\N	7
906	-116	生活用品	0	平底锅	2018-10-28 11:25:55.455612+00	0	0	\N	2018-10-28 11:25:55.456854+00	\N	\N	7
907	-31	生活用品	0	防烫夹和不8冰箱架	2018-10-28 11:26:56.681713+00	0	0	\N	2018-10-28 11:26:56.682963+00	\N	\N	7
908	-35	生活用品	0	牙刷杯架	2018-10-28 11:27:39.087376+00	0	0	\N	2018-10-28 11:27:39.088752+00	\N	\N	7
909	-50	孩子	0	婴儿保湿润肤乳	2018-10-28 11:28:27.922634+00	0	0	\N	2018-10-28 11:28:27.923885+00	\N	\N	7
910	-344	孩子	0	尿不湿零食	2018-10-28 11:28:49.869459+00	0	0	\N	2018-10-28 11:28:49.87078+00	\N	\N	7
911	-36	餐饮	0	KFC	2018-10-28 11:30:03.436245+00	0	0	\N	2018-10-28 11:30:03.437524+00	\N	\N	7
912	-31	餐饮	0	美团外卖	2018-10-28 11:30:15.574066+00	0	0	\N	2018-10-28 11:30:15.575322+00	\N	\N	7
913	-200	餐饮	0	请客	2018-10-28 11:30:30.506795+00	0	0	\N	2018-10-28 11:30:30.508186+00	\N	\N	7
914	-1500	生活用品	0	油卡	2018-10-28 11:30:50.855305+00	0	0	\N	2018-10-28 11:30:50.856573+00	\N	\N	7
915	5439	收入	0	工资	2018-10-28 11:31:25.391557+00	0	0	\N	2018-10-28 11:31:25.392826+00	\N	\N	7
916	1600	收入	0	奶奶红包新房	2018-10-28 11:32:19.27426+00	0	0	\N	2018-10-28 11:32:19.275519+00	\N	\N	7
917	2000	收入	0	妈妈红包新房	2018-10-28 11:32:43.243589+00	0	0	\N	2018-10-28 11:32:43.244933+00	\N	\N	7
918	800	收入	0	江六嬷嬷红包新房	2018-10-28 11:33:33.219261+00	0	0	\N	2018-10-28 11:33:33.220559+00	\N	\N	7
919	-10	餐饮	0	饼	2018-11-11 07:33:19.605083+00	0	0	\N	2018-11-11 07:33:19.608117+00	\N	\N	10
920	-8	餐饮	0	饮料	2018-11-11 07:33:41.942247+00	0	0	\N	2018-11-11 07:33:41.944622+00	\N	\N	10
921	-17	餐饮	0	三江超市	2018-11-11 07:34:01.027864+00	0	0	\N	2018-11-11 07:34:01.030974+00	\N	\N	10
922	-15	餐饮	0	水果	2018-11-11 07:34:18.484848+00	0	0	\N	2018-11-11 07:34:18.48645+00	\N	\N	10
923	-599	服饰	0	hm外套	2018-11-11 07:34:59.609878+00	0	0	\N	2018-11-11 07:34:59.612155+00	\N	\N	10
924	-369	其它	0	uno单片机	2018-11-11 07:35:50.98643+00	0	0	\N	2018-11-11 07:35:50.987872+00	\N	\N	10
925	-442	孩子	0	奶粉四合	2018-11-11 07:38:44.871752+00	0	0	\N	2018-11-11 07:38:44.873005+00	\N	\N	10
926	-265	餐饮	0	外婆家	2018-11-11 07:39:05.090315+00	0	0	\N	2018-11-11 07:39:05.091561+00	\N	\N	10
927	-1061	生活用品	0	snos play1	2018-11-11 07:41:50.162919+00	0	0	\N	2018-11-11 07:41:50.164162+00	\N	\N	10
928	-2199	生活用品	0	小米石头扫地机器人	2018-11-11 07:42:40.508004+00	0	0	\N	2018-11-11 07:42:40.509257+00	\N	\N	10
929	-880	孩子	0	奶粉八合	2018-11-11 07:43:41.903459+00	0	0	\N	2018-11-11 07:43:41.9047+00	\N	\N	10
930	-158	生活用品	0	卷纸	2018-11-11 08:17:52.323287+00	0	0	\N	2018-11-11 08:17:52.32562+00	\N	\N	10
931	28640	收入	0	提成	2018-11-11 08:19:36.944542+00	0	0	\N	2018-11-11 08:19:36.945816+00	\N	\N	7
932	-112	生活用品	0	美购超市	2018-11-11 08:20:35.204362+00	0	0	\N	2018-11-11 08:20:35.205645+00	\N	\N	7
933	-6	餐饮	0	零食	2018-11-11 08:21:00.215915+00	0	0	\N	2018-11-11 08:21:00.217325+00	\N	\N	7
934	-60	服饰	0	高腰裙	2018-11-11 08:21:19.526106+00	0	0	\N	2018-11-11 08:21:19.527451+00	\N	\N	7
935	-40	生活用品	0	苹果数据线	2018-11-11 08:21:36.474236+00	0	0	\N	2018-11-11 08:21:36.475492+00	\N	\N	7
936	-106	生活用品	0	家13.6爸91.98	2018-11-11 08:22:35.865774+00	0	0	\N	2018-11-11 08:22:35.86704+00	\N	\N	7
937	-38	生活用品	0	熊公仔	2018-11-11 08:22:56.08278+00	0	0	\N	2018-11-11 08:22:56.084046+00	\N	\N	7
938	-26	生活用品	0	沥水篮	2018-11-11 08:23:31.12472+00	0	0	\N	2018-11-11 08:23:31.125968+00	\N	\N	7
939	-100	生活用品	0	老婆大人	2018-11-11 08:23:47.847264+00	0	0	\N	2018-11-11 08:23:47.849592+00	\N	\N	7
940	-10	餐饮	0	甘蔗	2018-11-11 08:24:01.537867+00	0	0	\N	2018-11-11 08:24:01.540164+00	\N	\N	7
941	-112	生活用品	0	爸家	2018-11-11 08:24:28.558185+00	0	0	\N	2018-11-11 08:24:28.559491+00	\N	\N	7
942	-215	服饰	0	毛衣	2018-11-11 08:24:54.954612+00	0	0	\N	2018-11-11 08:24:54.955862+00	\N	\N	7
943	-231	孩子	0	嘟嘟鞋	2018-11-11 08:25:13.45001+00	0	0	\N	2018-11-11 08:25:13.451256+00	\N	\N	7
944	-750	服饰	0	牛仔裤lee	2018-11-11 08:25:32.191249+00	0	0	\N	2018-11-11 08:25:32.192498+00	\N	\N	7
945	-930	服饰	0	大衣	2018-11-11 08:25:45.047199+00	0	0	\N	2018-11-11 08:25:45.048473+00	\N	\N	7
946	-99	服饰	0	鞋子	2018-11-11 08:25:59.693306+00	0	0	\N	2018-11-11 08:25:59.694556+00	\N	\N	7
947	-30	餐饮	0	零食	2018-11-11 08:26:25.849624+00	0	0	\N	2018-11-11 08:26:25.850873+00	\N	\N	7
948	-99	孩子	0	湿巾	2018-11-11 08:26:50.961963+00	0	0	\N	2018-11-11 08:26:50.963207+00	\N	\N	7
949	-113	孩子	0	奶瓶加奶嘴	2018-11-11 08:28:03.017712+00	0	0	\N	2018-11-11 08:28:03.018978+00	\N	\N	7
950	-109	餐饮	0	四袋10斤大米	2018-11-11 08:29:36.319177+00	0	0	\N	2018-11-11 08:29:36.32045+00	\N	\N	7
951	-87	孩子	0	嘟嘟零食	2018-11-11 08:29:50.991344+00	0	0	\N	2018-11-11 08:29:50.992613+00	\N	\N	7
952	-77	餐饮	0	两袋20斤米	2018-11-11 08:30:16.578226+00	0	0	\N	2018-11-11 08:30:16.579497+00	\N	\N	7
953	-1161	生活用品	0	音响	2018-11-11 08:30:37.964957+00	0	0	\N	2018-11-11 08:30:37.966231+00	\N	\N	7
954	-227	孩子	0	尿不湿	2018-11-11 08:30:50.427742+00	0	0	\N	2018-11-11 08:30:50.429015+00	\N	\N	7
955	-209	餐饮	0	10袋大米10斤装	2018-11-11 08:31:24.679479+00	0	0	\N	2018-11-11 08:31:24.68074+00	\N	\N	7
956	-150	孩子	0	奶嘴奶瓶	2018-11-11 08:31:40.647912+00	0	0	\N	2018-11-11 08:31:40.649176+00	\N	\N	7
957	-187	孩子	0	滑梯	2018-11-11 08:31:52.964621+00	0	0	\N	2018-11-11 08:31:52.965869+00	\N	\N	7
958	-152	生活用品	0	抽餐巾纸	2018-11-11 08:32:41.527072+00	0	0	\N	2018-11-11 08:32:41.528493+00	\N	\N	7
959	-2108	生活用品	0	榨汁机	2018-11-11 08:32:57.38183+00	0	0	\N	2018-11-11 08:32:57.383083+00	\N	\N	7
960	-2018	其它	0	红包小强婚礼	2018-11-11 08:33:23.273516+00	0	0	\N	2018-11-11 08:33:23.274779+00	\N	\N	7
961	-500	其它	0	物业费	2018-11-11 08:33:35.902468+00	0	0	\N	2018-11-11 08:33:35.903731+00	\N	\N	7
962	-50	其它	0	东钱湖玩	2018-11-11 08:34:25.742898+00	0	0	\N	2018-11-11 08:34:25.744155+00	\N	\N	7
963	-25	餐饮	0	外卖	2018-11-11 08:34:38.933363+00	0	0	\N	2018-11-11 08:34:38.934625+00	\N	\N	7
\.


--
-- Name: babycare_iaer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pi
--

SELECT pg_catalog.setval('babycare_iaer_id_seq', 963, true);


--
-- Data for Name: babycare_like; Type: TABLE DATA; Schema: public; Owner: pi
--

COPY babycare_like (id, datetime, baby_id, event_id) FROM stdin;
6	2018-02-07 03:13:02.358108+00	11	32
\.


--
-- Name: babycare_like_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pi
--

SELECT pg_catalog.setval('babycare_like_id_seq', 6, true);


--
-- Data for Name: babycare_loginlog; Type: TABLE DATA; Schema: public; Owner: pi
--

COPY babycare_loginlog (id, system_type, system_version, phone_model, country, state, city, created, baby_id) FROM stdin;
\.


--
-- Name: babycare_loginlog_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pi
--

SELECT pg_catalog.setval('babycare_loginlog_id_seq', 1, false);


--
-- Data for Name: babycare_redenvelope; Type: TABLE DATA; Schema: public; Owner: pi
--

COPY babycare_redenvelope (id, money, money_type, money_from, remark, created, baby_id) FROM stdin;
2	880	0	磊艳姐	出生红包	2017-06-18 12:23:48.382078+00	1
3	188	0	小强	出生红包	2017-06-18 12:24:04.21992+00	1
4	1000	0	宁波嬷嬷	出生红包	2017-06-18 12:24:32.295148+00	1
5	800	0	咸祥嬷嬷	出生红包	2017-06-18 12:27:53.33798+00	1
6	600	0	咸祥哥哥	出生红包	2017-06-18 12:28:40.339832+00	1
7	2000	0	大姐姐	出生红包	2017-06-18 12:29:12.58767+00	1
8	10000	0	丈母娘	出生红包	2017-06-18 12:29:42.928428+00	1
9	1500	0	丈母娘	催生红包	2017-06-18 12:30:00.026331+00	1
10	1200	0	江陆嬷嬷	出生红包	2017-06-18 12:30:46.200995+00	1
11	800	0	江陆大哥哥	出生红包	2017-06-18 12:31:04.54314+00	1
12	800	0	江陆小哥哥	出生红包	2017-06-18 12:31:22.459012+00	1
13	600	0	大伯伯	出生红包	2017-06-18 12:31:43.151531+00	1
14	1000	0	二伯伯	出生红包	2017-06-18 12:32:04.609331+00	1
15	1000	0	三姐姐	出生红包	2017-06-18 12:32:27.740332+00	1
16	600	0	舅舅	出生红包	2017-06-18 12:32:39.499006+00	1
17	1200	0	外婆	出生红包	2017-06-18 12:32:55.949876+00	1
18	1600	0	阿姨	出生红包	2017-06-18 12:33:08.480811+00	1
24	1600	0	管江阿姨	出生红包	2017-06-19 07:48:12.146769+00	1
25	1000	0	上海嬷嬷	出生红包	2017-06-19 07:56:08.231509+00	1
26	13000	0	妈妈	出生红包	2017-06-19 07:56:24.576739+00	1
27	1200	0	奶奶	出生红包	2017-06-20 01:23:52.182672+00	1
28	1200	0	沙村嬷嬷	出生红包	2017-06-21 00:08:29.253738+00	1
29	1200	0	沙村大阿姆	出生红包	2017-06-21 00:08:55.263453+00	1
30	1200	0	沙村小阿姆	出生红包	2017-06-21 00:09:14.296094+00	1
31	5600	0	红霞	出生红包	2017-06-22 05:57:16.857961+00	1
32	3600	0	五姐	出生红包	2017-06-22 05:58:18.451322+00	1
33	1200	0	六姐	出生红包	2017-06-22 05:58:51.728138+00	1
34	1600	0	二姐	出生红包	2017-06-22 05:59:31.027873+00	1
36	1000	0	建华哥哥	出生红包	2017-06-25 01:46:07.657558+00	1
38	600	0	小龙	出生红包	2017-07-01 11:09:59.361237+00	1
39	1200	0	塘溪舅舅	出生红包	2017-07-01 11:10:21.219857+00	1
40	1000	0	建辉哥	出生红包	2017-07-09 08:10:01.194495+00	1
42	300	0	沙村小阿姆	见面红包	2017-08-05 01:34:24.315802+00	1
43	2800	0	丈母娘	见面红包	2017-08-05 01:34:45.029717+00	1
44	1600	0	奶奶	见面红包	2017-08-05 01:35:04.622308+00	1
45	2000	0	老婆老板	出生红包	2017-08-05 01:38:17.605805+00	1
143	508	0	外婆	见面红包	2017-10-19 13:17:47.148152+00	1
144	300	0	沙村嬷嬷	见面红包	2017-10-19 13:18:07.891939+00	1
145	660	0	五姐	满月红包	2017-10-19 13:18:55.11675+00	1
146	800	0	二姐姐	新年红包	2018-02-09 10:50:23.14149+00	1
147	600	0	宁波嬷嬷	新年红包	2018-02-09 10:50:49.837051+00	1
148	1000	0	五姐	过年红包	2018-02-11 10:12:06.021698+00	1
149	800	0	六姐	新年红包	2018-02-13 14:23:40.739161+00	1
151	500	0	奶奶	新年红包	2018-02-15 05:45:20.683989+00	1
152	600	0	建华哥	新年红包	2018-02-15 10:53:50.311889+00	1
153	600	0	外婆	新年红包	2018-02-16 11:30:41.023052+00	1
154	800	0	舅舅	新年红包	2018-02-16 11:30:51.972515+00	1
155	1000	0	江陆嬷嬷	新年红包	2018-02-16 11:31:07.942173+00	1
156	500	0	二伯伯	新年红包	2018-02-16 11:31:20.766115+00	1
157	10000	0	妈妈	新年红包	2018-02-16 11:35:07.004468+00	1
158	500	0	沙村大阿姆	新年红包	2018-02-18 09:09:41.916614+00	1
159	300	0	沙村小阿姆	新年红包	2018-02-18 09:09:56.393998+00	1
160	800	0	阿姨	新年红包	2018-02-18 09:17:46.756471+00	1
161	800	0	舅舅	新年红包	2018-02-18 09:17:58.245673+00	1
162	600	0	外婆	新年红包	2018-02-18 09:18:08.994977+00	1
163	300	0	沙村嬷嬷	新年红包	2018-02-18 10:16:12.372293+00	1
164	300	0	塘溪舅舅	新年红包	2018-02-18 10:16:32.901781+00	1
165	300	0	咸祥嬷嬷	新年红包	2018-02-18 10:16:59.123331+00	1
166	200	0	塘溪阿姨	过年红包	2018-02-27 02:26:13.506074+00	1
167	600	0	建辉哥	过年红包	2018-02-27 02:26:31.816098+00	1
169	600	0	大姐姐	新年红包	2018-03-08 13:26:07.828657+00	1
170	600	0	上海哥哥	见面红包	2018-04-14 10:52:54.355358+00	1
171	600	0	上海嬷嬷	见面红包	2018-04-14 10:53:07.463848+00	1
172	600	0	上海伯伯	见面红包	2018-04-14 10:53:23.962255+00	1
173	1600	0	丈母娘	生日红包	2018-06-23 02:52:26.944656+00	1
174	600	0	江陆嬷嬷	生日红包	2018-06-23 02:52:48.676356+00	1
\.


--
-- Name: babycare_redenvelope_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pi
--

SELECT pg_catalog.setval('babycare_redenvelope_id_seq', 174, true);


--
-- Data for Name: babycare_verify; Type: TABLE DATA; Schema: public; Owner: pi
--

COPY babycare_verify (id, email_verify_code, phone_verify_code, created, baby_id) FROM stdin;
2	289457	\N	2017-06-23 23:31:49.886294+00	1
3	789517	\N	2017-12-15 05:49:12.606191+00	10
\.


--
-- Name: babycare_verify_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pi
--

SELECT pg_catalog.setval('babycare_verify_id_seq', 3, true);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: pi
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2017-05-26 08:29:35.88564+00	1	1.0(2)	1	[{"added": {}}]	8	1
2	2017-06-07 02:13:54.015758+00	1	1.0(2)	3		8	1
3	2017-06-07 05:19:16.277786+00	2	0.2(2)	1	[{"added": {}}]	8	1
4	2017-06-07 05:22:26.862825+00	3	0.3(3)	1	[{"added": {}}]	8	1
5	2017-06-07 05:50:16.218849+00	3	0.3(3)	3		8	1
6	2017-06-07 05:51:16.218915+00	2	0.2(2)	2	[{"changed": {"fields": ["app_file"]}}]	8	1
7	2017-06-16 08:46:45.700181+00	4	babycare	2	[{"changed": {"fields": ["image1"]}}]	10	1
8	2017-06-16 08:47:05.61688+00	3	babycare	2	[{"changed": {"fields": ["image1"]}}]	10	1
9	2017-06-16 08:47:23.998842+00	1	babycare	2	[{"changed": {"fields": ["content", "image1"]}}]	10	1
10	2017-06-18 12:21:29.81507+00	2	0.2(2)	3		8	1
11	2017-06-18 12:55:51.331649+00	20	RedEnvelope object	3		16	1
12	2017-06-18 12:55:51.33483+00	19	RedEnvelope object	3		16	1
13	2017-06-19 08:16:51.504696+00	4	0.2(2)	1	[{"added": {}}]	8	1
14	2017-06-19 08:28:21.909536+00	4	0.2(2)	3		8	1
15	2017-06-19 08:32:19.754351+00	5	0.2(1)	1	[{"added": {}}]	8	1
16	2017-06-19 08:36:16.77356+00	5	0.2(2)	2	[{"changed": {"fields": ["version_code"]}}]	8	1
17	2017-06-24 00:42:31.037762+00	2	test1	3		9	1
18	2017-06-24 00:42:31.040515+00	1	test1	3		9	1
19	2017-06-24 00:43:25.854956+00	5	test1	3		9	1
20	2017-06-24 00:43:25.857721+00	4	test1	3		9	1
21	2017-06-24 00:43:25.859454+00	3	test1	3		9	1
22	2017-06-24 00:52:02.217776+00	6	0.3(3)	1	[{"added": {}}]	8	1
23	2017-07-27 07:38:27.82901+00	41	RedEnvelope object	1	[{"added": {}}]	16	1
24	2017-08-21 05:31:59.485781+00	46	RedEnvelope object	1	[{"added": {}}]	16	1
25	2017-08-23 06:58:08.202641+00	97	RedEnvelope object	3		16	1
26	2017-08-23 06:58:08.206172+00	96	RedEnvelope object	3		16	1
27	2017-08-23 06:58:08.208256+00	95	RedEnvelope object	3		16	1
28	2017-08-23 06:58:08.209938+00	94	RedEnvelope object	3		16	1
29	2017-08-23 06:58:08.211589+00	93	RedEnvelope object	3		16	1
30	2017-08-23 06:58:08.213114+00	92	RedEnvelope object	3		16	1
31	2017-08-23 06:58:08.215016+00	91	RedEnvelope object	3		16	1
32	2017-08-23 06:58:08.216583+00	90	RedEnvelope object	3		16	1
33	2017-08-23 06:58:08.218283+00	89	RedEnvelope object	3		16	1
34	2017-08-23 06:58:08.219796+00	88	RedEnvelope object	3		16	1
35	2017-08-23 06:58:08.221245+00	87	RedEnvelope object	3		16	1
36	2017-08-23 06:58:08.222787+00	86	RedEnvelope object	3		16	1
37	2017-08-23 06:58:08.224362+00	85	RedEnvelope object	3		16	1
38	2017-08-23 06:58:08.226055+00	84	RedEnvelope object	3		16	1
39	2017-08-23 06:58:08.227646+00	83	RedEnvelope object	3		16	1
40	2017-08-23 06:58:08.229217+00	82	RedEnvelope object	3		16	1
41	2017-08-23 06:58:08.230787+00	81	RedEnvelope object	3		16	1
42	2017-08-23 06:58:08.232276+00	80	RedEnvelope object	3		16	1
43	2017-08-23 06:58:08.233765+00	79	RedEnvelope object	3		16	1
44	2017-08-23 06:58:08.235608+00	77	RedEnvelope object	3		16	1
45	2017-08-23 06:58:08.237262+00	76	RedEnvelope object	3		16	1
46	2017-08-31 07:30:10.217083+00	123	RedEnvelope object	3		16	1
47	2017-08-31 07:30:10.220766+00	122	RedEnvelope object	3		16	1
48	2017-08-31 07:30:10.22288+00	121	RedEnvelope object	3		16	1
49	2017-08-31 07:30:10.224696+00	120	RedEnvelope object	3		16	1
50	2017-08-31 07:30:10.226632+00	119	RedEnvelope object	3		16	1
51	2017-08-31 07:30:10.228458+00	118	RedEnvelope object	3		16	1
52	2017-08-31 07:30:10.230206+00	117	RedEnvelope object	3		16	1
53	2017-08-31 07:30:10.231798+00	116	RedEnvelope object	3		16	1
54	2017-08-31 07:30:10.233732+00	115	RedEnvelope object	3		16	1
55	2017-08-31 07:30:10.235395+00	114	RedEnvelope object	3		16	1
56	2017-08-31 07:30:10.237017+00	113	RedEnvelope object	3		16	1
57	2017-08-31 07:30:10.238969+00	112	RedEnvelope object	3		16	1
58	2017-08-31 07:30:10.240626+00	111	RedEnvelope object	3		16	1
59	2017-08-31 07:30:10.242688+00	110	RedEnvelope object	3		16	1
60	2017-08-31 07:30:10.244341+00	109	RedEnvelope object	3		16	1
61	2017-08-31 07:30:10.245932+00	108	RedEnvelope object	3		16	1
62	2017-08-31 07:30:10.247775+00	107	RedEnvelope object	3		16	1
63	2017-08-31 07:30:10.249324+00	106	RedEnvelope object	3		16	1
64	2017-08-31 07:30:10.250978+00	105	RedEnvelope object	3		16	1
65	2017-08-31 07:30:10.252487+00	104	RedEnvelope object	3		16	1
66	2017-08-31 07:30:10.254006+00	103	RedEnvelope object	3		16	1
67	2017-08-31 07:30:10.255783+00	102	RedEnvelope object	3		16	1
68	2017-08-31 07:30:10.258824+00	101	RedEnvelope object	3		16	1
69	2017-08-31 07:30:10.260561+00	100	RedEnvelope object	3		16	1
70	2017-08-31 07:30:10.262246+00	99	RedEnvelope object	3		16	1
71	2017-08-31 07:30:10.264499+00	98	RedEnvelope object	3		16	1
72	2017-08-31 07:30:10.266488+00	75	RedEnvelope object	3		16	1
73	2017-08-31 07:30:10.26807+00	74	RedEnvelope object	3		16	1
74	2017-08-31 07:30:10.26966+00	73	RedEnvelope object	3		16	1
75	2017-08-31 07:30:10.271408+00	72	RedEnvelope object	3		16	1
76	2017-08-31 07:30:10.272929+00	71	RedEnvelope object	3		16	1
77	2017-08-31 07:30:10.274624+00	70	RedEnvelope object	3		16	1
78	2017-08-31 07:30:10.276305+00	69	RedEnvelope object	3		16	1
79	2017-08-31 07:30:10.278726+00	68	RedEnvelope object	3		16	1
80	2017-08-31 07:30:10.280409+00	67	RedEnvelope object	3		16	1
81	2017-08-31 07:30:10.282064+00	66	RedEnvelope object	3		16	1
82	2017-08-31 07:30:10.283787+00	65	RedEnvelope object	3		16	1
83	2017-08-31 07:30:10.285628+00	64	RedEnvelope object	3		16	1
84	2017-08-31 07:30:10.28744+00	63	RedEnvelope object	3		16	1
85	2017-08-31 07:30:10.289201+00	62	RedEnvelope object	3		16	1
86	2017-08-31 07:30:10.290777+00	61	RedEnvelope object	3		16	1
87	2017-08-31 07:30:10.292448+00	60	RedEnvelope object	3		16	1
88	2017-08-31 07:30:10.293983+00	59	RedEnvelope object	3		16	1
89	2017-08-31 07:30:10.295651+00	58	RedEnvelope object	3		16	1
90	2017-08-31 07:30:10.297287+00	57	RedEnvelope object	3		16	1
91	2017-08-31 07:30:10.298978+00	56	RedEnvelope object	3		16	1
92	2017-08-31 07:30:10.30069+00	55	RedEnvelope object	3		16	1
93	2017-08-31 07:30:10.302363+00	54	RedEnvelope object	3		16	1
94	2017-08-31 07:30:10.304275+00	53	RedEnvelope object	3		16	1
95	2017-08-31 07:30:10.305972+00	52	RedEnvelope object	3		16	1
96	2017-08-31 07:30:10.307713+00	51	RedEnvelope object	3		16	1
97	2017-08-31 07:30:10.309381+00	50	RedEnvelope object	3		16	1
98	2017-08-31 07:30:10.311056+00	49	RedEnvelope object	3		16	1
99	2017-08-31 07:30:10.31288+00	48	RedEnvelope object	3		16	1
100	2017-08-31 07:30:10.314712+00	47	RedEnvelope object	3		16	1
101	2017-08-31 07:30:10.31638+00	46	RedEnvelope object	3		16	1
102	2017-08-31 08:57:54.717053+00	126	RedEnvelope object	3		16	1
103	2017-08-31 08:57:54.72014+00	125	RedEnvelope object	3		16	1
104	2017-08-31 08:57:54.721941+00	124	RedEnvelope object	3		16	1
105	2017-09-14 02:31:33.335609+00	132	RedEnvelope object	3		16	1
106	2017-09-14 02:44:56.096296+00	133	RedEnvelope object	3		16	1
107	2017-09-14 02:44:56.099591+00	131	RedEnvelope object	3		16	1
108	2017-09-14 02:44:56.101454+00	130	RedEnvelope object	3		16	1
109	2017-09-14 02:44:56.103229+00	129	RedEnvelope object	3		16	1
110	2017-09-14 02:44:56.104928+00	128	RedEnvelope object	3		16	1
111	2017-09-14 02:44:56.10734+00	127	RedEnvelope object	3		16	1
112	2017-09-20 03:15:51.478485+00	138	RedEnvelope object	3		16	1
113	2017-09-20 03:15:51.481903+00	137	RedEnvelope object	3		16	1
114	2017-09-20 03:15:51.483657+00	136	RedEnvelope object	3		16	1
115	2017-09-20 03:15:51.485515+00	135	RedEnvelope object	3		16	1
116	2017-09-20 03:15:51.487167+00	134	RedEnvelope object	3		16	1
117	2017-10-14 09:01:19.43668+00	3	test1@gmail.com(test1)	3		11	1
118	2017-10-14 09:01:19.439851+00	2	test@gmail.com(test)	3		11	1
119	2017-10-14 09:02:21.549428+00	3	test	3		3	1
120	2017-10-14 09:02:21.551878+00	4	test1	3		3	1
121	2017-10-14 09:05:02.738415+00	0a73b72c5a93a493a19fc37770c4fda4a48bc9c9	0a73b72c5a93a493a19fc37770c4fda4a48bc9c9	3		7	1
122	2017-10-14 09:08:38.879222+00	6	11	2	[{"changed": {"fields": ["username", "is_staff"]}}]	3	1
123	2017-10-14 09:08:50.216404+00	6	11	3		3	1
124	2017-10-14 12:35:23.488495+00	1	Iaer object	1	[{"added": {}}]	18	1
125	2017-10-14 12:35:44.123929+00	1	Iaer object	3		18	1
126	2017-10-18 02:50:29.477356+00	3	Iaer object	3		18	1
127	2017-10-18 02:50:29.480329+00	4	Iaer object	3		18	1
128	2017-10-18 02:50:29.482076+00	5	Iaer object	3		18	1
129	2017-10-18 02:50:29.483906+00	2	Iaer object	3		18	1
130	2017-10-18 08:52:16.740808+00	7	Emily	2	[{"changed": {"fields": ["is_superuser"]}}]	3	1
131	2017-10-18 08:57:51.660403+00	7	Emily	3		3	1
132	2017-10-23 03:22:44.49896+00	11	Iaer object	3		18	1
133	2017-10-23 03:22:44.501701+00	7	Iaer object	3		18	1
134	2017-10-25 02:36:02.713168+00	8	hshsj@djdjdj.com(test)	3		11	1
135	2017-10-25 05:56:12.856166+00	1	admin	2	[{"changed": {"fields": ["username"]}}]	3	1
136	2017-10-25 06:01:03.347613+00	9	380668771@qq.com(ben)	3		11	1
137	2017-10-25 06:02:30.314688+00	10	ben	3		3	1
138	2017-10-25 06:02:30.317198+00	9	test	3		3	1
139	2017-10-26 02:05:28.237107+00	33	Iaer object	2	[{"changed": {"fields": ["money", "category"]}}]	18	1
140	2017-10-26 02:05:36.615242+00	31	Iaer object	2	[{"changed": {"fields": ["category"]}}]	18	1
141	2017-11-20 01:19:10.696658+00	34	Iaer object	2	[{"changed": {"fields": ["category"]}}]	18	1
142	2017-11-20 01:19:25.312167+00	35	Iaer object	2	[{"changed": {"fields": ["category"]}}]	18	1
143	2017-11-20 01:19:38.380887+00	36	Iaer object	2	[{"changed": {"fields": ["category"]}}]	18	1
144	2017-11-20 01:19:49.644339+00	91	Iaer object	2	[{"changed": {"fields": ["category"]}}]	18	1
145	2017-11-20 01:20:00.448035+00	90	Iaer object	2	[{"changed": {"fields": ["category"]}}]	18	1
146	2017-11-20 01:20:10.408821+00	79	Iaer object	2	[{"changed": {"fields": ["category"]}}]	18	1
147	2017-11-20 01:20:21.113914+00	78	Iaer object	2	[{"changed": {"fields": ["category"]}}]	18	1
148	2017-11-20 01:20:32.788634+00	57	Iaer object	2	[{"changed": {"fields": ["category"]}}]	18	1
149	2017-11-24 13:50:43.814806+00	75	Iaer object	2	[{"changed": {"fields": ["category"]}}]	18	1
150	2017-11-30 12:23:01.255057+00	122	Iaer object	2	[{"changed": {"fields": ["money", "category"]}}]	18	1
151	2017-12-27 12:09:47.975967+00	158	Iaer object	2	[{"changed": {"fields": ["money"]}}]	18	1
152	2018-01-09 09:35:56.709133+00	214	Iaer object	3		18	1
153	2018-01-10 01:03:37.181224+00	215	Iaer object	3		18	1
154	2018-01-10 01:05:50.901828+00	217	Iaer object	3		18	1
155	2018-01-10 01:05:50.904471+00	216	Iaer object	3		18	1
156	2018-01-10 01:06:04.86045+00	200	Iaer object	2	[{"changed": {"fields": ["category"]}}]	18	1
157	2018-01-10 01:06:26.519635+00	121	Iaer object	2	[{"changed": {"fields": ["category"]}}]	18	1
158	2018-01-10 01:06:33.12031+00	156	Iaer object	2	[{"changed": {"fields": ["category"]}}]	18	1
159	2018-01-10 01:06:39.783721+00	90	Iaer object	2	[{"changed": {"fields": ["category"]}}]	18	1
160	2018-01-10 01:06:48.164623+00	120	Iaer object	2	[{"changed": {"fields": ["category"]}}]	18	1
161	2018-01-10 01:06:55.839998+00	122	Iaer object	2	[{"changed": {"fields": ["category"]}}]	18	1
162	2018-01-10 01:07:02.581293+00	57	Iaer object	2	[{"changed": {"fields": ["category"]}}]	18	1
163	2018-01-10 01:07:09.040901+00	78	Iaer object	2	[{"changed": {"fields": ["category"]}}]	18	1
164	2018-01-10 01:07:15.999202+00	79	Iaer object	2	[{"changed": {"fields": ["category"]}}]	18	1
165	2018-01-10 01:14:22.300157+00	218	Iaer object	2	[{"changed": {"fields": ["category"]}}]	18	1
166	2018-01-10 01:14:31.831946+00	204	Iaer object	2	[{"changed": {"fields": ["category"]}}]	18	1
167	2018-01-10 01:14:37.60055+00	202	Iaer object	2	[{"changed": {"fields": ["category"]}}]	18	1
168	2018-01-10 01:14:49.994221+00	187	Iaer object	2	[{"changed": {"fields": ["category"]}}]	18	1
169	2018-01-10 01:14:58.244073+00	157	Iaer object	2	[{"changed": {"fields": ["category"]}}]	18	1
170	2018-01-10 01:15:07.9193+00	145	Iaer object	2	[{"changed": {"fields": ["category"]}}]	18	1
171	2018-01-10 01:15:16.666396+00	144	Iaer object	2	[{"changed": {"fields": ["category"]}}]	18	1
172	2018-01-10 01:15:25.843609+00	118	Iaer object	2	[{"changed": {"fields": ["category"]}}]	18	1
173	2018-01-11 13:41:32.267171+00	218	Iaer object	3		18	1
174	2018-02-19 07:14:11.972584+00	140	RedEnvelope object	3		16	1
175	2018-02-19 07:14:34.194144+00	139	RedEnvelope object	3		16	1
176	2018-02-20 10:20:25.409121+00	314	Iaer object	2	[{"changed": {"fields": ["remark"]}}]	18	1
177	2018-10-06 11:41:43.372567+00	813	Iaer object (813)	2	[{"changed": {"fields": ["category"]}}]	18	1
178	2018-10-06 11:42:05.362664+00	803	Iaer object (803)	2	[{"changed": {"fields": ["category"]}}]	18	1
179	2018-10-06 11:42:21.646054+00	802	Iaer object (802)	2	[{"changed": {"fields": ["category"]}}]	18	1
180	2018-10-06 11:42:41.757792+00	797	Iaer object (797)	2	[{"changed": {"fields": ["category"]}}]	18	1
181	2018-10-06 11:43:08.83821+00	794	Iaer object (794)	2	[{"changed": {"fields": ["category"]}}]	18	1
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pi
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 181, true);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: pi
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
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pi
--

SELECT pg_catalog.setval('django_content_type_id_seq', 18, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: pi
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2017-05-26 08:28:33.264639+00
2	auth	0001_initial	2017-05-26 08:28:33.372451+00
3	admin	0001_initial	2017-05-26 08:28:33.440142+00
4	admin	0002_logentry_remove_auto_add	2017-05-26 08:28:33.466668+00
5	contenttypes	0002_remove_content_type_name	2017-05-26 08:28:33.511678+00
6	auth	0002_alter_permission_name_max_length	2017-05-26 08:28:33.529278+00
7	auth	0003_alter_user_email_max_length	2017-05-26 08:28:33.547924+00
8	auth	0004_alter_user_username_opts	2017-05-26 08:28:33.561652+00
9	auth	0005_alter_user_last_login_null	2017-05-26 08:28:33.577062+00
10	auth	0006_require_contenttypes_0002	2017-05-26 08:28:33.579685+00
11	auth	0007_alter_validators_add_error_messages	2017-05-26 08:28:33.593712+00
12	auth	0008_alter_user_username_max_length	2017-05-26 08:28:33.624266+00
13	authtoken	0001_initial	2017-05-26 08:28:33.658024+00
14	authtoken	0002_auto_20160226_1747	2017-05-26 08:28:33.733906+00
15	sessions	0001_initial	2017-05-26 08:28:33.75598+00
16	babycare	0001_initial	2017-05-26 08:28:36.003975+00
17	babycare	0002_redenvelope	2017-06-18 11:53:55.098877+00
18	babycare	0002_iaer	2017-10-14 08:55:24.146335+00
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pi
--

SELECT pg_catalog.setval('django_migrations_id_seq', 18, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: pi
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
8c4oc1fcqlbq2sr99gjcf2pd2a6r4h5x	Zjg4NTE3MzlhNmMzNTJhNzYwZDEzZjZiNmRjN2Q4NjI1ZWRjMTMwNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjZTNjZmYwNzY0NDA2NzdjNDdkODhjMDBhNTU1MzJjYjZiN2IwYzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-06-09 08:29:06.48297+00
dnhen4gikyi9oe9sb6lp07du1pnm0n32	Zjg4NTE3MzlhNmMzNTJhNzYwZDEzZjZiNmRjN2Q4NjI1ZWRjMTMwNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjZTNjZmYwNzY0NDA2NzdjNDdkODhjMDBhNTU1MzJjYjZiN2IwYzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-06-21 02:13:41.79168+00
ulz6iawp9xn3tni60k5vys1odwospek4	Zjg4NTE3MzlhNmMzNTJhNzYwZDEzZjZiNmRjN2Q4NjI1ZWRjMTMwNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjZTNjZmYwNzY0NDA2NzdjNDdkODhjMDBhNTU1MzJjYjZiN2IwYzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-07-08 00:42:21.434107+00
j14n98mmry821nf03eppdri3a6ks7iyr	Zjg4NTE3MzlhNmMzNTJhNzYwZDEzZjZiNmRjN2Q4NjI1ZWRjMTMwNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjZTNjZmYwNzY0NDA2NzdjNDdkODhjMDBhNTU1MzJjYjZiN2IwYzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-08-10 07:37:16.033751+00
x4b63ba5bp2bziolw2nuy6nsspqs5u7n	Zjg4NTE3MzlhNmMzNTJhNzYwZDEzZjZiNmRjN2Q4NjI1ZWRjMTMwNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjZTNjZmYwNzY0NDA2NzdjNDdkODhjMDBhNTU1MzJjYjZiN2IwYzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-08-19 01:28:49.979641+00
cjlt2bqnxa5xr2xv4rbygafam9u0esv3	Zjg4NTE3MzlhNmMzNTJhNzYwZDEzZjZiNmRjN2Q4NjI1ZWRjMTMwNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjZTNjZmYwNzY0NDA2NzdjNDdkODhjMDBhNTU1MzJjYjZiN2IwYzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-08-30 05:09:10.742477+00
28edmtoyi6m8p1mwju1lxkl18bb3r3cy	Zjg4NTE3MzlhNmMzNTJhNzYwZDEzZjZiNmRjN2Q4NjI1ZWRjMTMwNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjZTNjZmYwNzY0NDA2NzdjNDdkODhjMDBhNTU1MzJjYjZiN2IwYzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-09-05 06:14:17.821626+00
v1t6buldu4a1ef0nopp5fxn4bbl3aiho	Zjg4NTE3MzlhNmMzNTJhNzYwZDEzZjZiNmRjN2Q4NjI1ZWRjMTMwNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjZTNjZmYwNzY0NDA2NzdjNDdkODhjMDBhNTU1MzJjYjZiN2IwYzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-09-14 07:28:37.988596+00
z8qc1p2dj5pdsy7e9hx8xpebesoi20lk	Zjg4NTE3MzlhNmMzNTJhNzYwZDEzZjZiNmRjN2Q4NjI1ZWRjMTMwNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjZTNjZmYwNzY0NDA2NzdjNDdkODhjMDBhNTU1MzJjYjZiN2IwYzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-10-02 01:57:10.098971+00
uaeafsod2n7upli016z6vcwbxhxemzq2	Zjg4NTE3MzlhNmMzNTJhNzYwZDEzZjZiNmRjN2Q4NjI1ZWRjMTMwNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjZTNjZmYwNzY0NDA2NzdjNDdkODhjMDBhNTU1MzJjYjZiN2IwYzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-10-09 03:41:17.277341+00
cogq40tq5k45mtzsrmm84qruab6li2jh	Zjg4NTE3MzlhNmMzNTJhNzYwZDEzZjZiNmRjN2Q4NjI1ZWRjMTMwNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjZTNjZmYwNzY0NDA2NzdjNDdkODhjMDBhNTU1MzJjYjZiN2IwYzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-10-09 05:32:26.982427+00
96fakcfwmcuukg0otp9wk3g3at99oepg	Zjg4NTE3MzlhNmMzNTJhNzYwZDEzZjZiNmRjN2Q4NjI1ZWRjMTMwNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjZTNjZmYwNzY0NDA2NzdjNDdkODhjMDBhNTU1MzJjYjZiN2IwYzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-10-28 08:54:37.192216+00
emprgjr3tqki5jaouad863bi4ob7yyh4	Zjg4NTE3MzlhNmMzNTJhNzYwZDEzZjZiNmRjN2Q4NjI1ZWRjMTMwNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjZTNjZmYwNzY0NDA2NzdjNDdkODhjMDBhNTU1MzJjYjZiN2IwYzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-10-28 09:12:14.816145+00
e9h244eb638frg11iqgauplpvo9qt3f9	Zjg4NTE3MzlhNmMzNTJhNzYwZDEzZjZiNmRjN2Q4NjI1ZWRjMTMwNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjZTNjZmYwNzY0NDA2NzdjNDdkODhjMDBhNTU1MzJjYjZiN2IwYzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-10-28 12:33:54.20908+00
rm34i96sn32tuhxppk14sw4s5cbrzdjr	Zjg4NTE3MzlhNmMzNTJhNzYwZDEzZjZiNmRjN2Q4NjI1ZWRjMTMwNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjZTNjZmYwNzY0NDA2NzdjNDdkODhjMDBhNTU1MzJjYjZiN2IwYzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-11-01 08:53:25.232287+00
h2rdpatb1b09853iktkif7m7cbk1k7vs	Zjg4NTE3MzlhNmMzNTJhNzYwZDEzZjZiNmRjN2Q4NjI1ZWRjMTMwNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjZTNjZmYwNzY0NDA2NzdjNDdkODhjMDBhNTU1MzJjYjZiN2IwYzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-11-04 00:26:22.066241+00
u10uxr1th85v92htm49rl9h6l0v4v3w5	Zjg4NTE3MzlhNmMzNTJhNzYwZDEzZjZiNmRjN2Q4NjI1ZWRjMTMwNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjZTNjZmYwNzY0NDA2NzdjNDdkODhjMDBhNTU1MzJjYjZiN2IwYzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-11-06 03:22:13.927972+00
m3hgl38dbywa2zis6t2igxgj4j0ezwop	Zjg4NTE3MzlhNmMzNTJhNzYwZDEzZjZiNmRjN2Q4NjI1ZWRjMTMwNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjZTNjZmYwNzY0NDA2NzdjNDdkODhjMDBhNTU1MzJjYjZiN2IwYzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-11-29 06:47:45.474352+00
2y0y3l8b8rqgq3449smt58r64kqx57dd	Zjg4NTE3MzlhNmMzNTJhNzYwZDEzZjZiNmRjN2Q4NjI1ZWRjMTMwNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjZTNjZmYwNzY0NDA2NzdjNDdkODhjMDBhNTU1MzJjYjZiN2IwYzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-12-04 01:12:05.971599+00
0901ji80z4nme8aenpnszvc4r5z0zx8g	Zjg4NTE3MzlhNmMzNTJhNzYwZDEzZjZiNmRjN2Q4NjI1ZWRjMTMwNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjZTNjZmYwNzY0NDA2NzdjNDdkODhjMDBhNTU1MzJjYjZiN2IwYzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-12-08 13:49:23.528665+00
mxcx52s3t6o2ldkj60x8yt53r2uc0unf	Zjg4NTE3MzlhNmMzNTJhNzYwZDEzZjZiNmRjN2Q4NjI1ZWRjMTMwNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjZTNjZmYwNzY0NDA2NzdjNDdkODhjMDBhNTU1MzJjYjZiN2IwYzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2018-01-10 12:08:30.628985+00
1hdu792zyzzat8fd5nuktsjmofgmldme	Zjg4NTE3MzlhNmMzNTJhNzYwZDEzZjZiNmRjN2Q4NjI1ZWRjMTMwNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjZTNjZmYwNzY0NDA2NzdjNDdkODhjMDBhNTU1MzJjYjZiN2IwYzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2018-01-23 09:34:07.240673+00
enp5k452852eizjs7hfhb2y29grr8xt0	Zjg4NTE3MzlhNmMzNTJhNzYwZDEzZjZiNmRjN2Q4NjI1ZWRjMTMwNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjZTNjZmYwNzY0NDA2NzdjNDdkODhjMDBhNTU1MzJjYjZiN2IwYzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2018-01-25 13:41:15.246441+00
sppyhdcffbmdcsbl9q9oylvr6fideawg	Zjg4NTE3MzlhNmMzNTJhNzYwZDEzZjZiNmRjN2Q4NjI1ZWRjMTMwNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjZTNjZmYwNzY0NDA2NzdjNDdkODhjMDBhNTU1MzJjYjZiN2IwYzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2018-03-05 07:13:35.883518+00
o50653hus5xvbk0bcustgp96ih3fbqxr	Zjg4NTE3MzlhNmMzNTJhNzYwZDEzZjZiNmRjN2Q4NjI1ZWRjMTMwNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjZTNjZmYwNzY0NDA2NzdjNDdkODhjMDBhNTU1MzJjYjZiN2IwYzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2018-03-13 01:59:57.124276+00
i0suzvpd6a5pvs7krpvv986j32x739oy	Zjg4NTE3MzlhNmMzNTJhNzYwZDEzZjZiNmRjN2Q4NjI1ZWRjMTMwNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjZTNjZmYwNzY0NDA2NzdjNDdkODhjMDBhNTU1MzJjYjZiN2IwYzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2018-04-02 12:46:28.369014+00
sylw7bn0rhllyo1ykxmkhffyee2spk1j	MDEzY2IyZjVlODU5MjdmZjMxZTU5ZWVkYjM4ZGM5ZTNkOGE4OGJkMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiNGRkNmJkYjdhODAzZjNlMTNhYWEyYTllZjRlMmZmNTRlYWQ2YjNiNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2018-04-09 13:41:57.110397+00
7ynn38yuk15e52571lxkx4zf7q7j22k6	MDEzY2IyZjVlODU5MjdmZjMxZTU5ZWVkYjM4ZGM5ZTNkOGE4OGJkMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiNGRkNmJkYjdhODAzZjNlMTNhYWEyYTllZjRlMmZmNTRlYWQ2YjNiNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2018-09-14 13:21:01.894164+00
5xtxts9mp9iksx93twb5l8zydapxzera	MWRjZWQ4ZGI3NGI0YmNhNTE1MzY0NzhkZDQwZjk3ODA1YzEwZjI3NTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiI0ZGQ2YmRiN2E4MDNmM2UxM2FhYTJhOWVmNGUyZmY1NGVhZDZiM2I2In0=	2018-09-14 14:31:30.165159+00
o8dzbn9drqf1ppvt4wp5by9fvzkygxbi	ODQ5MmQyMjA5OGUzZDA4YmQ4N2IxZjFhOTRjYjNiNjc0Mzc4NGU2ZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjRkZDZiZGI3YTgwM2YzZTEzYWFhMmE5ZWY0ZTJmZjU0ZWFkNmIzYjYiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2018-10-13 13:48:44.104459+00
97cw7q3bkfrk9r726md0s6k5ly65x8g4	YWIxODY2OWI2N2RhNTMxYzQ2NjdmZGY4NmQ2NjMxZjAzMDMzMTU2NTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZGQ2YmRiN2E4MDNmM2UxM2FhYTJhOWVmNGUyZmY1NGVhZDZiM2I2In0=	2018-10-13 14:58:04.38799+00
yto8c15032bw2mjtvxwxewpdf1n8jvjy	ODQ5MmQyMjA5OGUzZDA4YmQ4N2IxZjFhOTRjYjNiNjc0Mzc4NGU2ZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjRkZDZiZGI3YTgwM2YzZTEzYWFhMmE5ZWY0ZTJmZjU0ZWFkNmIzYjYiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2018-10-20 11:41:13.070366+00
3zt98bvq3zqpkhvttnj2risyz3r4r127	MDRmYzZlYWYwYmJlMmY3M2Q5OWNmNGVkOTNmNjVkMmUxOTZjNjFlMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjRkZDZiZGI3YTgwM2YzZTEzYWFhMmE5ZWY0ZTJmZjU0ZWFkNmIzYjYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2018-11-30 08:38:10.956666+00
\.


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: authtoken_token authtoken_token_pkey; Type: CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY authtoken_token
    ADD CONSTRAINT authtoken_token_pkey PRIMARY KEY (key);


--
-- Name: authtoken_token authtoken_token_user_id_key; Type: CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_key UNIQUE (user_id);


--
-- Name: babycare_appinfo babycare_appinfo_pkey; Type: CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY babycare_appinfo
    ADD CONSTRAINT babycare_appinfo_pkey PRIMARY KEY (id);


--
-- Name: babycare_babyuser babycare_babyuser_pkey; Type: CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY babycare_babyuser
    ADD CONSTRAINT babycare_babyuser_pkey PRIMARY KEY (id);


--
-- Name: babycare_comment babycare_comment_pkey; Type: CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY babycare_comment
    ADD CONSTRAINT babycare_comment_pkey PRIMARY KEY (id);


--
-- Name: babycare_event babycare_event_pkey; Type: CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY babycare_event
    ADD CONSTRAINT babycare_event_pkey PRIMARY KEY (id);


--
-- Name: babycare_feedback babycare_feedback_pkey; Type: CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY babycare_feedback
    ADD CONSTRAINT babycare_feedback_pkey PRIMARY KEY (id);


--
-- Name: babycare_iaer babycare_iaer_pkey; Type: CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY babycare_iaer
    ADD CONSTRAINT babycare_iaer_pkey PRIMARY KEY (id);


--
-- Name: babycare_like babycare_like_pkey; Type: CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY babycare_like
    ADD CONSTRAINT babycare_like_pkey PRIMARY KEY (id);


--
-- Name: babycare_loginlog babycare_loginlog_pkey; Type: CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY babycare_loginlog
    ADD CONSTRAINT babycare_loginlog_pkey PRIMARY KEY (id);


--
-- Name: babycare_redenvelope babycare_redenvelope_pkey; Type: CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY babycare_redenvelope
    ADD CONSTRAINT babycare_redenvelope_pkey PRIMARY KEY (id);


--
-- Name: babycare_verify babycare_verify_pkey; Type: CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY babycare_verify
    ADD CONSTRAINT babycare_verify_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: pi
--

CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_0e939a4f; Type: INDEX; Schema: public; Owner: pi
--

CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_8373b171; Type: INDEX; Schema: public; Owner: pi
--

CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_417f1b1c; Type: INDEX; Schema: public; Owner: pi
--

CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_0e939a4f; Type: INDEX; Schema: public; Owner: pi
--

CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_e8701ad4; Type: INDEX; Schema: public; Owner: pi
--

CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_8373b171; Type: INDEX; Schema: public; Owner: pi
--

CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_e8701ad4; Type: INDEX; Schema: public; Owner: pi
--

CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: pi
--

CREATE INDEX auth_user_username_6821ab7c_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: authtoken_token_key_10f0b77e_like; Type: INDEX; Schema: public; Owner: pi
--

CREATE INDEX authtoken_token_key_10f0b77e_like ON authtoken_token USING btree (key varchar_pattern_ops);


--
-- Name: babycare_babyuser_e8701ad4; Type: INDEX; Schema: public; Owner: pi
--

CREATE INDEX babycare_babyuser_e8701ad4 ON babycare_babyuser USING btree (user_id);


--
-- Name: babycare_comment_4437cfac; Type: INDEX; Schema: public; Owner: pi
--

CREATE INDEX babycare_comment_4437cfac ON babycare_comment USING btree (event_id);


--
-- Name: babycare_comment_d12af49a; Type: INDEX; Schema: public; Owner: pi
--

CREATE INDEX babycare_comment_d12af49a ON babycare_comment USING btree (baby_id);


--
-- Name: babycare_comment_f2aa0a2c; Type: INDEX; Schema: public; Owner: pi
--

CREATE INDEX babycare_comment_f2aa0a2c ON babycare_comment USING btree (source_comment_id);


--
-- Name: babycare_event_d12af49a; Type: INDEX; Schema: public; Owner: pi
--

CREATE INDEX babycare_event_d12af49a ON babycare_event USING btree (baby_id);


--
-- Name: babycare_feedback_d12af49a; Type: INDEX; Schema: public; Owner: pi
--

CREATE INDEX babycare_feedback_d12af49a ON babycare_feedback USING btree (baby_id);


--
-- Name: babycare_iaer_e8701ad4; Type: INDEX; Schema: public; Owner: pi
--

CREATE INDEX babycare_iaer_e8701ad4 ON babycare_iaer USING btree (user_id);


--
-- Name: babycare_like_4437cfac; Type: INDEX; Schema: public; Owner: pi
--

CREATE INDEX babycare_like_4437cfac ON babycare_like USING btree (event_id);


--
-- Name: babycare_like_d12af49a; Type: INDEX; Schema: public; Owner: pi
--

CREATE INDEX babycare_like_d12af49a ON babycare_like USING btree (baby_id);


--
-- Name: babycare_loginlog_d12af49a; Type: INDEX; Schema: public; Owner: pi
--

CREATE INDEX babycare_loginlog_d12af49a ON babycare_loginlog USING btree (baby_id);


--
-- Name: babycare_redenvelope_d12af49a; Type: INDEX; Schema: public; Owner: pi
--

CREATE INDEX babycare_redenvelope_d12af49a ON babycare_redenvelope USING btree (baby_id);


--
-- Name: babycare_verify_d12af49a; Type: INDEX; Schema: public; Owner: pi
--

CREATE INDEX babycare_verify_d12af49a ON babycare_verify USING btree (baby_id);


--
-- Name: django_admin_log_417f1b1c; Type: INDEX; Schema: public; Owner: pi
--

CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_e8701ad4; Type: INDEX; Schema: public; Owner: pi
--

CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);


--
-- Name: django_session_de54fa62; Type: INDEX; Schema: public; Owner: pi
--

CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: pi
--

CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: authtoken_token authtoken_token_user_id_35299eff_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_35299eff_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: babycare_babyuser babycare_babyuser_user_id_a3aed8d8_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY babycare_babyuser
    ADD CONSTRAINT babycare_babyuser_user_id_a3aed8d8_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: babycare_comment babycare_comm_source_comment_id_7e9e0d8b_fk_babycare_comment_id; Type: FK CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY babycare_comment
    ADD CONSTRAINT babycare_comm_source_comment_id_7e9e0d8b_fk_babycare_comment_id FOREIGN KEY (source_comment_id) REFERENCES babycare_comment(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: babycare_comment babycare_comment_baby_id_5692e7f8_fk_babycare_babyuser_id; Type: FK CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY babycare_comment
    ADD CONSTRAINT babycare_comment_baby_id_5692e7f8_fk_babycare_babyuser_id FOREIGN KEY (baby_id) REFERENCES babycare_babyuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: babycare_comment babycare_comment_event_id_dd13a261_fk_babycare_event_id; Type: FK CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY babycare_comment
    ADD CONSTRAINT babycare_comment_event_id_dd13a261_fk_babycare_event_id FOREIGN KEY (event_id) REFERENCES babycare_event(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: babycare_event babycare_event_baby_id_cbfba2fd_fk_babycare_babyuser_id; Type: FK CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY babycare_event
    ADD CONSTRAINT babycare_event_baby_id_cbfba2fd_fk_babycare_babyuser_id FOREIGN KEY (baby_id) REFERENCES babycare_babyuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: babycare_feedback babycare_feedback_baby_id_fbbc63b9_fk_babycare_babyuser_id; Type: FK CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY babycare_feedback
    ADD CONSTRAINT babycare_feedback_baby_id_fbbc63b9_fk_babycare_babyuser_id FOREIGN KEY (baby_id) REFERENCES babycare_babyuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: babycare_iaer babycare_iaer_user_id_4bf3a62d_fk_babycare_babyuser_id; Type: FK CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY babycare_iaer
    ADD CONSTRAINT babycare_iaer_user_id_4bf3a62d_fk_babycare_babyuser_id FOREIGN KEY (user_id) REFERENCES babycare_babyuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: babycare_like babycare_like_baby_id_cacfa94b_fk_babycare_babyuser_id; Type: FK CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY babycare_like
    ADD CONSTRAINT babycare_like_baby_id_cacfa94b_fk_babycare_babyuser_id FOREIGN KEY (baby_id) REFERENCES babycare_babyuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: babycare_like babycare_like_event_id_e4584794_fk_babycare_event_id; Type: FK CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY babycare_like
    ADD CONSTRAINT babycare_like_event_id_e4584794_fk_babycare_event_id FOREIGN KEY (event_id) REFERENCES babycare_event(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: babycare_loginlog babycare_loginlog_baby_id_b7de5fa8_fk_babycare_babyuser_id; Type: FK CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY babycare_loginlog
    ADD CONSTRAINT babycare_loginlog_baby_id_b7de5fa8_fk_babycare_babyuser_id FOREIGN KEY (baby_id) REFERENCES babycare_babyuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: babycare_redenvelope babycare_redenvelope_baby_id_6fb45d26_fk_babycare_babyuser_id; Type: FK CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY babycare_redenvelope
    ADD CONSTRAINT babycare_redenvelope_baby_id_6fb45d26_fk_babycare_babyuser_id FOREIGN KEY (baby_id) REFERENCES babycare_babyuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: babycare_verify babycare_verify_baby_id_426c8def_fk_babycare_babyuser_id; Type: FK CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY babycare_verify
    ADD CONSTRAINT babycare_verify_baby_id_426c8def_fk_babycare_babyuser_id FOREIGN KEY (baby_id) REFERENCES babycare_babyuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_content_type_id_c4bce8eb_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_content_type_id_c4bce8eb_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

