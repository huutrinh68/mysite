--
-- PostgreSQL database dump
--

-- Dumped from database version 12.1 (Debian 12.1-1.pgdg100+1)
-- Dumped by pg_dump version 12.1 (Debian 12.1-1.pgdg100+1)

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
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
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
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
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
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
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
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
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
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: blog_ads; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blog_ads (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    html text NOT NULL
);


ALTER TABLE public.blog_ads OWNER TO postgres;

--
-- Name: blog_ads_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.blog_ads_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blog_ads_id_seq OWNER TO postgres;

--
-- Name: blog_ads_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.blog_ads_id_seq OWNED BY public.blog_ads.id;


--
-- Name: blog_analytics; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blog_analytics (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    html text NOT NULL
);


ALTER TABLE public.blog_analytics OWNER TO postgres;

--
-- Name: blog_analytics_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.blog_analytics_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blog_analytics_id_seq OWNER TO postgres;

--
-- Name: blog_analytics_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.blog_analytics_id_seq OWNED BY public.blog_analytics.id;


--
-- Name: blog_category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blog_category (
    id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.blog_category OWNER TO postgres;

--
-- Name: blog_category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.blog_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blog_category_id_seq OWNER TO postgres;

--
-- Name: blog_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.blog_category_id_seq OWNED BY public.blog_category.id;


--
-- Name: blog_comment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blog_comment (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    text text NOT NULL,
    icon character varying(100),
    created_at timestamp with time zone NOT NULL,
    target_id integer NOT NULL
);


ALTER TABLE public.blog_comment OWNER TO postgres;

--
-- Name: blog_comment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.blog_comment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blog_comment_id_seq OWNER TO postgres;

--
-- Name: blog_comment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.blog_comment_id_seq OWNED BY public.blog_comment.id;


--
-- Name: blog_file; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blog_file (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    src character varying(100) NOT NULL,
    object_id integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    content_type_id integer NOT NULL,
    CONSTRAINT blog_file_object_id_check CHECK ((object_id >= 0))
);


ALTER TABLE public.blog_file OWNER TO postgres;

--
-- Name: blog_file_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.blog_file_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blog_file_id_seq OWNER TO postgres;

--
-- Name: blog_file_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.blog_file_id_seq OWNED BY public.blog_file.id;


--
-- Name: blog_image; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blog_image (
    id integer NOT NULL,
    src character varying(100) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    post_id integer NOT NULL,
    title character varying(255) NOT NULL
);


ALTER TABLE public.blog_image OWNER TO postgres;

--
-- Name: blog_image_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.blog_image_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blog_image_id_seq OWNER TO postgres;

--
-- Name: blog_image_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.blog_image_id_seq OWNED BY public.blog_image.id;


--
-- Name: blog_link; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blog_link (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    adrs character varying(255) NOT NULL
);


ALTER TABLE public.blog_link OWNER TO postgres;

--
-- Name: blog_link_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.blog_link_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blog_link_id_seq OWNER TO postgres;

--
-- Name: blog_link_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.blog_link_id_seq OWNED BY public.blog_link.id;


--
-- Name: blog_popularpost; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blog_popularpost (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    url character varying(255) NOT NULL,
    page_view integer NOT NULL
);


ALTER TABLE public.blog_popularpost OWNER TO postgres;

--
-- Name: blog_popularpost_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.blog_popularpost_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blog_popularpost_id_seq OWNER TO postgres;

--
-- Name: blog_popularpost_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.blog_popularpost_id_seq OWNED BY public.blog_popularpost.id;


--
-- Name: blog_post; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blog_post (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    text text NOT NULL,
    thumnail character varying(100),
    is_publick boolean NOT NULL,
    description text NOT NULL,
    created_at timestamp with time zone NOT NULL,
    category_id integer NOT NULL
);


ALTER TABLE public.blog_post OWNER TO postgres;

--
-- Name: blog_post_friend_posts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blog_post_friend_posts (
    id integer NOT NULL,
    from_post_id integer NOT NULL,
    to_post_id integer NOT NULL
);


ALTER TABLE public.blog_post_friend_posts OWNER TO postgres;

--
-- Name: blog_post_friend_posts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.blog_post_friend_posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blog_post_friend_posts_id_seq OWNER TO postgres;

--
-- Name: blog_post_friend_posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.blog_post_friend_posts_id_seq OWNED BY public.blog_post_friend_posts.id;


--
-- Name: blog_post_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.blog_post_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blog_post_id_seq OWNER TO postgres;

--
-- Name: blog_post_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.blog_post_id_seq OWNED BY public.blog_post.id;


--
-- Name: blog_post_tag; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blog_post_tag (
    id integer NOT NULL,
    post_id integer NOT NULL,
    tag_id integer NOT NULL
);


ALTER TABLE public.blog_post_tag OWNER TO postgres;

--
-- Name: blog_post_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.blog_post_tag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blog_post_tag_id_seq OWNER TO postgres;

--
-- Name: blog_post_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.blog_post_tag_id_seq OWNED BY public.blog_post_tag.id;


--
-- Name: blog_recomment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blog_recomment (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    text text NOT NULL,
    icon character varying(100),
    created_at timestamp with time zone NOT NULL,
    target_id integer NOT NULL
);


ALTER TABLE public.blog_recomment OWNER TO postgres;

--
-- Name: blog_recomment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.blog_recomment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blog_recomment_id_seq OWNER TO postgres;

--
-- Name: blog_recomment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.blog_recomment_id_seq OWNED BY public.blog_recomment.id;


--
-- Name: blog_sitedetail; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blog_sitedetail (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    header_text text NOT NULL,
    description text NOT NULL,
    author character varying(255) NOT NULL,
    author_mail character varying(255) NOT NULL,
    color character varying(30) NOT NULL,
    site_id integer NOT NULL
);


ALTER TABLE public.blog_sitedetail OWNER TO postgres;

--
-- Name: blog_sitedetail_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.blog_sitedetail_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blog_sitedetail_id_seq OWNER TO postgres;

--
-- Name: blog_sitedetail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.blog_sitedetail_id_seq OWNED BY public.blog_sitedetail.id;


--
-- Name: blog_tag; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blog_tag (
    id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.blog_tag OWNER TO postgres;

--
-- Name: blog_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.blog_tag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blog_tag_id_seq OWNER TO postgres;

--
-- Name: blog_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.blog_tag_id_seq OWNED BY public.blog_tag.id;


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
    user_id integer NOT NULL,
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
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
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
-- Name: django_site; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.django_site OWNER TO postgres;

--
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_site_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_site_id_seq OWNER TO postgres;

--
-- Name: django_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_site_id_seq OWNED BY public.django_site.id;


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
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: blog_ads id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_ads ALTER COLUMN id SET DEFAULT nextval('public.blog_ads_id_seq'::regclass);


--
-- Name: blog_analytics id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_analytics ALTER COLUMN id SET DEFAULT nextval('public.blog_analytics_id_seq'::regclass);


--
-- Name: blog_category id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_category ALTER COLUMN id SET DEFAULT nextval('public.blog_category_id_seq'::regclass);


--
-- Name: blog_comment id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_comment ALTER COLUMN id SET DEFAULT nextval('public.blog_comment_id_seq'::regclass);


--
-- Name: blog_file id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_file ALTER COLUMN id SET DEFAULT nextval('public.blog_file_id_seq'::regclass);


--
-- Name: blog_image id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_image ALTER COLUMN id SET DEFAULT nextval('public.blog_image_id_seq'::regclass);


--
-- Name: blog_link id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_link ALTER COLUMN id SET DEFAULT nextval('public.blog_link_id_seq'::regclass);


--
-- Name: blog_popularpost id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_popularpost ALTER COLUMN id SET DEFAULT nextval('public.blog_popularpost_id_seq'::regclass);


--
-- Name: blog_post id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_post ALTER COLUMN id SET DEFAULT nextval('public.blog_post_id_seq'::regclass);


--
-- Name: blog_post_friend_posts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_post_friend_posts ALTER COLUMN id SET DEFAULT nextval('public.blog_post_friend_posts_id_seq'::regclass);


--
-- Name: blog_post_tag id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_post_tag ALTER COLUMN id SET DEFAULT nextval('public.blog_post_tag_id_seq'::regclass);


--
-- Name: blog_recomment id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_recomment ALTER COLUMN id SET DEFAULT nextval('public.blog_recomment_id_seq'::regclass);


--
-- Name: blog_sitedetail id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_sitedetail ALTER COLUMN id SET DEFAULT nextval('public.blog_sitedetail_id_seq'::regclass);


--
-- Name: blog_tag id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_tag ALTER COLUMN id SET DEFAULT nextval('public.blog_tag_id_seq'::regclass);


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
-- Name: django_site id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_site ALTER COLUMN id SET DEFAULT nextval('public.django_site_id_seq'::regclass);


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
25	Can add site	7	add_site
26	Can change site	7	change_site
27	Can delete site	7	delete_site
28	Can view site	7	view_site
29	Can add ads	8	add_ads
30	Can change ads	8	change_ads
31	Can delete ads	8	delete_ads
32	Can view ads	8	view_ads
33	Can add analytics	9	add_analytics
34	Can change analytics	9	change_analytics
35	Can delete analytics	9	delete_analytics
36	Can view analytics	9	view_analytics
37	Can add category	10	add_category
38	Can change category	10	change_category
39	Can delete category	10	delete_category
40	Can view category	10	view_category
41	Can add comment	11	add_comment
42	Can change comment	11	change_comment
43	Can delete comment	11	delete_comment
44	Can view comment	11	view_comment
45	Can add file	12	add_file
46	Can change file	12	change_file
47	Can delete file	12	delete_file
48	Can view file	12	view_file
49	Can add image	13	add_image
50	Can change image	13	change_image
51	Can delete image	13	delete_image
52	Can view image	13	view_image
53	Can add link	14	add_link
54	Can change link	14	change_link
55	Can delete link	14	delete_link
56	Can view link	14	view_link
57	Can add popular post	15	add_popularpost
58	Can change popular post	15	change_popularpost
59	Can delete popular post	15	delete_popularpost
60	Can view popular post	15	view_popularpost
61	Can add post	16	add_post
62	Can change post	16	change_post
63	Can delete post	16	delete_post
64	Can view post	16	view_post
65	Can add re comment	17	add_recomment
66	Can change re comment	17	change_recomment
67	Can delete re comment	17	delete_recomment
68	Can view re comment	17	view_recomment
69	Can add site detail	18	add_sitedetail
70	Can change site detail	18	change_sitedetail
71	Can delete site detail	18	delete_sitedetail
72	Can view site detail	18	view_sitedetail
73	Can add tag	19	add_tag
74	Can change tag	19	change_tag
75	Can delete tag	19	delete_tag
76	Can view tag	19	view_tag
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$150000$IZqSXwJJ28QG$wXQDO+rxNVmWuYSWCOs9wki7o0qm0qqknu6JtrqW3RE=	2019-12-19 06:00:59.806925+00	t	huutrinh			trinhsp89@gmail.com	t	t	2019-12-19 05:58:06.858057+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: blog_ads; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.blog_ads (id, name, html) FROM stdin;
\.


--
-- Data for Name: blog_analytics; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.blog_analytics (id, name, html) FROM stdin;
\.


--
-- Data for Name: blog_category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.blog_category (id, name) FROM stdin;
\.


--
-- Data for Name: blog_comment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.blog_comment (id, name, text, icon, created_at, target_id) FROM stdin;
\.


--
-- Data for Name: blog_file; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.blog_file (id, title, src, object_id, created_at, content_type_id) FROM stdin;
\.


--
-- Data for Name: blog_image; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.blog_image (id, src, created_at, post_id, title) FROM stdin;
\.


--
-- Data for Name: blog_link; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.blog_link (id, name, adrs) FROM stdin;
\.


--
-- Data for Name: blog_popularpost; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.blog_popularpost (id, title, url, page_view) FROM stdin;
\.


--
-- Data for Name: blog_post; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.blog_post (id, title, text, thumnail, is_publick, description, created_at, category_id) FROM stdin;
\.


--
-- Data for Name: blog_post_friend_posts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.blog_post_friend_posts (id, from_post_id, to_post_id) FROM stdin;
\.


--
-- Data for Name: blog_post_tag; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.blog_post_tag (id, post_id, tag_id) FROM stdin;
\.


--
-- Data for Name: blog_recomment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.blog_recomment (id, name, text, icon, created_at, target_id) FROM stdin;
\.


--
-- Data for Name: blog_sitedetail; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.blog_sitedetail (id, title, header_text, description, author, author_mail, color, site_id) FROM stdin;
1	Blog kỹ thuật	Ký sự Nhật Bản	Học tập và chia sẻ	Citynow	huutrinh.nguyen@citynow.jp	secondary	1
\.


--
-- Data for Name: blog_tag; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.blog_tag (id, name) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2019-12-19 05:58:24.530538+00	1	example.com	2	[{"changed": {"name": "site detail", "object": "Huutrinh", "fields": ["header_text", "color"]}}]	7	1
2	2019-12-19 06:29:38.257401+00	1	example.com	2	[{"changed": {"name": "site detail", "object": "Huutrinh", "fields": ["title"]}}]	7	1
3	2019-12-19 06:31:08.705652+00	1	example.com	2	[{"changed": {"name": "site detail", "object": "Huutrinh", "fields": ["author_mail"]}}]	7	1
4	2019-12-19 06:31:46.515417+00	1	example.com	2	[{"changed": {"name": "site detail", "object": "citynow", "fields": ["author"]}}]	7	1
5	2019-12-19 06:32:06.328216+00	1	example.com	2	[{"changed": {"name": "site detail", "object": "Citynow", "fields": ["author"]}}]	7	1
6	2019-12-19 06:33:24.958575+00	1	example.com	2	[{"changed": {"name": "site detail", "object": "Citynow", "fields": ["header_text"]}}]	7	1
7	2019-12-19 06:34:32.496999+00	1	example.com	2	[{"changed": {"name": "site detail", "object": "Citynow", "fields": ["description"]}}]	7	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	sites	site
8	blog	ads
9	blog	analytics
10	blog	category
11	blog	comment
12	blog	file
13	blog	image
14	blog	link
15	blog	popularpost
16	blog	post
17	blog	recomment
18	blog	sitedetail
19	blog	tag
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2019-12-19 05:52:57.745443+00
2	auth	0001_initial	2019-12-19 05:52:57.804406+00
3	admin	0001_initial	2019-12-19 05:52:57.865107+00
4	admin	0002_logentry_remove_auto_add	2019-12-19 05:52:57.886298+00
5	admin	0003_logentry_add_action_flag_choices	2019-12-19 05:52:57.903217+00
6	contenttypes	0002_remove_content_type_name	2019-12-19 05:52:57.936951+00
7	auth	0002_alter_permission_name_max_length	2019-12-19 05:52:57.945641+00
8	auth	0003_alter_user_email_max_length	2019-12-19 05:52:57.961991+00
9	auth	0004_alter_user_username_opts	2019-12-19 05:52:57.979977+00
10	auth	0005_alter_user_last_login_null	2019-12-19 05:52:57.997974+00
11	auth	0006_require_contenttypes_0002	2019-12-19 05:52:58.002092+00
12	auth	0007_alter_validators_add_error_messages	2019-12-19 05:52:58.018695+00
13	auth	0008_alter_user_username_max_length	2019-12-19 05:52:58.040878+00
14	auth	0009_alter_user_last_name_max_length	2019-12-19 05:52:58.05708+00
15	auth	0010_alter_group_name_max_length	2019-12-19 05:52:58.072941+00
16	auth	0011_update_proxy_permissions	2019-12-19 05:52:58.089966+00
17	sites	0001_initial	2019-12-19 05:52:58.103073+00
18	sites	0002_alter_domain_unique	2019-12-19 05:52:58.119908+00
19	blog	0001_initial	2019-12-19 05:52:58.263794+00
20	blog	0002_auto_20191219_1110	2019-12-19 05:52:58.40977+00
21	blog	0003_auto_20191219_1114	2019-12-19 05:52:58.41766+00
22	sessions	0001_initial	2019-12-19 05:52:58.429808+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
jyn2af7hndrcgdc9gd5t7wpboyyytzj0	MDU1ZGVjM2M1YmVhNzRiMDdlMTc3YmQwMGFiYzFjNGMxNWFkMGZlNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5MjZlNWM5ZTJjZWU2MzhjY2ZkNDBmMzVlYmU4Mzc1MWU1M2JkOGQ2In0=	2020-01-02 06:00:59.809788+00
\.


--
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_site (id, domain, name) FROM stdin;
1	example.com	example.com
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

SELECT pg_catalog.setval('public.auth_permission_id_seq', 76, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: blog_ads_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.blog_ads_id_seq', 1, false);


--
-- Name: blog_analytics_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.blog_analytics_id_seq', 1, false);


--
-- Name: blog_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.blog_category_id_seq', 1, false);


--
-- Name: blog_comment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.blog_comment_id_seq', 1, false);


--
-- Name: blog_file_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.blog_file_id_seq', 1, false);


--
-- Name: blog_image_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.blog_image_id_seq', 1, false);


--
-- Name: blog_link_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.blog_link_id_seq', 1, false);


--
-- Name: blog_popularpost_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.blog_popularpost_id_seq', 1, false);


--
-- Name: blog_post_friend_posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.blog_post_friend_posts_id_seq', 1, false);


--
-- Name: blog_post_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.blog_post_id_seq', 1, false);


--
-- Name: blog_post_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.blog_post_tag_id_seq', 1, false);


--
-- Name: blog_recomment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.blog_recomment_id_seq', 1, false);


--
-- Name: blog_sitedetail_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.blog_sitedetail_id_seq', 1, true);


--
-- Name: blog_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.blog_tag_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 7, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 19, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 22, true);


--
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_site_id_seq', 1, true);


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
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: blog_ads blog_ads_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_ads
    ADD CONSTRAINT blog_ads_pkey PRIMARY KEY (id);


--
-- Name: blog_analytics blog_analytics_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_analytics
    ADD CONSTRAINT blog_analytics_pkey PRIMARY KEY (id);


--
-- Name: blog_category blog_category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_category
    ADD CONSTRAINT blog_category_pkey PRIMARY KEY (id);


--
-- Name: blog_comment blog_comment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_comment
    ADD CONSTRAINT blog_comment_pkey PRIMARY KEY (id);


--
-- Name: blog_file blog_file_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_file
    ADD CONSTRAINT blog_file_pkey PRIMARY KEY (id);


--
-- Name: blog_image blog_image_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_image
    ADD CONSTRAINT blog_image_pkey PRIMARY KEY (id);


--
-- Name: blog_link blog_link_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_link
    ADD CONSTRAINT blog_link_pkey PRIMARY KEY (id);


--
-- Name: blog_popularpost blog_popularpost_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_popularpost
    ADD CONSTRAINT blog_popularpost_pkey PRIMARY KEY (id);


--
-- Name: blog_post_friend_posts blog_post_friend_posts_from_post_id_to_post_id_2085bbe7_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_post_friend_posts
    ADD CONSTRAINT blog_post_friend_posts_from_post_id_to_post_id_2085bbe7_uniq UNIQUE (from_post_id, to_post_id);


--
-- Name: blog_post_friend_posts blog_post_friend_posts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_post_friend_posts
    ADD CONSTRAINT blog_post_friend_posts_pkey PRIMARY KEY (id);


--
-- Name: blog_post blog_post_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_post
    ADD CONSTRAINT blog_post_pkey PRIMARY KEY (id);


--
-- Name: blog_post_tag blog_post_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_post_tag
    ADD CONSTRAINT blog_post_tag_pkey PRIMARY KEY (id);


--
-- Name: blog_post_tag blog_post_tag_post_id_tag_id_ba2a5f83_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_post_tag
    ADD CONSTRAINT blog_post_tag_post_id_tag_id_ba2a5f83_uniq UNIQUE (post_id, tag_id);


--
-- Name: blog_recomment blog_recomment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_recomment
    ADD CONSTRAINT blog_recomment_pkey PRIMARY KEY (id);


--
-- Name: blog_sitedetail blog_sitedetail_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_sitedetail
    ADD CONSTRAINT blog_sitedetail_pkey PRIMARY KEY (id);


--
-- Name: blog_sitedetail blog_sitedetail_site_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_sitedetail
    ADD CONSTRAINT blog_sitedetail_site_id_key UNIQUE (site_id);


--
-- Name: blog_tag blog_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_tag
    ADD CONSTRAINT blog_tag_pkey PRIMARY KEY (id);


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
-- Name: django_site django_site_domain_a2e37b91_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);


--
-- Name: django_site django_site_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);


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
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: blog_comment_target_id_2462b5da; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_comment_target_id_2462b5da ON public.blog_comment USING btree (target_id);


--
-- Name: blog_file_content_type_id_fd1ccd11; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_file_content_type_id_fd1ccd11 ON public.blog_file USING btree (content_type_id);


--
-- Name: blog_image_post_id_f0fc4833; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_image_post_id_f0fc4833 ON public.blog_image USING btree (post_id);


--
-- Name: blog_post_category_id_c326dbf8; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_post_category_id_c326dbf8 ON public.blog_post USING btree (category_id);


--
-- Name: blog_post_friend_posts_from_post_id_1ba8f85f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_post_friend_posts_from_post_id_1ba8f85f ON public.blog_post_friend_posts USING btree (from_post_id);


--
-- Name: blog_post_friend_posts_to_post_id_93dcf1e9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_post_friend_posts_to_post_id_93dcf1e9 ON public.blog_post_friend_posts USING btree (to_post_id);


--
-- Name: blog_post_tag_post_id_a5c00319; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_post_tag_post_id_a5c00319 ON public.blog_post_tag USING btree (post_id);


--
-- Name: blog_post_tag_tag_id_2bbd31e4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_post_tag_tag_id_2bbd31e4 ON public.blog_post_tag USING btree (tag_id);


--
-- Name: blog_recomment_target_id_9c6a8372; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_recomment_target_id_9c6a8372 ON public.blog_recomment USING btree (target_id);


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
-- Name: django_site_domain_a2e37b91_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_site_domain_a2e37b91_like ON public.django_site USING btree (domain varchar_pattern_ops);


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
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_comment blog_comment_target_id_2462b5da_fk_blog_post_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_comment
    ADD CONSTRAINT blog_comment_target_id_2462b5da_fk_blog_post_id FOREIGN KEY (target_id) REFERENCES public.blog_post(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_file blog_file_content_type_id_fd1ccd11_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_file
    ADD CONSTRAINT blog_file_content_type_id_fd1ccd11_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_image blog_image_post_id_f0fc4833_fk_blog_post_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_image
    ADD CONSTRAINT blog_image_post_id_f0fc4833_fk_blog_post_id FOREIGN KEY (post_id) REFERENCES public.blog_post(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_post blog_post_category_id_c326dbf8_fk_blog_category_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_post
    ADD CONSTRAINT blog_post_category_id_c326dbf8_fk_blog_category_id FOREIGN KEY (category_id) REFERENCES public.blog_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_post_friend_posts blog_post_friend_posts_from_post_id_1ba8f85f_fk_blog_post_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_post_friend_posts
    ADD CONSTRAINT blog_post_friend_posts_from_post_id_1ba8f85f_fk_blog_post_id FOREIGN KEY (from_post_id) REFERENCES public.blog_post(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_post_friend_posts blog_post_friend_posts_to_post_id_93dcf1e9_fk_blog_post_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_post_friend_posts
    ADD CONSTRAINT blog_post_friend_posts_to_post_id_93dcf1e9_fk_blog_post_id FOREIGN KEY (to_post_id) REFERENCES public.blog_post(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_post_tag blog_post_tag_post_id_a5c00319_fk_blog_post_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_post_tag
    ADD CONSTRAINT blog_post_tag_post_id_a5c00319_fk_blog_post_id FOREIGN KEY (post_id) REFERENCES public.blog_post(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_post_tag blog_post_tag_tag_id_2bbd31e4_fk_blog_tag_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_post_tag
    ADD CONSTRAINT blog_post_tag_tag_id_2bbd31e4_fk_blog_tag_id FOREIGN KEY (tag_id) REFERENCES public.blog_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_recomment blog_recomment_target_id_9c6a8372_fk_blog_comment_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_recomment
    ADD CONSTRAINT blog_recomment_target_id_9c6a8372_fk_blog_comment_id FOREIGN KEY (target_id) REFERENCES public.blog_comment(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_sitedetail blog_sitedetail_site_id_60d2c08e_fk_django_site_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_sitedetail
    ADD CONSTRAINT blog_sitedetail_site_id_60d2c08e_fk_django_site_id FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

