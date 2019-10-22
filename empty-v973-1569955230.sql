--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.15
-- Dumped by pg_dump version 11.4

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

SET default_with_oids = false;

--
-- Name: SequelizeMeta; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."SequelizeMeta" (
    name character varying(255) NOT NULL
);


--
-- Name: SequelizeMetaBackup; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."SequelizeMetaBackup" (
    id integer NOT NULL,
    "from" character varying(255),
    "to" character varying(255)
);


--
-- Name: SequelizeMeta_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."SequelizeMeta_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: SequelizeMeta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."SequelizeMeta_id_seq" OWNED BY public."SequelizeMetaBackup".id;


--
-- Name: aggregation_references; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.aggregation_references (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer
);


--
-- Name: aggregation_references_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.aggregation_references_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: aggregation_references_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.aggregation_references_id_seq OWNED BY public.aggregation_references.id;


--
-- Name: allowed_roles; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.allowed_roles (
    id integer NOT NULL,
    roleable_id integer,
    roleable_type text,
    permission text,
    role_id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


--
-- Name: allowed_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.allowed_roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: allowed_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.allowed_roles_id_seq OWNED BY public.allowed_roles.id;


--
-- Name: allowed_teams; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.allowed_teams (
    id integer NOT NULL,
    teamable_id integer,
    teamable_type text,
    permission text,
    team_id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


--
-- Name: allowed_teams_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.allowed_teams_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: allowed_teams_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.allowed_teams_id_seq OWNED BY public.allowed_teams.id;


--
-- Name: allowed_users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.allowed_users (
    id integer NOT NULL,
    userable_id integer,
    userable_type text,
    permission text,
    user_id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


--
-- Name: allowed_users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.allowed_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: allowed_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.allowed_users_id_seq OWNED BY public.allowed_users.id;


--
-- Name: archives; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.archives (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    status character varying(255),
    archive_options json DEFAULT '""'::json
);


--
-- Name: archives_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.archives_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: archives_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.archives_id_seq OWNED BY public.archives.id;


--
-- Name: assertions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.assertions (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer
);


--
-- Name: assertions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.assertions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: assertions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.assertions_id_seq OWNED BY public.assertions.id;


--
-- Name: attachments; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.attachments (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    type character varying(255) NOT NULL,
    sheet_id integer,
    document_id integer,
    attachable_id integer,
    attachable_type character varying(255),
    lock_user_id integer,
    locked_at timestamp with time zone,
    name character varying(255),
    file_id integer,
    sort_order integer
);


--
-- Name: attachments_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: attachments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.attachments_id_seq OWNED BY public.attachments.id;


--
-- Name: baseline_result_options; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.baseline_result_options (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name text NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL
);


--
-- Name: baseline_result_options_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.baseline_result_options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: baseline_result_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.baseline_result_options_id_seq OWNED BY public.baseline_result_options.id;


--
-- Name: business_units; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.business_units (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL
);


--
-- Name: business_units_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.business_units_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: business_units_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.business_units_id_seq OWNED BY public.business_units.id;


--
-- Name: comment_references; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.comment_references (
    id integer NOT NULL,
    comment_id integer,
    controls_datum_id integer NOT NULL,
    field character varying(255),
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone
);


--
-- Name: comment_references_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.comment_references_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: comment_references_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.comment_references_id_seq OWNED BY public.comment_references.id;


--
-- Name: comment_unsubscribers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.comment_unsubscribers (
    id integer NOT NULL,
    comment_id integer,
    user_id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone
);


--
-- Name: comment_unsubscribers_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.comment_unsubscribers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: comment_unsubscribers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.comment_unsubscribers_id_seq OWNED BY public.comment_unsubscribers.id;


--
-- Name: comments; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.comments (
    id integer NOT NULL,
    parent_comment_id integer,
    owner_user_id integer NOT NULL,
    type character varying(255),
    status character varying(255),
    message_raw text NOT NULL,
    message_html text NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    commentable_id integer,
    commentable_type character varying(255)
);


--
-- Name: comments_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.comments_id_seq OWNED BY public.comments.id;


--
-- Name: comments_roles; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.comments_roles (
    id integer NOT NULL,
    comment_id integer,
    role_id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone
);


--
-- Name: comments_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.comments_roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: comments_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.comments_roles_id_seq OWNED BY public.comments_roles.id;


--
-- Name: comments_teams; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.comments_teams (
    id integer NOT NULL,
    comment_id integer,
    team_id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone
);


--
-- Name: comments_teams_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.comments_teams_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: comments_teams_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.comments_teams_id_seq OWNED BY public.comments_teams.id;


--
-- Name: comments_users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.comments_users (
    id integer NOT NULL,
    comment_id integer,
    user_id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    has_unread_comments boolean
);


--
-- Name: comments_users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.comments_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: comments_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.comments_users_id_seq OWNED BY public.comments_users.id;


--
-- Name: control_classifications; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.control_classifications (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL
);


--
-- Name: control_classifications_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.control_classifications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: control_classifications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.control_classifications_id_seq OWNED BY public.control_classifications.id;


--
-- Name: control_comments; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.control_comments (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    controls_datum_id integer,
    comment_user_id integer,
    subject character varying(255) NOT NULL,
    message text,
    edited_at timestamp with time zone
);


--
-- Name: control_comments_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.control_comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: control_comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.control_comments_id_seq OWNED BY public.control_comments.id;


--
-- Name: control_complexity_options; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.control_complexity_options (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL
);


--
-- Name: control_complexity_options_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.control_complexity_options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: control_complexity_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.control_complexity_options_id_seq OWNED BY public.control_complexity_options.id;


--
-- Name: control_custom_multiselect1_options; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.control_custom_multiselect1_options (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL
);


--
-- Name: control_custom_multiselect1_options_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.control_custom_multiselect1_options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: control_custom_multiselect1_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.control_custom_multiselect1_options_id_seq OWNED BY public.control_custom_multiselect1_options.id;


--
-- Name: control_custom_multiselect2_options; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.control_custom_multiselect2_options (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL
);


--
-- Name: control_custom_multiselect2_options_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.control_custom_multiselect2_options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: control_custom_multiselect2_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.control_custom_multiselect2_options_id_seq OWNED BY public.control_custom_multiselect2_options.id;


--
-- Name: control_custom_multiselect3_options; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.control_custom_multiselect3_options (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL
);


--
-- Name: control_custom_multiselect3_options_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.control_custom_multiselect3_options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: control_custom_multiselect3_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.control_custom_multiselect3_options_id_seq OWNED BY public.control_custom_multiselect3_options.id;


--
-- Name: control_custom_multiselect4_options; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.control_custom_multiselect4_options (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL
);


--
-- Name: control_custom_multiselect4_options_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.control_custom_multiselect4_options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: control_custom_multiselect4_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.control_custom_multiselect4_options_id_seq OWNED BY public.control_custom_multiselect4_options.id;


--
-- Name: control_custom_select1_options; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.control_custom_select1_options (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL
);


--
-- Name: control_custom_select1_options_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.control_custom_select1_options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: control_custom_select1_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.control_custom_select1_options_id_seq OWNED BY public.control_custom_select1_options.id;


--
-- Name: control_design_options; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.control_design_options (
    id integer NOT NULL,
    sort_order integer,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL
);


--
-- Name: control_design_options_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.control_design_options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: control_design_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.control_design_options_id_seq OWNED BY public.control_design_options.id;


--
-- Name: control_frequencies; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.control_frequencies (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer,
    meta_config text
);


--
-- Name: control_frequencies_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.control_frequencies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: control_frequencies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.control_frequencies_id_seq OWNED BY public.control_frequencies.id;


--
-- Name: control_inherent_risk_options; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.control_inherent_risk_options (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL
);


--
-- Name: control_inherent_risk_options_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.control_inherent_risk_options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: control_inherent_risk_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.control_inherent_risk_options_id_seq OWNED BY public.control_inherent_risk_options.id;


--
-- Name: control_judgement_degree_options; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.control_judgement_degree_options (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL
);


--
-- Name: control_judgement_degree_options_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.control_judgement_degree_options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: control_judgement_degree_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.control_judgement_degree_options_id_seq OWNED BY public.control_judgement_degree_options.id;


--
-- Name: control_management_override_options; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.control_management_override_options (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL
);


--
-- Name: control_management_override_options_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.control_management_override_options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: control_management_override_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.control_management_override_options_id_seq OWNED BY public.control_management_override_options.id;


--
-- Name: control_nature_options; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.control_nature_options (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer
);


--
-- Name: control_nature_options_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.control_nature_options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: control_nature_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.control_nature_options_id_seq OWNED BY public.control_nature_options.id;


--
-- Name: control_routine_options; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.control_routine_options (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL
);


--
-- Name: control_routine_options_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.control_routine_options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: control_routine_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.control_routine_options_id_seq OWNED BY public.control_routine_options.id;


--
-- Name: control_scopes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.control_scopes (
    id integer NOT NULL,
    sort_order integer,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL
);


--
-- Name: control_scopes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.control_scopes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: control_scopes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.control_scopes_id_seq OWNED BY public.control_scopes.id;


--
-- Name: control_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.control_types (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer
);


--
-- Name: control_types_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.control_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: control_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.control_types_id_seq OWNED BY public.control_types.id;


--
-- Name: controls; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.controls (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    uid character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    subprocess_id integer
);


--
-- Name: controls_assertions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.controls_assertions (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    control_id integer,
    assertion_id integer
);


--
-- Name: controls_assertions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.controls_assertions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: controls_assertions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.controls_assertions_id_seq OWNED BY public.controls_assertions.id;


--
-- Name: controls_data; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.controls_data (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    control_id integer,
    description text,
    subprocesses_datum_id integer,
    risk_level_id integer,
    supervisor_user_id integer,
    owner_user_id integer,
    coso_element_id integer,
    control_type_id integer,
    control_nature_option_id integer,
    significance_option_id integer,
    test_procedures text,
    pbc_request text,
    source_data text,
    notes text,
    control_frequency_id integer,
    test_timing_id integer,
    test_type_id integer,
    issue_title character varying(255),
    issue_description text,
    remediation_action text,
    remediation_owner_id integer,
    remediation_date timestamp with time zone,
    issue_ident_id integer,
    issue_account character varying(255),
    potential_risk text,
    complementary_controls text,
    qualitative_factors text,
    issue_id character varying(255),
    gross_exposure text,
    adjusted_exposure text,
    likelihood_id integer,
    magnitude_id integer,
    deficiency_level_id integer,
    aggregation_reference_id integer,
    issue_comments text,
    pbc_request_additional text,
    sod_control_id integer,
    sampling_approach text,
    mrc_control_id integer,
    fraud_control_id integer,
    entity_id integer,
    pbc_notes text,
    control_design_option_id integer,
    control_validation text,
    annual_sample_size character varying(255),
    control_scope_id integer,
    control_classification_id integer,
    control_procedures text,
    management_response text,
    control_objective text,
    dependent_controls text,
    compensating_controls text,
    assertion_notes text,
    precision_level text,
    mrc_evidence text,
    cobit_reference text,
    control_reference text,
    map_due_date timestamp with time zone,
    issue_discussion_date timestamp with time zone,
    issue_individuals_present text,
    reviewer_user_id integer,
    annual_population_size text,
    control_inherent_risk_option_id integer,
    control_routine_option_id integer,
    control_judgement_degree_option_id integer,
    control_management_override_option_id integer,
    control_complexity_option_id integer,
    external_auditor_viewable_status text DEFAULT 'Visible'::text,
    effective_date date,
    baseline_result_option_id integer,
    modification_description text DEFAULT ''::text,
    reviewer_notes text DEFAULT ''::text,
    rationale text DEFAULT ''::text,
    baseline_date date,
    uid text,
    process_id integer,
    subprocess_id integer,
    last_modification_date date,
    last_review_date date,
    reliance_option_id integer,
    control_custom_select1_option_id integer,
    coordinator_user_id integer,
    control_custom_text1 text,
    control_custom_text2 text,
    control_custom_text3 text,
    control_custom_text4 text
);


--
-- Name: controls_data_additional_owners; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.controls_data_additional_owners (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    controls_datum_id integer,
    user_id integer
);


--
-- Name: controls_data_additional_owners_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.controls_data_additional_owners_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: controls_data_additional_owners_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.controls_data_additional_owners_id_seq OWNED BY public.controls_data_additional_owners.id;


--
-- Name: controls_data_archives; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.controls_data_archives (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    controls_datum_id integer NOT NULL,
    archive_id integer NOT NULL,
    archive_data text NOT NULL,
    controls_datum_description text,
    entity_name text,
    control_name text,
    control_uid text,
    entity_code text,
    region_code text,
    region_name text,
    process_uid text,
    process_name text,
    subprocess_uid text,
    subprocess_name text
);


--
-- Name: controls_data_archives_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.controls_data_archives_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: controls_data_archives_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.controls_data_archives_id_seq OWNED BY public.controls_data_archives.id;


--
-- Name: controls_data_audits; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.controls_data_audits (
    id integer NOT NULL,
    created_at timestamp with time zone,
    "timestamp" timestamp with time zone,
    user_id integer,
    controls_datum_id integer,
    test_id integer,
    field character varying(255) NOT NULL,
    from_value text,
    to_value text,
    action character varying(255) NOT NULL,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone
);


--
-- Name: controls_data_audits_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.controls_data_audits_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: controls_data_audits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.controls_data_audits_id_seq OWNED BY public.controls_data_audits.id;


--
-- Name: controls_data_business_process_owner_users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.controls_data_business_process_owner_users (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    controls_datum_id integer,
    user_id integer
);


--
-- Name: controls_data_business_process_owner_users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.controls_data_business_process_owner_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: controls_data_business_process_owner_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.controls_data_business_process_owner_users_id_seq OWNED BY public.controls_data_business_process_owner_users.id;


--
-- Name: controls_data_comments; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.controls_data_comments (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    controls_datum_id integer,
    comment_id integer
);


--
-- Name: controls_data_comments_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.controls_data_comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: controls_data_comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.controls_data_comments_id_seq OWNED BY public.controls_data_comments.id;


--
-- Name: controls_data_control_custom_multiselect1_options; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.controls_data_control_custom_multiselect1_options (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    controls_datum_id integer,
    control_custom_multiselect1_option_id integer
);


--
-- Name: controls_data_control_custom_multiselect1_options_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.controls_data_control_custom_multiselect1_options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: controls_data_control_custom_multiselect1_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.controls_data_control_custom_multiselect1_options_id_seq OWNED BY public.controls_data_control_custom_multiselect1_options.id;


--
-- Name: controls_data_control_custom_multiselect2_options; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.controls_data_control_custom_multiselect2_options (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    controls_datum_id integer,
    control_custom_multiselect2_option_id integer
);


--
-- Name: controls_data_control_custom_multiselect2_options_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.controls_data_control_custom_multiselect2_options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: controls_data_control_custom_multiselect2_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.controls_data_control_custom_multiselect2_options_id_seq OWNED BY public.controls_data_control_custom_multiselect2_options.id;


--
-- Name: controls_data_control_custom_multiselect3_options; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.controls_data_control_custom_multiselect3_options (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    controls_datum_id integer,
    control_custom_multiselect3_option_id integer
);


--
-- Name: controls_data_control_custom_multiselect3_options_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.controls_data_control_custom_multiselect3_options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: controls_data_control_custom_multiselect3_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.controls_data_control_custom_multiselect3_options_id_seq OWNED BY public.controls_data_control_custom_multiselect3_options.id;


--
-- Name: controls_data_control_custom_multiselect4_options; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.controls_data_control_custom_multiselect4_options (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    controls_datum_id integer,
    control_custom_multiselect4_option_id integer
);


--
-- Name: controls_data_control_custom_multiselect4_options_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.controls_data_control_custom_multiselect4_options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: controls_data_control_custom_multiselect4_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.controls_data_control_custom_multiselect4_options_id_seq OWNED BY public.controls_data_control_custom_multiselect4_options.id;


--
-- Name: controls_data_coso_components; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.controls_data_coso_components (
    id integer NOT NULL,
    controls_datum_id integer NOT NULL,
    coso_component_id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone
);


--
-- Name: controls_data_coso_components_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.controls_data_coso_components_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: controls_data_coso_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.controls_data_coso_components_id_seq OWNED BY public.controls_data_coso_components.id;


--
-- Name: controls_data_coso_elements; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.controls_data_coso_elements (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    controls_datum_id integer,
    coso_element_id integer
);


--
-- Name: controls_data_coso_elements_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.controls_data_coso_elements_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: controls_data_coso_elements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.controls_data_coso_elements_id_seq OWNED BY public.controls_data_coso_elements.id;


--
-- Name: controls_data_coso_pofs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.controls_data_coso_pofs (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    controls_datum_id integer,
    coso_pof_id integer
);


--
-- Name: controls_data_coso_pofs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.controls_data_coso_pofs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: controls_data_coso_pofs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.controls_data_coso_pofs_id_seq OWNED BY public.controls_data_coso_pofs.id;


--
-- Name: controls_data_coso_principles; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.controls_data_coso_principles (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    controls_datum_id integer,
    coso_principle_id integer
);


--
-- Name: controls_data_coso_principles_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.controls_data_coso_principles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: controls_data_coso_principles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.controls_data_coso_principles_id_seq OWNED BY public.controls_data_coso_principles.id;


--
-- Name: controls_data_deficiency_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.controls_data_deficiency_types (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    controls_datum_id integer,
    deficiency_type_id integer
);


--
-- Name: controls_data_deficiency_types_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.controls_data_deficiency_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: controls_data_deficiency_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.controls_data_deficiency_types_id_seq OWNED BY public.controls_data_deficiency_types.id;


--
-- Name: controls_data_finance_process_owner_users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.controls_data_finance_process_owner_users (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    controls_datum_id integer,
    user_id integer
);


--
-- Name: controls_data_finance_process_owner_users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.controls_data_finance_process_owner_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: controls_data_finance_process_owner_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.controls_data_finance_process_owner_users_id_seq OWNED BY public.controls_data_finance_process_owner_users.id;


--
-- Name: controls_data_financial_accounts; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.controls_data_financial_accounts (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    controls_datum_id integer,
    financial_account_id integer
);


--
-- Name: controls_data_financial_accounts_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.controls_data_financial_accounts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: controls_data_financial_accounts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.controls_data_financial_accounts_id_seq OWNED BY public.controls_data_financial_accounts.id;


--
-- Name: controls_data_financial_applications; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.controls_data_financial_applications (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    controls_datum_id integer,
    financial_application_id integer
);


--
-- Name: controls_data_financial_applications_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.controls_data_financial_applications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: controls_data_financial_applications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.controls_data_financial_applications_id_seq OWNED BY public.controls_data_financial_applications.id;


--
-- Name: controls_data_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.controls_data_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: controls_data_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.controls_data_id_seq OWNED BY public.controls_data.id;


--
-- Name: controls_data_issue_nature_options; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.controls_data_issue_nature_options (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    controls_datum_id integer,
    issue_nature_option_id integer
);


--
-- Name: controls_data_issue_nature_options_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.controls_data_issue_nature_options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: controls_data_issue_nature_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.controls_data_issue_nature_options_id_seq OWNED BY public.controls_data_issue_nature_options.id;


--
-- Name: controls_data_narratives; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.controls_data_narratives (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    controls_datum_id integer,
    narrative_id integer
);


--
-- Name: controls_data_narratives_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.controls_data_narratives_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: controls_data_narratives_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.controls_data_narratives_id_seq OWNED BY public.controls_data_narratives.id;


--
-- Name: controls_data_pbc_owner_users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.controls_data_pbc_owner_users (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    controls_datum_id integer,
    user_id integer
);


--
-- Name: controls_data_pbc_owner_users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.controls_data_pbc_owner_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: controls_data_pbc_owner_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.controls_data_pbc_owner_users_id_seq OWNED BY public.controls_data_pbc_owner_users.id;


--
-- Name: controls_data_pbc_status_options; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.controls_data_pbc_status_options (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    controls_datum_id integer,
    pbc_status_option_id integer
);


--
-- Name: controls_data_pbc_status_options_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.controls_data_pbc_status_options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: controls_data_pbc_status_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.controls_data_pbc_status_options_id_seq OWNED BY public.controls_data_pbc_status_options.id;


--
-- Name: controls_data_test_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.controls_data_test_types (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    controls_datum_id integer,
    test_type_id integer
);


--
-- Name: controls_data_test_types_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.controls_data_test_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: controls_data_test_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.controls_data_test_types_id_seq OWNED BY public.controls_data_test_types.id;


--
-- Name: controls_data_testing_strategies; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.controls_data_testing_strategies (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    controls_datum_id integer,
    testing_strategy_id integer
);


--
-- Name: controls_data_testing_strategies_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.controls_data_testing_strategies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: controls_data_testing_strategies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.controls_data_testing_strategies_id_seq OWNED BY public.controls_data_testing_strategies.id;


--
-- Name: controls_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.controls_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: controls_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.controls_id_seq OWNED BY public.controls.id;


--
-- Name: controls_risks; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.controls_risks (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    control_id integer,
    risk_id integer
);


--
-- Name: controls_risks_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.controls_risks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: controls_risks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.controls_risks_id_seq OWNED BY public.controls_risks.id;


--
-- Name: coso_components; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.coso_components (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL
);


--
-- Name: coso_components_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.coso_components_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: coso_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.coso_components_id_seq OWNED BY public.coso_components.id;


--
-- Name: coso_elements; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.coso_elements (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer
);


--
-- Name: coso_elements_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.coso_elements_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: coso_elements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.coso_elements_id_seq OWNED BY public.coso_elements.id;


--
-- Name: coso_pofs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.coso_pofs (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name text NOT NULL,
    sort_order integer
);


--
-- Name: coso_pofs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.coso_pofs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: coso_pofs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.coso_pofs_id_seq OWNED BY public.coso_pofs.id;


--
-- Name: coso_principles; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.coso_principles (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer
);


--
-- Name: coso_principles_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.coso_principles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: coso_principles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.coso_principles_id_seq OWNED BY public.coso_principles.id;


--
-- Name: cron_options; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cron_options (
    id integer NOT NULL,
    sort_order integer DEFAULT 0,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name text NOT NULL,
    value text NOT NULL
);


--
-- Name: cron_options_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.cron_options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cron_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.cron_options_id_seq OWNED BY public.cron_options.id;


--
-- Name: crons; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.crons (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    task_meta text NOT NULL,
    is_active boolean DEFAULT true,
    task_type text NOT NULL,
    task_group_id integer,
    cron_option_id integer
);


--
-- Name: crons_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.crons_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: crons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.crons_id_seq OWNED BY public.crons.id;


--
-- Name: deficiency_levels; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.deficiency_levels (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer
);


--
-- Name: deficiency_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.deficiency_types (
    id integer NOT NULL,
    sort_order integer,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL
);


--
-- Name: deficiency_types_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.deficiency_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: deficiency_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.deficiency_types_id_seq OWNED BY public.deficiency_levels.id;


--
-- Name: deficiency_types_id_seq1; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.deficiency_types_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: deficiency_types_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.deficiency_types_id_seq1 OWNED BY public.deficiency_types.id;


--
-- Name: departments; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.departments (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL
);


--
-- Name: departments_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.departments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: departments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.departments_id_seq OWNED BY public.departments.id;


--
-- Name: document_diffs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.document_diffs (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    document_id integer NOT NULL,
    from_version_id integer NOT NULL,
    to_version_id integer NOT NULL,
    htmldiff text NOT NULL
);


--
-- Name: document_diffs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.document_diffs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: document_diffs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.document_diffs_id_seq OWNED BY public.document_diffs.id;


--
-- Name: document_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.document_versions (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    document_id integer NOT NULL,
    user_id integer,
    body text NOT NULL,
    name character varying(255),
    page_layout json
);


--
-- Name: document_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.document_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: document_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.document_versions_id_seq OWNED BY public.document_versions.id;


--
-- Name: documents; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.documents (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    body text NOT NULL,
    page_layout json
);


--
-- Name: documents_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.documents_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: documents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.documents_id_seq OWNED BY public.documents.id;


--
-- Name: effectiveness_options; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.effectiveness_options (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer
);


--
-- Name: effectiveness_options_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.effectiveness_options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: effectiveness_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.effectiveness_options_id_seq OWNED BY public.effectiveness_options.id;


--
-- Name: email_logs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.email_logs (
    id integer NOT NULL,
    to_user_id integer,
    from_user_id integer,
    intended_recipient text,
    actual_recipient text,
    email_type text,
    email_category text,
    status text,
    reason text,
    reason_type text,
    email_body text,
    email_headers json,
    email_subject text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone
);


--
-- Name: email_logs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.email_logs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: email_logs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.email_logs_id_seq OWNED BY public.email_logs.id;


--
-- Name: entities; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.entities (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    sort_order integer NOT NULL,
    entity_code character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    region_id integer NOT NULL
);


--
-- Name: entities_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.entities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: entities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.entities_id_seq OWNED BY public.entities.id;


--
-- Name: exclude_risks; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.exclude_risks (
    id integer NOT NULL,
    risk_id integer NOT NULL,
    entity_id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


--
-- Name: exclude_risks_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.exclude_risks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: exclude_risks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.exclude_risks_id_seq OWNED BY public.exclude_risks.id;


--
-- Name: external_auditor_status_options; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.external_auditor_status_options (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL
);


--
-- Name: external_auditor_status_options_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.external_auditor_status_options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: external_auditor_status_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.external_auditor_status_options_id_seq OWNED BY public.external_auditor_status_options.id;


--
-- Name: file_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.file_versions (
    id integer NOT NULL,
    file_id integer NOT NULL,
    name text NOT NULL,
    size character varying(255),
    type character varying(255) NOT NULL,
    key text,
    url text NOT NULL,
    upload_user_id integer,
    storage_type character varying(255) DEFAULT NULL::character varying,
    embed_url text,
    version integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    user_agent character varying(255) DEFAULT NULL::character varying
);


--
-- Name: file_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.file_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: file_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.file_versions_id_seq OWNED BY public.file_versions.id;


--
-- Name: files; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.files (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    fileable_id integer,
    fileable_type character varying(255),
    name text NOT NULL,
    size character varying(255),
    type character varying(255) NOT NULL,
    key text,
    url text NOT NULL,
    upload_user_id integer,
    comments text,
    deleted_at timestamp with time zone,
    storage_type character varying(255) DEFAULT NULL::character varying,
    embed_url text,
    thumb_url text,
    image_url text,
    meta jsonb,
    user_agent character varying(255) DEFAULT NULL::character varying
);


--
-- Name: files_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.files_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;


--
-- Name: financial_accounts; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.financial_accounts (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL
);


--
-- Name: financial_accounts_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.financial_accounts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: financial_accounts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.financial_accounts_id_seq OWNED BY public.financial_accounts.id;


--
-- Name: financial_applications; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.financial_applications (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer
);


--
-- Name: financial_applications_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.financial_applications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: financial_applications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.financial_applications_id_seq OWNED BY public.financial_applications.id;


--
-- Name: form_templates; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.form_templates (
    id integer NOT NULL,
    name text DEFAULT ''::text NOT NULL,
    type text DEFAULT ''::text NOT NULL,
    template_json json,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone
);


--
-- Name: form_templates_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.form_templates_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: form_templates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.form_templates_id_seq OWNED BY public.form_templates.id;


--
-- Name: fraud_controls; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fraud_controls (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer
);


--
-- Name: fraud_controls_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.fraud_controls_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: fraud_controls_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.fraud_controls_id_seq OWNED BY public.fraud_controls.id;


--
-- Name: global_attributes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.global_attributes (
    id integer NOT NULL,
    section character varying(255),
    object_type character varying(255),
    key character varying(255),
    default_label character varying(255),
    label text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    enabled boolean DEFAULT true NOT NULL,
    scope json DEFAULT '{}'::json NOT NULL
);


--
-- Name: global_attributes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.global_attributes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: global_attributes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.global_attributes_id_seq OWNED BY public.global_attributes.id;


--
-- Name: global_audits; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.global_audits (
    id integer NOT NULL,
    "timestamp" timestamp with time zone,
    user_id integer,
    object_id integer,
    object_type character varying(255),
    field character varying(255) NOT NULL,
    from_value text,
    to_value text,
    action character varying(255) NOT NULL,
    message character varying(255),
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


--
-- Name: global_audits_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.global_audits_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: global_audits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.global_audits_id_seq OWNED BY public.global_audits.id;


--
-- Name: global_file_categories; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.global_file_categories (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer,
    deleteable boolean DEFAULT true NOT NULL
);


--
-- Name: global_file_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.global_file_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: global_file_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.global_file_categories_id_seq OWNED BY public.global_file_categories.id;


--
-- Name: global_permissions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.global_permissions (
    id integer NOT NULL,
    section character varying(255),
    key character varying(255),
    name character varying(255),
    description text,
    default_value character varying(255),
    allowed_values character varying(255),
    all_values character varying(255),
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone
);


--
-- Name: global_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.global_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: global_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.global_permissions_id_seq OWNED BY public.global_permissions.id;


--
-- Name: impacted_sections; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.impacted_sections (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL
);


--
-- Name: impacted_sections_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.impacted_sections_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: impacted_sections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.impacted_sections_id_seq OWNED BY public.impacted_sections.id;


--
-- Name: import_records; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.import_records (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    user_id integer NOT NULL,
    resource_name character varying(255) NOT NULL,
    summary json
);


--
-- Name: import_records_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.import_records_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: import_records_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.import_records_id_seq OWNED BY public.import_records.id;


--
-- Name: internal_control_components; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.internal_control_components (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL
);


--
-- Name: internal_control_components_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.internal_control_components_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: internal_control_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.internal_control_components_id_seq OWNED BY public.internal_control_components.id;


--
-- Name: issue_custom_multiselect1_options; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.issue_custom_multiselect1_options (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL
);


--
-- Name: issue_custom_multiselect1_options_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.issue_custom_multiselect1_options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: issue_custom_multiselect1_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.issue_custom_multiselect1_options_id_seq OWNED BY public.issue_custom_multiselect1_options.id;


--
-- Name: issue_custom_multiselect2_options; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.issue_custom_multiselect2_options (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL
);


--
-- Name: issue_custom_multiselect2_options_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.issue_custom_multiselect2_options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: issue_custom_multiselect2_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.issue_custom_multiselect2_options_id_seq OWNED BY public.issue_custom_multiselect2_options.id;


--
-- Name: issue_custom_select1_options; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.issue_custom_select1_options (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL
);


--
-- Name: issue_custom_select1_options_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.issue_custom_select1_options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: issue_custom_select1_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.issue_custom_select1_options_id_seq OWNED BY public.issue_custom_select1_options.id;


--
-- Name: issue_custom_select2_options; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.issue_custom_select2_options (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL
);


--
-- Name: issue_custom_select2_options_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.issue_custom_select2_options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: issue_custom_select2_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.issue_custom_select2_options_id_seq OWNED BY public.issue_custom_select2_options.id;


--
-- Name: issue_idents; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.issue_idents (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer
);


--
-- Name: issue_idents_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.issue_idents_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: issue_idents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.issue_idents_id_seq OWNED BY public.issue_idents.id;


--
-- Name: issue_locations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.issue_locations (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL
);


--
-- Name: issue_locations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.issue_locations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: issue_locations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.issue_locations_id_seq OWNED BY public.issue_locations.id;


--
-- Name: issue_nature_options; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.issue_nature_options (
    id integer NOT NULL,
    sort_order integer,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL
);


--
-- Name: issue_nature_options_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.issue_nature_options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: issue_nature_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.issue_nature_options_id_seq OWNED BY public.issue_nature_options.id;


--
-- Name: issue_ratings; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.issue_ratings (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL
);


--
-- Name: issue_ratings_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.issue_ratings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: issue_ratings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.issue_ratings_id_seq OWNED BY public.issue_ratings.id;


--
-- Name: issue_remediation_custom_select1_options; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.issue_remediation_custom_select1_options (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL
);


--
-- Name: issue_remediation_custom_select1_options_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.issue_remediation_custom_select1_options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: issue_remediation_custom_select1_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.issue_remediation_custom_select1_options_id_seq OWNED BY public.issue_remediation_custom_select1_options.id;


--
-- Name: issue_remediation_custom_select2_options; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.issue_remediation_custom_select2_options (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL
);


--
-- Name: issue_remediation_custom_select2_options_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.issue_remediation_custom_select2_options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: issue_remediation_custom_select2_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.issue_remediation_custom_select2_options_id_seq OWNED BY public.issue_remediation_custom_select2_options.id;


--
-- Name: issues; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.issues (
    id integer NOT NULL,
    status text,
    title text,
    description text,
    potential_risk text,
    individuals_present text,
    deficiency_level_id integer,
    discussion_date date,
    map_due_date date,
    management_response text,
    qualitative_factors text,
    issue_ident_id integer,
    gross_exposure text,
    magnitude_id integer,
    likelihood_id integer,
    aggregation_reference_id integer,
    adjusted_exposure text,
    remediation_action text,
    remediation_date date,
    remediation_owner_id integer,
    creator_user_id integer,
    identified_date date,
    deleted_at timestamp with time zone,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    controls_datum_id integer,
    test_id integer,
    test_section_id integer,
    notes text,
    reference_issue_id integer,
    archive_id integer,
    tester_user_id integer,
    reviewer_user_id integer,
    ops_audit_id integer,
    ops_audit_item_id integer,
    type character varying(255) NOT NULL,
    internal_control_component_id integer,
    external_planned_confirm_date date,
    disclosure text,
    planned_close_date date,
    planned_confirm_date date,
    external_confirm_date date,
    pending_remediation_date timestamp with time zone,
    closed_date timestamp with time zone,
    inactive_date timestamp with time zone,
    reopen_date timestamp with time zone,
    open_date timestamp with time zone,
    amend_date timestamp with time zone,
    remediated_date timestamp with time zone,
    open_by_user_id integer,
    reopen_by_user_id integer,
    pending_remediation_by_user_id integer,
    remediated_by_user_id integer,
    closed_by_user_id integer,
    amend_by_user_id integer,
    flattened json,
    issue_rating_id integer,
    sox_impact_id integer,
    issue_custom_select1_option_id integer,
    issue_custom_select2_option_id integer,
    issue_remediation_custom_select1_option_id integer,
    issue_remediation_custom_select2_option_id integer,
    business_owner_user_id integer,
    executive_owner_user_id integer,
    officer_user_id integer,
    audit_director_user_id integer,
    audit_contact_user_id integer,
    business_contact_user_id integer,
    vice_president_user_id integer,
    executive_vice_president_user_id integer,
    is_flattened boolean DEFAULT false,
    CONSTRAINT issues_control_or_ops_audit_not_null CHECK (((controls_datum_id IS NOT NULL) OR (ops_audit_id IS NOT NULL)))
);


--
-- Name: issues_business_process_owner_users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.issues_business_process_owner_users (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    issue_id integer,
    user_id integer
);


--
-- Name: issues_business_process_owner_users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.issues_business_process_owner_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: issues_business_process_owner_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.issues_business_process_owner_users_id_seq OWNED BY public.issues_business_process_owner_users.id;


--
-- Name: issues_deficiency_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.issues_deficiency_types (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    issue_id integer,
    deficiency_type_id integer
);


--
-- Name: issues_deficiency_types_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.issues_deficiency_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: issues_deficiency_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.issues_deficiency_types_id_seq OWNED BY public.issues_deficiency_types.id;


--
-- Name: issues_finance_process_owner_users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.issues_finance_process_owner_users (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    issue_id integer,
    user_id integer
);


--
-- Name: issues_finance_process_owner_users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.issues_finance_process_owner_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: issues_finance_process_owner_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.issues_finance_process_owner_users_id_seq OWNED BY public.issues_finance_process_owner_users.id;


--
-- Name: issues_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.issues_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: issues_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.issues_id_seq OWNED BY public.issues.id;


--
-- Name: issues_impacted_sections; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.issues_impacted_sections (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    issue_id integer,
    impacted_section_id integer
);


--
-- Name: issues_impacted_sections_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.issues_impacted_sections_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: issues_impacted_sections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.issues_impacted_sections_id_seq OWNED BY public.issues_impacted_sections.id;


--
-- Name: issues_issue_custom_multiselect1_options; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.issues_issue_custom_multiselect1_options (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    issue_id integer,
    issue_custom_multiselect1_option_id integer
);


--
-- Name: issues_issue_custom_multiselect1_options_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.issues_issue_custom_multiselect1_options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: issues_issue_custom_multiselect1_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.issues_issue_custom_multiselect1_options_id_seq OWNED BY public.issues_issue_custom_multiselect1_options.id;


--
-- Name: issues_issue_custom_multiselect2_options; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.issues_issue_custom_multiselect2_options (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    issue_id integer,
    issue_custom_multiselect2_option_id integer
);


--
-- Name: issues_issue_custom_multiselect2_options_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.issues_issue_custom_multiselect2_options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: issues_issue_custom_multiselect2_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.issues_issue_custom_multiselect2_options_id_seq OWNED BY public.issues_issue_custom_multiselect2_options.id;


--
-- Name: issues_issue_locations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.issues_issue_locations (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    issue_id integer,
    issue_location_id integer
);


--
-- Name: issues_issue_locations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.issues_issue_locations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: issues_issue_locations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.issues_issue_locations_id_seq OWNED BY public.issues_issue_locations.id;


--
-- Name: issues_issue_nature_options; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.issues_issue_nature_options (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    issue_id integer,
    issue_nature_option_id integer
);


--
-- Name: issues_issue_nature_options_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.issues_issue_nature_options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: issues_issue_nature_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.issues_issue_nature_options_id_seq OWNED BY public.issues_issue_nature_options.id;


--
-- Name: issues_root_cause_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.issues_root_cause_types (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    issue_id integer,
    root_cause_type_id integer
);


--
-- Name: issues_root_cause_types_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.issues_root_cause_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: issues_root_cause_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.issues_root_cause_types_id_seq OWNED BY public.issues_root_cause_types.id;


--
-- Name: issues_subscriber_users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.issues_subscriber_users (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    issue_id integer,
    user_id integer
);


--
-- Name: issues_subscriber_users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.issues_subscriber_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: issues_subscriber_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.issues_subscriber_users_id_seq OWNED BY public.issues_subscriber_users.id;


--
-- Name: likelihoods; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.likelihoods (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer
);


--
-- Name: likelihoods_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.likelihoods_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: likelihoods_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.likelihoods_id_seq OWNED BY public.likelihoods.id;


--
-- Name: locations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.locations (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL
);


--
-- Name: locks; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.locks (
    id integer NOT NULL,
    lockable_id integer,
    lockable_type text,
    user_id integer NOT NULL,
    application text DEFAULT ''::text NOT NULL,
    token text DEFAULT ''::text NOT NULL,
    expires_at timestamp with time zone,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


--
-- Name: locks_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.locks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: locks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.locks_id_seq OWNED BY public.locks.id;


--
-- Name: login_histories; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.login_histories (
    id integer NOT NULL,
    "timestamp" timestamp with time zone,
    user_id integer,
    ip_address character varying(255),
    action character varying(255),
    message character varying(255),
    location character varying(255),
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    login_email character varying(255)
);


--
-- Name: login_histories_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.login_histories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: login_histories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.login_histories_id_seq OWNED BY public.login_histories.id;


--
-- Name: magnitudes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.magnitudes (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer
);


--
-- Name: magnitudes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.magnitudes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: magnitudes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.magnitudes_id_seq OWNED BY public.magnitudes.id;


--
-- Name: managed_changes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.managed_changes (
    id integer NOT NULL,
    task_item_id integer,
    changed_by_user_id integer,
    changed_by_date timestamp with time zone,
    completed_by_user_id integer,
    completed_by_date timestamp with time zone,
    merged_by_user_id integer,
    merged_by_date timestamp with time zone,
    changeable_id integer,
    changeable_type text,
    status text,
    field text,
    field_type text,
    field_path text,
    field_label text,
    from_value text,
    to_value text,
    diff_value text,
    meta_config text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    question_response_id integer
);


--
-- Name: managed_changes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.managed_changes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: managed_changes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.managed_changes_id_seq OWNED BY public.managed_changes.id;


--
-- Name: mrc_controls; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mrc_controls (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer
);


--
-- Name: mrc_controls_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.mrc_controls_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: mrc_controls_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.mrc_controls_id_seq OWNED BY public.mrc_controls.id;


--
-- Name: narrative_owners; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.narrative_owners (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    narrative_id integer,
    user_id integer
);


--
-- Name: narrative_owners_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.narrative_owners_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: narrative_owners_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.narrative_owners_id_seq OWNED BY public.narrative_owners.id;


--
-- Name: narrative_sections; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.narrative_sections (
    id integer NOT NULL,
    narrative_id integer,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    body text
);


--
-- Name: narrative_sections_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.narrative_sections_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: narrative_sections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.narrative_sections_id_seq OWNED BY public.narrative_sections.id;


--
-- Name: narratives; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.narratives (
    id integer NOT NULL,
    uid character varying(255) NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    summary text,
    body text,
    lock_user_id integer,
    locked_at timestamp with time zone,
    page_layout json
);


--
-- Name: narratives_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.narratives_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: narratives_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.narratives_id_seq OWNED BY public.narratives.id;


--
-- Name: notification_messages; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.notification_messages (
    id integer NOT NULL,
    from_user_id integer,
    to_user_id integer NOT NULL,
    type character varying(255),
    status character varying(255),
    is_read boolean NOT NULL,
    message text NOT NULL,
    raw_data text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone
);


--
-- Name: notification_messages_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.notification_messages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: notification_messages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.notification_messages_id_seq OWNED BY public.notification_messages.id;


--
-- Name: ops_audit_categories; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ops_audit_categories (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL,
    status character varying(255) DEFAULT ''::character varying NOT NULL
);


--
-- Name: ops_audit_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ops_audit_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ops_audit_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ops_audit_categories_id_seq OWNED BY public.ops_audit_categories.id;


--
-- Name: ops_audit_category_sections; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ops_audit_category_sections (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    sort_order integer DEFAULT 0 NOT NULL,
    ops_audit_category_id integer NOT NULL,
    ops_audit_section_id integer NOT NULL,
    form_template_id integer DEFAULT 1
);


--
-- Name: ops_audit_category_sections_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ops_audit_category_sections_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ops_audit_category_sections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ops_audit_category_sections_id_seq OWNED BY public.ops_audit_category_sections.id;


--
-- Name: ops_audit_custom_multiselect1_options; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ops_audit_custom_multiselect1_options (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL
);


--
-- Name: ops_audit_custom_multiselect1_options_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ops_audit_custom_multiselect1_options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ops_audit_custom_multiselect1_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ops_audit_custom_multiselect1_options_id_seq OWNED BY public.ops_audit_custom_multiselect1_options.id;


--
-- Name: ops_audit_custom_multiselect2_options; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ops_audit_custom_multiselect2_options (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL
);


--
-- Name: ops_audit_custom_multiselect2_options_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ops_audit_custom_multiselect2_options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ops_audit_custom_multiselect2_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ops_audit_custom_multiselect2_options_id_seq OWNED BY public.ops_audit_custom_multiselect2_options.id;


--
-- Name: ops_audit_custom_select1_options; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ops_audit_custom_select1_options (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL
);


--
-- Name: ops_audit_custom_select1_options_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ops_audit_custom_select1_options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ops_audit_custom_select1_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ops_audit_custom_select1_options_id_seq OWNED BY public.ops_audit_custom_select1_options.id;


--
-- Name: ops_audit_custom_select2_options; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ops_audit_custom_select2_options (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL
);


--
-- Name: ops_audit_custom_select2_options_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ops_audit_custom_select2_options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ops_audit_custom_select2_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ops_audit_custom_select2_options_id_seq OWNED BY public.ops_audit_custom_select2_options.id;


--
-- Name: ops_audit_custom_select3_options; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ops_audit_custom_select3_options (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL
);


--
-- Name: ops_audit_custom_select3_options_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ops_audit_custom_select3_options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ops_audit_custom_select3_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ops_audit_custom_select3_options_id_seq OWNED BY public.ops_audit_custom_select3_options.id;


--
-- Name: ops_audit_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ops_audit_items (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    ops_audit_id integer NOT NULL,
    ops_audit_section_id integer NOT NULL,
    preparer_user_id integer,
    reviewer_user_id integer,
    due_date date,
    description text,
    budget_hours numeric DEFAULT 0 NOT NULL,
    actual_hours numeric DEFAULT 0 NOT NULL,
    status character varying(255) DEFAULT 'Open'::character varying NOT NULL,
    notes text,
    results text,
    secondary_reviewer_user_id integer,
    sort_order integer DEFAULT 0 NOT NULL,
    title character varying(255) DEFAULT ''::character varying NOT NULL,
    procedures text DEFAULT ''::text NOT NULL,
    complete_date timestamp with time zone,
    complete_by_user_id integer,
    under_review_1_date timestamp with time zone,
    under_review_1_by_user_id integer,
    under_review_2_date timestamp with time zone,
    under_review_2_by_user_id integer,
    reviewed_date timestamp with time zone,
    reviewed_by_user_id integer,
    objective text DEFAULT ''::text NOT NULL,
    source text DEFAULT ''::text NOT NULL,
    scope text DEFAULT ''::text NOT NULL,
    ops_risk_level_id integer,
    ops_rating_id integer,
    pbc_request text,
    pbc_request_additional text,
    population_details text,
    sample_size text,
    sample_selection text,
    ops_custom_select1_option_id integer,
    ops_custom_select2_option_id integer,
    ops_custom_date1 date,
    ops_custom_date2 date,
    ops_custom_date3 date,
    effectiveness character varying(255) DEFAULT 'Not Tested'::character varying,
    ops_audit_section_instance_id integer,
    ops_audit_subsection_id integer
);


--
-- Name: ops_audit_items_business_owner_users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ops_audit_items_business_owner_users (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    ops_audit_item_id integer,
    user_id integer
);


--
-- Name: ops_audit_items_business_owner_users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ops_audit_items_business_owner_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ops_audit_items_business_owner_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ops_audit_items_business_owner_users_id_seq OWNED BY public.ops_audit_items_business_owner_users.id;


--
-- Name: ops_audit_items_controls_data; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ops_audit_items_controls_data (
    id integer NOT NULL,
    ops_audit_item_id integer NOT NULL,
    controls_datum_id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


--
-- Name: ops_audit_items_controls_data_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ops_audit_items_controls_data_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ops_audit_items_controls_data_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ops_audit_items_controls_data_id_seq OWNED BY public.ops_audit_items_controls_data.id;


--
-- Name: ops_audit_items_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ops_audit_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ops_audit_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ops_audit_items_id_seq OWNED BY public.ops_audit_items.id;


--
-- Name: ops_audit_items_ops_custom_multiselect1_options; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ops_audit_items_ops_custom_multiselect1_options (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    ops_audit_item_id integer,
    ops_custom_multiselect1_option_id integer
);


--
-- Name: ops_audit_items_ops_custom_multiselect1_options_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ops_audit_items_ops_custom_multiselect1_options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ops_audit_items_ops_custom_multiselect1_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ops_audit_items_ops_custom_multiselect1_options_id_seq OWNED BY public.ops_audit_items_ops_custom_multiselect1_options.id;


--
-- Name: ops_audit_locations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ops_audit_locations (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL
);


--
-- Name: ops_audit_locations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ops_audit_locations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ops_audit_locations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ops_audit_locations_id_seq OWNED BY public.ops_audit_locations.id;


--
-- Name: ops_audit_opinions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ops_audit_opinions (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL
);


--
-- Name: ops_audit_opinions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ops_audit_opinions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ops_audit_opinions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ops_audit_opinions_id_seq OWNED BY public.ops_audit_opinions.id;


--
-- Name: ops_audit_owner_users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ops_audit_owner_users (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    ops_audit_id integer,
    user_id integer
);


--
-- Name: ops_audit_owner_users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ops_audit_owner_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ops_audit_owner_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ops_audit_owner_users_id_seq OWNED BY public.ops_audit_owner_users.id;


--
-- Name: ops_audit_periods; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ops_audit_periods (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL
);


--
-- Name: ops_audit_periods_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ops_audit_periods_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ops_audit_periods_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ops_audit_periods_id_seq OWNED BY public.ops_audit_periods.id;


--
-- Name: ops_audit_result_custom_select1_options; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ops_audit_result_custom_select1_options (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL
);


--
-- Name: ops_audit_result_custom_select1_options_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ops_audit_result_custom_select1_options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ops_audit_result_custom_select1_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ops_audit_result_custom_select1_options_id_seq OWNED BY public.ops_audit_result_custom_select1_options.id;


--
-- Name: ops_audit_result_custom_select2_options; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ops_audit_result_custom_select2_options (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL
);


--
-- Name: ops_audit_result_custom_select2_options_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ops_audit_result_custom_select2_options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ops_audit_result_custom_select2_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ops_audit_result_custom_select2_options_id_seq OWNED BY public.ops_audit_result_custom_select2_options.id;


--
-- Name: ops_audit_result_custom_select3_options; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ops_audit_result_custom_select3_options (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL
);


--
-- Name: ops_audit_result_custom_select3_options_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ops_audit_result_custom_select3_options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ops_audit_result_custom_select3_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ops_audit_result_custom_select3_options_id_seq OWNED BY public.ops_audit_result_custom_select3_options.id;


--
-- Name: ops_audit_result_custom_select4_options; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ops_audit_result_custom_select4_options (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL
);


--
-- Name: ops_audit_result_custom_select4_options_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ops_audit_result_custom_select4_options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ops_audit_result_custom_select4_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ops_audit_result_custom_select4_options_id_seq OWNED BY public.ops_audit_result_custom_select4_options.id;


--
-- Name: ops_audit_risk_levels; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ops_audit_risk_levels (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL
);


--
-- Name: ops_audit_risk_levels_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ops_audit_risk_levels_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ops_audit_risk_levels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ops_audit_risk_levels_id_seq OWNED BY public.ops_audit_risk_levels.id;


--
-- Name: ops_audit_section_instances; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ops_audit_section_instances (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    sort_order integer DEFAULT 0 NOT NULL,
    ops_audit_id integer NOT NULL,
    ops_audit_section_id integer NOT NULL,
    form_template_id integer DEFAULT 1
);


--
-- Name: ops_audit_section_instances_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ops_audit_section_instances_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ops_audit_section_instances_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ops_audit_section_instances_id_seq OWNED BY public.ops_audit_section_instances.id;


--
-- Name: ops_audit_sections; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ops_audit_sections (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    short_name character varying(255) NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL,
    is_issuable boolean DEFAULT false NOT NULL,
    has_effectiveness_option boolean DEFAULT false NOT NULL
);


--
-- Name: ops_audit_sections_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ops_audit_sections_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ops_audit_sections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ops_audit_sections_id_seq OWNED BY public.ops_audit_sections.id;


--
-- Name: ops_audit_subsections; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ops_audit_subsections (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    sort_order integer DEFAULT 0 NOT NULL,
    name character varying(255) NOT NULL,
    ops_audit_id integer NOT NULL,
    ops_audit_section_instance_id integer NOT NULL
);


--
-- Name: ops_audit_subsections_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ops_audit_subsections_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ops_audit_subsections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ops_audit_subsections_id_seq OWNED BY public.ops_audit_subsections.id;


--
-- Name: ops_audits; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ops_audits (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    start_date date,
    end_date date,
    ops_audit_period_id integer,
    ops_audit_category_id integer,
    creator_user_id integer,
    title character varying(255) NOT NULL,
    ops_audit_risk_level_id integer,
    description text,
    is_template boolean DEFAULT false NOT NULL,
    status character varying(255),
    archived_date timestamp with time zone,
    archived_by_user_id integer,
    totals json,
    section_totals json,
    lead_user_id integer,
    scope_start_date timestamp with time zone,
    scope_end_date timestamp with time zone,
    uid text NOT NULL,
    started_date timestamp with time zone,
    started_by_user_id integer,
    canceled_date timestamp with time zone,
    canceled_by_user_id integer,
    risk_factors text,
    ops_audit_custom_select1_option_id integer,
    ops_audit_custom_select2_option_id integer,
    ops_audit_custom_select3_option_id integer,
    ops_audit_opinion_id integer,
    systems_reviewed text,
    notes text,
    custom_text1 text,
    custom_text2 text,
    result_custom_text1 text,
    result_custom_text2 text,
    executive_summary text,
    result_feedback text,
    ops_audit_result_custom_select1_option_id integer,
    ops_audit_result_custom_select2_option_id integer,
    ops_audit_result_custom_select3_option_id integer,
    ops_audit_result_custom_select4_option_id integer,
    project_director_user_id integer,
    project_leader_user_id integer,
    final_report_date date,
    estimated_start_date date,
    estimated_end_date date,
    preparer_users json,
    reviewer_users json,
    secondary_reviewer_users json,
    project_options json
);


--
-- Name: ops_audits_business_process_owner_users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ops_audits_business_process_owner_users (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    ops_audit_id integer,
    user_id integer
);


--
-- Name: ops_audits_business_process_owner_users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ops_audits_business_process_owner_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ops_audits_business_process_owner_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ops_audits_business_process_owner_users_id_seq OWNED BY public.ops_audits_business_process_owner_users.id;


--
-- Name: ops_audits_business_units; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ops_audits_business_units (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    ops_audit_id integer,
    business_unit_id integer
);


--
-- Name: ops_audits_business_units_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ops_audits_business_units_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ops_audits_business_units_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ops_audits_business_units_id_seq OWNED BY public.ops_audits_business_units.id;


--
-- Name: ops_audits_executive_users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ops_audits_executive_users (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    ops_audit_id integer,
    user_id integer
);


--
-- Name: ops_audits_executive_users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ops_audits_executive_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ops_audits_executive_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ops_audits_executive_users_id_seq OWNED BY public.ops_audits_executive_users.id;


--
-- Name: ops_audits_finance_process_owner_users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ops_audits_finance_process_owner_users (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    ops_audit_id integer,
    user_id integer
);


--
-- Name: ops_audits_finance_process_owner_users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ops_audits_finance_process_owner_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ops_audits_finance_process_owner_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ops_audits_finance_process_owner_users_id_seq OWNED BY public.ops_audits_finance_process_owner_users.id;


--
-- Name: ops_audits_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ops_audits_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ops_audits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ops_audits_id_seq OWNED BY public.ops_audits.id;


--
-- Name: ops_audits_officer_users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ops_audits_officer_users (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    ops_audit_id integer,
    user_id integer
);


--
-- Name: ops_audits_officer_users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ops_audits_officer_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ops_audits_officer_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ops_audits_officer_users_id_seq OWNED BY public.ops_audits_officer_users.id;


--
-- Name: ops_audits_ops_audit_custom_multiselect1_options; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ops_audits_ops_audit_custom_multiselect1_options (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    ops_audit_id integer,
    ops_audit_custom_multiselect1_option_id integer
);


--
-- Name: ops_audits_ops_audit_custom_multiselect1_options_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ops_audits_ops_audit_custom_multiselect1_options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ops_audits_ops_audit_custom_multiselect1_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ops_audits_ops_audit_custom_multiselect1_options_id_seq OWNED BY public.ops_audits_ops_audit_custom_multiselect1_options.id;


--
-- Name: ops_audits_ops_audit_custom_multiselect2_options; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ops_audits_ops_audit_custom_multiselect2_options (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    ops_audit_id integer,
    ops_audit_custom_multiselect2_option_id integer
);


--
-- Name: ops_audits_ops_audit_custom_multiselect2_options_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ops_audits_ops_audit_custom_multiselect2_options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ops_audits_ops_audit_custom_multiselect2_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ops_audits_ops_audit_custom_multiselect2_options_id_seq OWNED BY public.ops_audits_ops_audit_custom_multiselect2_options.id;


--
-- Name: ops_audits_ops_audit_locations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ops_audits_ops_audit_locations (
    id integer NOT NULL,
    ops_audit_id integer,
    ops_audit_location_id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone
);


--
-- Name: ops_audits_ops_audit_locations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ops_audits_ops_audit_locations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ops_audits_ops_audit_locations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ops_audits_ops_audit_locations_id_seq OWNED BY public.ops_audits_ops_audit_locations.id;


--
-- Name: ops_audits_supervisor_users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ops_audits_supervisor_users (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    ops_audit_id integer,
    user_id integer
);


--
-- Name: ops_audits_supervisor_users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ops_audits_supervisor_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ops_audits_supervisor_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ops_audits_supervisor_users_id_seq OWNED BY public.ops_audits_supervisor_users.id;


--
-- Name: ops_custom_multiselect1_options; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ops_custom_multiselect1_options (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL
);


--
-- Name: ops_custom_multiselect1_options_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ops_custom_multiselect1_options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ops_custom_multiselect1_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ops_custom_multiselect1_options_id_seq OWNED BY public.ops_custom_multiselect1_options.id;


--
-- Name: ops_custom_select1_options; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ops_custom_select1_options (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL
);


--
-- Name: ops_custom_select1_options_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ops_custom_select1_options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ops_custom_select1_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ops_custom_select1_options_id_seq OWNED BY public.ops_custom_select1_options.id;


--
-- Name: ops_custom_select2_options; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ops_custom_select2_options (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL
);


--
-- Name: ops_custom_select2_options_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ops_custom_select2_options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ops_custom_select2_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ops_custom_select2_options_id_seq OWNED BY public.ops_custom_select2_options.id;


--
-- Name: ops_ra_process_entities; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ops_ra_process_entities (
    id integer NOT NULL,
    process_id integer,
    entity_id integer,
    ops_risk_assessment_id integer,
    overall_risk_value json,
    in_scope boolean DEFAULT false,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone
);


--
-- Name: ops_ra_process_entities_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ops_ra_process_entities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ops_ra_process_entities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ops_ra_process_entities_id_seq OWNED BY public.ops_ra_process_entities.id;


--
-- Name: ops_ra_values; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ops_ra_values (
    id integer NOT NULL,
    ops_risk_criteria_id integer,
    ops_risk_value_id integer,
    ops_ra_process_entity_id integer,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone
);


--
-- Name: ops_ra_values_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ops_ra_values_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ops_ra_values_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ops_ra_values_id_seq OWNED BY public.ops_ra_values.id;


--
-- Name: ops_ratings; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ops_ratings (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL
);


--
-- Name: ops_ratings_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ops_ratings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ops_ratings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ops_ratings_id_seq OWNED BY public.ops_ratings.id;


--
-- Name: ops_risk_assessments; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ops_risk_assessments (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    title text,
    status text,
    finalized_by_user_id integer,
    finalized_date timestamp with time zone,
    finalized_data json,
    created_by_user_id integer
);


--
-- Name: ops_risk_assessments_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ops_risk_assessments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ops_risk_assessments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ops_risk_assessments_id_seq OWNED BY public.ops_risk_assessments.id;


--
-- Name: ops_risk_criteria; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ops_risk_criteria (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name text,
    weight integer,
    sort_order integer DEFAULT 0,
    uid text
);


--
-- Name: ops_risk_criteria_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ops_risk_criteria_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ops_risk_criteria_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ops_risk_criteria_id_seq OWNED BY public.ops_risk_criteria.id;


--
-- Name: ops_risk_levels; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ops_risk_levels (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL
);


--
-- Name: ops_risk_levels_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ops_risk_levels_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ops_risk_levels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ops_risk_levels_id_seq OWNED BY public.ops_risk_levels.id;


--
-- Name: ops_risk_values; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ops_risk_values (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    value integer,
    color_value text,
    name text,
    sort_order integer DEFAULT 0
);


--
-- Name: ops_risk_values_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ops_risk_values_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ops_risk_values_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ops_risk_values_id_seq OWNED BY public.ops_risk_values.id;


--
-- Name: password_histories; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.password_histories (
    id integer NOT NULL,
    user_id integer NOT NULL,
    salt character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    encryption_algo character varying(255) NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone
);


--
-- Name: password_histories_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.password_histories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: password_histories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.password_histories_id_seq OWNED BY public.password_histories.id;


--
-- Name: pbc_status_options; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pbc_status_options (
    id integer NOT NULL,
    sort_order integer,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL
);


--
-- Name: pbc_status_options_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pbc_status_options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pbc_status_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pbc_status_options_id_seq OWNED BY public.pbc_status_options.id;


--
-- Name: pbix_files; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pbix_files (
    id integer NOT NULL,
    name text NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    seed_file text,
    seed_version integer,
    has_new_file boolean DEFAULT false
);


--
-- Name: pbix_files_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pbix_files_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pbix_files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pbix_files_id_seq OWNED BY public.pbix_files.id;


--
-- Name: powerbi_report_instances; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.powerbi_report_instances (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    powerbi_report_id integer,
    reportable_type text,
    reportable_id integer
);


--
-- Name: powerbi_report_instances_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.powerbi_report_instances_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: powerbi_report_instances_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.powerbi_report_instances_id_seq OWNED BY public.powerbi_report_instances.id;


--
-- Name: powerbi_reports; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.powerbi_reports (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name text DEFAULT ''::text NOT NULL,
    report_id text DEFAULT ''::text NOT NULL,
    status text DEFAULT ''::text NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL,
    type text,
    pbix_file_id integer,
    dataset_id text,
    dataset_uid text
);


--
-- Name: powerbi_reports_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.powerbi_reports_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: powerbi_reports_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.powerbi_reports_id_seq OWNED BY public.powerbi_reports.id;


--
-- Name: process_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.process_types (
    id integer NOT NULL,
    created_at timestamp with time zone DEFAULT now(),
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name text,
    sort_order integer DEFAULT 0
);


--
-- Name: process_types_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.process_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: process_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.process_types_id_seq OWNED BY public.process_types.id;


--
-- Name: processes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.processes (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    uid character varying(255) NOT NULL,
    name character varying(255) NOT NULL
);


--
-- Name: processes_data; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.processes_data (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    file character varying(255),
    process_id integer NOT NULL,
    entity_id integer NOT NULL
);


--
-- Name: processes_data_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.processes_data_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: processes_data_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.processes_data_id_seq OWNED BY public.processes_data.id;


--
-- Name: processes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.processes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: processes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.processes_id_seq OWNED BY public.processes.id;


--
-- Name: processes_process_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.processes_process_types (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    process_id integer,
    process_type_id integer
);


--
-- Name: processes_process_types_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.processes_process_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: processes_process_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.processes_process_types_id_seq OWNED BY public.processes_process_types.id;


--
-- Name: question_responses; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.question_responses (
    id integer NOT NULL,
    question_id integer,
    survey_response_id integer,
    status text,
    response text,
    meta_config text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    response_explanation text DEFAULT ''::text,
    response_data text,
    reference_text text DEFAULT ''::text,
    meta_flat text,
    type text
);


--
-- Name: question_responses_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.question_responses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: question_responses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.question_responses_id_seq OWNED BY public.question_responses.id;


--
-- Name: questions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.questions (
    id integer NOT NULL,
    survey_id integer,
    type text,
    description text,
    sort_order integer,
    meta_config text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    require_explanation boolean DEFAULT false NOT NULL,
    require_files boolean DEFAULT false NOT NULL,
    title text,
    short_title text,
    allow_na_response boolean DEFAULT false NOT NULL,
    require_explanation_for_na boolean,
    allow_ratings_matrix_add boolean DEFAULT true NOT NULL,
    require_explanation_for_yes boolean,
    require_explanation_for_no boolean,
    show_explanation boolean
);


--
-- Name: questions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.questions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: questions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.questions_id_seq OWNED BY public.questions.id;


--
-- Name: regions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.regions (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    sort_order integer NOT NULL,
    region_code character varying(255) NOT NULL,
    name character varying(255) NOT NULL
);


--
-- Name: regions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.regions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: regions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.regions_id_seq OWNED BY public.regions.id;


--
-- Name: reliance_options; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.reliance_options (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL,
    external_auditor_visible boolean DEFAULT false NOT NULL
);


--
-- Name: reliance_options_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.reliance_options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: reliance_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.reliance_options_id_seq OWNED BY public.reliance_options.id;


--
-- Name: reports; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.reports (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    query_fields text NOT NULL,
    query_filters text NOT NULL,
    share_token text,
    type text DEFAULT 'Control'::text NOT NULL,
    fields_grouping text,
    canonical_fields json
);


--
-- Name: reports_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.reports_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: reports_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.reports_id_seq OWNED BY public.reports.id;


--
-- Name: risk_levels; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.risk_levels (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer
);


--
-- Name: risk_levels_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.risk_levels_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: risk_levels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.risk_levels_id_seq OWNED BY public.risk_levels.id;


--
-- Name: risks; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.risks (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    uid character varying(255) NOT NULL,
    name text,
    process_id integer
);


--
-- Name: risks_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.risks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: risks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.risks_id_seq OWNED BY public.risks.id;


--
-- Name: role_permissions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.role_permissions (
    id integer NOT NULL,
    role_id integer,
    section character varying(255),
    key character varying(255),
    value character varying(255),
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    global_permission_id integer NOT NULL,
    scope json
);


--
-- Name: role_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.role_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: role_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.role_permissions_id_seq OWNED BY public.role_permissions.id;


--
-- Name: roles; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.roles (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    short_name character varying(255) NOT NULL,
    default_route character varying(255)
);


--
-- Name: roles_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;


--
-- Name: root_cause_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.root_cause_types (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL
);


--
-- Name: root_cause_types_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.root_cause_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: root_cause_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.root_cause_types_id_seq OWNED BY public.root_cause_types.id;


--
-- Name: sessions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.sessions (
    id integer NOT NULL,
    token text NOT NULL,
    expires_at timestamp with time zone,
    user_id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


--
-- Name: sessions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.sessions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: sessions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.sessions_id_seq OWNED BY public.sessions.id;


--
-- Name: settings; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.settings (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    key character varying(255) NOT NULL,
    value json DEFAULT '"{}"'::json NOT NULL,
    label text DEFAULT ''::text NOT NULL,
    is_user_setting boolean DEFAULT false NOT NULL,
    description text
);


--
-- Name: settings_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.settings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.settings_id_seq OWNED BY public.settings.id;


--
-- Name: sheet_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.sheet_versions (
    id integer NOT NULL,
    sheet_id integer NOT NULL,
    meta text,
    raw_data text NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    modified_by_user_id integer
);


--
-- Name: sheet_revisions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.sheet_revisions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: sheet_revisions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.sheet_revisions_id_seq OWNED BY public.sheet_versions.id;


--
-- Name: sheets; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.sheets (
    id integer NOT NULL,
    meta text,
    raw_data text NOT NULL,
    lock_user_id integer,
    locked_at timestamp with time zone,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone
);


--
-- Name: sheets_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.sheets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: sheets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.sheets_id_seq OWNED BY public.sheets.id;


--
-- Name: significance_options; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.significance_options (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer
);


--
-- Name: significance_options_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.significance_options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: significance_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.significance_options_id_seq OWNED BY public.significance_options.id;


--
-- Name: sod_controls; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.sod_controls (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer
);


--
-- Name: sod_controls_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.sod_controls_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: sod_controls_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.sod_controls_id_seq OWNED BY public.sod_controls.id;


--
-- Name: sox_impacts; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.sox_impacts (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL
);


--
-- Name: sox_impacts_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.sox_impacts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: sox_impacts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.sox_impacts_id_seq OWNED BY public.sox_impacts.id;


--
-- Name: status_options; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.status_options (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer
);


--
-- Name: status_options_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.status_options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: status_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.status_options_id_seq OWNED BY public.status_options.id;


--
-- Name: subprocesses; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.subprocesses (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    uid character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    process_id integer
);


--
-- Name: subprocesses_data; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.subprocesses_data (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    file character varying(255),
    subprocess_id integer NOT NULL,
    processes_datum_id integer NOT NULL
);


--
-- Name: subprocesses_data_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.subprocesses_data_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: subprocesses_data_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.subprocesses_data_id_seq OWNED BY public.subprocesses_data.id;


--
-- Name: subprocesses_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.subprocesses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: subprocesses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.subprocesses_id_seq OWNED BY public.subprocesses.id;


--
-- Name: survey_responses; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.survey_responses (
    id integer NOT NULL,
    survey_id integer,
    task_item_id integer,
    status text,
    meta_config text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone
);


--
-- Name: survey_responses_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.survey_responses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: survey_responses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.survey_responses_id_seq OWNED BY public.survey_responses.id;


--
-- Name: surveys; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.surveys (
    id integer NOT NULL,
    name text,
    meta_config text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    task_title text DEFAULT ''::text,
    type text DEFAULT 'standalone'::text,
    status text DEFAULT 'Unlocked'::text NOT NULL,
    task_category_id integer,
    is_archived boolean DEFAULT false NOT NULL
);


--
-- Name: surveys_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.surveys_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: surveys_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.surveys_id_seq OWNED BY public.surveys.id;


--
-- Name: sys_op_logs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.sys_op_logs (
    id integer NOT NULL,
    user_id integer,
    type character varying(255),
    status character varying(255),
    level character varying(255),
    data text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone
);


--
-- Name: sys_op_logs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.sys_op_logs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: sys_op_logs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.sys_op_logs_id_seq OWNED BY public.sys_op_logs.id;


--
-- Name: task_categories; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.task_categories (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL,
    meta_config text,
    color character varying(255),
    short_name character varying(255)
);


--
-- Name: task_group_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.task_group_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: task_group_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.task_group_categories_id_seq OWNED BY public.task_categories.id;


--
-- Name: task_group_locations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.task_group_locations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: task_group_locations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.task_group_locations_id_seq OWNED BY public.locations.id;


--
-- Name: task_group_owners; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.task_group_owners (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    task_group_id integer,
    user_id integer
);


--
-- Name: task_group_owners_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.task_group_owners_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: task_group_owners_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.task_group_owners_id_seq OWNED BY public.task_group_owners.id;


--
-- Name: task_periods; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.task_periods (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL,
    short_name character varying(255),
    start_date date,
    end_date date
);


--
-- Name: task_group_periods_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.task_group_periods_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: task_group_periods_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.task_group_periods_id_seq OWNED BY public.task_periods.id;


--
-- Name: task_priorities; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.task_priorities (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL,
    color character varying(255)
);


--
-- Name: task_group_risk_levels_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.task_group_risk_levels_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: task_group_risk_levels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.task_group_risk_levels_id_seq OWNED BY public.task_priorities.id;


--
-- Name: task_groups; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.task_groups (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    creator_user_id integer NOT NULL,
    task_category_id integer,
    archived_at timestamp with time zone,
    task_period_id integer,
    survey_id integer,
    started_at timestamp with time zone,
    status character varying(255),
    title text,
    allow_yes_to_all boolean DEFAULT false NOT NULL,
    test_section_id integer,
    email_project_start json,
    email_preparer_digest json,
    email_reviewer_digest json,
    email_admin_digest json,
    uid text,
    reviewer_users json,
    assignee_users json,
    is_multi_reviewer boolean DEFAULT false,
    project_options json,
    ops_audit_id integer,
    is_managed_change boolean DEFAULT false
);


--
-- Name: task_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.task_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: task_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.task_groups_id_seq OWNED BY public.task_groups.id;


--
-- Name: task_item_reviewers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.task_item_reviewers (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    sort_order integer DEFAULT 0,
    status character varying(255),
    reviewer_user_id integer,
    task_item_id integer,
    certified_by_user_id integer,
    certified_date timestamp with time zone
);


--
-- Name: task_item_reviewers_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.task_item_reviewers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: task_item_reviewers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.task_item_reviewers_id_seq OWNED BY public.task_item_reviewers.id;


--
-- Name: task_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.task_items (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    is_acknowledge_prepared boolean NOT NULL,
    due_date date,
    submitted_date timestamp with time zone,
    certified_date timestamp with time zone,
    "order" integer NOT NULL,
    task_group_id integer NOT NULL,
    assignee_user_id integer,
    submitted_by_user_id integer,
    certified_by_user_id integer,
    title character varying(255),
    description text,
    assignee_response text,
    budget_hours numeric DEFAULT 0 NOT NULL,
    actual_hours numeric DEFAULT 0 NOT NULL,
    task_priority_id integer,
    task_period_id integer,
    reviewer_user_id integer,
    location_id integer,
    department_id integer,
    reference_notes text,
    controls_datum_id integer,
    task_category_id integer,
    creator_user_id integer,
    meta_config text,
    status character varying(255) DEFAULT ''::character varying,
    test_section_id integer,
    issue_id integer,
    opened_date timestamp with time zone,
    opened_by_user_id integer,
    closed_date timestamp with time zone,
    closed_by_user_id integer,
    ops_audit_id integer,
    ops_audit_item_id integer
);


--
-- Name: task_items_files; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.task_items_files (
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    task_item_id integer NOT NULL,
    file_id integer NOT NULL
);


--
-- Name: task_items_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.task_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: task_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.task_items_id_seq OWNED BY public.task_items.id;


--
-- Name: team_users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.team_users (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    user_id integer,
    team_id integer
);


--
-- Name: team_users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.team_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: team_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.team_users_id_seq OWNED BY public.team_users.id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.teams (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    sort_order integer DEFAULT 0 NOT NULL,
    uid text
);


--
-- Name: teams_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.teams_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: teams_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.teams_id_seq OWNED BY public.teams.id;


--
-- Name: teams_owner_users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.teams_owner_users (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    user_id integer,
    team_id integer
);


--
-- Name: teams_owner_users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.teams_owner_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: teams_owner_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.teams_owner_users_id_seq OWNED BY public.teams_owner_users.id;


--
-- Name: test_comments; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.test_comments (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    controls_datum_id integer,
    test_id integer,
    comment_user_id integer,
    subject character varying(255) NOT NULL,
    message character varying(255) NOT NULL
);


--
-- Name: test_comments_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.test_comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: test_comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.test_comments_id_seq OWNED BY public.test_comments.id;


--
-- Name: test_custom_select1_options; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.test_custom_select1_options (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL
);


--
-- Name: test_custom_select1_options_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.test_custom_select1_options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: test_custom_select1_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.test_custom_select1_options_id_seq OWNED BY public.test_custom_select1_options.id;


--
-- Name: test_custom_select2_options; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.test_custom_select2_options (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL
);


--
-- Name: test_custom_select2_options_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.test_custom_select2_options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: test_custom_select2_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.test_custom_select2_options_id_seq OWNED BY public.test_custom_select2_options.id;


--
-- Name: test_custom_select3_options; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.test_custom_select3_options (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL
);


--
-- Name: test_custom_select3_options_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.test_custom_select3_options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: test_custom_select3_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.test_custom_select3_options_id_seq OWNED BY public.test_custom_select3_options.id;


--
-- Name: test_sections; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.test_sections (
    id integer NOT NULL,
    sort_order integer,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    short_name character varying(255),
    uid character varying(255)
);


--
-- Name: test_sections_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.test_sections_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: test_sections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.test_sections_id_seq OWNED BY public.test_sections.id;


--
-- Name: test_timings; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.test_timings (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer
);


--
-- Name: test_timings_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.test_timings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: test_timings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.test_timings_id_seq OWNED BY public.test_timings.id;


--
-- Name: test_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.test_types (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer
);


--
-- Name: test_types_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.test_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: test_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.test_types_id_seq OWNED BY public.test_types.id;


--
-- Name: testing_strategies; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.testing_strategies (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    name character varying(255) NOT NULL,
    sort_order integer
);


--
-- Name: testing_strategies_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.testing_strategies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: testing_strategies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.testing_strategies_id_seq OWNED BY public.testing_strategies.id;


--
-- Name: tests; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tests (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    controls_datum_id integer NOT NULL,
    "order" integer NOT NULL,
    name character varying(255),
    sample_size text,
    selections text,
    tester_user_id integer,
    reviewer_user_id integer,
    start_date date,
    end_date date,
    results text,
    test_sheet text,
    notes text,
    effectiveness_option_id integer,
    status_option_id integer,
    archived boolean DEFAULT false NOT NULL,
    archived_at timestamp with time zone,
    hours character varying(255),
    due_date date,
    budget_hours character varying(255),
    percent_complete character varying(255),
    test_period character varying(255),
    entity_id integer,
    control_id integer,
    precision_level text,
    mrc_evidence text,
    sheet_id integer,
    is_inactive boolean DEFAULT false NOT NULL,
    complete_date timestamp with time zone,
    reviewed_date timestamp with time zone,
    review_notes_date timestamp with time zone,
    complete_by_user_id integer,
    reviewed_by_user_id integer,
    review_notes_by_user_id integer,
    test_section_id integer,
    procedures text,
    sheet_file_id integer,
    reviewer_hours character varying(255),
    reviewer_budget_hours character varying(255),
    secondary_reviewer_user_id integer,
    population_size text,
    test_pbc_request text,
    test_pbc_request_additional text,
    population_completeness text,
    population_source text,
    external_auditor_status_option_id integer,
    reviewer_due_date date,
    open_date timestamp with time zone,
    under_review_t_date timestamp with time zone,
    under_review_r2_date timestamp with time zone,
    opened_by_user_id integer,
    under_review_t_by_user_id integer,
    under_review_r2_by_user_id integer,
    test_custom_select1_option_id integer,
    test_custom_select2_option_id integer,
    test_custom_select3_option_id integer,
    information_reliability text,
    control_characteristics text,
    exception_nature text,
    sample_size_additional text,
    number_exceptions text,
    secondary_reviewer_due_date date
);


--
-- Name: tests_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tests_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: tests_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tests_id_seq OWNED BY public.tests.id;


--
-- Name: timesheet_entries; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.timesheet_entries (
    id integer NOT NULL,
    date date NOT NULL,
    hours double precision NOT NULL,
    user_id integer NOT NULL,
    timesheetable_type text NOT NULL,
    timesheetable_id integer NOT NULL,
    timesheetable_meta text,
    timesheet_project_id integer NOT NULL,
    comment text,
    deleted_at timestamp with time zone,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


--
-- Name: timesheet_entries_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.timesheet_entries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: timesheet_entries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.timesheet_entries_id_seq OWNED BY public.timesheet_entries.id;


--
-- Name: timesheet_projects; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.timesheet_projects (
    id integer NOT NULL,
    name character varying(255),
    sort_order integer,
    deleted_at timestamp with time zone,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    type character varying(255) DEFAULT 'Control'::character varying NOT NULL
);


--
-- Name: timesheet_projects_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.timesheet_projects_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: timesheet_projects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.timesheet_projects_id_seq OWNED BY public.timesheet_projects.id;


--
-- Name: user_settings; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.user_settings (
    id integer NOT NULL,
    user_id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    setting_id integer NOT NULL,
    value json DEFAULT '"{}"'::json
);


--
-- Name: user_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.user_settings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: user_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.user_settings_id_seq OWNED BY public.user_settings.id;


--
-- Name: user_stats; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.user_stats (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    user_id integer,
    has_unread_comments boolean DEFAULT false NOT NULL,
    show_inbox_jewel boolean DEFAULT false NOT NULL,
    show_notification_jewel boolean DEFAULT false NOT NULL
);


--
-- Name: user_stats_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.user_stats_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: user_stats_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.user_stats_id_seq OWNED BY public.user_stats.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    first_name character varying(255) NOT NULL,
    last_name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255),
    salt character varying(255),
    role_id integer,
    accepted_terms boolean,
    last_login timestamp with time zone,
    last_password_change timestamp with time zone,
    last_ip_address character varying(255),
    password_history text,
    verified_ip_history text,
    requires_password_change boolean,
    icon_bg_color character varying(255),
    icon_fg_color character varying(255),
    competency_evaluation text,
    user_stat_id integer,
    password_reset_token character varying(255),
    password_reset_token_expires timestamp with time zone,
    auth_type character varying(255),
    location_id integer,
    department_id integer,
    job_title character varying(255),
    mfa_enabled boolean DEFAULT false NOT NULL,
    cell_phone character varying(255) DEFAULT ''::character varying NOT NULL,
    authy_id integer,
    employee_number text,
    username text,
    login_attempt integer DEFAULT 0 NOT NULL,
    last_login_failed_attempt timestamp with time zone,
    first_login timestamp with time zone
);


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.users_id_seq
    START WITH 2
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: versions_meta; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.versions_meta (
    id integer NOT NULL,
    version character varying(255) NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone
);


--
-- Name: versions_meta_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.versions_meta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: versions_meta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.versions_meta_id_seq OWNED BY public.versions_meta.id;


--
-- Name: SequelizeMetaBackup id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."SequelizeMetaBackup" ALTER COLUMN id SET DEFAULT nextval('public."SequelizeMeta_id_seq"'::regclass);


--
-- Name: aggregation_references id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.aggregation_references ALTER COLUMN id SET DEFAULT nextval('public.aggregation_references_id_seq'::regclass);


--
-- Name: allowed_roles id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.allowed_roles ALTER COLUMN id SET DEFAULT nextval('public.allowed_roles_id_seq'::regclass);


--
-- Name: allowed_teams id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.allowed_teams ALTER COLUMN id SET DEFAULT nextval('public.allowed_teams_id_seq'::regclass);


--
-- Name: allowed_users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.allowed_users ALTER COLUMN id SET DEFAULT nextval('public.allowed_users_id_seq'::regclass);


--
-- Name: archives id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.archives ALTER COLUMN id SET DEFAULT nextval('public.archives_id_seq'::regclass);


--
-- Name: assertions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.assertions ALTER COLUMN id SET DEFAULT nextval('public.assertions_id_seq'::regclass);


--
-- Name: attachments id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.attachments ALTER COLUMN id SET DEFAULT nextval('public.attachments_id_seq'::regclass);


--
-- Name: baseline_result_options id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.baseline_result_options ALTER COLUMN id SET DEFAULT nextval('public.baseline_result_options_id_seq'::regclass);


--
-- Name: business_units id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.business_units ALTER COLUMN id SET DEFAULT nextval('public.business_units_id_seq'::regclass);


--
-- Name: comment_references id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comment_references ALTER COLUMN id SET DEFAULT nextval('public.comment_references_id_seq'::regclass);


--
-- Name: comment_unsubscribers id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comment_unsubscribers ALTER COLUMN id SET DEFAULT nextval('public.comment_unsubscribers_id_seq'::regclass);


--
-- Name: comments id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comments ALTER COLUMN id SET DEFAULT nextval('public.comments_id_seq'::regclass);


--
-- Name: comments_roles id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comments_roles ALTER COLUMN id SET DEFAULT nextval('public.comments_roles_id_seq'::regclass);


--
-- Name: comments_teams id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comments_teams ALTER COLUMN id SET DEFAULT nextval('public.comments_teams_id_seq'::regclass);


--
-- Name: comments_users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comments_users ALTER COLUMN id SET DEFAULT nextval('public.comments_users_id_seq'::regclass);


--
-- Name: control_classifications id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.control_classifications ALTER COLUMN id SET DEFAULT nextval('public.control_classifications_id_seq'::regclass);


--
-- Name: control_comments id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.control_comments ALTER COLUMN id SET DEFAULT nextval('public.control_comments_id_seq'::regclass);


--
-- Name: control_complexity_options id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.control_complexity_options ALTER COLUMN id SET DEFAULT nextval('public.control_complexity_options_id_seq'::regclass);


--
-- Name: control_custom_multiselect1_options id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.control_custom_multiselect1_options ALTER COLUMN id SET DEFAULT nextval('public.control_custom_multiselect1_options_id_seq'::regclass);


--
-- Name: control_custom_multiselect2_options id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.control_custom_multiselect2_options ALTER COLUMN id SET DEFAULT nextval('public.control_custom_multiselect2_options_id_seq'::regclass);


--
-- Name: control_custom_multiselect3_options id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.control_custom_multiselect3_options ALTER COLUMN id SET DEFAULT nextval('public.control_custom_multiselect3_options_id_seq'::regclass);


--
-- Name: control_custom_multiselect4_options id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.control_custom_multiselect4_options ALTER COLUMN id SET DEFAULT nextval('public.control_custom_multiselect4_options_id_seq'::regclass);


--
-- Name: control_custom_select1_options id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.control_custom_select1_options ALTER COLUMN id SET DEFAULT nextval('public.control_custom_select1_options_id_seq'::regclass);


--
-- Name: control_design_options id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.control_design_options ALTER COLUMN id SET DEFAULT nextval('public.control_design_options_id_seq'::regclass);


--
-- Name: control_frequencies id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.control_frequencies ALTER COLUMN id SET DEFAULT nextval('public.control_frequencies_id_seq'::regclass);


--
-- Name: control_inherent_risk_options id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.control_inherent_risk_options ALTER COLUMN id SET DEFAULT nextval('public.control_inherent_risk_options_id_seq'::regclass);


--
-- Name: control_judgement_degree_options id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.control_judgement_degree_options ALTER COLUMN id SET DEFAULT nextval('public.control_judgement_degree_options_id_seq'::regclass);


--
-- Name: control_management_override_options id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.control_management_override_options ALTER COLUMN id SET DEFAULT nextval('public.control_management_override_options_id_seq'::regclass);


--
-- Name: control_nature_options id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.control_nature_options ALTER COLUMN id SET DEFAULT nextval('public.control_nature_options_id_seq'::regclass);


--
-- Name: control_routine_options id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.control_routine_options ALTER COLUMN id SET DEFAULT nextval('public.control_routine_options_id_seq'::regclass);


--
-- Name: control_scopes id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.control_scopes ALTER COLUMN id SET DEFAULT nextval('public.control_scopes_id_seq'::regclass);


--
-- Name: control_types id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.control_types ALTER COLUMN id SET DEFAULT nextval('public.control_types_id_seq'::regclass);


--
-- Name: controls id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls ALTER COLUMN id SET DEFAULT nextval('public.controls_id_seq'::regclass);


--
-- Name: controls_assertions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_assertions ALTER COLUMN id SET DEFAULT nextval('public.controls_assertions_id_seq'::regclass);


--
-- Name: controls_data id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data ALTER COLUMN id SET DEFAULT nextval('public.controls_data_id_seq'::regclass);


--
-- Name: controls_data_additional_owners id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_additional_owners ALTER COLUMN id SET DEFAULT nextval('public.controls_data_additional_owners_id_seq'::regclass);


--
-- Name: controls_data_archives id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_archives ALTER COLUMN id SET DEFAULT nextval('public.controls_data_archives_id_seq'::regclass);


--
-- Name: controls_data_audits id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_audits ALTER COLUMN id SET DEFAULT nextval('public.controls_data_audits_id_seq'::regclass);


--
-- Name: controls_data_business_process_owner_users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_business_process_owner_users ALTER COLUMN id SET DEFAULT nextval('public.controls_data_business_process_owner_users_id_seq'::regclass);


--
-- Name: controls_data_comments id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_comments ALTER COLUMN id SET DEFAULT nextval('public.controls_data_comments_id_seq'::regclass);


--
-- Name: controls_data_control_custom_multiselect1_options id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_control_custom_multiselect1_options ALTER COLUMN id SET DEFAULT nextval('public.controls_data_control_custom_multiselect1_options_id_seq'::regclass);


--
-- Name: controls_data_control_custom_multiselect2_options id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_control_custom_multiselect2_options ALTER COLUMN id SET DEFAULT nextval('public.controls_data_control_custom_multiselect2_options_id_seq'::regclass);


--
-- Name: controls_data_control_custom_multiselect3_options id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_control_custom_multiselect3_options ALTER COLUMN id SET DEFAULT nextval('public.controls_data_control_custom_multiselect3_options_id_seq'::regclass);


--
-- Name: controls_data_control_custom_multiselect4_options id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_control_custom_multiselect4_options ALTER COLUMN id SET DEFAULT nextval('public.controls_data_control_custom_multiselect4_options_id_seq'::regclass);


--
-- Name: controls_data_coso_components id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_coso_components ALTER COLUMN id SET DEFAULT nextval('public.controls_data_coso_components_id_seq'::regclass);


--
-- Name: controls_data_coso_elements id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_coso_elements ALTER COLUMN id SET DEFAULT nextval('public.controls_data_coso_elements_id_seq'::regclass);


--
-- Name: controls_data_coso_pofs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_coso_pofs ALTER COLUMN id SET DEFAULT nextval('public.controls_data_coso_pofs_id_seq'::regclass);


--
-- Name: controls_data_coso_principles id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_coso_principles ALTER COLUMN id SET DEFAULT nextval('public.controls_data_coso_principles_id_seq'::regclass);


--
-- Name: controls_data_deficiency_types id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_deficiency_types ALTER COLUMN id SET DEFAULT nextval('public.controls_data_deficiency_types_id_seq'::regclass);


--
-- Name: controls_data_finance_process_owner_users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_finance_process_owner_users ALTER COLUMN id SET DEFAULT nextval('public.controls_data_finance_process_owner_users_id_seq'::regclass);


--
-- Name: controls_data_financial_accounts id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_financial_accounts ALTER COLUMN id SET DEFAULT nextval('public.controls_data_financial_accounts_id_seq'::regclass);


--
-- Name: controls_data_financial_applications id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_financial_applications ALTER COLUMN id SET DEFAULT nextval('public.controls_data_financial_applications_id_seq'::regclass);


--
-- Name: controls_data_issue_nature_options id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_issue_nature_options ALTER COLUMN id SET DEFAULT nextval('public.controls_data_issue_nature_options_id_seq'::regclass);


--
-- Name: controls_data_narratives id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_narratives ALTER COLUMN id SET DEFAULT nextval('public.controls_data_narratives_id_seq'::regclass);


--
-- Name: controls_data_pbc_owner_users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_pbc_owner_users ALTER COLUMN id SET DEFAULT nextval('public.controls_data_pbc_owner_users_id_seq'::regclass);


--
-- Name: controls_data_pbc_status_options id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_pbc_status_options ALTER COLUMN id SET DEFAULT nextval('public.controls_data_pbc_status_options_id_seq'::regclass);


--
-- Name: controls_data_test_types id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_test_types ALTER COLUMN id SET DEFAULT nextval('public.controls_data_test_types_id_seq'::regclass);


--
-- Name: controls_data_testing_strategies id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_testing_strategies ALTER COLUMN id SET DEFAULT nextval('public.controls_data_testing_strategies_id_seq'::regclass);


--
-- Name: controls_risks id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_risks ALTER COLUMN id SET DEFAULT nextval('public.controls_risks_id_seq'::regclass);


--
-- Name: coso_components id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.coso_components ALTER COLUMN id SET DEFAULT nextval('public.coso_components_id_seq'::regclass);


--
-- Name: coso_elements id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.coso_elements ALTER COLUMN id SET DEFAULT nextval('public.coso_elements_id_seq'::regclass);


--
-- Name: coso_pofs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.coso_pofs ALTER COLUMN id SET DEFAULT nextval('public.coso_pofs_id_seq'::regclass);


--
-- Name: coso_principles id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.coso_principles ALTER COLUMN id SET DEFAULT nextval('public.coso_principles_id_seq'::regclass);


--
-- Name: cron_options id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cron_options ALTER COLUMN id SET DEFAULT nextval('public.cron_options_id_seq'::regclass);


--
-- Name: crons id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.crons ALTER COLUMN id SET DEFAULT nextval('public.crons_id_seq'::regclass);


--
-- Name: deficiency_levels id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.deficiency_levels ALTER COLUMN id SET DEFAULT nextval('public.deficiency_types_id_seq'::regclass);


--
-- Name: deficiency_types id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.deficiency_types ALTER COLUMN id SET DEFAULT nextval('public.deficiency_types_id_seq1'::regclass);


--
-- Name: departments id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.departments ALTER COLUMN id SET DEFAULT nextval('public.departments_id_seq'::regclass);


--
-- Name: document_diffs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.document_diffs ALTER COLUMN id SET DEFAULT nextval('public.document_diffs_id_seq'::regclass);


--
-- Name: document_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.document_versions ALTER COLUMN id SET DEFAULT nextval('public.document_versions_id_seq'::regclass);


--
-- Name: documents id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.documents ALTER COLUMN id SET DEFAULT nextval('public.documents_id_seq'::regclass);


--
-- Name: effectiveness_options id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.effectiveness_options ALTER COLUMN id SET DEFAULT nextval('public.effectiveness_options_id_seq'::regclass);


--
-- Name: email_logs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.email_logs ALTER COLUMN id SET DEFAULT nextval('public.email_logs_id_seq'::regclass);


--
-- Name: entities id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.entities ALTER COLUMN id SET DEFAULT nextval('public.entities_id_seq'::regclass);


--
-- Name: exclude_risks id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.exclude_risks ALTER COLUMN id SET DEFAULT nextval('public.exclude_risks_id_seq'::regclass);


--
-- Name: external_auditor_status_options id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.external_auditor_status_options ALTER COLUMN id SET DEFAULT nextval('public.external_auditor_status_options_id_seq'::regclass);


--
-- Name: file_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.file_versions ALTER COLUMN id SET DEFAULT nextval('public.file_versions_id_seq'::regclass);


--
-- Name: files id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);


--
-- Name: financial_accounts id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.financial_accounts ALTER COLUMN id SET DEFAULT nextval('public.financial_accounts_id_seq'::regclass);


--
-- Name: financial_applications id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.financial_applications ALTER COLUMN id SET DEFAULT nextval('public.financial_applications_id_seq'::regclass);


--
-- Name: form_templates id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.form_templates ALTER COLUMN id SET DEFAULT nextval('public.form_templates_id_seq'::regclass);


--
-- Name: fraud_controls id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fraud_controls ALTER COLUMN id SET DEFAULT nextval('public.fraud_controls_id_seq'::regclass);


--
-- Name: global_attributes id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.global_attributes ALTER COLUMN id SET DEFAULT nextval('public.global_attributes_id_seq'::regclass);


--
-- Name: global_audits id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.global_audits ALTER COLUMN id SET DEFAULT nextval('public.global_audits_id_seq'::regclass);


--
-- Name: global_file_categories id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.global_file_categories ALTER COLUMN id SET DEFAULT nextval('public.global_file_categories_id_seq'::regclass);


--
-- Name: global_permissions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.global_permissions ALTER COLUMN id SET DEFAULT nextval('public.global_permissions_id_seq'::regclass);


--
-- Name: impacted_sections id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.impacted_sections ALTER COLUMN id SET DEFAULT nextval('public.impacted_sections_id_seq'::regclass);


--
-- Name: import_records id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.import_records ALTER COLUMN id SET DEFAULT nextval('public.import_records_id_seq'::regclass);


--
-- Name: internal_control_components id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.internal_control_components ALTER COLUMN id SET DEFAULT nextval('public.internal_control_components_id_seq'::regclass);


--
-- Name: issue_custom_multiselect1_options id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issue_custom_multiselect1_options ALTER COLUMN id SET DEFAULT nextval('public.issue_custom_multiselect1_options_id_seq'::regclass);


--
-- Name: issue_custom_multiselect2_options id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issue_custom_multiselect2_options ALTER COLUMN id SET DEFAULT nextval('public.issue_custom_multiselect2_options_id_seq'::regclass);


--
-- Name: issue_custom_select1_options id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issue_custom_select1_options ALTER COLUMN id SET DEFAULT nextval('public.issue_custom_select1_options_id_seq'::regclass);


--
-- Name: issue_custom_select2_options id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issue_custom_select2_options ALTER COLUMN id SET DEFAULT nextval('public.issue_custom_select2_options_id_seq'::regclass);


--
-- Name: issue_idents id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issue_idents ALTER COLUMN id SET DEFAULT nextval('public.issue_idents_id_seq'::regclass);


--
-- Name: issue_locations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issue_locations ALTER COLUMN id SET DEFAULT nextval('public.issue_locations_id_seq'::regclass);


--
-- Name: issue_nature_options id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issue_nature_options ALTER COLUMN id SET DEFAULT nextval('public.issue_nature_options_id_seq'::regclass);


--
-- Name: issue_ratings id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issue_ratings ALTER COLUMN id SET DEFAULT nextval('public.issue_ratings_id_seq'::regclass);


--
-- Name: issue_remediation_custom_select1_options id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issue_remediation_custom_select1_options ALTER COLUMN id SET DEFAULT nextval('public.issue_remediation_custom_select1_options_id_seq'::regclass);


--
-- Name: issue_remediation_custom_select2_options id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issue_remediation_custom_select2_options ALTER COLUMN id SET DEFAULT nextval('public.issue_remediation_custom_select2_options_id_seq'::regclass);


--
-- Name: issues id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues ALTER COLUMN id SET DEFAULT nextval('public.issues_id_seq'::regclass);


--
-- Name: issues_business_process_owner_users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues_business_process_owner_users ALTER COLUMN id SET DEFAULT nextval('public.issues_business_process_owner_users_id_seq'::regclass);


--
-- Name: issues_deficiency_types id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues_deficiency_types ALTER COLUMN id SET DEFAULT nextval('public.issues_deficiency_types_id_seq'::regclass);


--
-- Name: issues_finance_process_owner_users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues_finance_process_owner_users ALTER COLUMN id SET DEFAULT nextval('public.issues_finance_process_owner_users_id_seq'::regclass);


--
-- Name: issues_impacted_sections id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues_impacted_sections ALTER COLUMN id SET DEFAULT nextval('public.issues_impacted_sections_id_seq'::regclass);


--
-- Name: issues_issue_custom_multiselect1_options id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues_issue_custom_multiselect1_options ALTER COLUMN id SET DEFAULT nextval('public.issues_issue_custom_multiselect1_options_id_seq'::regclass);


--
-- Name: issues_issue_custom_multiselect2_options id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues_issue_custom_multiselect2_options ALTER COLUMN id SET DEFAULT nextval('public.issues_issue_custom_multiselect2_options_id_seq'::regclass);


--
-- Name: issues_issue_locations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues_issue_locations ALTER COLUMN id SET DEFAULT nextval('public.issues_issue_locations_id_seq'::regclass);


--
-- Name: issues_issue_nature_options id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues_issue_nature_options ALTER COLUMN id SET DEFAULT nextval('public.issues_issue_nature_options_id_seq'::regclass);


--
-- Name: issues_root_cause_types id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues_root_cause_types ALTER COLUMN id SET DEFAULT nextval('public.issues_root_cause_types_id_seq'::regclass);


--
-- Name: issues_subscriber_users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues_subscriber_users ALTER COLUMN id SET DEFAULT nextval('public.issues_subscriber_users_id_seq'::regclass);


--
-- Name: likelihoods id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.likelihoods ALTER COLUMN id SET DEFAULT nextval('public.likelihoods_id_seq'::regclass);


--
-- Name: locations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.locations ALTER COLUMN id SET DEFAULT nextval('public.task_group_locations_id_seq'::regclass);


--
-- Name: locks id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.locks ALTER COLUMN id SET DEFAULT nextval('public.locks_id_seq'::regclass);


--
-- Name: login_histories id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.login_histories ALTER COLUMN id SET DEFAULT nextval('public.login_histories_id_seq'::regclass);


--
-- Name: magnitudes id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.magnitudes ALTER COLUMN id SET DEFAULT nextval('public.magnitudes_id_seq'::regclass);


--
-- Name: managed_changes id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.managed_changes ALTER COLUMN id SET DEFAULT nextval('public.managed_changes_id_seq'::regclass);


--
-- Name: mrc_controls id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mrc_controls ALTER COLUMN id SET DEFAULT nextval('public.mrc_controls_id_seq'::regclass);


--
-- Name: narrative_owners id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.narrative_owners ALTER COLUMN id SET DEFAULT nextval('public.narrative_owners_id_seq'::regclass);


--
-- Name: narrative_sections id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.narrative_sections ALTER COLUMN id SET DEFAULT nextval('public.narrative_sections_id_seq'::regclass);


--
-- Name: narratives id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.narratives ALTER COLUMN id SET DEFAULT nextval('public.narratives_id_seq'::regclass);


--
-- Name: notification_messages id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.notification_messages ALTER COLUMN id SET DEFAULT nextval('public.notification_messages_id_seq'::regclass);


--
-- Name: ops_audit_categories id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_categories ALTER COLUMN id SET DEFAULT nextval('public.ops_audit_categories_id_seq'::regclass);


--
-- Name: ops_audit_category_sections id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_category_sections ALTER COLUMN id SET DEFAULT nextval('public.ops_audit_category_sections_id_seq'::regclass);


--
-- Name: ops_audit_custom_multiselect1_options id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_custom_multiselect1_options ALTER COLUMN id SET DEFAULT nextval('public.ops_audit_custom_multiselect1_options_id_seq'::regclass);


--
-- Name: ops_audit_custom_multiselect2_options id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_custom_multiselect2_options ALTER COLUMN id SET DEFAULT nextval('public.ops_audit_custom_multiselect2_options_id_seq'::regclass);


--
-- Name: ops_audit_custom_select1_options id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_custom_select1_options ALTER COLUMN id SET DEFAULT nextval('public.ops_audit_custom_select1_options_id_seq'::regclass);


--
-- Name: ops_audit_custom_select2_options id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_custom_select2_options ALTER COLUMN id SET DEFAULT nextval('public.ops_audit_custom_select2_options_id_seq'::regclass);


--
-- Name: ops_audit_custom_select3_options id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_custom_select3_options ALTER COLUMN id SET DEFAULT nextval('public.ops_audit_custom_select3_options_id_seq'::regclass);


--
-- Name: ops_audit_items id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_items ALTER COLUMN id SET DEFAULT nextval('public.ops_audit_items_id_seq'::regclass);


--
-- Name: ops_audit_items_business_owner_users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_items_business_owner_users ALTER COLUMN id SET DEFAULT nextval('public.ops_audit_items_business_owner_users_id_seq'::regclass);


--
-- Name: ops_audit_items_controls_data id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_items_controls_data ALTER COLUMN id SET DEFAULT nextval('public.ops_audit_items_controls_data_id_seq'::regclass);


--
-- Name: ops_audit_items_ops_custom_multiselect1_options id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_items_ops_custom_multiselect1_options ALTER COLUMN id SET DEFAULT nextval('public.ops_audit_items_ops_custom_multiselect1_options_id_seq'::regclass);


--
-- Name: ops_audit_locations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_locations ALTER COLUMN id SET DEFAULT nextval('public.ops_audit_locations_id_seq'::regclass);


--
-- Name: ops_audit_opinions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_opinions ALTER COLUMN id SET DEFAULT nextval('public.ops_audit_opinions_id_seq'::regclass);


--
-- Name: ops_audit_owner_users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_owner_users ALTER COLUMN id SET DEFAULT nextval('public.ops_audit_owner_users_id_seq'::regclass);


--
-- Name: ops_audit_periods id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_periods ALTER COLUMN id SET DEFAULT nextval('public.ops_audit_periods_id_seq'::regclass);


--
-- Name: ops_audit_result_custom_select1_options id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_result_custom_select1_options ALTER COLUMN id SET DEFAULT nextval('public.ops_audit_result_custom_select1_options_id_seq'::regclass);


--
-- Name: ops_audit_result_custom_select2_options id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_result_custom_select2_options ALTER COLUMN id SET DEFAULT nextval('public.ops_audit_result_custom_select2_options_id_seq'::regclass);


--
-- Name: ops_audit_result_custom_select3_options id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_result_custom_select3_options ALTER COLUMN id SET DEFAULT nextval('public.ops_audit_result_custom_select3_options_id_seq'::regclass);


--
-- Name: ops_audit_result_custom_select4_options id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_result_custom_select4_options ALTER COLUMN id SET DEFAULT nextval('public.ops_audit_result_custom_select4_options_id_seq'::regclass);


--
-- Name: ops_audit_risk_levels id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_risk_levels ALTER COLUMN id SET DEFAULT nextval('public.ops_audit_risk_levels_id_seq'::regclass);


--
-- Name: ops_audit_section_instances id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_section_instances ALTER COLUMN id SET DEFAULT nextval('public.ops_audit_section_instances_id_seq'::regclass);


--
-- Name: ops_audit_sections id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_sections ALTER COLUMN id SET DEFAULT nextval('public.ops_audit_sections_id_seq'::regclass);


--
-- Name: ops_audit_subsections id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_subsections ALTER COLUMN id SET DEFAULT nextval('public.ops_audit_subsections_id_seq'::regclass);


--
-- Name: ops_audits id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audits ALTER COLUMN id SET DEFAULT nextval('public.ops_audits_id_seq'::regclass);


--
-- Name: ops_audits_business_process_owner_users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audits_business_process_owner_users ALTER COLUMN id SET DEFAULT nextval('public.ops_audits_business_process_owner_users_id_seq'::regclass);


--
-- Name: ops_audits_business_units id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audits_business_units ALTER COLUMN id SET DEFAULT nextval('public.ops_audits_business_units_id_seq'::regclass);


--
-- Name: ops_audits_executive_users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audits_executive_users ALTER COLUMN id SET DEFAULT nextval('public.ops_audits_executive_users_id_seq'::regclass);


--
-- Name: ops_audits_finance_process_owner_users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audits_finance_process_owner_users ALTER COLUMN id SET DEFAULT nextval('public.ops_audits_finance_process_owner_users_id_seq'::regclass);


--
-- Name: ops_audits_officer_users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audits_officer_users ALTER COLUMN id SET DEFAULT nextval('public.ops_audits_officer_users_id_seq'::regclass);


--
-- Name: ops_audits_ops_audit_custom_multiselect1_options id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audits_ops_audit_custom_multiselect1_options ALTER COLUMN id SET DEFAULT nextval('public.ops_audits_ops_audit_custom_multiselect1_options_id_seq'::regclass);


--
-- Name: ops_audits_ops_audit_custom_multiselect2_options id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audits_ops_audit_custom_multiselect2_options ALTER COLUMN id SET DEFAULT nextval('public.ops_audits_ops_audit_custom_multiselect2_options_id_seq'::regclass);


--
-- Name: ops_audits_ops_audit_locations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audits_ops_audit_locations ALTER COLUMN id SET DEFAULT nextval('public.ops_audits_ops_audit_locations_id_seq'::regclass);


--
-- Name: ops_audits_supervisor_users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audits_supervisor_users ALTER COLUMN id SET DEFAULT nextval('public.ops_audits_supervisor_users_id_seq'::regclass);


--
-- Name: ops_custom_multiselect1_options id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_custom_multiselect1_options ALTER COLUMN id SET DEFAULT nextval('public.ops_custom_multiselect1_options_id_seq'::regclass);


--
-- Name: ops_custom_select1_options id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_custom_select1_options ALTER COLUMN id SET DEFAULT nextval('public.ops_custom_select1_options_id_seq'::regclass);


--
-- Name: ops_custom_select2_options id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_custom_select2_options ALTER COLUMN id SET DEFAULT nextval('public.ops_custom_select2_options_id_seq'::regclass);


--
-- Name: ops_ra_process_entities id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_ra_process_entities ALTER COLUMN id SET DEFAULT nextval('public.ops_ra_process_entities_id_seq'::regclass);


--
-- Name: ops_ra_values id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_ra_values ALTER COLUMN id SET DEFAULT nextval('public.ops_ra_values_id_seq'::regclass);


--
-- Name: ops_ratings id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_ratings ALTER COLUMN id SET DEFAULT nextval('public.ops_ratings_id_seq'::regclass);


--
-- Name: ops_risk_assessments id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_risk_assessments ALTER COLUMN id SET DEFAULT nextval('public.ops_risk_assessments_id_seq'::regclass);


--
-- Name: ops_risk_criteria id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_risk_criteria ALTER COLUMN id SET DEFAULT nextval('public.ops_risk_criteria_id_seq'::regclass);


--
-- Name: ops_risk_levels id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_risk_levels ALTER COLUMN id SET DEFAULT nextval('public.ops_risk_levels_id_seq'::regclass);


--
-- Name: ops_risk_values id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_risk_values ALTER COLUMN id SET DEFAULT nextval('public.ops_risk_values_id_seq'::regclass);


--
-- Name: password_histories id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.password_histories ALTER COLUMN id SET DEFAULT nextval('public.password_histories_id_seq'::regclass);


--
-- Name: pbc_status_options id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pbc_status_options ALTER COLUMN id SET DEFAULT nextval('public.pbc_status_options_id_seq'::regclass);


--
-- Name: pbix_files id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pbix_files ALTER COLUMN id SET DEFAULT nextval('public.pbix_files_id_seq'::regclass);


--
-- Name: powerbi_report_instances id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.powerbi_report_instances ALTER COLUMN id SET DEFAULT nextval('public.powerbi_report_instances_id_seq'::regclass);


--
-- Name: powerbi_reports id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.powerbi_reports ALTER COLUMN id SET DEFAULT nextval('public.powerbi_reports_id_seq'::regclass);


--
-- Name: process_types id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.process_types ALTER COLUMN id SET DEFAULT nextval('public.process_types_id_seq'::regclass);


--
-- Name: processes id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.processes ALTER COLUMN id SET DEFAULT nextval('public.processes_id_seq'::regclass);


--
-- Name: processes_data id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.processes_data ALTER COLUMN id SET DEFAULT nextval('public.processes_data_id_seq'::regclass);


--
-- Name: processes_process_types id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.processes_process_types ALTER COLUMN id SET DEFAULT nextval('public.processes_process_types_id_seq'::regclass);


--
-- Name: question_responses id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.question_responses ALTER COLUMN id SET DEFAULT nextval('public.question_responses_id_seq'::regclass);


--
-- Name: questions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.questions ALTER COLUMN id SET DEFAULT nextval('public.questions_id_seq'::regclass);


--
-- Name: regions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.regions ALTER COLUMN id SET DEFAULT nextval('public.regions_id_seq'::regclass);


--
-- Name: reliance_options id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.reliance_options ALTER COLUMN id SET DEFAULT nextval('public.reliance_options_id_seq'::regclass);


--
-- Name: reports id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.reports ALTER COLUMN id SET DEFAULT nextval('public.reports_id_seq'::regclass);


--
-- Name: risk_levels id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.risk_levels ALTER COLUMN id SET DEFAULT nextval('public.risk_levels_id_seq'::regclass);


--
-- Name: risks id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.risks ALTER COLUMN id SET DEFAULT nextval('public.risks_id_seq'::regclass);


--
-- Name: role_permissions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.role_permissions ALTER COLUMN id SET DEFAULT nextval('public.role_permissions_id_seq'::regclass);


--
-- Name: roles id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);


--
-- Name: root_cause_types id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.root_cause_types ALTER COLUMN id SET DEFAULT nextval('public.root_cause_types_id_seq'::regclass);


--
-- Name: sessions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sessions ALTER COLUMN id SET DEFAULT nextval('public.sessions_id_seq'::regclass);


--
-- Name: settings id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.settings ALTER COLUMN id SET DEFAULT nextval('public.settings_id_seq'::regclass);


--
-- Name: sheet_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sheet_versions ALTER COLUMN id SET DEFAULT nextval('public.sheet_revisions_id_seq'::regclass);


--
-- Name: sheets id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sheets ALTER COLUMN id SET DEFAULT nextval('public.sheets_id_seq'::regclass);


--
-- Name: significance_options id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.significance_options ALTER COLUMN id SET DEFAULT nextval('public.significance_options_id_seq'::regclass);


--
-- Name: sod_controls id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sod_controls ALTER COLUMN id SET DEFAULT nextval('public.sod_controls_id_seq'::regclass);


--
-- Name: sox_impacts id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sox_impacts ALTER COLUMN id SET DEFAULT nextval('public.sox_impacts_id_seq'::regclass);


--
-- Name: status_options id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.status_options ALTER COLUMN id SET DEFAULT nextval('public.status_options_id_seq'::regclass);


--
-- Name: subprocesses id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.subprocesses ALTER COLUMN id SET DEFAULT nextval('public.subprocesses_id_seq'::regclass);


--
-- Name: subprocesses_data id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.subprocesses_data ALTER COLUMN id SET DEFAULT nextval('public.subprocesses_data_id_seq'::regclass);


--
-- Name: survey_responses id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.survey_responses ALTER COLUMN id SET DEFAULT nextval('public.survey_responses_id_seq'::regclass);


--
-- Name: surveys id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.surveys ALTER COLUMN id SET DEFAULT nextval('public.surveys_id_seq'::regclass);


--
-- Name: sys_op_logs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sys_op_logs ALTER COLUMN id SET DEFAULT nextval('public.sys_op_logs_id_seq'::regclass);


--
-- Name: task_categories id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.task_categories ALTER COLUMN id SET DEFAULT nextval('public.task_group_categories_id_seq'::regclass);


--
-- Name: task_group_owners id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.task_group_owners ALTER COLUMN id SET DEFAULT nextval('public.task_group_owners_id_seq'::regclass);


--
-- Name: task_groups id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.task_groups ALTER COLUMN id SET DEFAULT nextval('public.task_groups_id_seq'::regclass);


--
-- Name: task_item_reviewers id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.task_item_reviewers ALTER COLUMN id SET DEFAULT nextval('public.task_item_reviewers_id_seq'::regclass);


--
-- Name: task_items id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.task_items ALTER COLUMN id SET DEFAULT nextval('public.task_items_id_seq'::regclass);


--
-- Name: task_periods id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.task_periods ALTER COLUMN id SET DEFAULT nextval('public.task_group_periods_id_seq'::regclass);


--
-- Name: task_priorities id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.task_priorities ALTER COLUMN id SET DEFAULT nextval('public.task_group_risk_levels_id_seq'::regclass);


--
-- Name: team_users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.team_users ALTER COLUMN id SET DEFAULT nextval('public.team_users_id_seq'::regclass);


--
-- Name: teams id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.teams ALTER COLUMN id SET DEFAULT nextval('public.teams_id_seq'::regclass);


--
-- Name: teams_owner_users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.teams_owner_users ALTER COLUMN id SET DEFAULT nextval('public.teams_owner_users_id_seq'::regclass);


--
-- Name: test_comments id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.test_comments ALTER COLUMN id SET DEFAULT nextval('public.test_comments_id_seq'::regclass);


--
-- Name: test_custom_select1_options id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.test_custom_select1_options ALTER COLUMN id SET DEFAULT nextval('public.test_custom_select1_options_id_seq'::regclass);


--
-- Name: test_custom_select2_options id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.test_custom_select2_options ALTER COLUMN id SET DEFAULT nextval('public.test_custom_select2_options_id_seq'::regclass);


--
-- Name: test_custom_select3_options id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.test_custom_select3_options ALTER COLUMN id SET DEFAULT nextval('public.test_custom_select3_options_id_seq'::regclass);


--
-- Name: test_sections id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.test_sections ALTER COLUMN id SET DEFAULT nextval('public.test_sections_id_seq'::regclass);


--
-- Name: test_timings id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.test_timings ALTER COLUMN id SET DEFAULT nextval('public.test_timings_id_seq'::regclass);


--
-- Name: test_types id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.test_types ALTER COLUMN id SET DEFAULT nextval('public.test_types_id_seq'::regclass);


--
-- Name: testing_strategies id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.testing_strategies ALTER COLUMN id SET DEFAULT nextval('public.testing_strategies_id_seq'::regclass);


--
-- Name: tests id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tests ALTER COLUMN id SET DEFAULT nextval('public.tests_id_seq'::regclass);


--
-- Name: timesheet_entries id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.timesheet_entries ALTER COLUMN id SET DEFAULT nextval('public.timesheet_entries_id_seq'::regclass);


--
-- Name: timesheet_projects id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.timesheet_projects ALTER COLUMN id SET DEFAULT nextval('public.timesheet_projects_id_seq'::regclass);


--
-- Name: user_settings id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_settings ALTER COLUMN id SET DEFAULT nextval('public.user_settings_id_seq'::regclass);


--
-- Name: user_stats id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_stats ALTER COLUMN id SET DEFAULT nextval('public.user_stats_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Name: versions_meta id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.versions_meta ALTER COLUMN id SET DEFAULT nextval('public.versions_meta_id_seq'::regclass);


--
-- Data for Name: SequelizeMeta; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."SequelizeMeta" (name) FROM stdin;
20140425100855-create-roles-table.js
20140426101021-create-permissions-table.js
20140428101034-create-roles-permissions-table.js
20140429034408-create-users-table.js
20140513163637-create-processes-table.js
20140513163653-create-subprocesses-table.js
20140513163704-create-controls-table.js
20140515034217-create-risks-table.js
20140516034806-create-financial-applications-table.js
20140516040230-create-assertions-table.js
20140516040306-create-coso-elements-table.js
20140516122009-create-risk-levels-table.js
20140516135951-create-control-types-table.js.js
20140516140006-create-control-nature-options-table.js.js
20140516140018-create-significance-options-table.js.js
20140516191136-create-control-frequencies-table.js
20140516191416-create-test-timings-table.js
20140516191440-create-test-types-table.js
20140517025442-create-regions-table.js
20140517025448-create-entities-table.js
20140517025800-create-processes-data-table.js
20140517025804-create-subprocesses-data-table.js
20140517025811-create-controls-data-table.js
20140606170012-create-controls-risks-table.js
20140619190559-create-controls-data-financial-applications-table.js
20140622225239-create-controls-assertions-table.js
20140701220611-create-effectiveness-options-table.js
20140701220641-create-status-options-table.js
20140702005725-create-tests-table.js
20140715103807-create-files-table.js
20140726002526-create-archives-table.js
20140726003129-create-controls-data-archives-table.js
20140816033824-create-reports-table.js
20141204085245-alter-users-accepted-terms.js
20141222084017-alter-controls-duedate.js
20150202131500-alter-tests-budgeted-hours.js
20150323191117-create-global-files.js
20150330224746-create-issue-idents-table.js
20150330225037-create-magnitudes-table.js
20150330225055-create-likelihoods-table.js
20150330225121-create-deficiency-types-table.js
20150330225138-create-aggregation-references-table.js
20150330230956-alter-controls-data-issues.js
20150331192835-alter-subprocesses-index.js
20150401052717-alter-controls-index.js
20150430224711-create-test-comments.js
20150501090728-alter-files-comments.js
20150511192309-create-controls-data-additional-owners-table.js
20150511222155-create-coso-principles-table.js
20150511222216-create-coso-pof-table.js
20150511222449-create-controls-data-coso-principles-table.js
20150512212255-create-controls-data-coso-pofs-table.js
20150513224730-create-controls-data-coso-elements-table.js
20150513231518-alter-controls-data-pbc-additional.js
20150515231400-create-control-audit-history-table.js
20150521174538-create-sod-control.js
20150521192050-alter-controls-data-sod-control.js
20150521194101-alter-test-test-period.js
20150522075613-alter-audit-updated.js
20150528213602-alter-audit-columns.js
20150529012305-create-file-category-table.js
20150529012652-alter-global-files-category.js
20150529092925-alter-global-files-url-length.js
20150603195758-alter-test-selection.js
20150619084531-create-control-comments-table.js
20150620222215-alter-control-comments-last-edited.js
20150620232049-alter-control-comments-message-length.js
20150621010030-create-narratives-table.js
20150621011036-create-narrative-sections-table.js
20150621011524-create-narrative-controls-data-table.js
20150621011648-create-narrative-owners-table.js
20150629223222-create-narrative-revisions-table.js
20150701231216-create-narrative-files.js
20150716224123-convert-test-title-walkthrough.js
20150716225302-change-god-role-name.js
20150722122419-create-issue-status-options-table.js
20150722122643-alter-controls-data-issue-status-option.js
20150724195434-alter-controls-data-pbc-additional.js
20150724195525-alter-controls-data-sampling-approach.js
20150724222422-alter-user-last-login.js
20150724231555-create-login-history-table.js
20150725004442-alter-login-histories-email.js
20150725025445-create-global-audits-table.js
20150728203919-alter-controls-data-audits-remove-raw.js
20150729212145-alter-global-audits-object-type.js
20150803211133-create-role-permissions-table.js
20150803215026-delete-old-permissions.js
20150803215433-delete-old-role-permissions.js
20150804193438-create-global-permissions-table.js
20150804204307-alter-role-permissions.js
20150804205648-seed-global-permissions.js
20150804210528-seed-role-permissions.js
20150813235215-update-test-status-open.js
20150812114801-create-password-history-table.js
20150813184536-create-controls-data-test-types-table.js
20150813201439-create-mrc-control-table.js
20150813210957-alter-controls-datum-mrc-control.js
20150813212811-update-controls-data-mrc-control.js
20150813221505-create-fraud-control-table.js
20150813221718-alter-controls-data-fraud-control.js
20150813221824-update-controls-data-fraud-control.js
20150818012952-alter-risk-name.js
20150818044339-alter-control-description.js
20150818121434-alter-user-add-iphistory.js
20150818223127-alter-subprocesses-data-drop-user.js
20150818223701-alter-tests-enabled.js
20150825000137-sync-controls-data-entity-id.js
20150828142308-create-system-op-logs-table.js
20150831211648-create-testing-strategies-table.js
20150831233041-add-status-option-not-tested.js
20150901012845-sync-sort-order-status-options.js
20150910160844-copy-controls-comments-to-new-comments-comment-references-table.js
20150916164631-add-test-sheet-id.js
20151002065319-randomize-user-colors.js
20151005020754-create-pbc-status-options-table.js
20151106134948-create-user-stats-table.js
20151109160344-alter-users-add-user-stats.js
20151111110315-alter-comments-users-has-unread.js
20151112054419-singularize-permissions.js
20151116232448-alter-tests-add-status-dates.js
20151208211847-create-comments-roles-table.js
20160106154522-create-and-seed-task-group-risk-levels-table.js
20160106164938-create-task-group-locations-table.js
20160107120144-create-task-items-table.js
20160109003746-create-test-periods-table.js
20160126223038-fix-task-groups-index.js
20160204221618-create-control-scopes-table.js
20160204222229-alter-tests-add-procedures.js
20160228203946-rename-task-group-locations-to-locations.js
20160401090735-alter-test-add-sheet-file-id.js
20160406105035-create-ops-audit-statuses-table.js
20160406172801-alter-attachments-add-attachable-type-and-attachable-id.js
20160406190447-seed-ops-audit-sections.js
20160408144237-fix-controls-library-foreign-keys.js
20160421144731-create-ops-audit-categories.js
20160517203222-fix-risks-foreign-keys.js
20160517234838-alter-datafields-config-json.js
20160528054231-comment-control-commentable.js
20160601195406-create-coso-components-table.js
20160617032117-alter-controls-data-cobit.js
20160621182653-alter-controls-data-control-ref.js
20160627194555-update-task-item-status.js
20160628103806-convert-narrative-html-img-proxy-urls.js
20160629050506-alter-task-periods-and-task-categories-add-short-name.js
20160701221332-copy-global-files-to-files.js
20160720000151-fix-all-values-ops-perm.js
20150819141207-create-verification-tokens-table.js
20150824234640-alter-controls-data-entity-id.js
20150831224630-add-entity-and-control-to-test.js
20150902235146-sync-data-fields-sort-order.js
20150910160447-create-comments-table.js
20150910160729-create-comment-references-table.js
20150918153734-reference-sheet-in-test.js
20151001071800-sync-controls-data-comments-table.js
20151005071248-alter-comments-index.js
20151015043725-alter-tests-sample-size.js
20151020222736-alter-controls-data-control-design-option.js
20151119112629-alter-user-add-password-reset-token.js
20151201152935-alter-user-stats-add-show-notification-jewel.js
20160110013005-sync-test-section-id.js
20160115111228-alter-files-add-deleted-at.js
20160214114951-alter-global-file-categories-add-deletable.js
20160228205228-alter-table-users-add-location-id-and-department-id.js
20160308233854-rename-task-group-risk-level.js
20160309223529-sync-task-item-from-group.js
20160314105536-change-users-user-statid-ref.js
20160317165307-alter-task-item-add-task-category-id.js
20160404171855-create-documents-table.js
20160415130736-alter-attachments-add-lock.js
20160421163404-alter-ops-audit-sections-add-is-issuable.js
20160427173137-alter-ops-audit-items-add-risk-notes.js
20160504002851-alter-users-add-job-title.js
20160504152705-rename-opsaudit-notes-to-description.js
20160505034446-alter-task-category-add-config.js
20160506143531-create-ops-audit-issuable-options.js
20160506152350-alter-ops-audit-item-add-issuable-option-id.js
20160525020043-delete-pbc-tasks-security.js
20160528070404-delete-task-group-comments.js
20160528082935-copy-narrative-files.js
20160610010537-alter-global-attr-varchar-text.js
20160616121848-create-user-settings-table.js
20160622034311-alter-global-files-add-file-columns.js
20160628143334-convert-document-html-img-proxy-urls.js
20150820163932-alter-user-rename-iphistory-to-verifiediphistory.js
20150831225314-sync-tests-entity-control-id.js
20150902233349-create-issue-nature-options-table.js
20150903200148-change-controls-data-foreign-key.js
20150903204439-create-controls-data-deficiency-types-table.js
20150909072756-alter-tests-precisionlevel-mrc-evidence.js
20150910160525-create-comments-users-table.js
20151106014247-alter-tests-hidden-flag.js
20151204135723-alter-narratives-add-lock.js
20151229001829-alter-risks-process-id.js
20160107195221-alter-users-add-auth-type.js
20160110012718-alter-test-add-test-section.js
20160122223502-update-risk-uid-with-subprocess-id.js
20160125215355-add-under-review-test-status.js
20160212140924-create-sheet-revisions-table.js
20160225215407-standardize-status-names.js
20160229231502-sync-color-task-risk-level.js
20160401090716-alter-file-add-storage-type-and-embed-url.js
20160404171901-create-attachments-table.js
20160408105404-seed-ops-audit-statuses.js
20160408170800-create-datafield-table-control-classifications.js
20160421144446-create-ops-audit-locations.js
20160427172940-create-ops-audit-risk-levels.js
20160504102440-alter-attachments-add-name.js
20160517001239-alter-controls-data-add-control-procedures.js
20160519143921-create-ops-audit-items-files-table.js
20160528075148-fix-commentable-type-case.js
20160608181532-alter-controls-data-add-mgmt-response.js
20160616135917-alter-settings-add-user-flag-and-label.js
20160627190349-alter-task-groups-add-period-and-archived-flag.js
20160630200541-delete-unused-user-perm.js
20160706012410-alter-security-test-types.js
20160715112853-add-settings-description.js
20150826200753-alter-user-add-password-change-flag.js
20150828143351-create-notification-messages-table.js
20150831233405-add-effectiveness-option-not-tested.js
20150902233949-create-controls-data-issue-nature-options-table.js
20150903185929-rename-deficiency-type-deficiency-level.js
20150916145001-create-sheets-table.js
20151005021037-create-controls-data-pbc-status-options-table.js
20151005081611-alter-comment-reference-index.js
20151007023646-delete-audits-test-sheet.js
20151019222432-alter-users-competency-eval.js
20151020222139-create-controls-design-options-table.js
20151028155024-alter-controls-data-control-validation-annual-sample-size.js
20151103052457-create-attributes-table.js
20151202224235-rename-deficiency-level-permission.js
20151229002034-sync-risks-process-id.js
20160106151523-create-and-seed-task-group-categories-table.js
20160106161814-create-and-seed-task-item-statuses-table.js
20160114144602-alter-files-make-fileableid-nullable.js
20160122231316-rename-test-section-permissions.js
20160204213025-fix-narrative-uids.js
20160204222002-alter-controls-data-add-scope-id.js
20160215112215-seed-global-file-categories-testing-templates.js
20160218182338-alter-comments-add-commentable-id-and-commentable-type.js
20160308233726-rename-task-group-category.js
20160309212412-alter-task-item-add-fields.js
20160324151240-add-test-section-to-old-archives.js
20160406151254-create-ops-audit-periods-table.js
20160406183631-create-ops-audit-sections.js
20160421144740-create-ops-audits.js
20160517215016-create-settings-table.js
20160524033648-alter-controls-data-adjusted-exposure-text.js
20160528090746-fix-fileable-type-case.js
20160604011611-fix-item-category-id.js
20160616142611-seed-settings.js
20150831212100-create-controls-data-testing-strategies-table.js
20150831234140-alter-status-options-sort-order.js
20150902234134-alter-data-fields-sort-order.js
20150903204238-create-deficiency-types-table.js
20150903210246-update-global-permission-name-deficiency.js
20150917192505-seed-test-sheets.js
20151001071511-create-controls-data-comments-table.js
20151002012002-alter-users-add-colors.js
20151005015445-alter-control-add-pbc-notes.js
20151007023420-alter-controls-data-audits-add-index-field.js
20151106140806-seed-user-stats.js
20151109161708-sync-user-user-stats.js
20151201140207-rename-notification-messages-data-raw-data.js
20160106145828-create-and-seed-departments-table.js
20160106155239-create-and-seed-task-group-periods-table.js
20160107120135-create-task-groups-table.js
20160114144621-create-task-items-files-table.js
20160119024101-fix-comment-insert-id.js
20160217115616-fix-status-options-id-seq.js
20160229230857-add-color-task-risk-level.js
20160308234212-rename-task-group-period.js
20160310124112-drop-narrative-revisions.js
20160317162417-alter-task-group-remove-fields.js
20160317170327-alter-task-item-add-create-user-id.js
20160329000709-alter-role-permissions-add-scope.js
20160404110033-alter-narrative-file-add-storage-type-and-embed-url.js
20160421153536-create-opsaudit-items.js
20160429210610-create-financial-accounts-table.js
20160504160908-create-opsaudits-opsaudit-locations-table.js
20160505223941-alter-category-add-color.js
20160506145855-seed-ops-audit-issuable-options.js
20160525011546-alter-roles-add-login-route.js
20160606181938-alter-archive-add-status.js
20160614230222-alter-controls-data-add-textareas.js
20160711185050-add-control-test-reviewers.js
20160622034313-alter-files-varchar-text.js
20160626224154-create-managed-changes-table.js
20160722005036-create-allowed-roles-table.js
20160722052728-create-allowed-users-table.js
20160726043228-delete-narrative-summary-perm.js
20160726050158-fix-user-auth-type.js
20160726231114-alter-controls-pop-size.js
20160802215404-alter-users-add-mfa-enabled-and-authy-id-and-cell-phone.js
20160803155906-files-nullable-size-key.js
20160808192042-drop-deprecated-file-tables.js
20160808222012-drop-verification-tokens-table.js
20160809223906-copy-task-period-category-shortname.js
20160810011809-create-question-survey-tables.js
20160810020738-create-question-response-tables.js
20160815230429-alter-managed-change-question-response-id.js
20160818215940-create-hds-datafields.js
20160818222031-alter-controls-test-hds-fields.js
20160829223653-add-task-item-closed-status.js
20160830141105-create-issues-table.js
20160830165718-create-issues-issue-nature-options.js
20160830170507-create-issues-deficiency-types.js
20160830195159-create-task-group-owners.js
20160916201853-alter-task-group-add-survey.js
20160908012401-alter-question-require-explanation.js
20160919164621-alter-task-item-status-strings.js
20160921231551-alter-question-response-title-value.js
20160908033306-alter-survey-task-title.js
20160920224236-alter-survey-add-type.js
20160913224307-alter-test-sample-size-text.js
20160922140245-alter-task-group-add-status-started-at.js
20160923184741-rename-dashboard-entireOrg-perm.js
20160925185357-seed-task-group-status.js
20161004175202-migrate-controls-audits-global-audits.js
20161004193405-fix-global-audit-indexes.js
20161007000320-rename-control-perms.js
20161010223824-alter-question-response-reftext.js
20161011214050-alter-task-period-add-dates.js
20161019185919-delete-global-perms-permission.js
20161020034158-saml-settings-conversion.js
20161020201426-alter-users-employee-number.js
20161022032507-paranoid-role-permissions.js
20161024112440-migrate-control-issue-perms.js
20161025164955-deprecate-control-issue-global-audits.js
20161026115431-migrate-issue-custom-attrs.js
20161027194050-alter-issues-polymorphic.js
20161101170719-alter-issues-remove-issue-account.js
20161101183435-alter-issues-add-notes.js
20161101183649-migrate-control-issue-comments-perm.js
20161102102930-migrate-issue-custom-attrs2.js
20161110143734-alter-task-groups-add-title.js
20161114182000-alter-surveys-add-status.js
20161116034032-create-sessions-table.js
20161130183552-alter-user-remove-requires-ip-address-verification.js
20161206015312-deprecate-unused-task-permissions.js
20161212182402-alter-role-fk-contraints.js
20161213000807-delete-role-permissions-with-no-deleteat.js
20161213013439-alter-role-permission-unique-fk-constraints.js
20161213174702-create-teams-and-user-teams.js
20161215001644-rename-sheet-permissions.js
20161215032342-rename-duplicate-files.js
20161219195410-create-team-owners.js
20161224224020-add-question-short-title.js
20161227003459-add-flat-question-response.js
20170103202800-denormalize-question-type.js
20170103204247-modify-response-values-qrs.js
20170104030316-move-task-periods-to-task-groups.js
20170104052940-migrate-task-action-create-permission.js
20170104054554-alter-surveys-add-task-category.js
20170105032526-alter-questions-add-allowNAResponse.js
20170105170524-drop-test-title-field.js
20170105191348-drop-table-test-item-status.js
20170110211417-alter-task-groups-add-yes-to-all.js
20170113035052-delete-team-perm.js
20170117235446-create-allowed-teams.js
20170118181801-add-column-email-header-task-groups.js
20170119194750-create-timesheet-projects.js
20170119222845-add-column-is_admin_email_active-task-groups.js
20170119291111-create-timesheet-entries.js
20170124043411-alter-surveys-add-is-archived.js
20170126225108-add-column-digest-email-header-task-groups.js
20170127223756-create-table-file-versions.js
20170202002041-alter-task-group-test-section.js
20170206212725-alter-task-item-test-section.js
20170210211420-alter-issues-archive.js
20170211025912-fix-comments-users.js
20170214015445-alter-control-archives-underscore.js
20170223223248-create-excluded-risks.js
20170227074915-fix-notification-indexes.js
20170227182202-create-datafield-external-auditor-status-options.js
20170227182752-add-column-test-external-auditor-status-option-id.js
20170228235309-alter-issues-workflow.js
20170302064749-alter-task-items-add-issue-id.js
20170303010111-alter-ops-audit-attachable.js
20170303011851-migrate-sheet-into-attachment.js
20170303234726-alter-global-attribute-add-enabled-and-scope.js
20170308023527-alter-test-comments.js
20170308025241-rename-test-comments-permission.js
20170308030050-rename-global-attribute-test-comments.js
20170309201713-opsaudit-status-string.js
20170309214718-alter-opsaudit-item-add-textareas.js
20170316223020-drop-opsaudit-status-id.js
20170321150549-create-datafield-controls-data-business-process-owner-users.js
20170321151720-create-datafield-controls-data-finance-process-owner-users.js
20170321181340-alter-opsaudits-items-add-secondary-reviewer-user.js
20170324173255-add-attachable_id-index.js
20170328234038-create-table-ops-audit-owner-users.js
20170329160538-add-controls-archive-cols.js
20170329164310-add-data-archive-control-cols.js
20170330012133-delete-old-opsaudit-perms.js
20170403010515-alter-attachments-file-id.js
20170406022028-alter-issues-add-ops-audit.js
20170407021549-alter-ops-audit-items-issues-status.js
20170408023030-drop-table-ops-audit-statuses.js
20170411171320-rename-module-setup-perm.js
20170411172155-rename-manage-library-perm.js
20170411224249-deprecate-resource-control-perms.js
20170413010350-alter-table-issues-add-type.js
20170419013140-create-table-internal-control-components.js
20170419043102-alter-issues-add-new-fields.js
20170419224934-add-external-auditor-vis-status-controls-data.js
20170420024023-drop-table-issue-status-options.js
20170421072612-alter-issues-add-status-dates.js
20170503215232-alter-control-test-add-dates.js
20170516235543-alter-issues-drop-ops-audit-section-column.js
20170526020647-alter-ops-audits-add-is-template-column.js
20170603005736-alter-task-group-threshold.js
20170605000846-deprecate-role-create-perm.js
20170606001458-add-fk-constraint-roles-global-perms.js
20170617213358-alter-task-items-control-index.js
20170625000508-create-powerbi-reports-table.js
20170718203259-create-baseline-results-table.js
20170719023549-alter-table-hours-index.js
20170719211526-deprecate-ops-audit-perms.js
20170615232438-add-col-uid-controls_datum.js
20170621203142-add-process-subprocess-relationship-controls_datum.js
20170630005605-add-test-secondary-reviewer-status.js
20170711214311-add-test-workflow-dates.js
20170713164500-create-import-records-table.js
20170726002823-restore-archived-deleted-issues.js
20170803003907-deprecate-test-perm-toggle-scope.js
20170814222628-test-secondary-reviewer-perm-update.js
20170821235150-update-test-workflow-perms.js
20170822233947-delete-opsaudit-send-secondary-reviewer-perm.js
20170824044849-reset-workflow-perms.js
20170826011006-remove-task-item-start-review-perm.js
20170830223035-remove-excluded_risk-where-entity-or-risk-deleted.js
20170901041348-resync-test-perms.js
20170901204732-change-sheet-revisions-to-versions.js
20170922181317-remove-linkify-hashtags-setting.js
20170923205612-intel-issue-field-requests.js
20170614211551-create-ops-audit-types-table.js
20170614223751-alter-ops-audit-items-add-columns.js
20170802205324-set-opsaudit-item-titles.js
20170807223006-create-document-versions.js
20170809191940-copy-narrative-file-perms.js
20170810010525-deprecate-gdrive-lucidchart-perm.js
20170814165649-add-name-to-document-versions.js
20170814181508-create-table-cron.js
20170818000811-document-diffs.js
20170826185300-create-cron_option-datafield.js
20170905214854-opsaudit-remove-under-review-preparer.js
20170906192911-alter-issues-drop-issues-status.js
20170908193011-alter-opsaudits-items-add-workflow-dates.js
20170908223845-alter-issues-add-workflow-action-user-fields.js
20170911195358-alter-opsaudits-add-archive-fields.js
20170911201450-alter-opsitem-add-text.js
20170911210702-add_username_column.js
20170912213525-create-opsaudit-category-section-model.js
20170917220415-sync-category-sections.js
20170918220756-drop-table-ops-audit-types.js
20170919215130-add-image-url-to-files.js
20170920213154-create-templates-table.js
20170921183420-add-username-transaction.js
20170922031211-alter-opsaudit-category-sections-add-template.js
20170925034746-remove-all-controls-setting.js
20170927210733-remove-opsaudit-dashboard-setting.js
20170928213041-seed-cron-options.js
20170929203555-alter-opsaudit-add-index.js
20171002222828-resync-issue-perms.js
20171003014053-alter-opsaudits-remove-cascading-deletes.js
20171004171027-add-delete-contraint-cron-cron_options.js
20171005173408-remove-unused-settings.js
20171006065534-add-opsaudit-indexes.js
20171006202747-resync-issue-perms.js
20171006232521-drop-password-null-constraint-users.js
20171011002141-create-locks-table.js
20171011213402-alter-questions-add-require-explanation-for-na.js
20171013202559-alter-opsaudit-categories-add-status.js
20171017193551-alter-opsaudit-categories-update-status.js
20171018010026-create-ops-risk-levels.js
20171018015238-create-ops-ratings.js
20171018022027-create-ops-business-units.js
20171018223325-alter-narratives-documents-meta.js
20171019013431-alter-ops-audit-items-add-new-fields.js
20171019192326-add-totals-column-ops-audit.js
20171019214714-alter-controls-data-add-new-fields.js
20171023202917-add-status-ops-audit-id-index.js
20171024053206-add-external-auditor-reliance.js
20171030233632-refractor-allow-user-ops-audit.js
20171104010229-fix-existing-folders.js
20171106024955-run-update-uid-on-control.js
20171108012531-escape-login-history.js
20171112020432-add-index-to-issues.js
20171113215537-create-table-pbix.js
20171114180259-update-default-cron-options.js
20171120202743-add-type-column-powerbi-report.js
20171207205308-add-opsaudit-lead-user-id.js
20171211003453-add-email-fields-project-setting.js
20171211211636-alter-questions-add-erm-options.js
20171217203239-add-task-group-short-name-column.js
20171229191847-create-control-custom-attribute.js
20180102170716-create-powerbi-report-instance-table.js
20180102185837-create-control-multi-options.js
20180103155424-remove-pbi-workstream-setting.js
20180103231244-add-coordinator-user-to-control.js
20180105035009-deprecate-multiple-attachments-setting.js
20180107234629-alter-powerbi-add-type.js
20180108010843-add-multiselect-3-and-4-control-datum.js
20180118003733-rename-project-shortname-uid.js
20180119175427-update-cron-ws-project-payload.js
20180122215633-update-ws-email-digest-type.js
20180124010059-recretea-uid-task-group.js
20180125190337-add-ops-audit-custom-select.js
20180125191407-toggle-demo-mode.js
20180125213051-add-ops-audit-item-custom-date.js
20180125225607-alter-status-ops-audit-item.js
20180126020656-delete-unused-permissions.js
20180126230105-add-ops-audit-item-multiselect1.js
20180129230410-alter-pbi-models-v2.js
20180131234347-remove-business-units-ops-item.js
20180131235056-remove-ops-business-unit-perm.js
20180205194954-delete-threshold-setting.js
20180206185333-deprecate-task-group-columns.js
20180213204438-fix-migrations-dates-part-deux.js
20180213204439-fix-migrations-dates.js
20180213204440-alter-columns-timestamp-to-date.js
20180220211113-add-token-fields-to-reports.js
20180222222649-update-coso-sort-order.js
20180226205951-create-archive-control-perm-file.js
20180301182454-add-meta-to-files.js
20180314173023-change-file-meta-to-jsonb.js
20180314211614-add-cron-schedule-monthly.js
20180316165458-install-lucidchart-document-image-keys.js
20180327195339-fix-tests-no-test-section.js
20180411220741-remove-secondary-reviewer-workflow-setting.js
20180420235428-delete-pbix-files-and-resources.js
20180423233834-add-type-column-to-timesheet-project-model.js
20180424201151-timesheet-entries-disallow-null-timesheetable-type.js
20180425182649-add-columns-powerbi-reports.js
20180502183122-coso-pof-string-to-text.js
20180507215011-rename-migrate-perms.js
20180507220208-default-timesheet-ux-perms.js
20180514150738-add-cron-option-every-5.js
20180514165905-update-pbi-can-edit-perm.js
20180516195103-delete-superuser-scope.js
20180518223334-delete-non-galaxy-soxhub-superusers.js
20180520233716-delete-ops-audit-section-perms.js
20180521000806-reset-ops-item-permissions.js
20180523225703-create-ops-risk-values.js
20180524215223-lock-opsaudit-edit-perm.js
20180129181853-create-ops-business-units-table.js
20180201194113-delete-comment-notification-messages.js
20180202234527-add-review-users-preparer-users-task-group.js
20180206200249-update-pbix-file-seq.js
20180215002300-create-opsaudit-item-indexes.js
20180216213150-change-reviewer-assignee-to-json.js
20180226222002-add-task-item-opened-at-closed-at.js
20180306213508-add-archive-options-column.js
20180308215648-install-lucidchart-document-ids.js
20180319223716-add-optional-explanation-column-questions.js
20180327200200-fix-issues-no-controls-data.js
20180404202623-deprecate-unused-dashboard-perms.js
20180420161157-drop-question-column-allow-rm-delete.js
20180423214930-fix-timesheet-entries-dupes.js
20180501172542-add-explanation-columns-to-questions.js
20180501224557-migrate-optional-explanation-to-show-explanation.js
20180522191659-reseed-analytics-setting.js
20180525145310-create-risk-criteria.js
20180530200831-lock-opsaudit-workflow-perms.js
20180531011424-remove-orphaned-comments.js
20180609234350-create-task-item-reviewers.js
20180612234538-repair-orphaned-comments.js
20180613135222-add-process-types.js
20180613160842-seed-process-types.js
20180614171922-alter-risk-criteria-add-uid.js
20180618184533-create-ops-risk-assessment.js
20180618185236-create-ops-ra-process-entity.js
20180618193925-create-ops-ra-values.js
20180619200639-create-email-logs-table.js
20180620225555-fix-file-key-pbi-seed-reference.js
20180626011637-add-task-group-multi-reviewer-boolean.js
20180628171104-migrate-narratives-to-documents.js
20180628181133-deprecate-email-settings.js
20180701040522-fix-fileable-type-attachments.js
20180701074427-copy-task-edit-assignment-perm.js
20180702181629-add-ops-audit-scope-date.js
20180705223346-add-pbc-owner-users.js
20180709172019-add-index-to-question-response-updated-at.js
20180710184235-add-team-uid-column-to-team.js
20180710184650-give-existing-teams-uid.js
20180710193108-add-user-login-attempt-count.js
20180711045753-alter-ops-audit-items-add-effectiveness.js
20180711195454-add-issue-flattened.js
20180713232021-create-comments-teams-table.js
20180717182728-change-survey-type-issue.js
20180720232222-alter-ops-audit-items-add-controls-data.js
20180801224455-create-opsaudit-section-instances-model.js
20180801224458-alter-opsaudit-items-section-instance.js
20180802000152-backfill-ops-category.js
20180802000153-populate-opsaudit-section-instances-table.js
20180808182408-add-options-ws.js
20180810194428-add-test-columns.js
20180813160345-seed-risk-criteria.js
20180814000855-fix-index-comment-teams-unique.js
20180814025008-rename-control-list-permissions.js
20180816173301-remove-setting-help-center.js
20180817221503-alter-section-instances-index.js
20180820192025-add-uid-to-ops-audit.js
20180821152933-add-created-by-user-to-risk-assessment.js
20180822173054-reseed-task-permissions.js
20180823000938-add-opsaudit-status-index.js
20180904182821-create-unsubscribe-comment-user.js
20180904184755-add-versions-meta-table.js
20180918184213-toggle-module-access-by-role-permissions.js
20180919033605-fix-library-section-hard-delete-indexes.js
20180919173324-create-sheet-versions-index.js
20180923174331-add-opsaudit-item-business-owners.js
20180925175500-update-existing-deleted-ops-audit-items-with-deleted-at-ops-audit-deleted-at.js
20180925215123-backfill-issue-comments.js
20180927235737-add-sort-order-to-attachments.js
20180928224902-alter-task-items-add-ops-audit-ids.js
20181001032451-alter-ops-audit-sections-add-has-effectiveness-option.js
20181001171142-create-opsaudit-subsection-model.js
20181001173521-alter-ops-audit-items-and-ops-audit-section-instance-for-subsections.js
20181001234245-alter-task-groups-add-ops-audit-ids.js
20181003160636-add-ops-audit-ids-to-task-items.js
20181008000334-add-control-custom-text-fields.js
20181016222129-add-cron-option-every-10-min.js
20181017153831-add-sheet-version-modified-by-column.js
20181018003807-add-task-group-managed-change-boolean.js
20181026231733-add-timesheet-toggle.js
20181029222650-add-user-agent-to-files.js
20181030214344-seed-timesheet-projects.js
20181031201746-add-type-column-to-reports.js
20181101181212-create-start-opsaudits.js
20181101181633-create-cancel-opsaudits.js
20181101193335-update-ops-audit-items-set-effectiveness-to-not-tested-where-null.js
20181102025331-add-first-login-to-users-table.js
20181103013006-fix-section-instance-partial-index.js
20181103220428-add-walmart-opsaudit-fields.js
20181105063754-migrate-form-template-settings.js
20181110232143-fix-m2m-unique-constraints.js
20181110232159-rename-ops-business-units.js
20181111020932-rename-business-unit-perm-attr.js
20181113055407-add-walmart-issue-fields.js
20181114185921-recreate-powerbi-sync-crons.js
20181115232945-update-null-opsaudit-uids-with-model-id-values.js
20181119182821-add-field-group-column-to-reports.js
20181121181953-add-constraints-to-opsaudit-uid.js
20181121185254-reseed-powerbi-can-activate-permissions.js
20181130000837-run-update-uid-controls-datum.js
20181130000850-migrate-datatable-views.js
20181204021323-add-issue-evp-vp-users.js
20181208000824-add-test-secondary-reviewer-due-date.js
20181214202730-fix-controls-datum-unique-index.js
20181218185610-add-is-flattened-to-issue.js
20181203232714-add-ops-audit-user-fields-for-permissions.js
20181207184849-update-na-ratings-survey-true.js
20181214234347-alter-reports-add-canonical-fields-json-column.js
20181221215230-add-opsaudit-project-options.js
20181228192344-copy-test-can-be-permissions.js
\.


--
-- Data for Name: SequelizeMetaBackup; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."SequelizeMetaBackup" (id, "from", "to") FROM stdin;
1	20140425100855	20140425100855
2	20140425100855	20140426101021
3	20140425100855	20140428101034
4	20140425100855	20140429034408
5	20140425100855	20140513163637
6	20140425100855	20140513163653
7	20140425100855	20140513163704
8	20140425100855	20140515034217
9	20140425100855	20140516034806
10	20140425100855	20140516040230
11	20140425100855	20140516040306
12	20140425100855	20140516122009
13	20140425100855	20140516135951
14	20140425100855	20140516140006
15	20140425100855	20140516140018
16	20140425100855	20140516191136
17	20140425100855	20140516191416
18	20140425100855	20140516191440
19	20140425100855	20140517025442
20	20140425100855	20140517025448
21	20140425100855	20140517025800
22	20140425100855	20140517025804
23	20140425100855	20140517025811
24	20140425100855	20140606170012
25	20140425100855	20140619190559
26	20140425100855	20140622225239
27	20140425100855	20140701220611
28	20140425100855	20140701220641
29	20140425100855	20140702005725
30	20140425100855	20140715103807
31	20140425100855	20140726002526
32	20140425100855	20140726003129
33	20140425100855	20140816033824
34	20141204085245	20141204085245
35	20141204085245	20141222084017
36	20141204085245	20150202131500
37	20141204085245	20150323191117
38	20150330224746	20150330224746
39	20150330224746	20150330225037
40	20150330224746	20150330225055
41	20150330224746	20150330225121
42	20150330224746	20150330225138
43	20150330224746	20150330230956
44	20150330224746	20150331192835
45	20150330224746	20150401052717
46	20150430224711	20150430224711
47	20150430224711	20150501090728
48	20150430224711	20150511192309
49	20150430224711	20150511222155
50	20150430224711	20150511222216
51	20150430224711	20150511222449
52	20150430224711	20150512212255
53	20150430224711	20150513224730
54	20150430224711	20150513231518
55	20150430224711	20150515231400
56	20150430224711	20150521174538
57	20150430224711	20150521192050
58	20150430224711	20150521194101
59	20150522075613	20150522075613
60	20150522075613	20150528213602
61	20150522075613	20150529012305
62	20150522075613	20150529012652
63	20150522075613	20150529092925
64	20150522075613	20150603195758
65	20150619084531	20150619084531
66	20150620222215	20150620222215
67	20150620222215	20150620232049
68	20150621010030	20150621010030
69	20150621010030	20150621011036
70	20150621010030	20150621011524
71	20150621010030	20150621011648
72	20150624094125	20150624094125
73	20150629223222	20150629223222
74	20150701231216	20150701231216
75	20150716224123	20150716224123
76	20150716224123	20150716225302
77	20150716224123	20150722122419
78	20150716224123	20150722122643
79	20150716224123	20150724195434
80	20150716224123	20150724195525
81	20150716224123	20150724222422
82	20150716224123	20150724231555
83	20150716224123	20150725004442
84	20150716224123	20150725025445
85	20150716224123	20150728203919
86	20150716224123	20150729212145
87	20150716224123	20150803211133
88	20150716224123	20150803215026
89	20150716224123	20150803215433
90	20150716224123	20150804193438
91	20150716224123	20150804204307
92	20150716224123	20150804205648
93	20150716224123	20150804210528
94	20150716224123	20150813235215
\.


--
-- Data for Name: aggregation_references; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.aggregation_references (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
\.


--
-- Data for Name: allowed_roles; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.allowed_roles (id, roleable_id, roleable_type, permission, role_id, created_at, updated_at) FROM stdin;
1	101	GlobalFileCategory	\N	7	\N	\N
\.


--
-- Data for Name: allowed_teams; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.allowed_teams (id, teamable_id, teamable_type, permission, team_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: allowed_users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.allowed_users (id, userable_id, userable_type, permission, user_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: archives; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.archives (id, created_at, updated_at, deleted_at, name, status, archive_options) FROM stdin;
\.


--
-- Data for Name: assertions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.assertions (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
\.


--
-- Data for Name: attachments; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.attachments (id, created_at, updated_at, deleted_at, type, sheet_id, document_id, attachable_id, attachable_type, lock_user_id, locked_at, name, file_id, sort_order) FROM stdin;
\.


--
-- Data for Name: baseline_result_options; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.baseline_result_options (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
\.


--
-- Data for Name: business_units; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.business_units (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
\.


--
-- Data for Name: comment_references; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.comment_references (id, comment_id, controls_datum_id, field, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: comment_unsubscribers; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.comment_unsubscribers (id, comment_id, user_id, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.comments (id, parent_comment_id, owner_user_id, type, status, message_raw, message_html, created_at, updated_at, deleted_at, commentable_id, commentable_type) FROM stdin;
\.


--
-- Data for Name: comments_roles; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.comments_roles (id, comment_id, role_id, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: comments_teams; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.comments_teams (id, comment_id, team_id, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: comments_users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.comments_users (id, comment_id, user_id, created_at, updated_at, deleted_at, has_unread_comments) FROM stdin;
\.


--
-- Data for Name: control_classifications; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.control_classifications (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
\.


--
-- Data for Name: control_comments; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.control_comments (id, created_at, updated_at, controls_datum_id, comment_user_id, subject, message, edited_at) FROM stdin;
\.


--
-- Data for Name: control_complexity_options; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.control_complexity_options (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
\.


--
-- Data for Name: control_custom_multiselect1_options; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.control_custom_multiselect1_options (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
\.


--
-- Data for Name: control_custom_multiselect2_options; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.control_custom_multiselect2_options (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
\.


--
-- Data for Name: control_custom_multiselect3_options; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.control_custom_multiselect3_options (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
\.


--
-- Data for Name: control_custom_multiselect4_options; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.control_custom_multiselect4_options (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
\.


--
-- Data for Name: control_custom_select1_options; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.control_custom_select1_options (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
\.


--
-- Data for Name: control_design_options; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.control_design_options (id, sort_order, created_at, updated_at, deleted_at, name) FROM stdin;
1	2	2016-07-21 18:38:36.429+00	2016-07-21 18:38:36.429+00	\N	NO, Testing Procedures are NOT aligned with control design.
2	1	2016-07-21 18:38:36.429+00	2016-07-21 18:38:36.429+00	\N	YES, Testing Procedures are aligned with control design.
\.


--
-- Data for Name: control_frequencies; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.control_frequencies (id, created_at, updated_at, deleted_at, name, sort_order, meta_config) FROM stdin;
1	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	Daily	1	\N
2	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	Weekly	2	\N
3	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	Bi-Weekly	3	\N
4	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	Monthly	4	\N
5	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	Quarterly	5	\N
6	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	Semi-Annually	6	\N
7	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	Annually	7	\N
8	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	As Needed	8	\N
\.


--
-- Data for Name: control_inherent_risk_options; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.control_inherent_risk_options (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
\.


--
-- Data for Name: control_judgement_degree_options; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.control_judgement_degree_options (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
\.


--
-- Data for Name: control_management_override_options; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.control_management_override_options (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
\.


--
-- Data for Name: control_nature_options; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.control_nature_options (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
1	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	Preventive	1
2	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	Detective	2
\.


--
-- Data for Name: control_routine_options; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.control_routine_options (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
\.


--
-- Data for Name: control_scopes; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.control_scopes (id, sort_order, created_at, updated_at, deleted_at, name) FROM stdin;
\.


--
-- Data for Name: control_types; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.control_types (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
1	2014-09-06 10:23:39.772+00	2014-09-06 10:23:39.772+00	\N	Automated	0
2	2014-09-08 22:54:25.765+00	2014-09-08 22:54:25.765+00	\N	Manual	0
3	2014-09-08 22:54:25.765+00	2014-09-08 22:54:25.765+00	\N	IT Dependent Manual	0
\.


--
-- Data for Name: controls; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.controls (id, created_at, updated_at, deleted_at, uid, name, subprocess_id) FROM stdin;
\.


--
-- Data for Name: controls_assertions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.controls_assertions (id, created_at, updated_at, control_id, assertion_id) FROM stdin;
\.


--
-- Data for Name: controls_data; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.controls_data (id, created_at, updated_at, deleted_at, control_id, description, subprocesses_datum_id, risk_level_id, supervisor_user_id, owner_user_id, coso_element_id, control_type_id, control_nature_option_id, significance_option_id, test_procedures, pbc_request, source_data, notes, control_frequency_id, test_timing_id, test_type_id, issue_title, issue_description, remediation_action, remediation_owner_id, remediation_date, issue_ident_id, issue_account, potential_risk, complementary_controls, qualitative_factors, issue_id, gross_exposure, adjusted_exposure, likelihood_id, magnitude_id, deficiency_level_id, aggregation_reference_id, issue_comments, pbc_request_additional, sod_control_id, sampling_approach, mrc_control_id, fraud_control_id, entity_id, pbc_notes, control_design_option_id, control_validation, annual_sample_size, control_scope_id, control_classification_id, control_procedures, management_response, control_objective, dependent_controls, compensating_controls, assertion_notes, precision_level, mrc_evidence, cobit_reference, control_reference, map_due_date, issue_discussion_date, issue_individuals_present, reviewer_user_id, annual_population_size, control_inherent_risk_option_id, control_routine_option_id, control_judgement_degree_option_id, control_management_override_option_id, control_complexity_option_id, external_auditor_viewable_status, effective_date, baseline_result_option_id, modification_description, reviewer_notes, rationale, baseline_date, uid, process_id, subprocess_id, last_modification_date, last_review_date, reliance_option_id, control_custom_select1_option_id, coordinator_user_id, control_custom_text1, control_custom_text2, control_custom_text3, control_custom_text4) FROM stdin;
\.


--
-- Data for Name: controls_data_additional_owners; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.controls_data_additional_owners (id, created_at, updated_at, controls_datum_id, user_id) FROM stdin;
\.


--
-- Data for Name: controls_data_archives; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.controls_data_archives (id, created_at, updated_at, deleted_at, controls_datum_id, archive_id, archive_data, controls_datum_description, entity_name, control_name, control_uid, entity_code, region_code, region_name, process_uid, process_name, subprocess_uid, subprocess_name) FROM stdin;
\.


--
-- Data for Name: controls_data_audits; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.controls_data_audits (id, created_at, "timestamp", user_id, controls_datum_id, test_id, field, from_value, to_value, action, updated_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: controls_data_business_process_owner_users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.controls_data_business_process_owner_users (id, created_at, updated_at, controls_datum_id, user_id) FROM stdin;
\.


--
-- Data for Name: controls_data_comments; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.controls_data_comments (id, created_at, updated_at, controls_datum_id, comment_id) FROM stdin;
\.


--
-- Data for Name: controls_data_control_custom_multiselect1_options; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.controls_data_control_custom_multiselect1_options (id, created_at, updated_at, controls_datum_id, control_custom_multiselect1_option_id) FROM stdin;
\.


--
-- Data for Name: controls_data_control_custom_multiselect2_options; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.controls_data_control_custom_multiselect2_options (id, created_at, updated_at, controls_datum_id, control_custom_multiselect2_option_id) FROM stdin;
\.


--
-- Data for Name: controls_data_control_custom_multiselect3_options; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.controls_data_control_custom_multiselect3_options (id, created_at, updated_at, controls_datum_id, control_custom_multiselect3_option_id) FROM stdin;
\.


--
-- Data for Name: controls_data_control_custom_multiselect4_options; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.controls_data_control_custom_multiselect4_options (id, created_at, updated_at, controls_datum_id, control_custom_multiselect4_option_id) FROM stdin;
\.


--
-- Data for Name: controls_data_coso_components; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.controls_data_coso_components (id, controls_datum_id, coso_component_id, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: controls_data_coso_elements; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.controls_data_coso_elements (id, created_at, updated_at, controls_datum_id, coso_element_id) FROM stdin;
\.


--
-- Data for Name: controls_data_coso_pofs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.controls_data_coso_pofs (id, created_at, updated_at, controls_datum_id, coso_pof_id) FROM stdin;
\.


--
-- Data for Name: controls_data_coso_principles; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.controls_data_coso_principles (id, created_at, updated_at, controls_datum_id, coso_principle_id) FROM stdin;
\.


--
-- Data for Name: controls_data_deficiency_types; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.controls_data_deficiency_types (id, created_at, updated_at, controls_datum_id, deficiency_type_id) FROM stdin;
\.


--
-- Data for Name: controls_data_finance_process_owner_users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.controls_data_finance_process_owner_users (id, created_at, updated_at, controls_datum_id, user_id) FROM stdin;
\.


--
-- Data for Name: controls_data_financial_accounts; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.controls_data_financial_accounts (id, created_at, updated_at, controls_datum_id, financial_account_id) FROM stdin;
\.


--
-- Data for Name: controls_data_financial_applications; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.controls_data_financial_applications (id, created_at, updated_at, controls_datum_id, financial_application_id) FROM stdin;
\.


--
-- Data for Name: controls_data_issue_nature_options; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.controls_data_issue_nature_options (id, created_at, updated_at, controls_datum_id, issue_nature_option_id) FROM stdin;
\.


--
-- Data for Name: controls_data_narratives; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.controls_data_narratives (id, created_at, updated_at, controls_datum_id, narrative_id) FROM stdin;
\.


--
-- Data for Name: controls_data_pbc_owner_users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.controls_data_pbc_owner_users (id, created_at, updated_at, controls_datum_id, user_id) FROM stdin;
\.


--
-- Data for Name: controls_data_pbc_status_options; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.controls_data_pbc_status_options (id, created_at, updated_at, controls_datum_id, pbc_status_option_id) FROM stdin;
\.


--
-- Data for Name: controls_data_test_types; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.controls_data_test_types (id, created_at, updated_at, controls_datum_id, test_type_id) FROM stdin;
\.


--
-- Data for Name: controls_data_testing_strategies; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.controls_data_testing_strategies (id, created_at, updated_at, controls_datum_id, testing_strategy_id) FROM stdin;
\.


--
-- Data for Name: controls_risks; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.controls_risks (id, created_at, updated_at, control_id, risk_id) FROM stdin;
\.


--
-- Data for Name: coso_components; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.coso_components (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
\.


--
-- Data for Name: coso_elements; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.coso_elements (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
1	2014-09-06 10:23:39.707+00	2014-09-06 10:23:39.707+00	\N	Control Activity	0
\.


--
-- Data for Name: coso_pofs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.coso_pofs (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
1	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	1.1 Sets Tone at the top	1
2	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	1.2 Establishes Standards of conduct	2
3	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	1.3 Evaluates adherence to standards of conduct	3
4	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	1.4 Addresses deviations in a timely manner	4
5	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	2.1 Establishes oversight responsibilities	5
6	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	2.2 Applies relevant expertise	6
7	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	2.3 Operates independently	7
8	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	2.4 Provides oversight for the system of internal control	8
9	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	3.1 Considers all structures of the entity	9
10	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	3.2 Establishes reporting lines	10
11	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	3.3 Defines, assigns and limits authorities and responsibilities	11
12	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	4.1 Establishes policies and practices	12
13	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	4.2 Evaluates competence and addresses shortcomings	13
14	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	4.3 Attracts, develops and retains individuals	14
15	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	4.4 Plans and prepares for succession	15
16	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	5.1 Enforces accountability through structures, authorities and responsibilities	16
17	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	5.2 Establishes performance measures, incentives and rewards	17
18	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	5.3 Evaluates performance measures, incentives and rewards for ongoing relevance	18
19	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	5.4 Considers excessive pressures	19
20	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	5.5 Evaluates performance and rewards or disciplines individuals	20
21	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	6.1 Operations - Reflects management's choices	21
22	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	6.2 Operations - Considers tolerances for risk	22
23	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	6.3 Operations - Includes operations and financial reporting goals	23
24	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	6.4 Operations - Forms a basis for committing resources	24
25	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	6.5 External Financial Reporting - Complies with applicable accounting standards	25
26	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	6.6 External Financial Reporting - Considers materiality	26
27	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	6.7 External Financial Reporting - Reflects entity activities	27
28	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	6.8 External Non-Financial Reporting - Complies with externally established standards and frameworks	28
29	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	6.9 External Non-Financial Reporting - Considers required level of precision	29
30	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	6.10 External Non-Financial Reporting - Reflects entity activities	30
31	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	6.11 Internal Reporting Objectives - Reflects management's choices	31
32	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	6.12 Internal Reporting Objectives - Considers required level of precision	32
33	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	6.13 Internal Reporting Objectives - Reflects entity activities	33
34	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	6.14 Compliance Objectives - Reflects external laws and regulations	34
35	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	6.15 Compliance Objectives -Reflects entity activities	35
36	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	7.1 Includes entity, subsidiary, division, operating unit, and functional levels	36
37	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	7.2 Analyzes internal and external factors	37
38	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	7.3 Involves appropriate levels of management	38
39	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	7.4 Estimates significance of risks identified	39
40	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	7.5 Determines how to respond to risks	40
41	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	8.1 Considers various types of fraud	41
42	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	8.2 Assesses incentives and pressures	42
43	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	8.3 Assesses opportunities	43
44	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	8.4 Assesses attitudes and rationalizations	44
45	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	9.1 Assesses changes in the external environment	45
46	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	9.2 Assesses changes in the business model	46
47	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	9.3 Assesses changes in leadership	47
48	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	10.1 Integrates with risk assessment	48
49	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	10.2 Considers entity-specific factors	49
50	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	10.3 Determines relevant business processes	50
51	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	10.4 Evaluates a mix of control activity types	51
52	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	10.5 Considers at what level activities are applied	52
53	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	10.6 Addresses segregation of duties	53
54	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	11.1 Determines dependency between the use of technology in business processes and ITGCs	54
55	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	11.2 Establishes relevant technology infrastructure control activities	55
56	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	11.3 Establishes relevant security management process control activities	56
57	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	11.4 Establishes relevant technology acquisition, development, and maintenance process control activities	57
58	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	12.1 Establishes policies and procedures to support deployment of management's directives	58
59	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	12.2 Establishes responsibility and accountability for executing policies and procedures	59
60	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	12.3 Performs in a timely manner	60
61	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	12.4 Takes corrective action	61
62	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	12.5 Performs using competent personnel	62
63	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	12.6 Reassesses policies and procedures	63
64	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	13.1 Identifies information requirements	64
65	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	13.2 Captures internal and external sources of data	65
66	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	13.3 Processes relevant data into information	66
67	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	13.4 Maintains quality throughout processing	67
68	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	13.5 Considers costs and benefits	68
69	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	14.1 Internally - Communicates internal control information	69
70	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	14.2 Internally - Communicates with the Board of Directors	70
71	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	14.3 Internally - Provides separate communication lines	71
72	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	14.4 Internally - Selects relevant method of communication	72
73	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	15.1 Externally - Communicates to external parties	73
74	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	15.2 Externally - Enables inbound communications	74
75	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	15.3 Externally - Communicates with the Board of Directors	75
76	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	15.4 Externally - Provides separate communication lines	76
77	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	15.5 Externally - Selects relevant method of communication	77
78	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	16.1 Considers a mix of ongoing and separate evaluations	78
79	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	16.2 Considers rate of change	79
80	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	16.3 Establishes baseline understanding	80
81	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	16.4 Uses knowledgeable personnel	81
82	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	16.5 Integrates with business processes	82
83	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	16.6 Adjusts scope and frequency	83
84	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	16.7 Objectively evaluates	84
85	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	17.1 Assesses results	85
86	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	17.2 Communicates deficiencies	86
87	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	17.3 Monitors corrective actions	87
\.


--
-- Data for Name: coso_principles; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.coso_principles (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
1	2015-06-25 17:52:09.88+00	2015-06-25 17:52:09.88+00	\N	01 - Demonstrates commitment to integrity and ethical values	1
2	2015-06-25 17:52:38.408+00	2015-06-25 17:52:38.408+00	\N	02 - Exercises oversight responsibility	2
3	2015-06-25 17:56:33.351+00	2015-06-25 17:56:33.351+00	\N	03 - Establishes structure, authority, and responsibility	3
4	2015-06-25 17:52:58.988+00	2015-06-25 17:53:13.554+00	\N	04 - Demonstrates commitment to competence	4
5	2015-06-25 17:56:56.204+00	2015-06-25 17:56:56.204+00	\N	05 - Enforces accountability	5
6	2015-06-25 17:57:23.683+00	2015-06-25 17:57:23.683+00	\N	06 - Specifies suitable objectives	6
7	2015-06-25 18:50:30.359+00	2015-06-25 18:50:30.359+00	\N	07 - Identifies and analyzes risk	7
8	2015-06-25 18:50:56.5+00	2015-06-25 18:50:56.5+00	\N	08 - Assesses fraud risk	8
9	2015-06-25 18:51:13.772+00	2015-06-25 18:51:13.772+00	\N	09 - Identifies and analyzes significant change	9
10	2015-06-25 18:51:33.21+00	2015-06-25 18:51:33.21+00	\N	10 - The organization selects and develops control activities that contribute to the mitigation of risks to the achievement of objectives to acceptable levels.	10
11	2015-06-25 18:51:50.008+00	2015-06-25 18:51:50.008+00	\N	11 - Selects and develops general controls over technology	11
12	2015-06-25 18:52:05.7+00	2015-06-25 18:52:05.7+00	\N	12 - Deploys through policies and procedures	12
13	2015-06-25 18:53:06.825+00	2015-06-25 18:53:06.825+00	\N	13 - Uses relevant information	13
14	2015-06-25 18:53:28.798+00	2015-06-25 18:53:28.798+00	\N	14 - Communicates internally	14
15	2015-06-25 18:53:45.765+00	2015-06-25 18:53:45.765+00	\N	15 - Communicates externally	15
16	2015-06-25 18:54:02.042+00	2015-06-25 18:54:02.042+00	\N	16 - Conducts ongoing and/or separate evaluations	16
17	2015-06-25 18:54:20.661+00	2015-06-25 18:54:20.661+00	\N	17 - Evaluates and communicates deficiencies	17
\.


--
-- Data for Name: cron_options; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.cron_options (id, sort_order, created_at, updated_at, deleted_at, name, value) FROM stdin;
1	0	2019-10-01 18:35:10.373+00	2019-10-01 18:35:10.373+00	\N	Daily (Mon-Fri) at 9:00am	0 9 * * 1-5
2	0	2019-10-01 18:35:10.394+00	2019-10-01 18:35:10.394+00	\N	Weekly at 7:00pm on Thursday	0 19 * * 4
3	0	2019-10-01 18:35:10.418+00	2019-10-01 18:35:10.418+00	\N	Weekly at 9:00am on Monday	0 9 * * 1
4	0	2019-10-01 18:35:10.436+00	2019-10-01 18:35:10.436+00	\N	Weekly at 9:00am on Tuesday	0 9 * * 2
5	0	2019-10-01 18:35:10.455+00	2019-10-01 18:35:10.455+00	\N	Weekly at 9:00am on Wednesday	0 9 * * 3
6	0	2019-10-01 18:35:10.479+00	2019-10-01 18:35:10.479+00	\N	Weekly at 9:00am on Thursday	0 9 * * 4
7	0	2019-10-01 18:35:10.505+00	2019-10-01 18:35:10.505+00	\N	Weekly at 9:00am on Friday	0 9 * * 5
8	0	2019-10-01 18:35:26.949+00	2019-10-01 18:35:26.949+00	\N	Monthly at 8:00am on first day of month	0 8 1 1-12 *
9	0	2019-10-01 18:35:30.657+00	2019-10-01 18:35:30.657+00	\N	Every 5 Minutes	*/5 * * * *
10	0	2019-10-01 18:35:48.181+00	2019-10-01 18:35:48.181+00	\N	Every 10 Minutes	*/10 * * * *
\.


--
-- Data for Name: crons; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.crons (id, created_at, updated_at, deleted_at, task_meta, is_active, task_type, task_group_id, cron_option_id) FROM stdin;
\.


--
-- Data for Name: deficiency_levels; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.deficiency_levels (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
1	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	Control Deficiency	1
2	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	Significant Deficiency	2
3	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	Material Weakness	3
\.


--
-- Data for Name: deficiency_types; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.deficiency_types (id, sort_order, created_at, updated_at, deleted_at, name) FROM stdin;
\.


--
-- Data for Name: departments; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.departments (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
\.


--
-- Data for Name: document_diffs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.document_diffs (id, created_at, updated_at, deleted_at, document_id, from_version_id, to_version_id, htmldiff) FROM stdin;
\.


--
-- Data for Name: document_versions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.document_versions (id, created_at, updated_at, deleted_at, document_id, user_id, body, name, page_layout) FROM stdin;
\.


--
-- Data for Name: documents; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.documents (id, created_at, updated_at, deleted_at, body, page_layout) FROM stdin;
\.


--
-- Data for Name: effectiveness_options; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.effectiveness_options (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
1	2014-09-06 10:23:40.554+00	2014-09-06 10:23:40.554+00	\N	Effective	0
2	2014-09-08 22:57:38.966+00	2014-09-08 22:57:38.966+00	\N	Ineffective	0
3	2016-07-21 18:38:35.87+00	2016-07-21 18:38:35.87+00	\N	Not Tested	0
\.


--
-- Data for Name: email_logs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.email_logs (id, to_user_id, from_user_id, intended_recipient, actual_recipient, email_type, email_category, status, reason, reason_type, email_body, email_headers, email_subject, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: entities; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.entities (id, created_at, updated_at, deleted_at, sort_order, entity_code, name, region_id) FROM stdin;
\.


--
-- Data for Name: exclude_risks; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.exclude_risks (id, risk_id, entity_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: external_auditor_status_options; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.external_auditor_status_options (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
\.


--
-- Data for Name: file_versions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.file_versions (id, file_id, name, size, type, key, url, upload_user_id, storage_type, embed_url, version, created_at, updated_at, deleted_at, user_agent) FROM stdin;
\.


--
-- Data for Name: files; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.files (id, created_at, updated_at, fileable_id, fileable_type, name, size, type, key, url, upload_user_id, comments, deleted_at, storage_type, embed_url, thumb_url, image_url, meta, user_agent) FROM stdin;
\.


--
-- Data for Name: financial_accounts; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.financial_accounts (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
\.


--
-- Data for Name: financial_applications; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.financial_applications (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
\.


--
-- Data for Name: form_templates; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.form_templates (id, name, type, template_json, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: fraud_controls; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.fraud_controls (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
2	2016-07-21 18:38:35.514+00	2016-07-21 18:38:35.514+00	\N	Yes	0
3	2016-07-21 18:38:35.514+00	2016-07-21 18:38:35.514+00	\N	No	0
1	2016-07-21 18:38:35.514+00	2016-07-21 18:38:35.514+00	\N	N/A	0
\.


--
-- Data for Name: global_attributes; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.global_attributes (id, section, object_type, key, default_label, label, created_at, updated_at, deleted_at, enabled, scope) FROM stdin;
\.


--
-- Data for Name: global_audits; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.global_audits (id, "timestamp", user_id, object_id, object_type, field, from_value, to_value, action, message, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: global_file_categories; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.global_file_categories (id, created_at, updated_at, deleted_at, name, sort_order, deleteable) FROM stdin;
100	2016-07-21 18:38:37.259+00	2017-08-31 22:25:47.208+00	\N	TestSheet Templates	6	f
101	2017-08-31 22:24:59.474+00	2017-08-31 22:24:59.474+00	\N	PBC Implementation	1	f
5	2015-07-02 05:46:05.824+00	2017-08-31 22:25:08.423+00	\N	FlowCharts	2	t
2	2015-06-24 14:22:05.356+00	2017-08-31 22:25:29.46+00	\N	Narratives	3	t
4	2015-06-25 00:58:33.702+00	2017-08-31 22:25:35.537+00	\N	Planning Docs	4	t
1	2015-06-24 14:21:53.845+00	2017-08-31 22:25:41.411+00	\N	Resources	5	t
102	2019-10-01 18:35:25.893+00	2019-10-01 18:35:25.893+00	\N	Saved Control Downloads	1	f
\.


--
-- Data for Name: global_permissions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.global_permissions (id, section, key, name, description, default_value, allowed_values, all_values, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: impacted_sections; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.impacted_sections (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
\.


--
-- Data for Name: import_records; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.import_records (id, created_at, updated_at, deleted_at, user_id, resource_name, summary) FROM stdin;
\.


--
-- Data for Name: internal_control_components; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.internal_control_components (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
\.


--
-- Data for Name: issue_custom_multiselect1_options; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.issue_custom_multiselect1_options (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
\.


--
-- Data for Name: issue_custom_multiselect2_options; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.issue_custom_multiselect2_options (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
\.


--
-- Data for Name: issue_custom_select1_options; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.issue_custom_select1_options (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
\.


--
-- Data for Name: issue_custom_select2_options; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.issue_custom_select2_options (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
\.


--
-- Data for Name: issue_idents; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.issue_idents (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
1	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	Internal Audit	1
2	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	External Audit	2
3	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	Management	3
\.


--
-- Data for Name: issue_locations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.issue_locations (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
\.


--
-- Data for Name: issue_nature_options; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.issue_nature_options (id, sort_order, created_at, updated_at, deleted_at, name) FROM stdin;
\.


--
-- Data for Name: issue_ratings; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.issue_ratings (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
\.


--
-- Data for Name: issue_remediation_custom_select1_options; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.issue_remediation_custom_select1_options (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
\.


--
-- Data for Name: issue_remediation_custom_select2_options; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.issue_remediation_custom_select2_options (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
\.


--
-- Data for Name: issues; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.issues (id, status, title, description, potential_risk, individuals_present, deficiency_level_id, discussion_date, map_due_date, management_response, qualitative_factors, issue_ident_id, gross_exposure, magnitude_id, likelihood_id, aggregation_reference_id, adjusted_exposure, remediation_action, remediation_date, remediation_owner_id, creator_user_id, identified_date, deleted_at, created_at, updated_at, controls_datum_id, test_id, test_section_id, notes, reference_issue_id, archive_id, tester_user_id, reviewer_user_id, ops_audit_id, ops_audit_item_id, type, internal_control_component_id, external_planned_confirm_date, disclosure, planned_close_date, planned_confirm_date, external_confirm_date, pending_remediation_date, closed_date, inactive_date, reopen_date, open_date, amend_date, remediated_date, open_by_user_id, reopen_by_user_id, pending_remediation_by_user_id, remediated_by_user_id, closed_by_user_id, amend_by_user_id, flattened, issue_rating_id, sox_impact_id, issue_custom_select1_option_id, issue_custom_select2_option_id, issue_remediation_custom_select1_option_id, issue_remediation_custom_select2_option_id, business_owner_user_id, executive_owner_user_id, officer_user_id, audit_director_user_id, audit_contact_user_id, business_contact_user_id, vice_president_user_id, executive_vice_president_user_id, is_flattened) FROM stdin;
\.


--
-- Data for Name: issues_business_process_owner_users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.issues_business_process_owner_users (id, created_at, updated_at, issue_id, user_id) FROM stdin;
\.


--
-- Data for Name: issues_deficiency_types; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.issues_deficiency_types (id, created_at, updated_at, issue_id, deficiency_type_id) FROM stdin;
\.


--
-- Data for Name: issues_finance_process_owner_users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.issues_finance_process_owner_users (id, created_at, updated_at, issue_id, user_id) FROM stdin;
\.


--
-- Data for Name: issues_impacted_sections; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.issues_impacted_sections (id, created_at, updated_at, issue_id, impacted_section_id) FROM stdin;
\.


--
-- Data for Name: issues_issue_custom_multiselect1_options; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.issues_issue_custom_multiselect1_options (id, created_at, updated_at, issue_id, issue_custom_multiselect1_option_id) FROM stdin;
\.


--
-- Data for Name: issues_issue_custom_multiselect2_options; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.issues_issue_custom_multiselect2_options (id, created_at, updated_at, issue_id, issue_custom_multiselect2_option_id) FROM stdin;
\.


--
-- Data for Name: issues_issue_locations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.issues_issue_locations (id, created_at, updated_at, issue_id, issue_location_id) FROM stdin;
\.


--
-- Data for Name: issues_issue_nature_options; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.issues_issue_nature_options (id, created_at, updated_at, issue_id, issue_nature_option_id) FROM stdin;
\.


--
-- Data for Name: issues_root_cause_types; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.issues_root_cause_types (id, created_at, updated_at, issue_id, root_cause_type_id) FROM stdin;
\.


--
-- Data for Name: issues_subscriber_users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.issues_subscriber_users (id, created_at, updated_at, issue_id, user_id) FROM stdin;
\.


--
-- Data for Name: likelihoods; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.likelihoods (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
1	2015-04-02 22:25:45.155+00	2015-04-02 22:25:45.155+00	\N	Remote	0
2	2015-04-02 22:25:45.155+00	2015-04-02 22:25:45.155+00	\N	More Than Remote	0
\.


--
-- Data for Name: locations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.locations (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
\.


--
-- Data for Name: locks; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.locks (id, lockable_id, lockable_type, user_id, application, token, expires_at, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: login_histories; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.login_histories (id, "timestamp", user_id, ip_address, action, message, location, created_at, updated_at, deleted_at, login_email) FROM stdin;
\.


--
-- Data for Name: magnitudes; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.magnitudes (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
1	2015-04-02 22:25:45.109+00	2015-04-02 22:25:45.109+00	\N	High	0
2	2015-04-02 22:25:45.109+00	2015-04-02 22:25:45.109+00	\N	Medium	0
3	2015-04-02 22:25:45.109+00	2015-04-02 22:25:45.109+00	\N	Low	0
\.


--
-- Data for Name: managed_changes; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.managed_changes (id, task_item_id, changed_by_user_id, changed_by_date, completed_by_user_id, completed_by_date, merged_by_user_id, merged_by_date, changeable_id, changeable_type, status, field, field_type, field_path, field_label, from_value, to_value, diff_value, meta_config, created_at, updated_at, deleted_at, question_response_id) FROM stdin;
\.


--
-- Data for Name: mrc_controls; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mrc_controls (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
1	2016-07-21 18:38:35.451+00	2016-07-21 18:38:35.451+00	\N	N/A	0
2	2016-07-21 18:38:35.451+00	2016-07-21 18:38:35.451+00	\N	Yes	0
3	2016-07-21 18:38:35.451+00	2016-07-21 18:38:35.451+00	\N	No	0
\.


--
-- Data for Name: narrative_owners; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.narrative_owners (id, created_at, updated_at, narrative_id, user_id) FROM stdin;
\.


--
-- Data for Name: narrative_sections; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.narrative_sections (id, narrative_id, created_at, updated_at, deleted_at, name, body) FROM stdin;
\.


--
-- Data for Name: narratives; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.narratives (id, uid, created_at, updated_at, deleted_at, name, summary, body, lock_user_id, locked_at, page_layout) FROM stdin;
\.


--
-- Data for Name: notification_messages; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.notification_messages (id, from_user_id, to_user_id, type, status, is_read, message, raw_data, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: ops_audit_categories; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.ops_audit_categories (id, created_at, updated_at, deleted_at, name, sort_order, status) FROM stdin;
\.


--
-- Data for Name: ops_audit_category_sections; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.ops_audit_category_sections (id, created_at, updated_at, deleted_at, sort_order, ops_audit_category_id, ops_audit_section_id, form_template_id) FROM stdin;
\.


--
-- Data for Name: ops_audit_custom_multiselect1_options; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.ops_audit_custom_multiselect1_options (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
\.


--
-- Data for Name: ops_audit_custom_multiselect2_options; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.ops_audit_custom_multiselect2_options (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
\.


--
-- Data for Name: ops_audit_custom_select1_options; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.ops_audit_custom_select1_options (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
\.


--
-- Data for Name: ops_audit_custom_select2_options; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.ops_audit_custom_select2_options (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
\.


--
-- Data for Name: ops_audit_custom_select3_options; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.ops_audit_custom_select3_options (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
\.


--
-- Data for Name: ops_audit_items; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.ops_audit_items (id, created_at, updated_at, deleted_at, ops_audit_id, ops_audit_section_id, preparer_user_id, reviewer_user_id, due_date, description, budget_hours, actual_hours, status, notes, results, secondary_reviewer_user_id, sort_order, title, procedures, complete_date, complete_by_user_id, under_review_1_date, under_review_1_by_user_id, under_review_2_date, under_review_2_by_user_id, reviewed_date, reviewed_by_user_id, objective, source, scope, ops_risk_level_id, ops_rating_id, pbc_request, pbc_request_additional, population_details, sample_size, sample_selection, ops_custom_select1_option_id, ops_custom_select2_option_id, ops_custom_date1, ops_custom_date2, ops_custom_date3, effectiveness, ops_audit_section_instance_id, ops_audit_subsection_id) FROM stdin;
\.


--
-- Data for Name: ops_audit_items_business_owner_users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.ops_audit_items_business_owner_users (id, created_at, updated_at, ops_audit_item_id, user_id) FROM stdin;
\.


--
-- Data for Name: ops_audit_items_controls_data; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.ops_audit_items_controls_data (id, ops_audit_item_id, controls_datum_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: ops_audit_items_ops_custom_multiselect1_options; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.ops_audit_items_ops_custom_multiselect1_options (id, created_at, updated_at, ops_audit_item_id, ops_custom_multiselect1_option_id) FROM stdin;
\.


--
-- Data for Name: ops_audit_locations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.ops_audit_locations (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
\.


--
-- Data for Name: ops_audit_opinions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.ops_audit_opinions (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
\.


--
-- Data for Name: ops_audit_owner_users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.ops_audit_owner_users (id, created_at, updated_at, ops_audit_id, user_id) FROM stdin;
\.


--
-- Data for Name: ops_audit_periods; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.ops_audit_periods (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
\.


--
-- Data for Name: ops_audit_result_custom_select1_options; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.ops_audit_result_custom_select1_options (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
\.


--
-- Data for Name: ops_audit_result_custom_select2_options; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.ops_audit_result_custom_select2_options (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
\.


--
-- Data for Name: ops_audit_result_custom_select3_options; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.ops_audit_result_custom_select3_options (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
\.


--
-- Data for Name: ops_audit_result_custom_select4_options; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.ops_audit_result_custom_select4_options (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
\.


--
-- Data for Name: ops_audit_risk_levels; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.ops_audit_risk_levels (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
\.


--
-- Data for Name: ops_audit_section_instances; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.ops_audit_section_instances (id, created_at, updated_at, deleted_at, sort_order, ops_audit_id, ops_audit_section_id, form_template_id) FROM stdin;
\.


--
-- Data for Name: ops_audit_sections; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.ops_audit_sections (id, created_at, updated_at, deleted_at, name, short_name, sort_order, is_issuable, has_effectiveness_option) FROM stdin;
1	\N	\N	\N	Planning	Planning	0	f	f
2	\N	\N	\N	Fieldwork	Fieldwork	1	f	f
3	\N	\N	\N	Reporting	Reporting	2	f	f
4	\N	\N	\N	Follow-up	Follow-up	3	f	f
\.


--
-- Data for Name: ops_audit_subsections; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.ops_audit_subsections (id, created_at, updated_at, deleted_at, sort_order, name, ops_audit_id, ops_audit_section_instance_id) FROM stdin;
\.


--
-- Data for Name: ops_audits; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.ops_audits (id, created_at, updated_at, deleted_at, start_date, end_date, ops_audit_period_id, ops_audit_category_id, creator_user_id, title, ops_audit_risk_level_id, description, is_template, status, archived_date, archived_by_user_id, totals, section_totals, lead_user_id, scope_start_date, scope_end_date, uid, started_date, started_by_user_id, canceled_date, canceled_by_user_id, risk_factors, ops_audit_custom_select1_option_id, ops_audit_custom_select2_option_id, ops_audit_custom_select3_option_id, ops_audit_opinion_id, systems_reviewed, notes, custom_text1, custom_text2, result_custom_text1, result_custom_text2, executive_summary, result_feedback, ops_audit_result_custom_select1_option_id, ops_audit_result_custom_select2_option_id, ops_audit_result_custom_select3_option_id, ops_audit_result_custom_select4_option_id, project_director_user_id, project_leader_user_id, final_report_date, estimated_start_date, estimated_end_date, preparer_users, reviewer_users, secondary_reviewer_users, project_options) FROM stdin;
\.


--
-- Data for Name: ops_audits_business_process_owner_users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.ops_audits_business_process_owner_users (id, created_at, updated_at, ops_audit_id, user_id) FROM stdin;
\.


--
-- Data for Name: ops_audits_business_units; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.ops_audits_business_units (id, created_at, updated_at, ops_audit_id, business_unit_id) FROM stdin;
\.


--
-- Data for Name: ops_audits_executive_users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.ops_audits_executive_users (id, created_at, updated_at, ops_audit_id, user_id) FROM stdin;
\.


--
-- Data for Name: ops_audits_finance_process_owner_users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.ops_audits_finance_process_owner_users (id, created_at, updated_at, ops_audit_id, user_id) FROM stdin;
\.


--
-- Data for Name: ops_audits_officer_users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.ops_audits_officer_users (id, created_at, updated_at, ops_audit_id, user_id) FROM stdin;
\.


--
-- Data for Name: ops_audits_ops_audit_custom_multiselect1_options; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.ops_audits_ops_audit_custom_multiselect1_options (id, created_at, updated_at, ops_audit_id, ops_audit_custom_multiselect1_option_id) FROM stdin;
\.


--
-- Data for Name: ops_audits_ops_audit_custom_multiselect2_options; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.ops_audits_ops_audit_custom_multiselect2_options (id, created_at, updated_at, ops_audit_id, ops_audit_custom_multiselect2_option_id) FROM stdin;
\.


--
-- Data for Name: ops_audits_ops_audit_locations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.ops_audits_ops_audit_locations (id, ops_audit_id, ops_audit_location_id, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: ops_audits_supervisor_users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.ops_audits_supervisor_users (id, created_at, updated_at, ops_audit_id, user_id) FROM stdin;
\.


--
-- Data for Name: ops_custom_multiselect1_options; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.ops_custom_multiselect1_options (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
\.


--
-- Data for Name: ops_custom_select1_options; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.ops_custom_select1_options (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
\.


--
-- Data for Name: ops_custom_select2_options; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.ops_custom_select2_options (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
\.


--
-- Data for Name: ops_ra_process_entities; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.ops_ra_process_entities (id, process_id, entity_id, ops_risk_assessment_id, overall_risk_value, in_scope, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: ops_ra_values; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.ops_ra_values (id, ops_risk_criteria_id, ops_risk_value_id, ops_ra_process_entity_id, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: ops_ratings; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.ops_ratings (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
\.


--
-- Data for Name: ops_risk_assessments; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.ops_risk_assessments (id, created_at, updated_at, deleted_at, title, status, finalized_by_user_id, finalized_date, finalized_data, created_by_user_id) FROM stdin;
\.


--
-- Data for Name: ops_risk_criteria; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.ops_risk_criteria (id, created_at, updated_at, deleted_at, name, weight, sort_order, uid) FROM stdin;
1	2019-10-01 18:35:41.73936+00	2019-10-01 18:35:41.73936+00	\N	External Environment	1	0	\N
2	2019-10-01 18:35:41.754067+00	2019-10-01 18:35:41.754067+00	\N	Management Override of Controls	1	0	\N
3	2019-10-01 18:35:41.76948+00	2019-10-01 18:35:41.76948+00	\N	Fraud Vulnerability	1	0	\N
4	2019-10-01 18:35:41.783963+00	2019-10-01 18:35:41.783963+00	\N	Complexity of Transactions	1	0	\N
5	2019-10-01 18:35:41.799632+00	2019-10-01 18:35:41.799632+00	\N	Estimates & Judgement	1	0	\N
6	2019-10-01 18:35:41.814192+00	2019-10-01 18:35:41.814192+00	\N	Manual Processing	1	0	\N
7	2019-10-01 18:35:41.834676+00	2019-10-01 18:35:41.834676+00	\N	Historical Problems	1	0	\N
8	2019-10-01 18:35:41.849171+00	2019-10-01 18:35:41.849171+00	\N	Level of Change	1	0	\N
9	2019-10-01 18:35:41.867358+00	2019-10-01 18:35:41.867358+00	\N	Control Failure Risk	1	0	\N
10	2019-10-01 18:35:41.882071+00	2019-10-01 18:35:41.882071+00	\N	Account Magnitude	1	0	\N
\.


--
-- Data for Name: ops_risk_levels; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.ops_risk_levels (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
\.


--
-- Data for Name: ops_risk_values; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.ops_risk_values (id, created_at, updated_at, deleted_at, value, color_value, name, sort_order) FROM stdin;
1	2019-10-01 18:35:33.498+00	2019-10-01 18:35:33.498+00	\N	3	rgb(232,64,55)	High	0
2	2019-10-01 18:35:33.517+00	2019-10-01 18:35:33.517+00	\N	2	rgb(255,168,46)	Medium	1
3	2019-10-01 18:35:33.535+00	2019-10-01 18:35:33.535+00	\N	1	rgb(127,204,71)	Low	2
\.


--
-- Data for Name: password_histories; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.password_histories (id, user_id, salt, password, encryption_algo, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: pbc_status_options; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pbc_status_options (id, sort_order, created_at, updated_at, deleted_at, name) FROM stdin;
\.


--
-- Data for Name: pbix_files; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pbix_files (id, name, created_at, updated_at, deleted_at, seed_file, seed_version, has_new_file) FROM stdin;
\.


--
-- Data for Name: powerbi_report_instances; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.powerbi_report_instances (id, created_at, updated_at, deleted_at, powerbi_report_id, reportable_type, reportable_id) FROM stdin;
\.


--
-- Data for Name: powerbi_reports; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.powerbi_reports (id, created_at, updated_at, deleted_at, name, report_id, status, sort_order, type, pbix_file_id, dataset_id, dataset_uid) FROM stdin;
\.


--
-- Data for Name: process_types; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.process_types (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
1	2019-10-01 18:35:36.458602+00	\N	\N	SOX	0
2	2019-10-01 18:35:36.474273+00	\N	\N	Operational	0
\.


--
-- Data for Name: processes; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.processes (id, created_at, updated_at, deleted_at, uid, name) FROM stdin;
\.


--
-- Data for Name: processes_data; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.processes_data (id, created_at, updated_at, deleted_at, file, process_id, entity_id) FROM stdin;
\.


--
-- Data for Name: processes_process_types; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.processes_process_types (id, created_at, updated_at, process_id, process_type_id) FROM stdin;
\.


--
-- Data for Name: question_responses; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.question_responses (id, question_id, survey_response_id, status, response, meta_config, created_at, updated_at, deleted_at, response_explanation, response_data, reference_text, meta_flat, type) FROM stdin;
\.


--
-- Data for Name: questions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.questions (id, survey_id, type, description, sort_order, meta_config, created_at, updated_at, deleted_at, require_explanation, require_files, title, short_title, allow_na_response, require_explanation_for_na, allow_ratings_matrix_add, require_explanation_for_yes, require_explanation_for_no, show_explanation) FROM stdin;
\.


--
-- Data for Name: regions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.regions (id, created_at, updated_at, deleted_at, sort_order, region_code, name) FROM stdin;
1	2014-09-06 10:23:39.967+00	2014-09-06 10:23:39.967+00	\N	0	BP	Business Process
2	2014-09-06 10:23:39.967+00	2014-09-06 10:23:39.967+00	\N	1	IT	General IT Controls
\.


--
-- Data for Name: reliance_options; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.reliance_options (id, created_at, updated_at, deleted_at, name, sort_order, external_auditor_visible) FROM stdin;
\.


--
-- Data for Name: reports; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.reports (id, created_at, updated_at, deleted_at, name, query_fields, query_filters, share_token, type, fields_grouping, canonical_fields) FROM stdin;
\.


--
-- Data for Name: risk_levels; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.risk_levels (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
1	2014-09-06 10:23:39.739+00	2014-09-06 10:23:39.739+00	\N	Low	0
2	2014-09-06 10:23:39.739+00	2014-09-06 10:23:39.739+00	\N	Medium	0
3	2014-09-06 10:23:39.739+00	2014-09-06 10:23:39.739+00	\N	High	0
\.


--
-- Data for Name: risks; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.risks (id, created_at, updated_at, deleted_at, uid, name, process_id) FROM stdin;
\.


--
-- Data for Name: role_permissions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.role_permissions (id, role_id, section, key, value, created_at, updated_at, deleted_at, global_permission_id, scope) FROM stdin;
\.


--
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.roles (id, created_at, updated_at, deleted_at, name, short_name, default_route) FROM stdin;
2	2014-09-06 10:23:37.485+00	2014-09-06 10:23:37.485+00	\N	System Admin	system-admin	dashboard
3	2014-09-06 10:23:37.485+00	2014-09-06 10:23:37.485+00	\N	Reviewer	reviewer	dashboard
4	2014-09-06 10:23:37.485+00	2014-09-06 10:23:37.485+00	\N	Tester	tester	dashboard
5	2014-09-06 10:23:37.485+00	2014-09-06 10:23:37.485+00	\N	Owner	owner	dashboard
6	2014-09-06 10:23:37.485+00	2014-09-06 10:23:37.485+00	\N	External Auditor	extern-audit	hubs
1	2014-09-06 10:23:37.485+00	2014-09-06 10:23:37.485+00	\N	Superuser	god	dashboard
7	2017-08-31 22:19:50.78+00	2017-08-31 22:21:37.178+00	\N	PBC	pbc	files.permanent
\.


--
-- Data for Name: root_cause_types; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.root_cause_types (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.sessions (id, token, expires_at, user_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: settings; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.settings (id, created_at, updated_at, key, value, label, is_user_setting, description) FROM stdin;
\.


--
-- Data for Name: sheet_versions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.sheet_versions (id, sheet_id, meta, raw_data, created_at, updated_at, deleted_at, modified_by_user_id) FROM stdin;
\.


--
-- Data for Name: sheets; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.sheets (id, meta, raw_data, lock_user_id, locked_at, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: significance_options; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.significance_options (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
1	2014-09-06 10:23:39.827+00	2014-09-06 10:23:39.827+00	\N	Key	0
2	2014-09-08 22:54:44.521+00	2014-09-08 22:54:44.521+00	\N	Non-Key	0
\.


--
-- Data for Name: sod_controls; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.sod_controls (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
1	2015-06-12 00:13:49.446+00	2015-06-12 00:13:49.446+00	\N	Pass	0
2	2015-06-12 00:13:49.446+00	2015-06-12 00:13:49.446+00	\N	No Pass	0
3	2015-06-12 00:13:49.446+00	2015-06-12 00:13:49.446+00	\N	N/A	0
\.


--
-- Data for Name: sox_impacts; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.sox_impacts (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
\.


--
-- Data for Name: status_options; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.status_options (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
1	2014-09-06 10:23:40.585+00	2014-09-06 10:23:40.585+00	\N	Complete	1
2	2014-09-08 22:59:16.252+00	2014-09-08 22:59:17.759+00	\N	Under Review (R)	2
3	2014-09-08 22:59:25.832+00	2014-09-08 22:59:25.832+00	\N	Reviewed	4
4	2014-09-16 01:08:21.201+00	2014-09-16 01:08:21.201+00	\N	Open	0
5	2016-07-21 18:38:35.856+00	2016-07-21 18:38:35.856+00	\N	Not in Scope	5
6	2016-07-21 18:38:37.136+00	2016-07-21 18:38:37.136+00	\N	Under Review (T)	3
7	2017-10-12 19:01:06.326926+00	\N	\N	Under Review (R2)	7
\.


--
-- Data for Name: subprocesses; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.subprocesses (id, created_at, updated_at, deleted_at, uid, name, process_id) FROM stdin;
\.


--
-- Data for Name: subprocesses_data; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.subprocesses_data (id, created_at, updated_at, deleted_at, file, subprocess_id, processes_datum_id) FROM stdin;
\.


--
-- Data for Name: survey_responses; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.survey_responses (id, survey_id, task_item_id, status, meta_config, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: surveys; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.surveys (id, name, meta_config, created_at, updated_at, deleted_at, task_title, type, status, task_category_id, is_archived) FROM stdin;
\.


--
-- Data for Name: sys_op_logs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.sys_op_logs (id, user_id, type, status, level, data, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: task_categories; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.task_categories (id, created_at, updated_at, deleted_at, name, sort_order, meta_config, color, short_name) FROM stdin;
1	2018-05-22 18:38:36.846+00	2018-05-22 18:38:36.846+00	\N	Control Certification	1	\N	\N	Control Certification
2	2018-05-22 18:38:36.846+00	2018-05-22 18:38:36.846+00	\N	PBC Request	2	\N	\N	PBC Request
\.


--
-- Data for Name: task_group_owners; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.task_group_owners (id, created_at, updated_at, task_group_id, user_id) FROM stdin;
\.


--
-- Data for Name: task_groups; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.task_groups (id, created_at, updated_at, deleted_at, creator_user_id, task_category_id, archived_at, task_period_id, survey_id, started_at, status, title, allow_yes_to_all, test_section_id, email_project_start, email_preparer_digest, email_reviewer_digest, email_admin_digest, uid, reviewer_users, assignee_users, is_multi_reviewer, project_options, ops_audit_id, is_managed_change) FROM stdin;
\.


--
-- Data for Name: task_item_reviewers; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.task_item_reviewers (id, created_at, updated_at, deleted_at, sort_order, status, reviewer_user_id, task_item_id, certified_by_user_id, certified_date) FROM stdin;
\.


--
-- Data for Name: task_items; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.task_items (id, created_at, updated_at, deleted_at, is_acknowledge_prepared, due_date, submitted_date, certified_date, "order", task_group_id, assignee_user_id, submitted_by_user_id, certified_by_user_id, title, description, assignee_response, budget_hours, actual_hours, task_priority_id, task_period_id, reviewer_user_id, location_id, department_id, reference_notes, controls_datum_id, task_category_id, creator_user_id, meta_config, status, test_section_id, issue_id, opened_date, opened_by_user_id, closed_date, closed_by_user_id, ops_audit_id, ops_audit_item_id) FROM stdin;
\.


--
-- Data for Name: task_items_files; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.task_items_files (created_at, updated_at, deleted_at, task_item_id, file_id) FROM stdin;
\.


--
-- Data for Name: task_periods; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.task_periods (id, created_at, updated_at, deleted_at, name, sort_order, short_name, start_date, end_date) FROM stdin;
1	2016-07-21 18:38:36.846+00	2016-07-21 18:38:36.846+00	\N	January	1	January	\N	\N
6	2016-07-21 18:38:36.846+00	2016-07-21 18:38:36.846+00	\N	June	6	June	\N	\N
11	2016-07-21 18:38:36.846+00	2016-07-21 18:38:36.846+00	\N	November	11	November	\N	\N
2	2016-07-21 18:38:36.846+00	2016-07-21 18:38:36.846+00	\N	February	2	February	\N	\N
4	2016-07-21 18:38:36.846+00	2016-07-21 18:38:36.846+00	\N	April	4	April	\N	\N
7	2016-07-21 18:38:36.846+00	2016-07-21 18:38:36.846+00	\N	July	7	July	\N	\N
9	2016-07-21 18:38:36.846+00	2016-07-21 18:38:36.846+00	\N	September	9	September	\N	\N
12	2016-07-21 18:38:36.846+00	2016-07-21 18:38:36.846+00	\N	December	12	December	\N	\N
3	2016-07-21 18:38:36.846+00	2016-07-21 18:38:36.846+00	\N	March	3	March	\N	\N
5	2016-07-21 18:38:36.846+00	2016-07-21 18:38:36.846+00	\N	May	5	May	\N	\N
8	2016-07-21 18:38:36.846+00	2016-07-21 18:38:36.846+00	\N	August	8	August	\N	\N
10	2016-07-21 18:38:36.846+00	2016-07-21 18:38:36.846+00	\N	October	10	October	\N	\N
13	2018-05-22 18:38:36.846+00	2018-05-22 18:38:36.846+00	\N	Annual	13	Annual	\N	\N
14	2018-05-22 18:38:36.846+00	2018-05-22 18:38:36.846+00	\N	Walkthrough	14	Walkthrough	\N	\N
15	2018-05-22 18:38:36.846+00	2018-05-22 18:38:36.846+00	\N	Interim	15	Interim	\N	\N
16	2018-05-22 18:38:36.846+00	2018-05-22 18:38:36.846+00	\N	Rollforward	16	Rollforward	\N	\N
17	2018-05-22 18:38:36.846+00	2018-05-22 18:38:36.846+00	\N	Year-end	17	Year-end	\N	\N
18	2018-05-22 18:38:36.846+00	2018-05-22 18:38:36.846+00	\N	Q1	18	Q1	\N	\N
19	2018-05-22 18:38:36.846+00	2018-05-22 18:38:36.846+00	\N	Q2	19	Q2	\N	\N
20	2018-05-22 18:38:36.846+00	2018-05-22 18:38:36.846+00	\N	Q3	20	Q3	\N	\N
21	2018-05-22 18:38:36.846+00	2018-05-22 18:38:36.846+00	\N	Q4	21	Q4	\N	\N
\.


--
-- Data for Name: task_priorities; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.task_priorities (id, created_at, updated_at, deleted_at, name, sort_order, color) FROM stdin;
\.


--
-- Data for Name: team_users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.team_users (id, created_at, updated_at, deleted_at, user_id, team_id) FROM stdin;
\.


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.teams (id, name, created_at, updated_at, deleted_at, sort_order, uid) FROM stdin;
1	WorkStream Administrators	2018-05-15 18:38:36.825+00	\N	\N	0	TEAM-1
2	OpsAudit Administrators	2018-05-15 18:38:36.825+00	\N	\N	0	TEAM-2
\.


--
-- Data for Name: teams_owner_users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.teams_owner_users (id, created_at, updated_at, deleted_at, user_id, team_id) FROM stdin;
\.


--
-- Data for Name: test_comments; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.test_comments (id, created_at, updated_at, controls_datum_id, test_id, comment_user_id, subject, message) FROM stdin;
\.


--
-- Data for Name: test_custom_select1_options; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.test_custom_select1_options (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
\.


--
-- Data for Name: test_custom_select2_options; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.test_custom_select2_options (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
\.


--
-- Data for Name: test_custom_select3_options; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.test_custom_select3_options (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
\.


--
-- Data for Name: test_sections; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.test_sections (id, sort_order, created_at, updated_at, deleted_at, name, short_name, uid) FROM stdin;
3	3	2016-07-21 18:38:36.97+00	2016-07-21 18:38:36.97+00	\N	Test 2: Roll Forward	Test 2	T2
1	1	2016-07-21 18:38:36.97+00	2016-07-21 18:38:36.97+00	\N	Test 0: Walkthrough	Test 0	T0
2	2	2016-07-21 18:38:36.97+00	2016-07-21 18:38:36.97+00	\N	Test 1: Interim	Test 1	T1
\.


--
-- Data for Name: test_timings; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.test_timings (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
\.


--
-- Data for Name: test_types; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.test_types (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
1	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	Inspection	1
2	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	Observation	2
3	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	Reperformance	3
4	2015-04-02 22:25:45.063+00	2015-04-02 22:25:45.063+00	\N	Inquiry	4
\.


--
-- Data for Name: testing_strategies; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.testing_strategies (id, created_at, updated_at, deleted_at, name, sort_order) FROM stdin;
\.


--
-- Data for Name: tests; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.tests (id, created_at, updated_at, deleted_at, controls_datum_id, "order", name, sample_size, selections, tester_user_id, reviewer_user_id, start_date, end_date, results, test_sheet, notes, effectiveness_option_id, status_option_id, archived, archived_at, hours, due_date, budget_hours, percent_complete, test_period, entity_id, control_id, precision_level, mrc_evidence, sheet_id, is_inactive, complete_date, reviewed_date, review_notes_date, complete_by_user_id, reviewed_by_user_id, review_notes_by_user_id, test_section_id, procedures, sheet_file_id, reviewer_hours, reviewer_budget_hours, secondary_reviewer_user_id, population_size, test_pbc_request, test_pbc_request_additional, population_completeness, population_source, external_auditor_status_option_id, reviewer_due_date, open_date, under_review_t_date, under_review_r2_date, opened_by_user_id, under_review_t_by_user_id, under_review_r2_by_user_id, test_custom_select1_option_id, test_custom_select2_option_id, test_custom_select3_option_id, information_reliability, control_characteristics, exception_nature, sample_size_additional, number_exceptions, secondary_reviewer_due_date) FROM stdin;
\.


--
-- Data for Name: timesheet_entries; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.timesheet_entries (id, date, hours, user_id, timesheetable_type, timesheetable_id, timesheetable_meta, timesheet_project_id, comment, deleted_at, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: timesheet_projects; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.timesheet_projects (id, name, sort_order, deleted_at, created_at, updated_at, type) FROM stdin;
1	Default Project (Rename me)	0	\N	\N	\N	Control
1000	Control Timesheets (Default)	0	\N	2019-10-01 18:35:49.015471+00	2019-10-01 18:35:49.015471+00	Control
1999	OpsAudit Timesheets (Default)	0	\N	2019-10-01 18:35:49.031091+00	2019-10-01 18:35:49.031091+00	OpsAudit
\.


--
-- Data for Name: user_settings; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.user_settings (id, user_id, created_at, updated_at, setting_id, value) FROM stdin;
\.


--
-- Data for Name: user_stats; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.user_stats (id, created_at, updated_at, deleted_at, user_id, has_unread_comments, show_inbox_jewel, show_notification_jewel) FROM stdin;
1	\N	\N	\N	1	f	f	f
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.users (id, created_at, updated_at, deleted_at, first_name, last_name, email, password, salt, role_id, accepted_terms, last_login, last_password_change, last_ip_address, password_history, verified_ip_history, requires_password_change, icon_bg_color, icon_fg_color, competency_evaluation, user_stat_id, password_reset_token, password_reset_token_expires, auth_type, location_id, department_id, job_title, mfa_enabled, cell_phone, authy_id, employee_number, username, login_attempt, last_login_failed_attempt, first_login) FROM stdin;
1	2014-09-06 10:23:38.86+00	2017-10-12 19:01:20.441+00	\N	SOXHUB	ADMIN	ops@soxhub.com			1	t	\N	\N		\N	\N	\N	#34a853	#ffffff	\N	1	\N	\N	password	\N	\N	\N	f		\N	\N	SOXHUBADMIN	0	\N	2017-08-30 18:09:18.91+00
\.


--
-- Data for Name: versions_meta; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.versions_meta (id, version, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Name: SequelizeMeta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."SequelizeMeta_id_seq"', 94, true);


--
-- Name: aggregation_references_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.aggregation_references_id_seq', 1, false);


--
-- Name: allowed_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.allowed_roles_id_seq', 1, true);


--
-- Name: allowed_teams_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.allowed_teams_id_seq', 1, false);


--
-- Name: allowed_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.allowed_users_id_seq', 1, false);


--
-- Name: archives_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.archives_id_seq', 1, false);


--
-- Name: assertions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.assertions_id_seq', 1, false);


--
-- Name: attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.attachments_id_seq', 1, false);


--
-- Name: baseline_result_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.baseline_result_options_id_seq', 1, false);


--
-- Name: business_units_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.business_units_id_seq', 1, false);


--
-- Name: comment_references_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.comment_references_id_seq', 1, false);


--
-- Name: comment_unsubscribers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.comment_unsubscribers_id_seq', 1, false);


--
-- Name: comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.comments_id_seq', 1, false);


--
-- Name: comments_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.comments_roles_id_seq', 1, false);


--
-- Name: comments_teams_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.comments_teams_id_seq', 1, false);


--
-- Name: comments_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.comments_users_id_seq', 1, false);


--
-- Name: control_classifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.control_classifications_id_seq', 1, false);


--
-- Name: control_comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.control_comments_id_seq', 1, false);


--
-- Name: control_complexity_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.control_complexity_options_id_seq', 1, false);


--
-- Name: control_custom_multiselect1_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.control_custom_multiselect1_options_id_seq', 1, false);


--
-- Name: control_custom_multiselect2_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.control_custom_multiselect2_options_id_seq', 1, false);


--
-- Name: control_custom_multiselect3_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.control_custom_multiselect3_options_id_seq', 1, false);


--
-- Name: control_custom_multiselect4_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.control_custom_multiselect4_options_id_seq', 1, false);


--
-- Name: control_custom_select1_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.control_custom_select1_options_id_seq', 1, false);


--
-- Name: control_design_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.control_design_options_id_seq', 2, true);


--
-- Name: control_frequencies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.control_frequencies_id_seq', 8, true);


--
-- Name: control_inherent_risk_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.control_inherent_risk_options_id_seq', 1, false);


--
-- Name: control_judgement_degree_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.control_judgement_degree_options_id_seq', 1, false);


--
-- Name: control_management_override_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.control_management_override_options_id_seq', 1, false);


--
-- Name: control_nature_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.control_nature_options_id_seq', 2, true);


--
-- Name: control_routine_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.control_routine_options_id_seq', 1, false);


--
-- Name: control_scopes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.control_scopes_id_seq', 1, false);


--
-- Name: control_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.control_types_id_seq', 3, true);


--
-- Name: controls_assertions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.controls_assertions_id_seq', 1, false);


--
-- Name: controls_data_additional_owners_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.controls_data_additional_owners_id_seq', 1, false);


--
-- Name: controls_data_archives_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.controls_data_archives_id_seq', 1, false);


--
-- Name: controls_data_audits_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.controls_data_audits_id_seq', 1, false);


--
-- Name: controls_data_business_process_owner_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.controls_data_business_process_owner_users_id_seq', 1, false);


--
-- Name: controls_data_comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.controls_data_comments_id_seq', 1, false);


--
-- Name: controls_data_control_custom_multiselect1_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.controls_data_control_custom_multiselect1_options_id_seq', 1, false);


--
-- Name: controls_data_control_custom_multiselect2_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.controls_data_control_custom_multiselect2_options_id_seq', 1, false);


--
-- Name: controls_data_control_custom_multiselect3_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.controls_data_control_custom_multiselect3_options_id_seq', 1, false);


--
-- Name: controls_data_control_custom_multiselect4_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.controls_data_control_custom_multiselect4_options_id_seq', 1, false);


--
-- Name: controls_data_coso_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.controls_data_coso_components_id_seq', 1, false);


--
-- Name: controls_data_coso_elements_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.controls_data_coso_elements_id_seq', 1, false);


--
-- Name: controls_data_coso_pofs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.controls_data_coso_pofs_id_seq', 1, false);


--
-- Name: controls_data_coso_principles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.controls_data_coso_principles_id_seq', 1, false);


--
-- Name: controls_data_deficiency_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.controls_data_deficiency_types_id_seq', 1, false);


--
-- Name: controls_data_finance_process_owner_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.controls_data_finance_process_owner_users_id_seq', 1, false);


--
-- Name: controls_data_financial_accounts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.controls_data_financial_accounts_id_seq', 1, false);


--
-- Name: controls_data_financial_applications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.controls_data_financial_applications_id_seq', 1, false);


--
-- Name: controls_data_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.controls_data_id_seq', 1, false);


--
-- Name: controls_data_issue_nature_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.controls_data_issue_nature_options_id_seq', 1, false);


--
-- Name: controls_data_narratives_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.controls_data_narratives_id_seq', 1, false);


--
-- Name: controls_data_pbc_owner_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.controls_data_pbc_owner_users_id_seq', 1, false);


--
-- Name: controls_data_pbc_status_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.controls_data_pbc_status_options_id_seq', 1, false);


--
-- Name: controls_data_test_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.controls_data_test_types_id_seq', 1, false);


--
-- Name: controls_data_testing_strategies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.controls_data_testing_strategies_id_seq', 1, false);


--
-- Name: controls_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.controls_id_seq', 1, false);


--
-- Name: controls_risks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.controls_risks_id_seq', 1, false);


--
-- Name: coso_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.coso_components_id_seq', 1, false);


--
-- Name: coso_elements_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.coso_elements_id_seq', 1, true);


--
-- Name: coso_pofs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.coso_pofs_id_seq', 87, true);


--
-- Name: coso_principles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.coso_principles_id_seq', 17, true);


--
-- Name: cron_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.cron_options_id_seq', 10, true);


--
-- Name: crons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.crons_id_seq', 1, false);


--
-- Name: deficiency_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.deficiency_types_id_seq', 3, true);


--
-- Name: deficiency_types_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.deficiency_types_id_seq1', 1, false);


--
-- Name: departments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.departments_id_seq', 1, false);


--
-- Name: document_diffs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.document_diffs_id_seq', 1, false);


--
-- Name: document_versions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.document_versions_id_seq', 1, false);


--
-- Name: documents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.documents_id_seq', 1, false);


--
-- Name: effectiveness_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.effectiveness_options_id_seq', 3, true);


--
-- Name: email_logs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.email_logs_id_seq', 1, false);


--
-- Name: entities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.entities_id_seq', 1, false);


--
-- Name: exclude_risks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.exclude_risks_id_seq', 1, false);


--
-- Name: external_auditor_status_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.external_auditor_status_options_id_seq', 1, false);


--
-- Name: file_versions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.file_versions_id_seq', 1, false);


--
-- Name: files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.files_id_seq', 1, false);


--
-- Name: financial_accounts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.financial_accounts_id_seq', 1, false);


--
-- Name: financial_applications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.financial_applications_id_seq', 1, false);


--
-- Name: form_templates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.form_templates_id_seq', 1000, true);


--
-- Name: fraud_controls_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.fraud_controls_id_seq', 3, true);


--
-- Name: global_attributes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.global_attributes_id_seq', 1, false);


--
-- Name: global_audits_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.global_audits_id_seq', 1, false);


--
-- Name: global_file_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.global_file_categories_id_seq', 151, true);


--
-- Name: global_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.global_permissions_id_seq', 1, false);


--
-- Name: impacted_sections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.impacted_sections_id_seq', 1, false);


--
-- Name: import_records_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.import_records_id_seq', 1, false);


--
-- Name: internal_control_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.internal_control_components_id_seq', 1, false);


--
-- Name: issue_custom_multiselect1_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.issue_custom_multiselect1_options_id_seq', 1, false);


--
-- Name: issue_custom_multiselect2_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.issue_custom_multiselect2_options_id_seq', 1, false);


--
-- Name: issue_custom_select1_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.issue_custom_select1_options_id_seq', 1, false);


--
-- Name: issue_custom_select2_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.issue_custom_select2_options_id_seq', 1, false);


--
-- Name: issue_idents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.issue_idents_id_seq', 3, true);


--
-- Name: issue_locations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.issue_locations_id_seq', 1, false);


--
-- Name: issue_nature_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.issue_nature_options_id_seq', 1, false);


--
-- Name: issue_ratings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.issue_ratings_id_seq', 1, false);


--
-- Name: issue_remediation_custom_select1_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.issue_remediation_custom_select1_options_id_seq', 1, false);


--
-- Name: issue_remediation_custom_select2_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.issue_remediation_custom_select2_options_id_seq', 1, false);


--
-- Name: issues_business_process_owner_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.issues_business_process_owner_users_id_seq', 1, false);


--
-- Name: issues_deficiency_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.issues_deficiency_types_id_seq', 1, false);


--
-- Name: issues_finance_process_owner_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.issues_finance_process_owner_users_id_seq', 1, false);


--
-- Name: issues_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.issues_id_seq', 1, false);


--
-- Name: issues_impacted_sections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.issues_impacted_sections_id_seq', 1, false);


--
-- Name: issues_issue_custom_multiselect1_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.issues_issue_custom_multiselect1_options_id_seq', 1, false);


--
-- Name: issues_issue_custom_multiselect2_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.issues_issue_custom_multiselect2_options_id_seq', 1, false);


--
-- Name: issues_issue_locations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.issues_issue_locations_id_seq', 1, false);


--
-- Name: issues_issue_nature_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.issues_issue_nature_options_id_seq', 1, false);


--
-- Name: issues_root_cause_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.issues_root_cause_types_id_seq', 1, false);


--
-- Name: issues_subscriber_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.issues_subscriber_users_id_seq', 1, false);


--
-- Name: likelihoods_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.likelihoods_id_seq', 2, true);


--
-- Name: locks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.locks_id_seq', 1, false);


--
-- Name: login_histories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.login_histories_id_seq', 1, false);


--
-- Name: magnitudes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.magnitudes_id_seq', 3, true);


--
-- Name: managed_changes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.managed_changes_id_seq', 1, false);


--
-- Name: mrc_controls_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mrc_controls_id_seq', 3, true);


--
-- Name: narrative_owners_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.narrative_owners_id_seq', 1, false);


--
-- Name: narrative_sections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.narrative_sections_id_seq', 1, false);


--
-- Name: narratives_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.narratives_id_seq', 1, false);


--
-- Name: notification_messages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.notification_messages_id_seq', 1, false);


--
-- Name: ops_audit_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.ops_audit_categories_id_seq', 1, false);


--
-- Name: ops_audit_category_sections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.ops_audit_category_sections_id_seq', 1, false);


--
-- Name: ops_audit_custom_multiselect1_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.ops_audit_custom_multiselect1_options_id_seq', 1, false);


--
-- Name: ops_audit_custom_multiselect2_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.ops_audit_custom_multiselect2_options_id_seq', 1, false);


--
-- Name: ops_audit_custom_select1_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.ops_audit_custom_select1_options_id_seq', 1, false);


--
-- Name: ops_audit_custom_select2_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.ops_audit_custom_select2_options_id_seq', 1, false);


--
-- Name: ops_audit_custom_select3_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.ops_audit_custom_select3_options_id_seq', 1, false);


--
-- Name: ops_audit_items_business_owner_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.ops_audit_items_business_owner_users_id_seq', 1, false);


--
-- Name: ops_audit_items_controls_data_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.ops_audit_items_controls_data_id_seq', 1, false);


--
-- Name: ops_audit_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.ops_audit_items_id_seq', 1, false);


--
-- Name: ops_audit_items_ops_custom_multiselect1_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.ops_audit_items_ops_custom_multiselect1_options_id_seq', 1, false);


--
-- Name: ops_audit_locations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.ops_audit_locations_id_seq', 1, false);


--
-- Name: ops_audit_opinions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.ops_audit_opinions_id_seq', 1, false);


--
-- Name: ops_audit_owner_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.ops_audit_owner_users_id_seq', 1, false);


--
-- Name: ops_audit_periods_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.ops_audit_periods_id_seq', 1, false);


--
-- Name: ops_audit_result_custom_select1_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.ops_audit_result_custom_select1_options_id_seq', 1, false);


--
-- Name: ops_audit_result_custom_select2_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.ops_audit_result_custom_select2_options_id_seq', 1, false);


--
-- Name: ops_audit_result_custom_select3_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.ops_audit_result_custom_select3_options_id_seq', 1, false);


--
-- Name: ops_audit_result_custom_select4_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.ops_audit_result_custom_select4_options_id_seq', 1, false);


--
-- Name: ops_audit_risk_levels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.ops_audit_risk_levels_id_seq', 1, false);


--
-- Name: ops_audit_section_instances_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.ops_audit_section_instances_id_seq', 1, false);


--
-- Name: ops_audit_sections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.ops_audit_sections_id_seq', 4, true);


--
-- Name: ops_audit_subsections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.ops_audit_subsections_id_seq', 1, false);


--
-- Name: ops_audits_business_process_owner_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.ops_audits_business_process_owner_users_id_seq', 1, false);


--
-- Name: ops_audits_business_units_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.ops_audits_business_units_id_seq', 1, false);


--
-- Name: ops_audits_executive_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.ops_audits_executive_users_id_seq', 1, false);


--
-- Name: ops_audits_finance_process_owner_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.ops_audits_finance_process_owner_users_id_seq', 1, false);


--
-- Name: ops_audits_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.ops_audits_id_seq', 1, false);


--
-- Name: ops_audits_officer_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.ops_audits_officer_users_id_seq', 1, false);


--
-- Name: ops_audits_ops_audit_custom_multiselect1_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.ops_audits_ops_audit_custom_multiselect1_options_id_seq', 1, false);


--
-- Name: ops_audits_ops_audit_custom_multiselect2_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.ops_audits_ops_audit_custom_multiselect2_options_id_seq', 1, false);


--
-- Name: ops_audits_ops_audit_locations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.ops_audits_ops_audit_locations_id_seq', 1, false);


--
-- Name: ops_audits_supervisor_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.ops_audits_supervisor_users_id_seq', 1, false);


--
-- Name: ops_custom_multiselect1_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.ops_custom_multiselect1_options_id_seq', 1, false);


--
-- Name: ops_custom_select1_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.ops_custom_select1_options_id_seq', 1, false);


--
-- Name: ops_custom_select2_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.ops_custom_select2_options_id_seq', 1, false);


--
-- Name: ops_ra_process_entities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.ops_ra_process_entities_id_seq', 1, false);


--
-- Name: ops_ra_values_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.ops_ra_values_id_seq', 1, false);


--
-- Name: ops_ratings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.ops_ratings_id_seq', 1, false);


--
-- Name: ops_risk_assessments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.ops_risk_assessments_id_seq', 1, false);


--
-- Name: ops_risk_criteria_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.ops_risk_criteria_id_seq', 10, true);


--
-- Name: ops_risk_levels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.ops_risk_levels_id_seq', 1, false);


--
-- Name: ops_risk_values_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.ops_risk_values_id_seq', 3, true);


--
-- Name: password_histories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.password_histories_id_seq', 1, false);


--
-- Name: pbc_status_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pbc_status_options_id_seq', 1, false);


--
-- Name: pbix_files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pbix_files_id_seq', 2000, true);


--
-- Name: powerbi_report_instances_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.powerbi_report_instances_id_seq', 1, false);


--
-- Name: powerbi_reports_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.powerbi_reports_id_seq', 1, false);


--
-- Name: process_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.process_types_id_seq', 2, true);


--
-- Name: processes_data_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.processes_data_id_seq', 1, false);


--
-- Name: processes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.processes_id_seq', 1, false);


--
-- Name: processes_process_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.processes_process_types_id_seq', 1, false);


--
-- Name: question_responses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.question_responses_id_seq', 1, false);


--
-- Name: questions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.questions_id_seq', 1, false);


--
-- Name: regions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.regions_id_seq', 3, false);


--
-- Name: reliance_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.reliance_options_id_seq', 1, false);


--
-- Name: reports_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.reports_id_seq', 1, false);


--
-- Name: risk_levels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.risk_levels_id_seq', 3, true);


--
-- Name: risks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.risks_id_seq', 1, false);


--
-- Name: role_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.role_permissions_id_seq', 1, false);


--
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.roles_id_seq', 7, true);


--
-- Name: root_cause_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.root_cause_types_id_seq', 1, false);


--
-- Name: sessions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.sessions_id_seq', 2, true);


--
-- Name: settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.settings_id_seq', 1, false);


--
-- Name: sheet_revisions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.sheet_revisions_id_seq', 1, false);


--
-- Name: sheets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.sheets_id_seq', 1, false);


--
-- Name: significance_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.significance_options_id_seq', 2, true);


--
-- Name: sod_controls_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.sod_controls_id_seq', 3, true);


--
-- Name: sox_impacts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.sox_impacts_id_seq', 1, false);


--
-- Name: status_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.status_options_id_seq', 7, true);


--
-- Name: subprocesses_data_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.subprocesses_data_id_seq', 1, false);


--
-- Name: subprocesses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.subprocesses_id_seq', 1, false);


--
-- Name: survey_responses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.survey_responses_id_seq', 1, false);


--
-- Name: surveys_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.surveys_id_seq', 1, false);


--
-- Name: sys_op_logs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.sys_op_logs_id_seq', 1, false);


--
-- Name: task_group_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.task_group_categories_id_seq', 2, true);


--
-- Name: task_group_locations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.task_group_locations_id_seq', 1, false);


--
-- Name: task_group_owners_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.task_group_owners_id_seq', 1, false);


--
-- Name: task_group_periods_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.task_group_periods_id_seq', 21, true);


--
-- Name: task_group_risk_levels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.task_group_risk_levels_id_seq', 3, true);


--
-- Name: task_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.task_groups_id_seq', 1, false);


--
-- Name: task_item_reviewers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.task_item_reviewers_id_seq', 1, false);


--
-- Name: task_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.task_items_id_seq', 1, false);


--
-- Name: team_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.team_users_id_seq', 1, false);


--
-- Name: teams_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.teams_id_seq', 3, false);


--
-- Name: teams_owner_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.teams_owner_users_id_seq', 1, false);


--
-- Name: test_comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.test_comments_id_seq', 1, false);


--
-- Name: test_custom_select1_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.test_custom_select1_options_id_seq', 1, false);


--
-- Name: test_custom_select2_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.test_custom_select2_options_id_seq', 1, false);


--
-- Name: test_custom_select3_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.test_custom_select3_options_id_seq', 1, false);


--
-- Name: test_sections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.test_sections_id_seq', 3, true);


--
-- Name: test_timings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.test_timings_id_seq', 1, false);


--
-- Name: test_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.test_types_id_seq', 4, true);


--
-- Name: testing_strategies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.testing_strategies_id_seq', 1, false);


--
-- Name: tests_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.tests_id_seq', 1, false);


--
-- Name: timesheet_entries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.timesheet_entries_id_seq', 1, false);


--
-- Name: timesheet_projects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.timesheet_projects_id_seq', 2000, true);


--
-- Name: user_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.user_settings_id_seq', 1, false);


--
-- Name: user_stats_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.user_stats_id_seq', 1, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.users_id_seq', 2, false);


--
-- Name: versions_meta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.versions_meta_id_seq', 1, false);


--
-- Name: SequelizeMetaBackup SequelizeMeta_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."SequelizeMetaBackup"
    ADD CONSTRAINT "SequelizeMeta_pkey" PRIMARY KEY (id);


--
-- Name: SequelizeMeta SequelizeMeta_pkey1; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."SequelizeMeta"
    ADD CONSTRAINT "SequelizeMeta_pkey1" PRIMARY KEY (name);


--
-- Name: aggregation_references aggregation_references_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.aggregation_references
    ADD CONSTRAINT aggregation_references_pkey PRIMARY KEY (id);


--
-- Name: allowed_roles allowed_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.allowed_roles
    ADD CONSTRAINT allowed_roles_pkey PRIMARY KEY (id);


--
-- Name: allowed_teams allowed_teams_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.allowed_teams
    ADD CONSTRAINT allowed_teams_pkey PRIMARY KEY (id);


--
-- Name: allowed_users allowed_users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.allowed_users
    ADD CONSTRAINT allowed_users_pkey PRIMARY KEY (id);


--
-- Name: archives archives_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.archives
    ADD CONSTRAINT archives_pkey PRIMARY KEY (id);


--
-- Name: assertions assertions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.assertions
    ADD CONSTRAINT assertions_pkey PRIMARY KEY (id);


--
-- Name: attachments attachments_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.attachments
    ADD CONSTRAINT attachments_pkey PRIMARY KEY (id);


--
-- Name: baseline_result_options baseline_result_options_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.baseline_result_options
    ADD CONSTRAINT baseline_result_options_pkey PRIMARY KEY (id);


--
-- Name: business_units business_units_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.business_units
    ADD CONSTRAINT business_units_pkey PRIMARY KEY (id);


--
-- Name: comment_references comment_references_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comment_references
    ADD CONSTRAINT comment_references_pkey PRIMARY KEY (id);


--
-- Name: comment_unsubscribers comment_unsubscribers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comment_unsubscribers
    ADD CONSTRAINT comment_unsubscribers_pkey PRIMARY KEY (id);


--
-- Name: comments comments_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);


--
-- Name: comments_roles comments_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comments_roles
    ADD CONSTRAINT comments_roles_pkey PRIMARY KEY (id);


--
-- Name: comments_teams comments_teams_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comments_teams
    ADD CONSTRAINT comments_teams_pkey PRIMARY KEY (id);


--
-- Name: comments_users comments_users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comments_users
    ADD CONSTRAINT comments_users_pkey PRIMARY KEY (id);


--
-- Name: control_classifications control_classifications_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.control_classifications
    ADD CONSTRAINT control_classifications_pkey PRIMARY KEY (id);


--
-- Name: control_comments control_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.control_comments
    ADD CONSTRAINT control_comments_pkey PRIMARY KEY (id);


--
-- Name: control_complexity_options control_complexity_options_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.control_complexity_options
    ADD CONSTRAINT control_complexity_options_pkey PRIMARY KEY (id);


--
-- Name: control_custom_multiselect1_options control_custom_multiselect1_options_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.control_custom_multiselect1_options
    ADD CONSTRAINT control_custom_multiselect1_options_pkey PRIMARY KEY (id);


--
-- Name: control_custom_multiselect2_options control_custom_multiselect2_options_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.control_custom_multiselect2_options
    ADD CONSTRAINT control_custom_multiselect2_options_pkey PRIMARY KEY (id);


--
-- Name: control_custom_multiselect3_options control_custom_multiselect3_options_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.control_custom_multiselect3_options
    ADD CONSTRAINT control_custom_multiselect3_options_pkey PRIMARY KEY (id);


--
-- Name: control_custom_multiselect4_options control_custom_multiselect4_options_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.control_custom_multiselect4_options
    ADD CONSTRAINT control_custom_multiselect4_options_pkey PRIMARY KEY (id);


--
-- Name: control_custom_select1_options control_custom_select1_options_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.control_custom_select1_options
    ADD CONSTRAINT control_custom_select1_options_pkey PRIMARY KEY (id);


--
-- Name: control_design_options control_design_options_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.control_design_options
    ADD CONSTRAINT control_design_options_pkey PRIMARY KEY (id);


--
-- Name: control_frequencies control_frequencies_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.control_frequencies
    ADD CONSTRAINT control_frequencies_pkey PRIMARY KEY (id);


--
-- Name: control_inherent_risk_options control_inherent_risk_options_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.control_inherent_risk_options
    ADD CONSTRAINT control_inherent_risk_options_pkey PRIMARY KEY (id);


--
-- Name: control_judgement_degree_options control_judgement_degree_options_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.control_judgement_degree_options
    ADD CONSTRAINT control_judgement_degree_options_pkey PRIMARY KEY (id);


--
-- Name: control_management_override_options control_management_override_options_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.control_management_override_options
    ADD CONSTRAINT control_management_override_options_pkey PRIMARY KEY (id);


--
-- Name: control_nature_options control_nature_options_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.control_nature_options
    ADD CONSTRAINT control_nature_options_pkey PRIMARY KEY (id);


--
-- Name: control_routine_options control_routine_options_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.control_routine_options
    ADD CONSTRAINT control_routine_options_pkey PRIMARY KEY (id);


--
-- Name: control_scopes control_scopes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.control_scopes
    ADD CONSTRAINT control_scopes_pkey PRIMARY KEY (id);


--
-- Name: control_types control_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.control_types
    ADD CONSTRAINT control_types_pkey PRIMARY KEY (id);


--
-- Name: controls_assertions controls_assertions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_assertions
    ADD CONSTRAINT controls_assertions_pkey PRIMARY KEY (id);


--
-- Name: controls_data_additional_owners controls_data_additional_owners_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_additional_owners
    ADD CONSTRAINT controls_data_additional_owners_pkey PRIMARY KEY (id);


--
-- Name: controls_data_archives controls_data_archives_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_archives
    ADD CONSTRAINT controls_data_archives_pkey PRIMARY KEY (id);


--
-- Name: controls_data_audits controls_data_audits_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_audits
    ADD CONSTRAINT controls_data_audits_pkey PRIMARY KEY (id);


--
-- Name: controls_data_business_process_owner_users controls_data_business_process_owner_users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_business_process_owner_users
    ADD CONSTRAINT controls_data_business_process_owner_users_pkey PRIMARY KEY (id);


--
-- Name: controls_data_comments controls_data_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_comments
    ADD CONSTRAINT controls_data_comments_pkey PRIMARY KEY (id);


--
-- Name: controls_data_control_custom_multiselect1_options controls_data_control_custom_multiselect1_options_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_control_custom_multiselect1_options
    ADD CONSTRAINT controls_data_control_custom_multiselect1_options_pkey PRIMARY KEY (id);


--
-- Name: controls_data_control_custom_multiselect2_options controls_data_control_custom_multiselect2_options_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_control_custom_multiselect2_options
    ADD CONSTRAINT controls_data_control_custom_multiselect2_options_pkey PRIMARY KEY (id);


--
-- Name: controls_data_control_custom_multiselect3_options controls_data_control_custom_multiselect3_options_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_control_custom_multiselect3_options
    ADD CONSTRAINT controls_data_control_custom_multiselect3_options_pkey PRIMARY KEY (id);


--
-- Name: controls_data_control_custom_multiselect4_options controls_data_control_custom_multiselect4_options_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_control_custom_multiselect4_options
    ADD CONSTRAINT controls_data_control_custom_multiselect4_options_pkey PRIMARY KEY (id);


--
-- Name: controls_data_coso_components controls_data_coso_components_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_coso_components
    ADD CONSTRAINT controls_data_coso_components_pkey PRIMARY KEY (id);


--
-- Name: controls_data_coso_elements controls_data_coso_elements_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_coso_elements
    ADD CONSTRAINT controls_data_coso_elements_pkey PRIMARY KEY (id);


--
-- Name: controls_data_coso_pofs controls_data_coso_pofs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_coso_pofs
    ADD CONSTRAINT controls_data_coso_pofs_pkey PRIMARY KEY (id);


--
-- Name: controls_data_coso_principles controls_data_coso_principles_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_coso_principles
    ADD CONSTRAINT controls_data_coso_principles_pkey PRIMARY KEY (id);


--
-- Name: controls_data_deficiency_types controls_data_deficiency_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_deficiency_types
    ADD CONSTRAINT controls_data_deficiency_types_pkey PRIMARY KEY (id);


--
-- Name: controls_data_finance_process_owner_users controls_data_finance_process_owner_users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_finance_process_owner_users
    ADD CONSTRAINT controls_data_finance_process_owner_users_pkey PRIMARY KEY (id);


--
-- Name: controls_data_financial_accounts controls_data_financial_accounts_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_financial_accounts
    ADD CONSTRAINT controls_data_financial_accounts_pkey PRIMARY KEY (id);


--
-- Name: controls_data_financial_applications controls_data_financial_applications_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_financial_applications
    ADD CONSTRAINT controls_data_financial_applications_pkey PRIMARY KEY (id);


--
-- Name: controls_data_issue_nature_options controls_data_issue_nature_options_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_issue_nature_options
    ADD CONSTRAINT controls_data_issue_nature_options_pkey PRIMARY KEY (id);


--
-- Name: controls_data_narratives controls_data_narratives_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_narratives
    ADD CONSTRAINT controls_data_narratives_pkey PRIMARY KEY (id);


--
-- Name: controls_data_pbc_owner_users controls_data_pbc_owner_users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_pbc_owner_users
    ADD CONSTRAINT controls_data_pbc_owner_users_pkey PRIMARY KEY (id);


--
-- Name: controls_data_pbc_status_options controls_data_pbc_status_options_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_pbc_status_options
    ADD CONSTRAINT controls_data_pbc_status_options_pkey PRIMARY KEY (id);


--
-- Name: controls_data controls_data_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data
    ADD CONSTRAINT controls_data_pkey PRIMARY KEY (id);


--
-- Name: controls_data_test_types controls_data_test_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_test_types
    ADD CONSTRAINT controls_data_test_types_pkey PRIMARY KEY (id);


--
-- Name: controls_data_testing_strategies controls_data_testing_strategies_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_testing_strategies
    ADD CONSTRAINT controls_data_testing_strategies_pkey PRIMARY KEY (id);


--
-- Name: controls controls_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls
    ADD CONSTRAINT controls_pkey PRIMARY KEY (id);


--
-- Name: controls_risks controls_risks_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_risks
    ADD CONSTRAINT controls_risks_pkey PRIMARY KEY (id);


--
-- Name: coso_components coso_components_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.coso_components
    ADD CONSTRAINT coso_components_pkey PRIMARY KEY (id);


--
-- Name: coso_elements coso_elements_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.coso_elements
    ADD CONSTRAINT coso_elements_pkey PRIMARY KEY (id);


--
-- Name: coso_pofs coso_pofs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.coso_pofs
    ADD CONSTRAINT coso_pofs_pkey PRIMARY KEY (id);


--
-- Name: coso_principles coso_principles_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.coso_principles
    ADD CONSTRAINT coso_principles_pkey PRIMARY KEY (id);


--
-- Name: cron_options cron_options_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cron_options
    ADD CONSTRAINT cron_options_pkey PRIMARY KEY (id);


--
-- Name: crons crons_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.crons
    ADD CONSTRAINT crons_pkey PRIMARY KEY (id);


--
-- Name: deficiency_levels deficiency_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.deficiency_levels
    ADD CONSTRAINT deficiency_types_pkey PRIMARY KEY (id);


--
-- Name: deficiency_types deficiency_types_pkey1; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.deficiency_types
    ADD CONSTRAINT deficiency_types_pkey1 PRIMARY KEY (id);


--
-- Name: departments departments_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (id);


--
-- Name: document_diffs document_diffs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.document_diffs
    ADD CONSTRAINT document_diffs_pkey PRIMARY KEY (id);


--
-- Name: document_versions document_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.document_versions
    ADD CONSTRAINT document_versions_pkey PRIMARY KEY (id);


--
-- Name: documents documents_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.documents
    ADD CONSTRAINT documents_pkey PRIMARY KEY (id);


--
-- Name: effectiveness_options effectiveness_options_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.effectiveness_options
    ADD CONSTRAINT effectiveness_options_pkey PRIMARY KEY (id);


--
-- Name: email_logs email_logs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.email_logs
    ADD CONSTRAINT email_logs_pkey PRIMARY KEY (id);


--
-- Name: entities entities_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.entities
    ADD CONSTRAINT entities_pkey PRIMARY KEY (id);


--
-- Name: exclude_risks exclude_risks_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.exclude_risks
    ADD CONSTRAINT exclude_risks_pkey PRIMARY KEY (id);


--
-- Name: external_auditor_status_options external_auditor_status_options_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.external_auditor_status_options
    ADD CONSTRAINT external_auditor_status_options_pkey PRIMARY KEY (id);


--
-- Name: file_versions file_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.file_versions
    ADD CONSTRAINT file_versions_pkey PRIMARY KEY (id);


--
-- Name: files files_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);


--
-- Name: financial_accounts financial_accounts_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.financial_accounts
    ADD CONSTRAINT financial_accounts_pkey PRIMARY KEY (id);


--
-- Name: financial_applications financial_applications_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.financial_applications
    ADD CONSTRAINT financial_applications_pkey PRIMARY KEY (id);


--
-- Name: form_templates form_templates_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.form_templates
    ADD CONSTRAINT form_templates_pkey PRIMARY KEY (id);


--
-- Name: fraud_controls fraud_controls_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fraud_controls
    ADD CONSTRAINT fraud_controls_pkey PRIMARY KEY (id);


--
-- Name: global_attributes global_attributes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.global_attributes
    ADD CONSTRAINT global_attributes_pkey PRIMARY KEY (id);


--
-- Name: global_audits global_audits_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.global_audits
    ADD CONSTRAINT global_audits_pkey PRIMARY KEY (id);


--
-- Name: global_file_categories global_file_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.global_file_categories
    ADD CONSTRAINT global_file_categories_pkey PRIMARY KEY (id);


--
-- Name: global_permissions global_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.global_permissions
    ADD CONSTRAINT global_permissions_pkey PRIMARY KEY (id);


--
-- Name: impacted_sections impacted_sections_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.impacted_sections
    ADD CONSTRAINT impacted_sections_pkey PRIMARY KEY (id);


--
-- Name: import_records import_records_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.import_records
    ADD CONSTRAINT import_records_pkey PRIMARY KEY (id);


--
-- Name: internal_control_components internal_control_components_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.internal_control_components
    ADD CONSTRAINT internal_control_components_pkey PRIMARY KEY (id);


--
-- Name: issue_custom_multiselect1_options issue_custom_multiselect1_options_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issue_custom_multiselect1_options
    ADD CONSTRAINT issue_custom_multiselect1_options_pkey PRIMARY KEY (id);


--
-- Name: issue_custom_multiselect2_options issue_custom_multiselect2_options_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issue_custom_multiselect2_options
    ADD CONSTRAINT issue_custom_multiselect2_options_pkey PRIMARY KEY (id);


--
-- Name: issue_custom_select1_options issue_custom_select1_options_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issue_custom_select1_options
    ADD CONSTRAINT issue_custom_select1_options_pkey PRIMARY KEY (id);


--
-- Name: issue_custom_select2_options issue_custom_select2_options_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issue_custom_select2_options
    ADD CONSTRAINT issue_custom_select2_options_pkey PRIMARY KEY (id);


--
-- Name: issue_idents issue_idents_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issue_idents
    ADD CONSTRAINT issue_idents_pkey PRIMARY KEY (id);


--
-- Name: issue_locations issue_locations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issue_locations
    ADD CONSTRAINT issue_locations_pkey PRIMARY KEY (id);


--
-- Name: issue_nature_options issue_nature_options_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issue_nature_options
    ADD CONSTRAINT issue_nature_options_pkey PRIMARY KEY (id);


--
-- Name: issue_ratings issue_ratings_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issue_ratings
    ADD CONSTRAINT issue_ratings_pkey PRIMARY KEY (id);


--
-- Name: issue_remediation_custom_select1_options issue_remediation_custom_select1_options_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issue_remediation_custom_select1_options
    ADD CONSTRAINT issue_remediation_custom_select1_options_pkey PRIMARY KEY (id);


--
-- Name: issue_remediation_custom_select2_options issue_remediation_custom_select2_options_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issue_remediation_custom_select2_options
    ADD CONSTRAINT issue_remediation_custom_select2_options_pkey PRIMARY KEY (id);


--
-- Name: issues_business_process_owner_users issues_business_process_owner_users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues_business_process_owner_users
    ADD CONSTRAINT issues_business_process_owner_users_pkey PRIMARY KEY (id);


--
-- Name: issues_deficiency_types issues_deficiency_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues_deficiency_types
    ADD CONSTRAINT issues_deficiency_types_pkey PRIMARY KEY (id);


--
-- Name: issues_finance_process_owner_users issues_finance_process_owner_users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues_finance_process_owner_users
    ADD CONSTRAINT issues_finance_process_owner_users_pkey PRIMARY KEY (id);


--
-- Name: issues_impacted_sections issues_impacted_sections_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues_impacted_sections
    ADD CONSTRAINT issues_impacted_sections_pkey PRIMARY KEY (id);


--
-- Name: issues_issue_custom_multiselect1_options issues_issue_custom_multiselect1_options_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues_issue_custom_multiselect1_options
    ADD CONSTRAINT issues_issue_custom_multiselect1_options_pkey PRIMARY KEY (id);


--
-- Name: issues_issue_custom_multiselect2_options issues_issue_custom_multiselect2_options_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues_issue_custom_multiselect2_options
    ADD CONSTRAINT issues_issue_custom_multiselect2_options_pkey PRIMARY KEY (id);


--
-- Name: issues_issue_locations issues_issue_locations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues_issue_locations
    ADD CONSTRAINT issues_issue_locations_pkey PRIMARY KEY (id);


--
-- Name: issues_issue_nature_options issues_issue_nature_options_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues_issue_nature_options
    ADD CONSTRAINT issues_issue_nature_options_pkey PRIMARY KEY (id);


--
-- Name: issues issues_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues
    ADD CONSTRAINT issues_pkey PRIMARY KEY (id);


--
-- Name: issues_root_cause_types issues_root_cause_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues_root_cause_types
    ADD CONSTRAINT issues_root_cause_types_pkey PRIMARY KEY (id);


--
-- Name: issues_subscriber_users issues_subscriber_users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues_subscriber_users
    ADD CONSTRAINT issues_subscriber_users_pkey PRIMARY KEY (id);


--
-- Name: likelihoods likelihoods_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.likelihoods
    ADD CONSTRAINT likelihoods_pkey PRIMARY KEY (id);


--
-- Name: locks locks_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.locks
    ADD CONSTRAINT locks_pkey PRIMARY KEY (id);


--
-- Name: login_histories login_histories_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.login_histories
    ADD CONSTRAINT login_histories_pkey PRIMARY KEY (id);


--
-- Name: magnitudes magnitudes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.magnitudes
    ADD CONSTRAINT magnitudes_pkey PRIMARY KEY (id);


--
-- Name: managed_changes managed_changes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.managed_changes
    ADD CONSTRAINT managed_changes_pkey PRIMARY KEY (id);


--
-- Name: mrc_controls mrc_controls_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mrc_controls
    ADD CONSTRAINT mrc_controls_pkey PRIMARY KEY (id);


--
-- Name: narrative_owners narrative_owners_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.narrative_owners
    ADD CONSTRAINT narrative_owners_pkey PRIMARY KEY (id);


--
-- Name: narrative_sections narrative_sections_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.narrative_sections
    ADD CONSTRAINT narrative_sections_pkey PRIMARY KEY (id);


--
-- Name: narratives narratives_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.narratives
    ADD CONSTRAINT narratives_pkey PRIMARY KEY (id);


--
-- Name: notification_messages notification_messages_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.notification_messages
    ADD CONSTRAINT notification_messages_pkey PRIMARY KEY (id);


--
-- Name: ops_audit_categories ops_audit_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_categories
    ADD CONSTRAINT ops_audit_categories_pkey PRIMARY KEY (id);


--
-- Name: ops_audit_category_sections ops_audit_category_sections_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_category_sections
    ADD CONSTRAINT ops_audit_category_sections_pkey PRIMARY KEY (id);


--
-- Name: ops_audit_custom_multiselect1_options ops_audit_custom_multiselect1_options_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_custom_multiselect1_options
    ADD CONSTRAINT ops_audit_custom_multiselect1_options_pkey PRIMARY KEY (id);


--
-- Name: ops_audit_custom_multiselect2_options ops_audit_custom_multiselect2_options_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_custom_multiselect2_options
    ADD CONSTRAINT ops_audit_custom_multiselect2_options_pkey PRIMARY KEY (id);


--
-- Name: ops_audit_custom_select1_options ops_audit_custom_select1_options_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_custom_select1_options
    ADD CONSTRAINT ops_audit_custom_select1_options_pkey PRIMARY KEY (id);


--
-- Name: ops_audit_custom_select2_options ops_audit_custom_select2_options_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_custom_select2_options
    ADD CONSTRAINT ops_audit_custom_select2_options_pkey PRIMARY KEY (id);


--
-- Name: ops_audit_custom_select3_options ops_audit_custom_select3_options_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_custom_select3_options
    ADD CONSTRAINT ops_audit_custom_select3_options_pkey PRIMARY KEY (id);


--
-- Name: ops_audit_items_business_owner_users ops_audit_items_business_owner_users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_items_business_owner_users
    ADD CONSTRAINT ops_audit_items_business_owner_users_pkey PRIMARY KEY (id);


--
-- Name: ops_audit_items_controls_data ops_audit_items_controls_data_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_items_controls_data
    ADD CONSTRAINT ops_audit_items_controls_data_pkey PRIMARY KEY (id);


--
-- Name: ops_audit_items_ops_custom_multiselect1_options ops_audit_items_ops_custom_multiselect1_options_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_items_ops_custom_multiselect1_options
    ADD CONSTRAINT ops_audit_items_ops_custom_multiselect1_options_pkey PRIMARY KEY (id);


--
-- Name: ops_audit_items ops_audit_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_items
    ADD CONSTRAINT ops_audit_items_pkey PRIMARY KEY (id);


--
-- Name: ops_audit_locations ops_audit_locations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_locations
    ADD CONSTRAINT ops_audit_locations_pkey PRIMARY KEY (id);


--
-- Name: ops_audit_opinions ops_audit_opinions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_opinions
    ADD CONSTRAINT ops_audit_opinions_pkey PRIMARY KEY (id);


--
-- Name: ops_audit_owner_users ops_audit_owner_users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_owner_users
    ADD CONSTRAINT ops_audit_owner_users_pkey PRIMARY KEY (id);


--
-- Name: ops_audit_periods ops_audit_periods_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_periods
    ADD CONSTRAINT ops_audit_periods_pkey PRIMARY KEY (id);


--
-- Name: ops_audit_result_custom_select1_options ops_audit_result_custom_select1_options_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_result_custom_select1_options
    ADD CONSTRAINT ops_audit_result_custom_select1_options_pkey PRIMARY KEY (id);


--
-- Name: ops_audit_result_custom_select2_options ops_audit_result_custom_select2_options_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_result_custom_select2_options
    ADD CONSTRAINT ops_audit_result_custom_select2_options_pkey PRIMARY KEY (id);


--
-- Name: ops_audit_result_custom_select3_options ops_audit_result_custom_select3_options_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_result_custom_select3_options
    ADD CONSTRAINT ops_audit_result_custom_select3_options_pkey PRIMARY KEY (id);


--
-- Name: ops_audit_result_custom_select4_options ops_audit_result_custom_select4_options_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_result_custom_select4_options
    ADD CONSTRAINT ops_audit_result_custom_select4_options_pkey PRIMARY KEY (id);


--
-- Name: ops_audit_risk_levels ops_audit_risk_levels_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_risk_levels
    ADD CONSTRAINT ops_audit_risk_levels_pkey PRIMARY KEY (id);


--
-- Name: ops_audit_section_instances ops_audit_section_instances_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_section_instances
    ADD CONSTRAINT ops_audit_section_instances_pkey PRIMARY KEY (id);


--
-- Name: ops_audit_sections ops_audit_sections_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_sections
    ADD CONSTRAINT ops_audit_sections_pkey PRIMARY KEY (id);


--
-- Name: ops_audit_subsections ops_audit_subsections_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_subsections
    ADD CONSTRAINT ops_audit_subsections_pkey PRIMARY KEY (id);


--
-- Name: ops_audits_business_process_owner_users ops_audits_business_process_owner_users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audits_business_process_owner_users
    ADD CONSTRAINT ops_audits_business_process_owner_users_pkey PRIMARY KEY (id);


--
-- Name: ops_audits_business_units ops_audits_business_units_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audits_business_units
    ADD CONSTRAINT ops_audits_business_units_pkey PRIMARY KEY (id);


--
-- Name: ops_audits_executive_users ops_audits_executive_users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audits_executive_users
    ADD CONSTRAINT ops_audits_executive_users_pkey PRIMARY KEY (id);


--
-- Name: ops_audits_finance_process_owner_users ops_audits_finance_process_owner_users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audits_finance_process_owner_users
    ADD CONSTRAINT ops_audits_finance_process_owner_users_pkey PRIMARY KEY (id);


--
-- Name: ops_audits_officer_users ops_audits_officer_users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audits_officer_users
    ADD CONSTRAINT ops_audits_officer_users_pkey PRIMARY KEY (id);


--
-- Name: ops_audits_ops_audit_custom_multiselect1_options ops_audits_ops_audit_custom_multiselect1_options_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audits_ops_audit_custom_multiselect1_options
    ADD CONSTRAINT ops_audits_ops_audit_custom_multiselect1_options_pkey PRIMARY KEY (id);


--
-- Name: ops_audits_ops_audit_custom_multiselect2_options ops_audits_ops_audit_custom_multiselect2_options_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audits_ops_audit_custom_multiselect2_options
    ADD CONSTRAINT ops_audits_ops_audit_custom_multiselect2_options_pkey PRIMARY KEY (id);


--
-- Name: ops_audits_ops_audit_locations ops_audits_ops_audit_locations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audits_ops_audit_locations
    ADD CONSTRAINT ops_audits_ops_audit_locations_pkey PRIMARY KEY (id);


--
-- Name: ops_audits ops_audits_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audits
    ADD CONSTRAINT ops_audits_pkey PRIMARY KEY (id);


--
-- Name: ops_audits_supervisor_users ops_audits_supervisor_users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audits_supervisor_users
    ADD CONSTRAINT ops_audits_supervisor_users_pkey PRIMARY KEY (id);


--
-- Name: ops_custom_multiselect1_options ops_custom_multiselect1_options_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_custom_multiselect1_options
    ADD CONSTRAINT ops_custom_multiselect1_options_pkey PRIMARY KEY (id);


--
-- Name: ops_custom_select1_options ops_custom_select1_options_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_custom_select1_options
    ADD CONSTRAINT ops_custom_select1_options_pkey PRIMARY KEY (id);


--
-- Name: ops_custom_select2_options ops_custom_select2_options_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_custom_select2_options
    ADD CONSTRAINT ops_custom_select2_options_pkey PRIMARY KEY (id);


--
-- Name: ops_ra_process_entities ops_ra_process_entities_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_ra_process_entities
    ADD CONSTRAINT ops_ra_process_entities_pkey PRIMARY KEY (id);


--
-- Name: ops_ra_values ops_ra_values_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_ra_values
    ADD CONSTRAINT ops_ra_values_pkey PRIMARY KEY (id);


--
-- Name: ops_ratings ops_ratings_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_ratings
    ADD CONSTRAINT ops_ratings_pkey PRIMARY KEY (id);


--
-- Name: ops_risk_assessments ops_risk_assessments_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_risk_assessments
    ADD CONSTRAINT ops_risk_assessments_pkey PRIMARY KEY (id);


--
-- Name: ops_risk_criteria ops_risk_criteria_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_risk_criteria
    ADD CONSTRAINT ops_risk_criteria_pkey PRIMARY KEY (id);


--
-- Name: ops_risk_levels ops_risk_levels_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_risk_levels
    ADD CONSTRAINT ops_risk_levels_pkey PRIMARY KEY (id);


--
-- Name: ops_risk_values ops_risk_values_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_risk_values
    ADD CONSTRAINT ops_risk_values_pkey PRIMARY KEY (id);


--
-- Name: password_histories password_histories_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.password_histories
    ADD CONSTRAINT password_histories_pkey PRIMARY KEY (id);


--
-- Name: pbc_status_options pbc_status_options_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pbc_status_options
    ADD CONSTRAINT pbc_status_options_pkey PRIMARY KEY (id);


--
-- Name: pbix_files pbix_files_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pbix_files
    ADD CONSTRAINT pbix_files_pkey PRIMARY KEY (id);


--
-- Name: powerbi_report_instances powerbi_report_instances_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.powerbi_report_instances
    ADD CONSTRAINT powerbi_report_instances_pkey PRIMARY KEY (id);


--
-- Name: powerbi_reports powerbi_reports_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.powerbi_reports
    ADD CONSTRAINT powerbi_reports_pkey PRIMARY KEY (id);


--
-- Name: process_types process_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.process_types
    ADD CONSTRAINT process_types_pkey PRIMARY KEY (id);


--
-- Name: processes_data processes_data_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.processes_data
    ADD CONSTRAINT processes_data_pkey PRIMARY KEY (id);


--
-- Name: processes_data processes_data_process_id_entity_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.processes_data
    ADD CONSTRAINT processes_data_process_id_entity_id_key UNIQUE (process_id, entity_id);


--
-- Name: processes processes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.processes
    ADD CONSTRAINT processes_pkey PRIMARY KEY (id);


--
-- Name: processes_process_types processes_process_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.processes_process_types
    ADD CONSTRAINT processes_process_types_pkey PRIMARY KEY (id);


--
-- Name: question_responses question_responses_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.question_responses
    ADD CONSTRAINT question_responses_pkey PRIMARY KEY (id);


--
-- Name: questions questions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.questions
    ADD CONSTRAINT questions_pkey PRIMARY KEY (id);


--
-- Name: regions regions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.regions
    ADD CONSTRAINT regions_pkey PRIMARY KEY (id);


--
-- Name: reliance_options reliance_options_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.reliance_options
    ADD CONSTRAINT reliance_options_pkey PRIMARY KEY (id);


--
-- Name: reports reports_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.reports
    ADD CONSTRAINT reports_pkey PRIMARY KEY (id);


--
-- Name: risk_levels risk_levels_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.risk_levels
    ADD CONSTRAINT risk_levels_pkey PRIMARY KEY (id);


--
-- Name: risks risks_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.risks
    ADD CONSTRAINT risks_pkey PRIMARY KEY (id);


--
-- Name: role_permissions role_permission_composite_unique_fk_role_id_global_permissions_; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.role_permissions
    ADD CONSTRAINT role_permission_composite_unique_fk_role_id_global_permissions_ UNIQUE (role_id, global_permission_id);


--
-- Name: role_permissions role_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.role_permissions
    ADD CONSTRAINT role_permissions_pkey PRIMARY KEY (id);


--
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- Name: root_cause_types root_cause_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.root_cause_types
    ADD CONSTRAINT root_cause_types_pkey PRIMARY KEY (id);


--
-- Name: sessions sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);


--
-- Name: sessions sessions_token_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_token_key UNIQUE (token);


--
-- Name: settings settings_key_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.settings
    ADD CONSTRAINT settings_key_key UNIQUE (key);


--
-- Name: settings settings_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.settings
    ADD CONSTRAINT settings_pkey PRIMARY KEY (id);


--
-- Name: sheet_versions sheet_revisions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sheet_versions
    ADD CONSTRAINT sheet_revisions_pkey PRIMARY KEY (id);


--
-- Name: sheets sheets_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sheets
    ADD CONSTRAINT sheets_pkey PRIMARY KEY (id);


--
-- Name: significance_options significance_options_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.significance_options
    ADD CONSTRAINT significance_options_pkey PRIMARY KEY (id);


--
-- Name: sod_controls sod_controls_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sod_controls
    ADD CONSTRAINT sod_controls_pkey PRIMARY KEY (id);


--
-- Name: sox_impacts sox_impacts_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sox_impacts
    ADD CONSTRAINT sox_impacts_pkey PRIMARY KEY (id);


--
-- Name: status_options status_options_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.status_options
    ADD CONSTRAINT status_options_pkey PRIMARY KEY (id);


--
-- Name: subprocesses_data subprocesses_data_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.subprocesses_data
    ADD CONSTRAINT subprocesses_data_pkey PRIMARY KEY (id);


--
-- Name: subprocesses_data subprocesses_data_subprocess_id_processes_datum_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.subprocesses_data
    ADD CONSTRAINT subprocesses_data_subprocess_id_processes_datum_id_key UNIQUE (subprocess_id, processes_datum_id);


--
-- Name: subprocesses subprocesses_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.subprocesses
    ADD CONSTRAINT subprocesses_pkey PRIMARY KEY (id);


--
-- Name: survey_responses survey_responses_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.survey_responses
    ADD CONSTRAINT survey_responses_pkey PRIMARY KEY (id);


--
-- Name: surveys surveys_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.surveys
    ADD CONSTRAINT surveys_pkey PRIMARY KEY (id);


--
-- Name: sys_op_logs sys_op_logs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sys_op_logs
    ADD CONSTRAINT sys_op_logs_pkey PRIMARY KEY (id);


--
-- Name: task_categories task_group_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.task_categories
    ADD CONSTRAINT task_group_categories_pkey PRIMARY KEY (id);


--
-- Name: locations task_group_locations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.locations
    ADD CONSTRAINT task_group_locations_pkey PRIMARY KEY (id);


--
-- Name: task_group_owners task_group_owners_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.task_group_owners
    ADD CONSTRAINT task_group_owners_pkey PRIMARY KEY (id);


--
-- Name: task_periods task_group_periods_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.task_periods
    ADD CONSTRAINT task_group_periods_pkey PRIMARY KEY (id);


--
-- Name: task_priorities task_group_risk_levels_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.task_priorities
    ADD CONSTRAINT task_group_risk_levels_pkey PRIMARY KEY (id);


--
-- Name: task_groups task_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.task_groups
    ADD CONSTRAINT task_groups_pkey PRIMARY KEY (id);


--
-- Name: task_item_reviewers task_item_reviewers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.task_item_reviewers
    ADD CONSTRAINT task_item_reviewers_pkey PRIMARY KEY (id);


--
-- Name: task_items task_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.task_items
    ADD CONSTRAINT task_items_pkey PRIMARY KEY (id);


--
-- Name: team_users team_users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.team_users
    ADD CONSTRAINT team_users_pkey PRIMARY KEY (id);


--
-- Name: teams_owner_users teams_owner_users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.teams_owner_users
    ADD CONSTRAINT teams_owner_users_pkey PRIMARY KEY (id);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (id);


--
-- Name: test_comments test_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.test_comments
    ADD CONSTRAINT test_comments_pkey PRIMARY KEY (id);


--
-- Name: test_custom_select1_options test_custom_select1_options_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.test_custom_select1_options
    ADD CONSTRAINT test_custom_select1_options_pkey PRIMARY KEY (id);


--
-- Name: test_custom_select2_options test_custom_select2_options_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.test_custom_select2_options
    ADD CONSTRAINT test_custom_select2_options_pkey PRIMARY KEY (id);


--
-- Name: test_custom_select3_options test_custom_select3_options_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.test_custom_select3_options
    ADD CONSTRAINT test_custom_select3_options_pkey PRIMARY KEY (id);


--
-- Name: test_sections test_sections_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.test_sections
    ADD CONSTRAINT test_sections_pkey PRIMARY KEY (id);


--
-- Name: test_timings test_timings_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.test_timings
    ADD CONSTRAINT test_timings_pkey PRIMARY KEY (id);


--
-- Name: test_types test_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.test_types
    ADD CONSTRAINT test_types_pkey PRIMARY KEY (id);


--
-- Name: testing_strategies testing_strategies_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.testing_strategies
    ADD CONSTRAINT testing_strategies_pkey PRIMARY KEY (id);


--
-- Name: tests tests_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tests
    ADD CONSTRAINT tests_pkey PRIMARY KEY (id);


--
-- Name: timesheet_entries timesheet_entries_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.timesheet_entries
    ADD CONSTRAINT timesheet_entries_pkey PRIMARY KEY (id);


--
-- Name: timesheet_projects timesheet_projects_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.timesheet_projects
    ADD CONSTRAINT timesheet_projects_pkey PRIMARY KEY (id);


--
-- Name: user_settings user_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_settings
    ADD CONSTRAINT user_settings_pkey PRIMARY KEY (id);


--
-- Name: user_stats user_stats_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_stats
    ADD CONSTRAINT user_stats_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: versions_meta versions_meta_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.versions_meta
    ADD CONSTRAINT versions_meta_pkey PRIMARY KEY (id);


--
-- Name: aggregation_references_name_created_at_updated_at_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX aggregation_references_name_created_at_updated_at_deleted_at ON public.aggregation_references USING btree (name, created_at, updated_at, deleted_at);


--
-- Name: allowed_roles_roleable_type_roleable_id_permission_role_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX allowed_roles_roleable_type_roleable_id_permission_role_id ON public.allowed_roles USING btree (roleable_type, roleable_id, permission, role_id);


--
-- Name: allowed_teams_teamable_type_teamable_id_permission_team_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX allowed_teams_teamable_type_teamable_id_permission_team_id ON public.allowed_teams USING btree (teamable_type, teamable_id, permission, team_id);


--
-- Name: allowed_users_userable_type_userable_id_permission_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX allowed_users_userable_type_userable_id_permission_user_id ON public.allowed_users USING btree (userable_type, userable_id, permission, user_id);


--
-- Name: archives_name_created_at_updated_at_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX archives_name_created_at_updated_at_deleted_at ON public.archives USING btree (name, created_at, updated_at, deleted_at);


--
-- Name: assertions_name_created_at_updated_at_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX assertions_name_created_at_updated_at_deleted_at ON public.assertions USING btree (name, created_at, updated_at, deleted_at);


--
-- Name: attachments_attachable_type_attachable_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX attachments_attachable_type_attachable_id ON public.attachments USING btree (attachable_type, attachable_id);


--
-- Name: baseline_result_options_name_sort_order; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX baseline_result_options_name_sort_order ON public.baseline_result_options USING btree (name, sort_order);


--
-- Name: comment_references_comment_id_controls_datum_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX comment_references_comment_id_controls_datum_id ON public.comment_references USING btree (comment_id, controls_datum_id);


--
-- Name: comment_references_controls_datum_id_comment_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX comment_references_controls_datum_id_comment_id ON public.comment_references USING btree (controls_datum_id, comment_id);


--
-- Name: comments_commentable_type_commentable_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX comments_commentable_type_commentable_id ON public.comments USING btree (commentable_type, commentable_id);


--
-- Name: comments_id_status; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX comments_id_status ON public.comments USING btree (id, status);


--
-- Name: comments_owner_user_id_status; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX comments_owner_user_id_status ON public.comments USING btree (owner_user_id, status);


--
-- Name: comments_parent_coment_id_status; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX comments_parent_coment_id_status ON public.comments USING btree (parent_comment_id, status);


--
-- Name: comments_roles_comment_id_role_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX comments_roles_comment_id_role_id ON public.comments_roles USING btree (comment_id, role_id);


--
-- Name: comments_roles_comment_id_role_id_created_at_updated_at_deleted; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX comments_roles_comment_id_role_id_created_at_updated_at_deleted ON public.comments_roles USING btree (comment_id, role_id, created_at, updated_at, deleted_at);


--
-- Name: comments_status_reverse; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX comments_status_reverse ON public.comments USING btree (status, owner_user_id, parent_comment_id, id);


--
-- Name: comments_teams_comment_id_team_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX comments_teams_comment_id_team_id ON public.comments_teams USING btree (comment_id, team_id);


--
-- Name: comments_users_comment_id_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX comments_users_comment_id_user_id ON public.comments_users USING btree (comment_id, user_id);


--
-- Name: comments_users_comment_id_user_id_created_at_updated_at_deleted; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX comments_users_comment_id_user_id_created_at_updated_at_deleted ON public.comments_users USING btree (comment_id, user_id, created_at, updated_at, deleted_at);


--
-- Name: control_comments_created_at_controls_datum_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX control_comments_created_at_controls_datum_id ON public.control_comments USING btree (created_at, controls_datum_id);


--
-- Name: control_complexity_options_name_sort_order; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX control_complexity_options_name_sort_order ON public.control_complexity_options USING btree (name, sort_order);


--
-- Name: control_design_options_name_sort_order_created_at_updated_at_de; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX control_design_options_name_sort_order_created_at_updated_at_de ON public.control_design_options USING btree (name, sort_order, created_at, updated_at, deleted_at);


--
-- Name: control_frequencies_name_created_at_updated_at_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX control_frequencies_name_created_at_updated_at_deleted_at ON public.control_frequencies USING btree (name, created_at, updated_at, deleted_at);


--
-- Name: control_inherent_risk_options_name_sort_order; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX control_inherent_risk_options_name_sort_order ON public.control_inherent_risk_options USING btree (name, sort_order);


--
-- Name: control_judgement_degree_options_name_sort_order; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX control_judgement_degree_options_name_sort_order ON public.control_judgement_degree_options USING btree (name, sort_order);


--
-- Name: control_management_override_options_name_sort_order; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX control_management_override_options_name_sort_order ON public.control_management_override_options USING btree (name, sort_order);


--
-- Name: control_nature_options_name_created_at_updated_at_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX control_nature_options_name_created_at_updated_at_deleted_at ON public.control_nature_options USING btree (name, created_at, updated_at, deleted_at);


--
-- Name: control_routine_options_name_sort_order; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX control_routine_options_name_sort_order ON public.control_routine_options USING btree (name, sort_order);


--
-- Name: control_scopes_name_sort_order; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX control_scopes_name_sort_order ON public.control_scopes USING btree (name, sort_order);


--
-- Name: control_types_name_created_at_updated_at_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX control_types_name_created_at_updated_at_deleted_at ON public.control_types USING btree (name, created_at, updated_at, deleted_at);


--
-- Name: controls_assertions_control_id_assertion_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX controls_assertions_control_id_assertion_id ON public.controls_assertions USING btree (control_id, assertion_id);


--
-- Name: controls_data_additional_owners_controls_datum_id_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX controls_data_additional_owners_controls_datum_id_user_id ON public.controls_data_additional_owners USING btree (controls_datum_id, user_id);


--
-- Name: controls_data_archives_controls_datum_id_archive_id_created_at_; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX controls_data_archives_controls_datum_id_archive_id_created_at_ ON public.controls_data_archives USING btree (controls_datum_id, archive_id, created_at, updated_at, deleted_at);


--
-- Name: controls_data_audits_controls_datum_id_field; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX controls_data_audits_controls_datum_id_field ON public.controls_data_audits USING btree (controls_datum_id, field);


--
-- Name: controls_data_audits_controls_datum_id_timestamp; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX controls_data_audits_controls_datum_id_timestamp ON public.controls_data_audits USING btree (controls_datum_id, "timestamp");


--
-- Name: controls_data_audits_field_controls_datum_id_test_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX controls_data_audits_field_controls_datum_id_test_id ON public.controls_data_audits USING btree (field, controls_datum_id, test_id);


--
-- Name: controls_data_audits_test_id_timestamp; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX controls_data_audits_test_id_timestamp ON public.controls_data_audits USING btree (test_id, "timestamp");


--
-- Name: controls_data_audits_timestamp; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX controls_data_audits_timestamp ON public.controls_data_audits USING btree ("timestamp");


--
-- Name: controls_data_audits_user_id_timestamp; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX controls_data_audits_user_id_timestamp ON public.controls_data_audits USING btree (user_id, "timestamp");


--
-- Name: controls_data_business_process_owner_users_user_id_controls_dat; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX controls_data_business_process_owner_users_user_id_controls_dat ON public.controls_data_business_process_owner_users USING btree (user_id, controls_datum_id);


--
-- Name: controls_data_comments_controls_datum_id_comment_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX controls_data_comments_controls_datum_id_comment_id ON public.controls_data_comments USING btree (controls_datum_id, comment_id);


--
-- Name: controls_data_control_custom_multiselect1_options_controls_datu; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX controls_data_control_custom_multiselect1_options_controls_datu ON public.controls_data_control_custom_multiselect1_options USING btree (controls_datum_id, control_custom_multiselect1_option_id);


--
-- Name: controls_data_control_custom_multiselect2_options_controls_datu; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX controls_data_control_custom_multiselect2_options_controls_datu ON public.controls_data_control_custom_multiselect2_options USING btree (controls_datum_id, control_custom_multiselect2_option_id);


--
-- Name: controls_data_control_custom_multiselect3_options_controls_datu; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX controls_data_control_custom_multiselect3_options_controls_datu ON public.controls_data_control_custom_multiselect3_options USING btree (controls_datum_id, control_custom_multiselect3_option_id);


--
-- Name: controls_data_control_custom_multiselect4_options_controls_datu; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX controls_data_control_custom_multiselect4_options_controls_datu ON public.controls_data_control_custom_multiselect4_options USING btree (controls_datum_id, control_custom_multiselect4_option_id);


--
-- Name: controls_data_control_id_created_at_updated_at_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX controls_data_control_id_created_at_updated_at_deleted_at ON public.controls_data USING btree (control_id, created_at, updated_at, deleted_at);


--
-- Name: controls_data_control_id_entity_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX controls_data_control_id_entity_id ON public.controls_data USING btree (control_id, entity_id) WHERE (deleted_at IS NULL);


--
-- Name: controls_data_control_id_entity_id_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX controls_data_control_id_entity_id_deleted_at ON public.controls_data USING btree (control_id, entity_id, deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: controls_data_coso_components_controls_datum_id_coso_component_; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX controls_data_coso_components_controls_datum_id_coso_component_ ON public.controls_data_coso_components USING btree (controls_datum_id, coso_component_id);


--
-- Name: controls_data_coso_elements_controls_datum_id_coso_element_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX controls_data_coso_elements_controls_datum_id_coso_element_id ON public.controls_data_coso_elements USING btree (controls_datum_id, coso_element_id);


--
-- Name: controls_data_coso_pofs_controls_datum_id_coso_pof_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX controls_data_coso_pofs_controls_datum_id_coso_pof_id ON public.controls_data_coso_pofs USING btree (controls_datum_id, coso_pof_id);


--
-- Name: controls_data_coso_principles_controls_datum_id_coso_principle_; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX controls_data_coso_principles_controls_datum_id_coso_principle_ ON public.controls_data_coso_principles USING btree (controls_datum_id, coso_principle_id);


--
-- Name: controls_data_deficiency_types_controls_datum_id_deficiency_typ; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX controls_data_deficiency_types_controls_datum_id_deficiency_typ ON public.controls_data_deficiency_types USING btree (controls_datum_id, deficiency_type_id);


--
-- Name: controls_data_finance_process_owner_users_user_id_controls_datu; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX controls_data_finance_process_owner_users_user_id_controls_datu ON public.controls_data_finance_process_owner_users USING btree (user_id, controls_datum_id);


--
-- Name: controls_data_financial_accounts_controls_datum_id_financial_ac; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX controls_data_financial_accounts_controls_datum_id_financial_ac ON public.controls_data_financial_accounts USING btree (controls_datum_id, financial_account_id);


--
-- Name: controls_data_financial_applications_controls_datum_id_financia; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX controls_data_financial_applications_controls_datum_id_financia ON public.controls_data_financial_applications USING btree (controls_datum_id, financial_application_id);


--
-- Name: controls_data_issue_nature_options_controls_datum_id_issue_natu; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX controls_data_issue_nature_options_controls_datum_id_issue_natu ON public.controls_data_issue_nature_options USING btree (controls_datum_id, issue_nature_option_id);


--
-- Name: controls_data_narratives_controls_datum_id_narrative_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX controls_data_narratives_controls_datum_id_narrative_id ON public.controls_data_narratives USING btree (controls_datum_id, narrative_id);


--
-- Name: controls_data_pbc_owner_users_user_id_controls_datum_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX controls_data_pbc_owner_users_user_id_controls_datum_id ON public.controls_data_pbc_owner_users USING btree (user_id, controls_datum_id);


--
-- Name: controls_data_pbc_status_options_controls_datum_id_pbc_status_o; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX controls_data_pbc_status_options_controls_datum_id_pbc_status_o ON public.controls_data_pbc_status_options USING btree (controls_datum_id, pbc_status_option_id);


--
-- Name: controls_data_test_types_controls_datum_id_test_type_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX controls_data_test_types_controls_datum_id_test_type_id ON public.controls_data_test_types USING btree (controls_datum_id, test_type_id);


--
-- Name: controls_data_testing_strategies_controls_datum_id_testing_stra; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX controls_data_testing_strategies_controls_datum_id_testing_stra ON public.controls_data_testing_strategies USING btree (controls_datum_id, testing_strategy_id);


--
-- Name: controls_risks_control_id_risk_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX controls_risks_control_id_risk_id ON public.controls_risks USING btree (control_id, risk_id);


--
-- Name: controls_uid_name_subprocess_id_created_at_updated_at_deleted_a; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX controls_uid_name_subprocess_id_created_at_updated_at_deleted_a ON public.controls USING btree (uid, name, subprocess_id, created_at, updated_at, deleted_at);


--
-- Name: controls_uid_subprocess_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX controls_uid_subprocess_id ON public.controls USING btree (uid, subprocess_id);


--
-- Name: controls_uid_subprocess_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX controls_uid_subprocess_id_key ON public.controls USING btree (uid, subprocess_id) WHERE (deleted_at IS NULL);


--
-- Name: coso_elements_name_created_at_updated_at_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX coso_elements_name_created_at_updated_at_deleted_at ON public.coso_elements USING btree (name, created_at, updated_at, deleted_at);


--
-- Name: coso_pofs_name_created_at_updated_at_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX coso_pofs_name_created_at_updated_at_deleted_at ON public.coso_pofs USING btree (name, created_at, updated_at, deleted_at);


--
-- Name: coso_principles_name_created_at_updated_at_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX coso_principles_name_created_at_updated_at_deleted_at ON public.coso_principles USING btree (name, created_at, updated_at, deleted_at);


--
-- Name: cron_options_name_created_at_updated_at_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX cron_options_name_created_at_updated_at_deleted_at ON public.cron_options USING btree (name, created_at, updated_at, deleted_at);


--
-- Name: deficiency_types_name_created_at_updated_at_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX deficiency_types_name_created_at_updated_at_deleted_at ON public.deficiency_levels USING btree (name, created_at, updated_at, deleted_at);


--
-- Name: deficiency_types_name_sort_order_created_at_updated_at_deleted_; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX deficiency_types_name_sort_order_created_at_updated_at_deleted_ ON public.deficiency_types USING btree (name, sort_order, created_at, updated_at, deleted_at);


--
-- Name: departments_name; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX departments_name ON public.departments USING btree (name);


--
-- Name: document_diffs_document_id_from_version_id_to_version_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX document_diffs_document_id_from_version_id_to_version_id ON public.document_diffs USING btree (document_id, from_version_id, to_version_id);


--
-- Name: document_versions_document_id_name; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX document_versions_document_id_name ON public.document_versions USING btree (document_id, name);


--
-- Name: effectiveness_options_name_created_at_updated_at_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX effectiveness_options_name_created_at_updated_at_deleted_at ON public.effectiveness_options USING btree (name, created_at, updated_at, deleted_at);


--
-- Name: email_logs_updated_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX email_logs_updated_at ON public.email_logs USING btree (updated_at);


--
-- Name: entities_entity_code_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX entities_entity_code_key ON public.entities USING btree (entity_code) WHERE (deleted_at IS NULL);


--
-- Name: entities_entity_code_name_region_id_created_at_updated_at_delet; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX entities_entity_code_name_region_id_created_at_updated_at_delet ON public.entities USING btree (entity_code, name, region_id, created_at, updated_at, deleted_at);


--
-- Name: exclude_risks_risk_id_entity_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX exclude_risks_risk_id_entity_id ON public.exclude_risks USING btree (risk_id, entity_id);


--
-- Name: external_auditor_status_options_name_created_at_updated_at_dele; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX external_auditor_status_options_name_created_at_updated_at_dele ON public.external_auditor_status_options USING btree (name, created_at, updated_at, deleted_at);


--
-- Name: file_fileable_type_fileable_id_name_unique_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX file_fileable_type_fileable_id_name_unique_idx ON public.files USING btree (fileable_type, fileable_id, name) WHERE (deleted_at IS NULL);


--
-- Name: file_versions_file_id_version; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX file_versions_file_id_version ON public.file_versions USING btree (file_id, version);


--
-- Name: files_fileable_id_fileable_type; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX files_fileable_id_fileable_type ON public.files USING btree (fileable_id, fileable_type);


--
-- Name: financial_applications_name_created_at_updated_at_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX financial_applications_name_created_at_updated_at_deleted_at ON public.financial_applications USING btree (name, created_at, updated_at, deleted_at);


--
-- Name: form_templates_type_name; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX form_templates_type_name ON public.form_templates USING btree (type, name);


--
-- Name: fraud_controls_name_created_at_updated_at_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fraud_controls_name_created_at_updated_at_deleted_at ON public.fraud_controls USING btree (name, created_at, updated_at, deleted_at);


--
-- Name: global_attributes_key_section; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX global_attributes_key_section ON public.global_attributes USING btree (key, section);


--
-- Name: global_attributes_object_type_key; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX global_attributes_object_type_key ON public.global_attributes USING btree (object_type, key);


--
-- Name: global_attributes_section_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX global_attributes_section_key ON public.global_attributes USING btree (section, key);


--
-- Name: global_audits_object_type_created_at_action; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX global_audits_object_type_created_at_action ON public.global_audits USING btree (object_type, created_at, action);


--
-- Name: global_audits_object_type_object_id_created_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX global_audits_object_type_object_id_created_at ON public.global_audits USING btree (object_type, object_id, created_at);


--
-- Name: global_audits_user_id_created_at_object_type; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX global_audits_user_id_created_at_object_type ON public.global_audits USING btree (user_id, created_at, object_type);


--
-- Name: global_file_categories_name_created_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX global_file_categories_name_created_at ON public.global_file_categories USING btree (name, created_at);


--
-- Name: global_permissions_section_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX global_permissions_section_key ON public.global_permissions USING btree (section, key);


--
-- Name: internal_control_components_name_sort_order; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX internal_control_components_name_sort_order ON public.internal_control_components USING btree (name, sort_order);


--
-- Name: issue_idents_name_created_at_updated_at_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX issue_idents_name_created_at_updated_at_deleted_at ON public.issue_idents USING btree (name, created_at, updated_at, deleted_at);


--
-- Name: issue_nature_options_name_sort_order_created_at_updated_at_dele; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX issue_nature_options_name_sort_order_created_at_updated_at_dele ON public.issue_nature_options USING btree (name, sort_order, created_at, updated_at, deleted_at);


--
-- Name: issues_archive_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX issues_archive_id ON public.issues USING btree (archive_id);


--
-- Name: issues_business_process_owner_users_issue_id_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX issues_business_process_owner_users_issue_id_user_id ON public.issues_business_process_owner_users USING btree (issue_id, user_id);


--
-- Name: issues_controls_datum_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX issues_controls_datum_id ON public.issues USING btree (controls_datum_id);


--
-- Name: issues_controls_datum_id_archive_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX issues_controls_datum_id_archive_id ON public.issues USING btree (controls_datum_id, archive_id);


--
-- Name: issues_deficiency_types_issue_id_deficiency_type_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX issues_deficiency_types_issue_id_deficiency_type_id ON public.issues_deficiency_types USING btree (issue_id, deficiency_type_id);


--
-- Name: issues_finance_process_owner_users_issue_id_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX issues_finance_process_owner_users_issue_id_user_id ON public.issues_finance_process_owner_users USING btree (issue_id, user_id);


--
-- Name: issues_impacted_sections_issue_id_impacted_section_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX issues_impacted_sections_issue_id_impacted_section_id ON public.issues_impacted_sections USING btree (issue_id, impacted_section_id);


--
-- Name: issues_issue_custom_multiselect1_options_issue_id_issue_custom_; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX issues_issue_custom_multiselect1_options_issue_id_issue_custom_ ON public.issues_issue_custom_multiselect1_options USING btree (issue_id, issue_custom_multiselect1_option_id);


--
-- Name: issues_issue_custom_multiselect2_options_issue_id_issue_custom_; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX issues_issue_custom_multiselect2_options_issue_id_issue_custom_ ON public.issues_issue_custom_multiselect2_options USING btree (issue_id, issue_custom_multiselect2_option_id);


--
-- Name: issues_issue_locations_issue_id_issue_location_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX issues_issue_locations_issue_id_issue_location_id ON public.issues_issue_locations USING btree (issue_id, issue_location_id);


--
-- Name: issues_issue_nature_options_issue_id_issue_nature_option_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX issues_issue_nature_options_issue_id_issue_nature_option_id ON public.issues_issue_nature_options USING btree (issue_id, issue_nature_option_id);


--
-- Name: issues_ops_audit_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX issues_ops_audit_id ON public.issues USING btree (ops_audit_id);


--
-- Name: issues_ops_audit_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX issues_ops_audit_item_id ON public.issues USING btree (ops_audit_item_id);


--
-- Name: issues_root_cause_types_issue_id_root_cause_type_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX issues_root_cause_types_issue_id_root_cause_type_id ON public.issues_root_cause_types USING btree (issue_id, root_cause_type_id);


--
-- Name: issues_subscriber_users_issue_id_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX issues_subscriber_users_issue_id_user_id ON public.issues_subscriber_users USING btree (issue_id, user_id);


--
-- Name: likelihoods_name_created_at_updated_at_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX likelihoods_name_created_at_updated_at_deleted_at ON public.likelihoods USING btree (name, created_at, updated_at, deleted_at);


--
-- Name: locks_lockable_type_lockable_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX locks_lockable_type_lockable_id ON public.locks USING btree (lockable_type, lockable_id);


--
-- Name: login_histories_timestamp; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX login_histories_timestamp ON public.login_histories USING btree ("timestamp");


--
-- Name: login_histories_user_id_timestamp; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX login_histories_user_id_timestamp ON public.login_histories USING btree (user_id, "timestamp");


--
-- Name: magnitudes_name_created_at_updated_at_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX magnitudes_name_created_at_updated_at_deleted_at ON public.magnitudes USING btree (name, created_at, updated_at, deleted_at);


--
-- Name: managed_changes_changeable_id_changeable_type_status; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX managed_changes_changeable_id_changeable_type_status ON public.managed_changes USING btree (changeable_id, changeable_type, status);


--
-- Name: managed_changes_question_response_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX managed_changes_question_response_id ON public.managed_changes USING btree (question_response_id);


--
-- Name: managed_changes_task_item_id_status; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX managed_changes_task_item_id_status ON public.managed_changes USING btree (task_item_id, status);


--
-- Name: mrc_controls_name_created_at_updated_at_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mrc_controls_name_created_at_updated_at_deleted_at ON public.mrc_controls USING btree (name, created_at, updated_at, deleted_at);


--
-- Name: narrative_owners_narrative_id_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX narrative_owners_narrative_id_user_id ON public.narrative_owners USING btree (narrative_id, user_id);


--
-- Name: narrative_sections_name_created_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX narrative_sections_name_created_at ON public.narrative_sections USING btree (name, created_at);


--
-- Name: narratives_name_created_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX narratives_name_created_at ON public.narratives USING btree (name, created_at);


--
-- Name: narratives_uid_created_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX narratives_uid_created_at ON public.narratives USING btree (uid, created_at);


--
-- Name: notification_messages_to_user_id_deleted_at_type; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX notification_messages_to_user_id_deleted_at_type ON public.notification_messages USING btree (to_user_id, deleted_at, type);


--
-- Name: ops_audit_category_sections_ops_audit_category_id_ops_audit_sec; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX ops_audit_category_sections_ops_audit_category_id_ops_audit_sec ON public.ops_audit_category_sections USING btree (ops_audit_category_id, ops_audit_section_id);


--
-- Name: ops_audit_items_business_owner_users_user_id_ops_audit_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX ops_audit_items_business_owner_users_user_id_ops_audit_item_id ON public.ops_audit_items_business_owner_users USING btree (user_id, ops_audit_item_id);


--
-- Name: ops_audit_items_controls_data_ops_audit_item_id_controls_datum_; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX ops_audit_items_controls_data_ops_audit_item_id_controls_datum_ ON public.ops_audit_items_controls_data USING btree (ops_audit_item_id, controls_datum_id);


--
-- Name: ops_audit_items_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ops_audit_items_deleted_at ON public.ops_audit_items USING btree (deleted_at);


--
-- Name: ops_audit_items_ops_audit_id_status_ops_audit_section_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ops_audit_items_ops_audit_id_status_ops_audit_section_id ON public.ops_audit_items USING btree (ops_audit_id, status, ops_audit_section_id);


--
-- Name: ops_audit_items_ops_custom_multiselect1_options_ops_audit_item_; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX ops_audit_items_ops_custom_multiselect1_options_ops_audit_item_ ON public.ops_audit_items_ops_custom_multiselect1_options USING btree (ops_audit_item_id, ops_custom_multiselect1_option_id);


--
-- Name: ops_audit_items_preparer_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ops_audit_items_preparer_user_id ON public.ops_audit_items USING btree (preparer_user_id);


--
-- Name: ops_audit_items_reviewer_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ops_audit_items_reviewer_user_id ON public.ops_audit_items USING btree (reviewer_user_id);


--
-- Name: ops_audit_items_secondary_reviewer_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ops_audit_items_secondary_reviewer_user_id ON public.ops_audit_items USING btree (secondary_reviewer_user_id);


--
-- Name: ops_audit_items_status; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ops_audit_items_status ON public.ops_audit_items USING btree (status);


--
-- Name: ops_audit_owner_users_user_id_ops_audit_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX ops_audit_owner_users_user_id_ops_audit_id ON public.ops_audit_owner_users USING btree (user_id, ops_audit_id);


--
-- Name: ops_audit_section_instances_ops_audit_id_ops_audit_section_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX ops_audit_section_instances_ops_audit_id_ops_audit_section_id ON public.ops_audit_section_instances USING btree (ops_audit_id, ops_audit_section_id) WHERE (deleted_at IS NULL);


--
-- Name: ops_audit_section_instances_ops_audit_id_ops_audit_section_id_d; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX ops_audit_section_instances_ops_audit_id_ops_audit_section_id_d ON public.ops_audit_section_instances USING btree (ops_audit_id, ops_audit_section_id, deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: ops_audit_subsections_ops_audit_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ops_audit_subsections_ops_audit_id ON public.ops_audit_subsections USING btree (ops_audit_id);


--
-- Name: ops_audit_subsections_ops_audit_section_instance_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ops_audit_subsections_ops_audit_section_instance_id ON public.ops_audit_subsections USING btree (ops_audit_section_instance_id);


--
-- Name: ops_audits_business_process_owner_users_ops_audit_id_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX ops_audits_business_process_owner_users_ops_audit_id_user_id ON public.ops_audits_business_process_owner_users USING btree (ops_audit_id, user_id);


--
-- Name: ops_audits_business_units_ops_audit_id_business_unit_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX ops_audits_business_units_ops_audit_id_business_unit_id ON public.ops_audits_business_units USING btree (ops_audit_id, business_unit_id);


--
-- Name: ops_audits_executive_users_ops_audit_id_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX ops_audits_executive_users_ops_audit_id_user_id ON public.ops_audits_executive_users USING btree (ops_audit_id, user_id);


--
-- Name: ops_audits_finance_process_owner_users_ops_audit_id_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX ops_audits_finance_process_owner_users_ops_audit_id_user_id ON public.ops_audits_finance_process_owner_users USING btree (ops_audit_id, user_id);


--
-- Name: ops_audits_officer_users_ops_audit_id_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX ops_audits_officer_users_ops_audit_id_user_id ON public.ops_audits_officer_users USING btree (ops_audit_id, user_id);


--
-- Name: ops_audits_ops_audit_custom_multiselect1_options_ops_audit_id_o; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX ops_audits_ops_audit_custom_multiselect1_options_ops_audit_id_o ON public.ops_audits_ops_audit_custom_multiselect1_options USING btree (ops_audit_id, ops_audit_custom_multiselect1_option_id);


--
-- Name: ops_audits_ops_audit_custom_multiselect2_options_ops_audit_id_o; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX ops_audits_ops_audit_custom_multiselect2_options_ops_audit_id_o ON public.ops_audits_ops_audit_custom_multiselect2_options USING btree (ops_audit_id, ops_audit_custom_multiselect2_option_id);


--
-- Name: ops_audits_ops_audit_locations_ops_audit_id_ops_audit_location_; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX ops_audits_ops_audit_locations_ops_audit_id_ops_audit_location_ ON public.ops_audits_ops_audit_locations USING btree (ops_audit_id, ops_audit_location_id);


--
-- Name: ops_audits_status_ops_audit_category_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ops_audits_status_ops_audit_category_id ON public.ops_audits USING btree (status, ops_audit_category_id);


--
-- Name: ops_audits_supervisor_users_ops_audit_id_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX ops_audits_supervisor_users_ops_audit_id_user_id ON public.ops_audits_supervisor_users USING btree (ops_audit_id, user_id);


--
-- Name: ops_audits_uid_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX ops_audits_uid_key ON public.ops_audits USING btree (uid) WHERE (deleted_at IS NULL);


--
-- Name: ops_ra_process_entities_ops_risk_assessment_id_process_id_entit; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ops_ra_process_entities_ops_risk_assessment_id_process_id_entit ON public.ops_ra_process_entities USING btree (ops_risk_assessment_id, process_id, entity_id);


--
-- Name: ops_ra_values_ops_ra_process_entity_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ops_ra_values_ops_ra_process_entity_id ON public.ops_ra_values USING btree (ops_ra_process_entity_id);


--
-- Name: ops_ra_values_ops_risk_criteria_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ops_ra_values_ops_risk_criteria_id ON public.ops_ra_values USING btree (ops_risk_criteria_id);


--
-- Name: ops_ra_values_ops_risk_value_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ops_ra_values_ops_risk_value_id ON public.ops_ra_values USING btree (ops_risk_value_id);


--
-- Name: password_histories_user_id_password; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX password_histories_user_id_password ON public.password_histories USING btree (user_id, password);


--
-- Name: pbc_status_options_name_sort_order_created_at_updated_at_delete; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pbc_status_options_name_sort_order_created_at_updated_at_delete ON public.pbc_status_options USING btree (name, sort_order, created_at, updated_at, deleted_at);


--
-- Name: powerbi_report_instances_reportable_type_reportable_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX powerbi_report_instances_reportable_type_reportable_id ON public.powerbi_report_instances USING btree (reportable_type, reportable_id);


--
-- Name: powerbi_reports_type; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX powerbi_reports_type ON public.powerbi_reports USING btree (type);


--
-- Name: processes_data_process_id_created_at_updated_at_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX processes_data_process_id_created_at_updated_at_deleted_at ON public.processes_data USING btree (process_id, created_at, updated_at, deleted_at);


--
-- Name: processes_process_types_process_id_process_type_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX processes_process_types_process_id_process_type_id ON public.processes_process_types USING btree (process_id, process_type_id);


--
-- Name: processes_uid_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX processes_uid_key ON public.processes USING btree (uid) WHERE (deleted_at IS NULL);


--
-- Name: processes_uid_name_created_at_updated_at_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX processes_uid_name_created_at_updated_at_deleted_at ON public.processes USING btree (uid, name, created_at, updated_at, deleted_at);


--
-- Name: question_responses_survey_response_id_question_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX question_responses_survey_response_id_question_id ON public.question_responses USING btree (survey_response_id, question_id);


--
-- Name: question_responses_updated_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX question_responses_updated_at ON public.question_responses USING btree (updated_at);


--
-- Name: questions_survey_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX questions_survey_id ON public.questions USING btree (survey_id);


--
-- Name: regions_region_code_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX regions_region_code_key ON public.regions USING btree (region_code) WHERE (deleted_at IS NULL);


--
-- Name: regions_region_code_name_created_at_updated_at_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX regions_region_code_name_created_at_updated_at_deleted_at ON public.regions USING btree (region_code, name, created_at, updated_at, deleted_at);


--
-- Name: reports_name_created_at_updated_at_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reports_name_created_at_updated_at_deleted_at ON public.reports USING btree (name, created_at, updated_at, deleted_at);


--
-- Name: risk_levels_name_created_at_updated_at_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX risk_levels_name_created_at_updated_at_deleted_at ON public.risk_levels USING btree (name, created_at, updated_at, deleted_at);


--
-- Name: risks_uid_process_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX risks_uid_process_id_key ON public.risks USING btree (uid, process_id) WHERE (deleted_at IS NULL);


--
-- Name: role_permissions_role_id_section_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX role_permissions_role_id_section_key ON public.role_permissions USING btree (role_id, section, key);


--
-- Name: role_permissions_section_key; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX role_permissions_section_key ON public.role_permissions USING btree (section, key);


--
-- Name: roles_short_name_created_at_updated_at_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX roles_short_name_created_at_updated_at_deleted_at ON public.roles USING btree (short_name, created_at, updated_at, deleted_at);


--
-- Name: sessions_expires_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX sessions_expires_at ON public.sessions USING btree (expires_at);


--
-- Name: sheet_versions_sheet_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX sheet_versions_sheet_id ON public.sheet_versions USING btree (sheet_id);


--
-- Name: sheets_created_at_updated_at_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX sheets_created_at_updated_at_deleted_at ON public.sheets USING btree (created_at, updated_at, deleted_at);


--
-- Name: significance_options_name_created_at_updated_at_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX significance_options_name_created_at_updated_at_deleted_at ON public.significance_options USING btree (name, created_at, updated_at, deleted_at);


--
-- Name: sod_controls_name_created_at_updated_at_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX sod_controls_name_created_at_updated_at_deleted_at ON public.sod_controls USING btree (name, created_at, updated_at, deleted_at);


--
-- Name: status_options_name_created_at_updated_at_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX status_options_name_created_at_updated_at_deleted_at ON public.status_options USING btree (name, created_at, updated_at, deleted_at);


--
-- Name: subprocesses_data_subprocess_id_created_at_updated_at_deleted_a; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX subprocesses_data_subprocess_id_created_at_updated_at_deleted_a ON public.subprocesses_data USING btree (subprocess_id, created_at, updated_at, deleted_at);


--
-- Name: subprocesses_uid_name_process_id_created_at_updated_at_deleted_; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX subprocesses_uid_name_process_id_created_at_updated_at_deleted_ ON public.subprocesses USING btree (uid, name, process_id, created_at, updated_at, deleted_at);


--
-- Name: subprocesses_uid_process_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX subprocesses_uid_process_id ON public.subprocesses USING btree (uid, process_id);


--
-- Name: subprocesses_uid_process_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX subprocesses_uid_process_id_key ON public.subprocesses USING btree (uid, process_id) WHERE (deleted_at IS NULL);


--
-- Name: survey_responses_survey_id_task_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX survey_responses_survey_id_task_item_id ON public.survey_responses USING btree (survey_id, task_item_id);


--
-- Name: survey_responses_task_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX survey_responses_task_item_id ON public.survey_responses USING btree (task_item_id);


--
-- Name: sys_op_logs_user_id_type_status_level; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX sys_op_logs_user_id_type_status_level ON public.sys_op_logs USING btree (user_id, type, status, level);


--
-- Name: task_group_categories_name; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX task_group_categories_name ON public.task_categories USING btree (name);


--
-- Name: task_group_locations_name; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX task_group_locations_name ON public.locations USING btree (name);


--
-- Name: task_group_owners_task_group_id_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX task_group_owners_task_group_id_user_id ON public.task_group_owners USING btree (task_group_id, user_id);


--
-- Name: task_group_periods_name_created_at_updated_at_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX task_group_periods_name_created_at_updated_at_deleted_at ON public.task_periods USING btree (name, created_at, updated_at, deleted_at);


--
-- Name: task_group_risk_levels_name; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX task_group_risk_levels_name ON public.task_priorities USING btree (name);


--
-- Name: task_groups_ops_audit_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX task_groups_ops_audit_id ON public.task_groups USING btree (ops_audit_id);


--
-- Name: task_item_reviewers_task_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX task_item_reviewers_task_item_id ON public.task_item_reviewers USING btree (task_item_id);


--
-- Name: task_items_controls_datum_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX task_items_controls_datum_id ON public.task_items USING btree (controls_datum_id);


--
-- Name: task_items_files_task_item_id_file_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX task_items_files_task_item_id_file_id ON public.task_items_files USING btree (task_item_id, file_id);


--
-- Name: task_items_ops_audit_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX task_items_ops_audit_id ON public.task_items USING btree (ops_audit_id);


--
-- Name: task_items_ops_audit_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX task_items_ops_audit_item_id ON public.task_items USING btree (ops_audit_item_id);


--
-- Name: task_items_task_group_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX task_items_task_group_id ON public.task_items USING btree (task_group_id);


--
-- Name: team_users_team_id_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX team_users_team_id_user_id ON public.team_users USING btree (team_id, user_id);


--
-- Name: teams_owner_users_team_id_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX teams_owner_users_team_id_user_id ON public.teams_owner_users USING btree (team_id, user_id);


--
-- Name: test_comments_created_at_test_id_controls_datum_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX test_comments_created_at_test_id_controls_datum_id ON public.test_comments USING btree (created_at, test_id, controls_datum_id);


--
-- Name: test_sections_name; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX test_sections_name ON public.test_sections USING btree (name);


--
-- Name: test_sections_sort_order_id_name; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX test_sections_sort_order_id_name ON public.test_sections USING btree (sort_order, id, name);


--
-- Name: test_timings_name_created_at_updated_at_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX test_timings_name_created_at_updated_at_deleted_at ON public.test_timings USING btree (name, created_at, updated_at, deleted_at);


--
-- Name: test_types_name_created_at_updated_at_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX test_types_name_created_at_updated_at_deleted_at ON public.test_types USING btree (name, created_at, updated_at, deleted_at);


--
-- Name: testing_strategies_name_created_at_updated_at_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX testing_strategies_name_created_at_updated_at_deleted_at ON public.testing_strategies USING btree (name, created_at, updated_at, deleted_at);


--
-- Name: tests_controls_datum_id_created_at_updated_at_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX tests_controls_datum_id_created_at_updated_at_deleted_at ON public.tests USING btree (controls_datum_id, created_at, updated_at, deleted_at);


--
-- Name: timesheet_entries_date; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX timesheet_entries_date ON public.timesheet_entries USING btree (date);


--
-- Name: timesheet_entries_timesheet_project_id_date; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX timesheet_entries_timesheet_project_id_date ON public.timesheet_entries USING btree (timesheet_project_id, date);


--
-- Name: timesheet_entries_timesheetable_type_timesheetable_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX timesheet_entries_timesheetable_type_timesheetable_id ON public.timesheet_entries USING btree (timesheetable_type, timesheetable_id);


--
-- Name: timesheet_entries_user_id_date; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX timesheet_entries_user_id_date ON public.timesheet_entries USING btree (user_id, date);


--
-- Name: timesheet_entries_user_id_date_timesheet_project_id_timesheetab; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX timesheet_entries_user_id_date_timesheet_project_id_timesheetab ON public.timesheet_entries USING btree (user_id, date, timesheet_project_id, timesheetable_type, timesheetable_id);


--
-- Name: timesheet_hours_gt_zero; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX timesheet_hours_gt_zero ON public.timesheet_entries USING btree (((hours > (0)::double precision)));


--
-- Name: user_settings_user_id_setting_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX user_settings_user_id_setting_id ON public.user_settings USING btree (user_id, setting_id);


--
-- Name: user_stats_user_id_created_at_updated_at_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX user_stats_user_id_created_at_updated_at_deleted_at ON public.user_stats USING btree (user_id, created_at, updated_at, deleted_at);


--
-- Name: users_email_created_at_updated_at_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX users_email_created_at_updated_at_deleted_at ON public.users USING btree (email, created_at, updated_at, deleted_at);


--
-- Name: versions_meta_version; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX versions_meta_version ON public.versions_meta USING btree (version);


--
-- Name: allowed_roles allowed_roles_role_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.allowed_roles
    ADD CONSTRAINT allowed_roles_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE RESTRICT;


--
-- Name: allowed_teams allowed_teams_team_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.allowed_teams
    ADD CONSTRAINT allowed_teams_team_id_fkey FOREIGN KEY (team_id) REFERENCES public.teams(id) ON DELETE RESTRICT;


--
-- Name: allowed_users allowed_users_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.allowed_users
    ADD CONSTRAINT allowed_users_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE RESTRICT;


--
-- Name: attachments attachments_document_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.attachments
    ADD CONSTRAINT attachments_document_id_fkey FOREIGN KEY (document_id) REFERENCES public.documents(id) ON DELETE SET NULL;


--
-- Name: attachments attachments_file_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.attachments
    ADD CONSTRAINT attachments_file_id_fkey FOREIGN KEY (file_id) REFERENCES public.files(id);


--
-- Name: attachments attachments_lock_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.attachments
    ADD CONSTRAINT attachments_lock_user_id_fkey FOREIGN KEY (lock_user_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: attachments attachments_sheet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.attachments
    ADD CONSTRAINT attachments_sheet_id_fkey FOREIGN KEY (sheet_id) REFERENCES public.sheets(id) ON DELETE SET NULL;


--
-- Name: comment_references comment_references_comment_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comment_references
    ADD CONSTRAINT comment_references_comment_id_fkey FOREIGN KEY (comment_id) REFERENCES public.comments(id) ON DELETE CASCADE;


--
-- Name: comment_references comment_references_controls_datum_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comment_references
    ADD CONSTRAINT comment_references_controls_datum_id_fkey FOREIGN KEY (controls_datum_id) REFERENCES public.controls_data(id) ON DELETE CASCADE;


--
-- Name: comment_unsubscribers comment_unsubscribers_comment_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comment_unsubscribers
    ADD CONSTRAINT comment_unsubscribers_comment_id_fkey FOREIGN KEY (comment_id) REFERENCES public.comments(id) ON DELETE CASCADE;


--
-- Name: comment_unsubscribers comment_unsubscribers_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comment_unsubscribers
    ADD CONSTRAINT comment_unsubscribers_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: comments comments_owner_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_owner_user_id_fkey FOREIGN KEY (owner_user_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: comments comments_parent_comment_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_parent_comment_id_fkey FOREIGN KEY (parent_comment_id) REFERENCES public.comments(id) ON DELETE CASCADE;


--
-- Name: comments_roles comments_roles_comment_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comments_roles
    ADD CONSTRAINT comments_roles_comment_id_fkey FOREIGN KEY (comment_id) REFERENCES public.comments(id) ON DELETE CASCADE;


--
-- Name: comments_roles comments_roles_role_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comments_roles
    ADD CONSTRAINT comments_roles_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;


--
-- Name: comments_teams comments_teams_comment_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comments_teams
    ADD CONSTRAINT comments_teams_comment_id_fkey FOREIGN KEY (comment_id) REFERENCES public.comments(id) ON DELETE CASCADE;


--
-- Name: comments_teams comments_teams_team_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comments_teams
    ADD CONSTRAINT comments_teams_team_id_fkey FOREIGN KEY (team_id) REFERENCES public.teams(id);


--
-- Name: comments_users comments_users_comment_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comments_users
    ADD CONSTRAINT comments_users_comment_id_fkey FOREIGN KEY (comment_id) REFERENCES public.comments(id) ON DELETE CASCADE;


--
-- Name: comments_users comments_users_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comments_users
    ADD CONSTRAINT comments_users_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: control_comments control_comments_comment_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.control_comments
    ADD CONSTRAINT control_comments_comment_user_id_fkey FOREIGN KEY (comment_user_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: control_comments control_comments_controls_datum_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.control_comments
    ADD CONSTRAINT control_comments_controls_datum_id_fkey FOREIGN KEY (controls_datum_id) REFERENCES public.controls_data(id) ON DELETE SET NULL;


--
-- Name: controls_assertions controls_assertions_assertion_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_assertions
    ADD CONSTRAINT controls_assertions_assertion_id_fkey FOREIGN KEY (assertion_id) REFERENCES public.assertions(id) ON DELETE CASCADE;


--
-- Name: controls_assertions controls_assertions_control_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_assertions
    ADD CONSTRAINT controls_assertions_control_id_fkey FOREIGN KEY (control_id) REFERENCES public.controls(id) ON DELETE CASCADE;


--
-- Name: controls_data_additional_owners controls_data_additional_owners_controls_datum_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_additional_owners
    ADD CONSTRAINT controls_data_additional_owners_controls_datum_id_fkey FOREIGN KEY (controls_datum_id) REFERENCES public.controls_data(id) ON DELETE CASCADE;


--
-- Name: controls_data_additional_owners controls_data_additional_owners_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_additional_owners
    ADD CONSTRAINT controls_data_additional_owners_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: controls_data controls_data_aggregation_reference_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data
    ADD CONSTRAINT controls_data_aggregation_reference_id_fkey FOREIGN KEY (aggregation_reference_id) REFERENCES public.aggregation_references(id) ON DELETE SET NULL;


--
-- Name: controls_data_archives controls_data_archives_archive_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_archives
    ADD CONSTRAINT controls_data_archives_archive_id_fkey FOREIGN KEY (archive_id) REFERENCES public.archives(id) ON DELETE CASCADE;


--
-- Name: controls_data_archives controls_data_archives_controls_datum_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_archives
    ADD CONSTRAINT controls_data_archives_controls_datum_id_fkey FOREIGN KEY (controls_datum_id) REFERENCES public.controls_data(id) ON DELETE CASCADE;


--
-- Name: controls_data_audits controls_data_audits_controls_datum_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_audits
    ADD CONSTRAINT controls_data_audits_controls_datum_id_fkey FOREIGN KEY (controls_datum_id) REFERENCES public.controls_data(id) ON DELETE SET NULL;


--
-- Name: controls_data_audits controls_data_audits_test_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_audits
    ADD CONSTRAINT controls_data_audits_test_id_fkey FOREIGN KEY (test_id) REFERENCES public.tests(id) ON DELETE SET NULL;


--
-- Name: controls_data_audits controls_data_audits_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_audits
    ADD CONSTRAINT controls_data_audits_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: controls_data controls_data_baseline_result_option_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data
    ADD CONSTRAINT controls_data_baseline_result_option_id_fkey FOREIGN KEY (baseline_result_option_id) REFERENCES public.baseline_result_options(id) ON DELETE SET NULL;


--
-- Name: controls_data_business_process_owner_users controls_data_business_process_owner_use_controls_datum_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_business_process_owner_users
    ADD CONSTRAINT controls_data_business_process_owner_use_controls_datum_id_fkey FOREIGN KEY (controls_datum_id) REFERENCES public.controls_data(id) ON DELETE CASCADE;


--
-- Name: controls_data_business_process_owner_users controls_data_business_process_owner_users_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_business_process_owner_users
    ADD CONSTRAINT controls_data_business_process_owner_users_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: controls_data_comments controls_data_comments_comment_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_comments
    ADD CONSTRAINT controls_data_comments_comment_id_fkey FOREIGN KEY (comment_id) REFERENCES public.comments(id) ON DELETE CASCADE;


--
-- Name: controls_data_comments controls_data_comments_controls_datum_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_comments
    ADD CONSTRAINT controls_data_comments_controls_datum_id_fkey FOREIGN KEY (controls_datum_id) REFERENCES public.controls_data(id) ON DELETE CASCADE;


--
-- Name: controls_data controls_data_control_classification_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data
    ADD CONSTRAINT controls_data_control_classification_id_fkey FOREIGN KEY (control_classification_id) REFERENCES public.control_classifications(id) ON DELETE SET NULL;


--
-- Name: controls_data controls_data_control_complexity_option_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data
    ADD CONSTRAINT controls_data_control_complexity_option_id_fkey FOREIGN KEY (control_complexity_option_id) REFERENCES public.control_complexity_options(id);


--
-- Name: controls_data_control_custom_multiselect1_options controls_data_control_custom__control_custom_multiselect1__fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_control_custom_multiselect1_options
    ADD CONSTRAINT controls_data_control_custom__control_custom_multiselect1__fkey FOREIGN KEY (control_custom_multiselect1_option_id) REFERENCES public.control_custom_multiselect1_options(id) ON DELETE CASCADE;


--
-- Name: controls_data_control_custom_multiselect2_options controls_data_control_custom__control_custom_multiselect2__fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_control_custom_multiselect2_options
    ADD CONSTRAINT controls_data_control_custom__control_custom_multiselect2__fkey FOREIGN KEY (control_custom_multiselect2_option_id) REFERENCES public.control_custom_multiselect2_options(id) ON DELETE CASCADE;


--
-- Name: controls_data_control_custom_multiselect3_options controls_data_control_custom__control_custom_multiselect3__fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_control_custom_multiselect3_options
    ADD CONSTRAINT controls_data_control_custom__control_custom_multiselect3__fkey FOREIGN KEY (control_custom_multiselect3_option_id) REFERENCES public.control_custom_multiselect3_options(id) ON DELETE CASCADE;


--
-- Name: controls_data_control_custom_multiselect4_options controls_data_control_custom__control_custom_multiselect4__fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_control_custom_multiselect4_options
    ADD CONSTRAINT controls_data_control_custom__control_custom_multiselect4__fkey FOREIGN KEY (control_custom_multiselect4_option_id) REFERENCES public.control_custom_multiselect4_options(id) ON DELETE CASCADE;


--
-- Name: controls_data_control_custom_multiselect2_options controls_data_control_custom_multiselec_controls_datum_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_control_custom_multiselect2_options
    ADD CONSTRAINT controls_data_control_custom_multiselec_controls_datum_id_fkey1 FOREIGN KEY (controls_datum_id) REFERENCES public.controls_data(id) ON DELETE CASCADE;


--
-- Name: controls_data_control_custom_multiselect3_options controls_data_control_custom_multiselec_controls_datum_id_fkey2; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_control_custom_multiselect3_options
    ADD CONSTRAINT controls_data_control_custom_multiselec_controls_datum_id_fkey2 FOREIGN KEY (controls_datum_id) REFERENCES public.controls_data(id) ON DELETE CASCADE;


--
-- Name: controls_data_control_custom_multiselect4_options controls_data_control_custom_multiselec_controls_datum_id_fkey3; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_control_custom_multiselect4_options
    ADD CONSTRAINT controls_data_control_custom_multiselec_controls_datum_id_fkey3 FOREIGN KEY (controls_datum_id) REFERENCES public.controls_data(id) ON DELETE CASCADE;


--
-- Name: controls_data_control_custom_multiselect1_options controls_data_control_custom_multiselect_controls_datum_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_control_custom_multiselect1_options
    ADD CONSTRAINT controls_data_control_custom_multiselect_controls_datum_id_fkey FOREIGN KEY (controls_datum_id) REFERENCES public.controls_data(id) ON DELETE CASCADE;


--
-- Name: controls_data controls_data_control_custom_select1_option_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data
    ADD CONSTRAINT controls_data_control_custom_select1_option_id_fkey FOREIGN KEY (control_custom_select1_option_id) REFERENCES public.control_custom_select1_options(id) ON DELETE SET NULL;


--
-- Name: controls_data controls_data_control_design_option_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data
    ADD CONSTRAINT controls_data_control_design_option_id_fkey FOREIGN KEY (control_design_option_id) REFERENCES public.control_design_options(id) ON DELETE SET NULL;


--
-- Name: controls_data controls_data_control_frequency_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data
    ADD CONSTRAINT controls_data_control_frequency_id_fkey FOREIGN KEY (control_frequency_id) REFERENCES public.control_frequencies(id) ON DELETE SET NULL;


--
-- Name: controls_data controls_data_control_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data
    ADD CONSTRAINT controls_data_control_id_fkey FOREIGN KEY (control_id) REFERENCES public.controls(id) ON DELETE SET NULL;


--
-- Name: controls_data controls_data_control_inherent_risk_option_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data
    ADD CONSTRAINT controls_data_control_inherent_risk_option_id_fkey FOREIGN KEY (control_inherent_risk_option_id) REFERENCES public.control_inherent_risk_options(id);


--
-- Name: controls_data controls_data_control_judgement_degree_option_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data
    ADD CONSTRAINT controls_data_control_judgement_degree_option_id_fkey FOREIGN KEY (control_judgement_degree_option_id) REFERENCES public.control_judgement_degree_options(id);


--
-- Name: controls_data controls_data_control_management_override_option_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data
    ADD CONSTRAINT controls_data_control_management_override_option_id_fkey FOREIGN KEY (control_management_override_option_id) REFERENCES public.control_management_override_options(id);


--
-- Name: controls_data controls_data_control_nature_option_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data
    ADD CONSTRAINT controls_data_control_nature_option_id_fkey FOREIGN KEY (control_nature_option_id) REFERENCES public.control_nature_options(id) ON DELETE SET NULL;


--
-- Name: controls_data controls_data_control_routine_option_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data
    ADD CONSTRAINT controls_data_control_routine_option_id_fkey FOREIGN KEY (control_routine_option_id) REFERENCES public.control_routine_options(id);


--
-- Name: controls_data controls_data_control_scope_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data
    ADD CONSTRAINT controls_data_control_scope_id_fkey FOREIGN KEY (control_scope_id) REFERENCES public.control_scopes(id) ON DELETE SET NULL;


--
-- Name: controls_data controls_data_control_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data
    ADD CONSTRAINT controls_data_control_type_id_fkey FOREIGN KEY (control_type_id) REFERENCES public.control_types(id) ON DELETE SET NULL;


--
-- Name: controls_data controls_data_coordinator_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data
    ADD CONSTRAINT controls_data_coordinator_user_id_fkey FOREIGN KEY (coordinator_user_id) REFERENCES public.users(id);


--
-- Name: controls_data_coso_components controls_data_coso_components_controls_datum_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_coso_components
    ADD CONSTRAINT controls_data_coso_components_controls_datum_id_fkey FOREIGN KEY (controls_datum_id) REFERENCES public.controls_data(id) ON DELETE CASCADE;


--
-- Name: controls_data_coso_components controls_data_coso_components_coso_component_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_coso_components
    ADD CONSTRAINT controls_data_coso_components_coso_component_id_fkey FOREIGN KEY (coso_component_id) REFERENCES public.coso_components(id) ON DELETE CASCADE;


--
-- Name: controls_data controls_data_coso_element_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data
    ADD CONSTRAINT controls_data_coso_element_id_fkey FOREIGN KEY (coso_element_id) REFERENCES public.coso_elements(id) ON DELETE SET NULL;


--
-- Name: controls_data_coso_elements controls_data_coso_elements_controls_datum_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_coso_elements
    ADD CONSTRAINT controls_data_coso_elements_controls_datum_id_fkey FOREIGN KEY (controls_datum_id) REFERENCES public.controls_data(id) ON DELETE CASCADE;


--
-- Name: controls_data_coso_elements controls_data_coso_elements_coso_element_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_coso_elements
    ADD CONSTRAINT controls_data_coso_elements_coso_element_id_fkey FOREIGN KEY (coso_element_id) REFERENCES public.coso_elements(id) ON DELETE CASCADE;


--
-- Name: controls_data_coso_pofs controls_data_coso_pofs_controls_datum_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_coso_pofs
    ADD CONSTRAINT controls_data_coso_pofs_controls_datum_id_fkey FOREIGN KEY (controls_datum_id) REFERENCES public.controls_data(id) ON DELETE CASCADE;


--
-- Name: controls_data_coso_pofs controls_data_coso_pofs_coso_pof_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_coso_pofs
    ADD CONSTRAINT controls_data_coso_pofs_coso_pof_id_fkey FOREIGN KEY (coso_pof_id) REFERENCES public.coso_pofs(id) ON DELETE CASCADE;


--
-- Name: controls_data_coso_principles controls_data_coso_principles_controls_datum_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_coso_principles
    ADD CONSTRAINT controls_data_coso_principles_controls_datum_id_fkey FOREIGN KEY (controls_datum_id) REFERENCES public.controls_data(id) ON DELETE CASCADE;


--
-- Name: controls_data_coso_principles controls_data_coso_principles_coso_principle_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_coso_principles
    ADD CONSTRAINT controls_data_coso_principles_coso_principle_id_fkey FOREIGN KEY (coso_principle_id) REFERENCES public.coso_principles(id) ON DELETE CASCADE;


--
-- Name: controls_data controls_data_deficiency_level_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data
    ADD CONSTRAINT controls_data_deficiency_level_id_fkey FOREIGN KEY (deficiency_level_id) REFERENCES public.deficiency_levels(id) ON DELETE SET NULL;


--
-- Name: controls_data_deficiency_types controls_data_deficiency_types_controls_datum_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_deficiency_types
    ADD CONSTRAINT controls_data_deficiency_types_controls_datum_id_fkey FOREIGN KEY (controls_datum_id) REFERENCES public.controls_data(id) ON DELETE CASCADE;


--
-- Name: controls_data_deficiency_types controls_data_deficiency_types_deficiency_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_deficiency_types
    ADD CONSTRAINT controls_data_deficiency_types_deficiency_type_id_fkey FOREIGN KEY (deficiency_type_id) REFERENCES public.deficiency_types(id) ON DELETE CASCADE;


--
-- Name: controls_data controls_data_entity_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data
    ADD CONSTRAINT controls_data_entity_id_fkey FOREIGN KEY (entity_id) REFERENCES public.entities(id) ON DELETE SET NULL;


--
-- Name: controls_data_finance_process_owner_users controls_data_finance_process_owner_user_controls_datum_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_finance_process_owner_users
    ADD CONSTRAINT controls_data_finance_process_owner_user_controls_datum_id_fkey FOREIGN KEY (controls_datum_id) REFERENCES public.controls_data(id) ON DELETE CASCADE;


--
-- Name: controls_data_finance_process_owner_users controls_data_finance_process_owner_users_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_finance_process_owner_users
    ADD CONSTRAINT controls_data_finance_process_owner_users_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: controls_data_financial_accounts controls_data_financial_accounts_controls_datum_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_financial_accounts
    ADD CONSTRAINT controls_data_financial_accounts_controls_datum_id_fkey FOREIGN KEY (controls_datum_id) REFERENCES public.controls_data(id) ON DELETE CASCADE;


--
-- Name: controls_data_financial_accounts controls_data_financial_accounts_financial_account_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_financial_accounts
    ADD CONSTRAINT controls_data_financial_accounts_financial_account_id_fkey FOREIGN KEY (financial_account_id) REFERENCES public.financial_accounts(id) ON DELETE CASCADE;


--
-- Name: controls_data_financial_applications controls_data_financial_applicati_financial_application_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_financial_applications
    ADD CONSTRAINT controls_data_financial_applicati_financial_application_id_fkey FOREIGN KEY (financial_application_id) REFERENCES public.financial_applications(id) ON DELETE CASCADE;


--
-- Name: controls_data_financial_applications controls_data_financial_applications_controls_datum_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_financial_applications
    ADD CONSTRAINT controls_data_financial_applications_controls_datum_id_fkey FOREIGN KEY (controls_datum_id) REFERENCES public.controls_data(id) ON DELETE CASCADE;


--
-- Name: controls_data controls_data_fraud_control_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data
    ADD CONSTRAINT controls_data_fraud_control_id_fkey FOREIGN KEY (fraud_control_id) REFERENCES public.fraud_controls(id) ON DELETE SET NULL;


--
-- Name: controls_data controls_data_issue_ident_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data
    ADD CONSTRAINT controls_data_issue_ident_id_fkey FOREIGN KEY (issue_ident_id) REFERENCES public.issue_idents(id) ON DELETE SET NULL;


--
-- Name: controls_data_issue_nature_options controls_data_issue_nature_options_controls_datum_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_issue_nature_options
    ADD CONSTRAINT controls_data_issue_nature_options_controls_datum_id_fkey FOREIGN KEY (controls_datum_id) REFERENCES public.controls_data(id) ON DELETE CASCADE;


--
-- Name: controls_data_issue_nature_options controls_data_issue_nature_options_issue_nature_option_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_issue_nature_options
    ADD CONSTRAINT controls_data_issue_nature_options_issue_nature_option_id_fkey FOREIGN KEY (issue_nature_option_id) REFERENCES public.issue_nature_options(id) ON DELETE CASCADE;


--
-- Name: controls_data controls_data_likelihood_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data
    ADD CONSTRAINT controls_data_likelihood_id_fkey FOREIGN KEY (likelihood_id) REFERENCES public.likelihoods(id) ON DELETE SET NULL;


--
-- Name: controls_data controls_data_magnitude_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data
    ADD CONSTRAINT controls_data_magnitude_id_fkey FOREIGN KEY (magnitude_id) REFERENCES public.magnitudes(id) ON DELETE SET NULL;


--
-- Name: controls_data controls_data_mrc_control_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data
    ADD CONSTRAINT controls_data_mrc_control_id_fkey FOREIGN KEY (mrc_control_id) REFERENCES public.mrc_controls(id) ON DELETE SET NULL;


--
-- Name: controls_data_narratives controls_data_narratives_controls_datum_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_narratives
    ADD CONSTRAINT controls_data_narratives_controls_datum_id_fkey FOREIGN KEY (controls_datum_id) REFERENCES public.controls_data(id) ON DELETE CASCADE;


--
-- Name: controls_data_narratives controls_data_narratives_narrative_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_narratives
    ADD CONSTRAINT controls_data_narratives_narrative_id_fkey FOREIGN KEY (narrative_id) REFERENCES public.narratives(id) ON DELETE CASCADE;


--
-- Name: controls_data controls_data_owner_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data
    ADD CONSTRAINT controls_data_owner_user_id_fkey FOREIGN KEY (owner_user_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: controls_data_pbc_owner_users controls_data_pbc_owner_users_controls_datum_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_pbc_owner_users
    ADD CONSTRAINT controls_data_pbc_owner_users_controls_datum_id_fkey FOREIGN KEY (controls_datum_id) REFERENCES public.controls_data(id) ON DELETE CASCADE;


--
-- Name: controls_data_pbc_owner_users controls_data_pbc_owner_users_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_pbc_owner_users
    ADD CONSTRAINT controls_data_pbc_owner_users_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: controls_data_pbc_status_options controls_data_pbc_status_options_controls_datum_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_pbc_status_options
    ADD CONSTRAINT controls_data_pbc_status_options_controls_datum_id_fkey FOREIGN KEY (controls_datum_id) REFERENCES public.controls_data(id) ON DELETE CASCADE;


--
-- Name: controls_data_pbc_status_options controls_data_pbc_status_options_pbc_status_option_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_pbc_status_options
    ADD CONSTRAINT controls_data_pbc_status_options_pbc_status_option_id_fkey FOREIGN KEY (pbc_status_option_id) REFERENCES public.pbc_status_options(id) ON DELETE CASCADE;


--
-- Name: controls_data controls_data_process_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data
    ADD CONSTRAINT controls_data_process_id_fkey FOREIGN KEY (process_id) REFERENCES public.processes(id);


--
-- Name: controls_data controls_data_reliance_option_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data
    ADD CONSTRAINT controls_data_reliance_option_id_fkey FOREIGN KEY (reliance_option_id) REFERENCES public.reliance_options(id);


--
-- Name: controls_data controls_data_remediation_owner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data
    ADD CONSTRAINT controls_data_remediation_owner_id_fkey FOREIGN KEY (remediation_owner_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: controls_data controls_data_reviewer_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data
    ADD CONSTRAINT controls_data_reviewer_user_id_fkey FOREIGN KEY (reviewer_user_id) REFERENCES public.users(id);


--
-- Name: controls_data controls_data_risk_level_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data
    ADD CONSTRAINT controls_data_risk_level_id_fkey FOREIGN KEY (risk_level_id) REFERENCES public.risk_levels(id) ON DELETE SET NULL;


--
-- Name: controls_data controls_data_significance_option_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data
    ADD CONSTRAINT controls_data_significance_option_id_fkey FOREIGN KEY (significance_option_id) REFERENCES public.significance_options(id) ON DELETE SET NULL;


--
-- Name: controls_data controls_data_sod_control_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data
    ADD CONSTRAINT controls_data_sod_control_id_fkey FOREIGN KEY (sod_control_id) REFERENCES public.sod_controls(id) ON DELETE SET NULL;


--
-- Name: controls_data controls_data_subprocess_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data
    ADD CONSTRAINT controls_data_subprocess_id_fkey FOREIGN KEY (subprocess_id) REFERENCES public.subprocesses(id);


--
-- Name: controls_data controls_data_subprocesses_datum_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data
    ADD CONSTRAINT controls_data_subprocesses_datum_id_fkey FOREIGN KEY (subprocesses_datum_id) REFERENCES public.subprocesses_data(id) ON DELETE SET NULL;


--
-- Name: controls_data controls_data_supervisor_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data
    ADD CONSTRAINT controls_data_supervisor_user_id_fkey FOREIGN KEY (supervisor_user_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: controls_data controls_data_test_timing_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data
    ADD CONSTRAINT controls_data_test_timing_id_fkey FOREIGN KEY (test_timing_id) REFERENCES public.test_timings(id) ON DELETE SET NULL;


--
-- Name: controls_data controls_data_test_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data
    ADD CONSTRAINT controls_data_test_type_id_fkey FOREIGN KEY (test_type_id) REFERENCES public.test_types(id) ON DELETE SET NULL;


--
-- Name: controls_data_test_types controls_data_test_types_controls_datum_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_test_types
    ADD CONSTRAINT controls_data_test_types_controls_datum_id_fkey FOREIGN KEY (controls_datum_id) REFERENCES public.controls_data(id) ON DELETE CASCADE;


--
-- Name: controls_data_test_types controls_data_test_types_test_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_test_types
    ADD CONSTRAINT controls_data_test_types_test_type_id_fkey FOREIGN KEY (test_type_id) REFERENCES public.test_types(id) ON DELETE CASCADE;


--
-- Name: controls_data_testing_strategies controls_data_testing_strategies_controls_datum_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_testing_strategies
    ADD CONSTRAINT controls_data_testing_strategies_controls_datum_id_fkey FOREIGN KEY (controls_datum_id) REFERENCES public.controls_data(id) ON DELETE CASCADE;


--
-- Name: controls_data_testing_strategies controls_data_testing_strategies_testing_strategy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_data_testing_strategies
    ADD CONSTRAINT controls_data_testing_strategies_testing_strategy_id_fkey FOREIGN KEY (testing_strategy_id) REFERENCES public.testing_strategies(id) ON DELETE CASCADE;


--
-- Name: controls_risks controls_risks_control_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_risks
    ADD CONSTRAINT controls_risks_control_id_fkey FOREIGN KEY (control_id) REFERENCES public.controls(id) ON DELETE CASCADE;


--
-- Name: controls_risks controls_risks_risk_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls_risks
    ADD CONSTRAINT controls_risks_risk_id_fkey FOREIGN KEY (risk_id) REFERENCES public.risks(id) ON DELETE CASCADE;


--
-- Name: controls controls_subprocess_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.controls
    ADD CONSTRAINT controls_subprocess_id_fkey FOREIGN KEY (subprocess_id) REFERENCES public.subprocesses(id) ON DELETE RESTRICT;


--
-- Name: crons crons_cron_option_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.crons
    ADD CONSTRAINT crons_cron_option_id_fkey FOREIGN KEY (cron_option_id) REFERENCES public.cron_options(id);


--
-- Name: crons crons_task_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.crons
    ADD CONSTRAINT crons_task_group_id_fkey FOREIGN KEY (task_group_id) REFERENCES public.task_groups(id) ON DELETE CASCADE;


--
-- Name: document_diffs document_diffs_document_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.document_diffs
    ADD CONSTRAINT document_diffs_document_id_fkey FOREIGN KEY (document_id) REFERENCES public.documents(id);


--
-- Name: document_diffs document_diffs_from_version_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.document_diffs
    ADD CONSTRAINT document_diffs_from_version_id_fkey FOREIGN KEY (from_version_id) REFERENCES public.document_versions(id) ON DELETE SET NULL;


--
-- Name: document_diffs document_diffs_to_version_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.document_diffs
    ADD CONSTRAINT document_diffs_to_version_id_fkey FOREIGN KEY (to_version_id) REFERENCES public.document_versions(id) ON DELETE SET NULL;


--
-- Name: document_versions document_versions_document_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.document_versions
    ADD CONSTRAINT document_versions_document_id_fkey FOREIGN KEY (document_id) REFERENCES public.documents(id);


--
-- Name: document_versions document_versions_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.document_versions
    ADD CONSTRAINT document_versions_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: email_logs email_logs_from_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.email_logs
    ADD CONSTRAINT email_logs_from_user_id_fkey FOREIGN KEY (from_user_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: email_logs email_logs_to_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.email_logs
    ADD CONSTRAINT email_logs_to_user_id_fkey FOREIGN KEY (to_user_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: entities entities_region_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.entities
    ADD CONSTRAINT entities_region_id_fkey FOREIGN KEY (region_id) REFERENCES public.regions(id) ON DELETE RESTRICT;


--
-- Name: exclude_risks exclude_risks_entity_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.exclude_risks
    ADD CONSTRAINT exclude_risks_entity_id_fkey FOREIGN KEY (entity_id) REFERENCES public.entities(id) ON DELETE RESTRICT;


--
-- Name: exclude_risks exclude_risks_risk_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.exclude_risks
    ADD CONSTRAINT exclude_risks_risk_id_fkey FOREIGN KEY (risk_id) REFERENCES public.risks(id) ON DELETE RESTRICT;


--
-- Name: file_versions file_versions_file_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.file_versions
    ADD CONSTRAINT file_versions_file_id_fkey FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- Name: file_versions file_versions_upload_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.file_versions
    ADD CONSTRAINT file_versions_upload_user_id_fkey FOREIGN KEY (upload_user_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: files files_upload_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_upload_user_id_fkey FOREIGN KEY (upload_user_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: global_audits global_audits_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.global_audits
    ADD CONSTRAINT global_audits_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: import_records import_records_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.import_records
    ADD CONSTRAINT import_records_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: issues issues_aggregation_reference_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues
    ADD CONSTRAINT issues_aggregation_reference_id_fkey FOREIGN KEY (aggregation_reference_id) REFERENCES public.aggregation_references(id);


--
-- Name: issues issues_amend_by_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues
    ADD CONSTRAINT issues_amend_by_user_id_fkey FOREIGN KEY (amend_by_user_id) REFERENCES public.users(id);


--
-- Name: issues issues_archive_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues
    ADD CONSTRAINT issues_archive_id_fkey FOREIGN KEY (archive_id) REFERENCES public.archives(id);


--
-- Name: issues issues_audit_contact_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues
    ADD CONSTRAINT issues_audit_contact_user_id_fkey FOREIGN KEY (audit_contact_user_id) REFERENCES public.users(id);


--
-- Name: issues issues_audit_director_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues
    ADD CONSTRAINT issues_audit_director_user_id_fkey FOREIGN KEY (audit_director_user_id) REFERENCES public.users(id);


--
-- Name: issues issues_business_contact_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues
    ADD CONSTRAINT issues_business_contact_user_id_fkey FOREIGN KEY (business_contact_user_id) REFERENCES public.users(id);


--
-- Name: issues issues_business_owner_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues
    ADD CONSTRAINT issues_business_owner_user_id_fkey FOREIGN KEY (business_owner_user_id) REFERENCES public.users(id);


--
-- Name: issues_business_process_owner_users issues_business_process_owner_users_issue_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues_business_process_owner_users
    ADD CONSTRAINT issues_business_process_owner_users_issue_id_fkey FOREIGN KEY (issue_id) REFERENCES public.issues(id) ON DELETE CASCADE;


--
-- Name: issues_business_process_owner_users issues_business_process_owner_users_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues_business_process_owner_users
    ADD CONSTRAINT issues_business_process_owner_users_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: issues issues_closed_by_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues
    ADD CONSTRAINT issues_closed_by_user_id_fkey FOREIGN KEY (closed_by_user_id) REFERENCES public.users(id);


--
-- Name: issues issues_controls_datum_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues
    ADD CONSTRAINT issues_controls_datum_id_fkey FOREIGN KEY (controls_datum_id) REFERENCES public.controls_data(id);


--
-- Name: issues issues_creator_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues
    ADD CONSTRAINT issues_creator_user_id_fkey FOREIGN KEY (creator_user_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: issues issues_deficiency_level_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues
    ADD CONSTRAINT issues_deficiency_level_id_fkey FOREIGN KEY (deficiency_level_id) REFERENCES public.deficiency_levels(id) ON DELETE SET NULL;


--
-- Name: issues_deficiency_types issues_deficiency_types_deficiency_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues_deficiency_types
    ADD CONSTRAINT issues_deficiency_types_deficiency_type_id_fkey FOREIGN KEY (deficiency_type_id) REFERENCES public.deficiency_types(id) ON DELETE CASCADE;


--
-- Name: issues_deficiency_types issues_deficiency_types_issue_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues_deficiency_types
    ADD CONSTRAINT issues_deficiency_types_issue_id_fkey FOREIGN KEY (issue_id) REFERENCES public.issues(id) ON DELETE CASCADE;


--
-- Name: issues issues_executive_owner_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues
    ADD CONSTRAINT issues_executive_owner_user_id_fkey FOREIGN KEY (executive_owner_user_id) REFERENCES public.users(id);


--
-- Name: issues issues_executive_vice_president_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues
    ADD CONSTRAINT issues_executive_vice_president_user_id_fkey FOREIGN KEY (executive_vice_president_user_id) REFERENCES public.users(id);


--
-- Name: issues_finance_process_owner_users issues_finance_process_owner_users_issue_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues_finance_process_owner_users
    ADD CONSTRAINT issues_finance_process_owner_users_issue_id_fkey FOREIGN KEY (issue_id) REFERENCES public.issues(id) ON DELETE CASCADE;


--
-- Name: issues_finance_process_owner_users issues_finance_process_owner_users_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues_finance_process_owner_users
    ADD CONSTRAINT issues_finance_process_owner_users_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: issues_impacted_sections issues_impacted_sections_impacted_section_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues_impacted_sections
    ADD CONSTRAINT issues_impacted_sections_impacted_section_id_fkey FOREIGN KEY (impacted_section_id) REFERENCES public.impacted_sections(id) ON DELETE CASCADE;


--
-- Name: issues_impacted_sections issues_impacted_sections_issue_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues_impacted_sections
    ADD CONSTRAINT issues_impacted_sections_issue_id_fkey FOREIGN KEY (issue_id) REFERENCES public.issues(id) ON DELETE CASCADE;


--
-- Name: issues issues_internal_control_component_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues
    ADD CONSTRAINT issues_internal_control_component_id_fkey FOREIGN KEY (internal_control_component_id) REFERENCES public.internal_control_components(id) ON DELETE SET NULL;


--
-- Name: issues_issue_custom_multiselect1_options issues_issue_custom_multisele_issue_custom_multiselect1_op_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues_issue_custom_multiselect1_options
    ADD CONSTRAINT issues_issue_custom_multisele_issue_custom_multiselect1_op_fkey FOREIGN KEY (issue_custom_multiselect1_option_id) REFERENCES public.issue_custom_multiselect1_options(id) ON DELETE CASCADE;


--
-- Name: issues_issue_custom_multiselect2_options issues_issue_custom_multisele_issue_custom_multiselect2_op_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues_issue_custom_multiselect2_options
    ADD CONSTRAINT issues_issue_custom_multisele_issue_custom_multiselect2_op_fkey FOREIGN KEY (issue_custom_multiselect2_option_id) REFERENCES public.issue_custom_multiselect2_options(id) ON DELETE CASCADE;


--
-- Name: issues_issue_custom_multiselect1_options issues_issue_custom_multiselect1_options_issue_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues_issue_custom_multiselect1_options
    ADD CONSTRAINT issues_issue_custom_multiselect1_options_issue_id_fkey FOREIGN KEY (issue_id) REFERENCES public.issues(id) ON DELETE CASCADE;


--
-- Name: issues_issue_custom_multiselect2_options issues_issue_custom_multiselect2_options_issue_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues_issue_custom_multiselect2_options
    ADD CONSTRAINT issues_issue_custom_multiselect2_options_issue_id_fkey FOREIGN KEY (issue_id) REFERENCES public.issues(id) ON DELETE CASCADE;


--
-- Name: issues issues_issue_custom_select1_option_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues
    ADD CONSTRAINT issues_issue_custom_select1_option_id_fkey FOREIGN KEY (issue_custom_select1_option_id) REFERENCES public.issue_custom_select1_options(id);


--
-- Name: issues issues_issue_custom_select2_option_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues
    ADD CONSTRAINT issues_issue_custom_select2_option_id_fkey FOREIGN KEY (issue_custom_select2_option_id) REFERENCES public.issue_custom_select2_options(id);


--
-- Name: issues issues_issue_ident_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues
    ADD CONSTRAINT issues_issue_ident_id_fkey FOREIGN KEY (issue_ident_id) REFERENCES public.issue_idents(id);


--
-- Name: issues_issue_locations issues_issue_locations_issue_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues_issue_locations
    ADD CONSTRAINT issues_issue_locations_issue_id_fkey FOREIGN KEY (issue_id) REFERENCES public.issues(id) ON DELETE CASCADE;


--
-- Name: issues_issue_locations issues_issue_locations_issue_location_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues_issue_locations
    ADD CONSTRAINT issues_issue_locations_issue_location_id_fkey FOREIGN KEY (issue_location_id) REFERENCES public.issue_locations(id) ON DELETE CASCADE;


--
-- Name: issues_issue_nature_options issues_issue_nature_options_issue_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues_issue_nature_options
    ADD CONSTRAINT issues_issue_nature_options_issue_id_fkey FOREIGN KEY (issue_id) REFERENCES public.issues(id) ON DELETE CASCADE;


--
-- Name: issues_issue_nature_options issues_issue_nature_options_issue_nature_option_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues_issue_nature_options
    ADD CONSTRAINT issues_issue_nature_options_issue_nature_option_id_fkey FOREIGN KEY (issue_nature_option_id) REFERENCES public.issue_nature_options(id) ON DELETE CASCADE;


--
-- Name: issues issues_issue_rating_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues
    ADD CONSTRAINT issues_issue_rating_id_fkey FOREIGN KEY (issue_rating_id) REFERENCES public.issue_ratings(id);


--
-- Name: issues issues_issue_remediation_custom_select1_option_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues
    ADD CONSTRAINT issues_issue_remediation_custom_select1_option_id_fkey FOREIGN KEY (issue_remediation_custom_select1_option_id) REFERENCES public.issue_remediation_custom_select1_options(id);


--
-- Name: issues issues_issue_remediation_custom_select2_option_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues
    ADD CONSTRAINT issues_issue_remediation_custom_select2_option_id_fkey FOREIGN KEY (issue_remediation_custom_select2_option_id) REFERENCES public.issue_remediation_custom_select2_options(id);


--
-- Name: issues issues_likelihood_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues
    ADD CONSTRAINT issues_likelihood_id_fkey FOREIGN KEY (likelihood_id) REFERENCES public.likelihoods(id);


--
-- Name: issues issues_magnitude_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues
    ADD CONSTRAINT issues_magnitude_id_fkey FOREIGN KEY (magnitude_id) REFERENCES public.magnitudes(id);


--
-- Name: issues issues_officer_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues
    ADD CONSTRAINT issues_officer_user_id_fkey FOREIGN KEY (officer_user_id) REFERENCES public.users(id);


--
-- Name: issues issues_open_by_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues
    ADD CONSTRAINT issues_open_by_user_id_fkey FOREIGN KEY (open_by_user_id) REFERENCES public.users(id);


--
-- Name: issues issues_ops_audit_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues
    ADD CONSTRAINT issues_ops_audit_id_fkey FOREIGN KEY (ops_audit_id) REFERENCES public.ops_audits(id);


--
-- Name: issues issues_ops_audit_item_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues
    ADD CONSTRAINT issues_ops_audit_item_id_fkey FOREIGN KEY (ops_audit_item_id) REFERENCES public.ops_audit_items(id);


--
-- Name: issues issues_pending_remediation_by_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues
    ADD CONSTRAINT issues_pending_remediation_by_user_id_fkey FOREIGN KEY (pending_remediation_by_user_id) REFERENCES public.users(id);


--
-- Name: issues issues_reference_issue_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues
    ADD CONSTRAINT issues_reference_issue_id_fkey FOREIGN KEY (reference_issue_id) REFERENCES public.issues(id);


--
-- Name: issues issues_remediated_by_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues
    ADD CONSTRAINT issues_remediated_by_user_id_fkey FOREIGN KEY (remediated_by_user_id) REFERENCES public.users(id);


--
-- Name: issues issues_remediation_owner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues
    ADD CONSTRAINT issues_remediation_owner_id_fkey FOREIGN KEY (remediation_owner_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: issues issues_reopen_by_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues
    ADD CONSTRAINT issues_reopen_by_user_id_fkey FOREIGN KEY (reopen_by_user_id) REFERENCES public.users(id);


--
-- Name: issues issues_reviewer_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues
    ADD CONSTRAINT issues_reviewer_user_id_fkey FOREIGN KEY (reviewer_user_id) REFERENCES public.users(id);


--
-- Name: issues_root_cause_types issues_root_cause_types_issue_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues_root_cause_types
    ADD CONSTRAINT issues_root_cause_types_issue_id_fkey FOREIGN KEY (issue_id) REFERENCES public.issues(id) ON DELETE CASCADE;


--
-- Name: issues_root_cause_types issues_root_cause_types_root_cause_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues_root_cause_types
    ADD CONSTRAINT issues_root_cause_types_root_cause_type_id_fkey FOREIGN KEY (root_cause_type_id) REFERENCES public.root_cause_types(id) ON DELETE CASCADE;


--
-- Name: issues issues_sox_impact_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues
    ADD CONSTRAINT issues_sox_impact_id_fkey FOREIGN KEY (sox_impact_id) REFERENCES public.sox_impacts(id);


--
-- Name: issues_subscriber_users issues_subscriber_users_issue_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues_subscriber_users
    ADD CONSTRAINT issues_subscriber_users_issue_id_fkey FOREIGN KEY (issue_id) REFERENCES public.issues(id) ON DELETE CASCADE;


--
-- Name: issues_subscriber_users issues_subscriber_users_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues_subscriber_users
    ADD CONSTRAINT issues_subscriber_users_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: issues issues_test_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues
    ADD CONSTRAINT issues_test_id_fkey FOREIGN KEY (test_id) REFERENCES public.tests(id);


--
-- Name: issues issues_test_section_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues
    ADD CONSTRAINT issues_test_section_id_fkey FOREIGN KEY (test_section_id) REFERENCES public.test_sections(id);


--
-- Name: issues issues_tester_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues
    ADD CONSTRAINT issues_tester_user_id_fkey FOREIGN KEY (tester_user_id) REFERENCES public.users(id);


--
-- Name: issues issues_vice_president_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues
    ADD CONSTRAINT issues_vice_president_user_id_fkey FOREIGN KEY (vice_president_user_id) REFERENCES public.users(id);


--
-- Name: locks locks_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.locks
    ADD CONSTRAINT locks_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: login_histories login_histories_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.login_histories
    ADD CONSTRAINT login_histories_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: managed_changes managed_changes_changed_by_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.managed_changes
    ADD CONSTRAINT managed_changes_changed_by_user_id_fkey FOREIGN KEY (changed_by_user_id) REFERENCES public.users(id) ON DELETE RESTRICT;


--
-- Name: managed_changes managed_changes_completed_by_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.managed_changes
    ADD CONSTRAINT managed_changes_completed_by_user_id_fkey FOREIGN KEY (completed_by_user_id) REFERENCES public.users(id) ON DELETE RESTRICT;


--
-- Name: managed_changes managed_changes_merged_by_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.managed_changes
    ADD CONSTRAINT managed_changes_merged_by_user_id_fkey FOREIGN KEY (merged_by_user_id) REFERENCES public.users(id) ON DELETE RESTRICT;


--
-- Name: managed_changes managed_changes_question_response_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.managed_changes
    ADD CONSTRAINT managed_changes_question_response_id_fkey FOREIGN KEY (question_response_id) REFERENCES public.question_responses(id);


--
-- Name: managed_changes managed_changes_task_item_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.managed_changes
    ADD CONSTRAINT managed_changes_task_item_id_fkey FOREIGN KEY (task_item_id) REFERENCES public.task_items(id) ON DELETE CASCADE;


--
-- Name: narrative_owners narrative_owners_narrative_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.narrative_owners
    ADD CONSTRAINT narrative_owners_narrative_id_fkey FOREIGN KEY (narrative_id) REFERENCES public.narratives(id) ON DELETE CASCADE;


--
-- Name: narrative_owners narrative_owners_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.narrative_owners
    ADD CONSTRAINT narrative_owners_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: narrative_sections narrative_sections_narrative_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.narrative_sections
    ADD CONSTRAINT narrative_sections_narrative_id_fkey FOREIGN KEY (narrative_id) REFERENCES public.narratives(id) ON DELETE SET NULL;


--
-- Name: notification_messages notification_messages_from_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.notification_messages
    ADD CONSTRAINT notification_messages_from_user_id_fkey FOREIGN KEY (from_user_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: notification_messages notification_messages_to_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.notification_messages
    ADD CONSTRAINT notification_messages_to_user_id_fkey FOREIGN KEY (to_user_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: ops_audit_category_sections ops_audit_category_sections_ops_audit_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_category_sections
    ADD CONSTRAINT ops_audit_category_sections_ops_audit_category_id_fkey FOREIGN KEY (ops_audit_category_id) REFERENCES public.ops_audit_categories(id);


--
-- Name: ops_audit_category_sections ops_audit_category_sections_ops_audit_section_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_category_sections
    ADD CONSTRAINT ops_audit_category_sections_ops_audit_section_id_fkey FOREIGN KEY (ops_audit_section_id) REFERENCES public.ops_audit_sections(id);


--
-- Name: ops_audit_items_business_owner_users ops_audit_items_business_owner_users_ops_audit_item_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_items_business_owner_users
    ADD CONSTRAINT ops_audit_items_business_owner_users_ops_audit_item_id_fkey FOREIGN KEY (ops_audit_item_id) REFERENCES public.ops_audit_items(id) ON DELETE CASCADE;


--
-- Name: ops_audit_items_business_owner_users ops_audit_items_business_owner_users_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_items_business_owner_users
    ADD CONSTRAINT ops_audit_items_business_owner_users_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: ops_audit_items ops_audit_items_complete_by_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_items
    ADD CONSTRAINT ops_audit_items_complete_by_user_id_fkey FOREIGN KEY (complete_by_user_id) REFERENCES public.users(id);


--
-- Name: ops_audit_items_controls_data ops_audit_items_controls_data_controls_datum_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_items_controls_data
    ADD CONSTRAINT ops_audit_items_controls_data_controls_datum_id_fkey FOREIGN KEY (controls_datum_id) REFERENCES public.controls_data(id) ON DELETE RESTRICT;


--
-- Name: ops_audit_items_controls_data ops_audit_items_controls_data_ops_audit_item_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_items_controls_data
    ADD CONSTRAINT ops_audit_items_controls_data_ops_audit_item_id_fkey FOREIGN KEY (ops_audit_item_id) REFERENCES public.ops_audit_items(id) ON DELETE RESTRICT;


--
-- Name: ops_audit_items ops_audit_items_ops_audit_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_items
    ADD CONSTRAINT ops_audit_items_ops_audit_id_fkey FOREIGN KEY (ops_audit_id) REFERENCES public.ops_audits(id) ON DELETE RESTRICT;


--
-- Name: ops_audit_items ops_audit_items_ops_audit_section_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_items
    ADD CONSTRAINT ops_audit_items_ops_audit_section_id_fkey FOREIGN KEY (ops_audit_section_id) REFERENCES public.ops_audit_sections(id) ON DELETE RESTRICT;


--
-- Name: ops_audit_items ops_audit_items_ops_audit_section_instance_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_items
    ADD CONSTRAINT ops_audit_items_ops_audit_section_instance_id_fkey FOREIGN KEY (ops_audit_section_instance_id) REFERENCES public.ops_audit_section_instances(id);


--
-- Name: ops_audit_items ops_audit_items_ops_audit_subsection_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_items
    ADD CONSTRAINT ops_audit_items_ops_audit_subsection_id_fkey FOREIGN KEY (ops_audit_subsection_id) REFERENCES public.ops_audit_subsections(id);


--
-- Name: ops_audit_items_ops_custom_multiselect1_options ops_audit_items_ops_custom_mu_ops_custom_multiselect1_opti_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_items_ops_custom_multiselect1_options
    ADD CONSTRAINT ops_audit_items_ops_custom_mu_ops_custom_multiselect1_opti_fkey FOREIGN KEY (ops_custom_multiselect1_option_id) REFERENCES public.ops_custom_multiselect1_options(id) ON DELETE CASCADE;


--
-- Name: ops_audit_items_ops_custom_multiselect1_options ops_audit_items_ops_custom_multiselect1__ops_audit_item_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_items_ops_custom_multiselect1_options
    ADD CONSTRAINT ops_audit_items_ops_custom_multiselect1__ops_audit_item_id_fkey FOREIGN KEY (ops_audit_item_id) REFERENCES public.ops_audit_items(id) ON DELETE CASCADE;


--
-- Name: ops_audit_items ops_audit_items_ops_custom_select1_option_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_items
    ADD CONSTRAINT ops_audit_items_ops_custom_select1_option_id_fkey FOREIGN KEY (ops_custom_select1_option_id) REFERENCES public.ops_custom_select1_options(id);


--
-- Name: ops_audit_items ops_audit_items_ops_custom_select2_option_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_items
    ADD CONSTRAINT ops_audit_items_ops_custom_select2_option_id_fkey FOREIGN KEY (ops_custom_select2_option_id) REFERENCES public.ops_custom_select2_options(id);


--
-- Name: ops_audit_items ops_audit_items_ops_rating_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_items
    ADD CONSTRAINT ops_audit_items_ops_rating_id_fkey FOREIGN KEY (ops_rating_id) REFERENCES public.ops_ratings(id);


--
-- Name: ops_audit_items ops_audit_items_ops_risk_level_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_items
    ADD CONSTRAINT ops_audit_items_ops_risk_level_id_fkey FOREIGN KEY (ops_risk_level_id) REFERENCES public.ops_risk_levels(id);


--
-- Name: ops_audit_items ops_audit_items_preparer_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_items
    ADD CONSTRAINT ops_audit_items_preparer_user_id_fkey FOREIGN KEY (preparer_user_id) REFERENCES public.users(id);


--
-- Name: ops_audit_items ops_audit_items_reviewed_by_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_items
    ADD CONSTRAINT ops_audit_items_reviewed_by_user_id_fkey FOREIGN KEY (reviewed_by_user_id) REFERENCES public.users(id);


--
-- Name: ops_audit_items ops_audit_items_reviewer_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_items
    ADD CONSTRAINT ops_audit_items_reviewer_user_id_fkey FOREIGN KEY (reviewer_user_id) REFERENCES public.users(id);


--
-- Name: ops_audit_items ops_audit_items_secondary_reviewer_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_items
    ADD CONSTRAINT ops_audit_items_secondary_reviewer_user_id_fkey FOREIGN KEY (secondary_reviewer_user_id) REFERENCES public.users(id);


--
-- Name: ops_audit_items ops_audit_items_under_review_1_by_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_items
    ADD CONSTRAINT ops_audit_items_under_review_1_by_user_id_fkey FOREIGN KEY (under_review_1_by_user_id) REFERENCES public.users(id);


--
-- Name: ops_audit_items ops_audit_items_under_review_2_by_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_items
    ADD CONSTRAINT ops_audit_items_under_review_2_by_user_id_fkey FOREIGN KEY (under_review_2_by_user_id) REFERENCES public.users(id);


--
-- Name: ops_audit_owner_users ops_audit_owner_users_ops_audit_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_owner_users
    ADD CONSTRAINT ops_audit_owner_users_ops_audit_id_fkey FOREIGN KEY (ops_audit_id) REFERENCES public.ops_audits(id) ON DELETE RESTRICT;


--
-- Name: ops_audit_owner_users ops_audit_owner_users_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_owner_users
    ADD CONSTRAINT ops_audit_owner_users_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE RESTRICT;


--
-- Name: ops_audit_section_instances ops_audit_section_instances_ops_audit_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_section_instances
    ADD CONSTRAINT ops_audit_section_instances_ops_audit_id_fkey FOREIGN KEY (ops_audit_id) REFERENCES public.ops_audits(id);


--
-- Name: ops_audit_section_instances ops_audit_section_instances_ops_audit_section_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_section_instances
    ADD CONSTRAINT ops_audit_section_instances_ops_audit_section_id_fkey FOREIGN KEY (ops_audit_section_id) REFERENCES public.ops_audit_sections(id);


--
-- Name: ops_audit_subsections ops_audit_subsections_ops_audit_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_subsections
    ADD CONSTRAINT ops_audit_subsections_ops_audit_id_fkey FOREIGN KEY (ops_audit_id) REFERENCES public.ops_audits(id);


--
-- Name: ops_audit_subsections ops_audit_subsections_ops_audit_section_instance_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audit_subsections
    ADD CONSTRAINT ops_audit_subsections_ops_audit_section_instance_id_fkey FOREIGN KEY (ops_audit_section_instance_id) REFERENCES public.ops_audit_section_instances(id);


--
-- Name: ops_audits ops_audits_archived_by_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audits
    ADD CONSTRAINT ops_audits_archived_by_user_id_fkey FOREIGN KEY (archived_by_user_id) REFERENCES public.users(id);


--
-- Name: ops_audits_business_process_owner_users ops_audits_business_process_owner_users_ops_audit_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audits_business_process_owner_users
    ADD CONSTRAINT ops_audits_business_process_owner_users_ops_audit_id_fkey FOREIGN KEY (ops_audit_id) REFERENCES public.ops_audits(id) ON DELETE CASCADE;


--
-- Name: ops_audits_business_process_owner_users ops_audits_business_process_owner_users_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audits_business_process_owner_users
    ADD CONSTRAINT ops_audits_business_process_owner_users_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: ops_audits_business_units ops_audits_business_units_business_unit_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audits_business_units
    ADD CONSTRAINT ops_audits_business_units_business_unit_id_fkey FOREIGN KEY (business_unit_id) REFERENCES public.business_units(id) ON DELETE CASCADE;


--
-- Name: ops_audits_business_units ops_audits_business_units_ops_audit_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audits_business_units
    ADD CONSTRAINT ops_audits_business_units_ops_audit_id_fkey FOREIGN KEY (ops_audit_id) REFERENCES public.ops_audits(id) ON DELETE CASCADE;


--
-- Name: ops_audits ops_audits_canceled_by_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audits
    ADD CONSTRAINT ops_audits_canceled_by_user_id_fkey FOREIGN KEY (canceled_by_user_id) REFERENCES public.users(id);


--
-- Name: ops_audits ops_audits_creator_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audits
    ADD CONSTRAINT ops_audits_creator_user_id_fkey FOREIGN KEY (creator_user_id) REFERENCES public.users(id);


--
-- Name: ops_audits_executive_users ops_audits_executive_users_ops_audit_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audits_executive_users
    ADD CONSTRAINT ops_audits_executive_users_ops_audit_id_fkey FOREIGN KEY (ops_audit_id) REFERENCES public.ops_audits(id) ON DELETE CASCADE;


--
-- Name: ops_audits_executive_users ops_audits_executive_users_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audits_executive_users
    ADD CONSTRAINT ops_audits_executive_users_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: ops_audits_finance_process_owner_users ops_audits_finance_process_owner_users_ops_audit_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audits_finance_process_owner_users
    ADD CONSTRAINT ops_audits_finance_process_owner_users_ops_audit_id_fkey FOREIGN KEY (ops_audit_id) REFERENCES public.ops_audits(id) ON DELETE CASCADE;


--
-- Name: ops_audits_finance_process_owner_users ops_audits_finance_process_owner_users_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audits_finance_process_owner_users
    ADD CONSTRAINT ops_audits_finance_process_owner_users_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: ops_audits ops_audits_lead_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audits
    ADD CONSTRAINT ops_audits_lead_user_id_fkey FOREIGN KEY (lead_user_id) REFERENCES public.users(id);


--
-- Name: ops_audits_officer_users ops_audits_officer_users_ops_audit_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audits_officer_users
    ADD CONSTRAINT ops_audits_officer_users_ops_audit_id_fkey FOREIGN KEY (ops_audit_id) REFERENCES public.ops_audits(id) ON DELETE CASCADE;


--
-- Name: ops_audits_officer_users ops_audits_officer_users_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audits_officer_users
    ADD CONSTRAINT ops_audits_officer_users_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: ops_audits ops_audits_ops_audit_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audits
    ADD CONSTRAINT ops_audits_ops_audit_category_id_fkey FOREIGN KEY (ops_audit_category_id) REFERENCES public.ops_audit_categories(id);


--
-- Name: ops_audits_ops_audit_custom_multiselect2_options ops_audits_ops_audit_custom__ops_audit_custom_multiselect_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audits_ops_audit_custom_multiselect2_options
    ADD CONSTRAINT ops_audits_ops_audit_custom__ops_audit_custom_multiselect_fkey1 FOREIGN KEY (ops_audit_custom_multiselect2_option_id) REFERENCES public.ops_audit_custom_multiselect2_options(id) ON DELETE CASCADE;


--
-- Name: ops_audits_ops_audit_custom_multiselect1_options ops_audits_ops_audit_custom_m_ops_audit_custom_multiselect_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audits_ops_audit_custom_multiselect1_options
    ADD CONSTRAINT ops_audits_ops_audit_custom_m_ops_audit_custom_multiselect_fkey FOREIGN KEY (ops_audit_custom_multiselect1_option_id) REFERENCES public.ops_audit_custom_multiselect1_options(id) ON DELETE CASCADE;


--
-- Name: ops_audits_ops_audit_custom_multiselect1_options ops_audits_ops_audit_custom_multiselect1_opti_ops_audit_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audits_ops_audit_custom_multiselect1_options
    ADD CONSTRAINT ops_audits_ops_audit_custom_multiselect1_opti_ops_audit_id_fkey FOREIGN KEY (ops_audit_id) REFERENCES public.ops_audits(id) ON DELETE CASCADE;


--
-- Name: ops_audits_ops_audit_custom_multiselect2_options ops_audits_ops_audit_custom_multiselect2_opti_ops_audit_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audits_ops_audit_custom_multiselect2_options
    ADD CONSTRAINT ops_audits_ops_audit_custom_multiselect2_opti_ops_audit_id_fkey FOREIGN KEY (ops_audit_id) REFERENCES public.ops_audits(id) ON DELETE CASCADE;


--
-- Name: ops_audits ops_audits_ops_audit_custom_select1_option_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audits
    ADD CONSTRAINT ops_audits_ops_audit_custom_select1_option_id_fkey FOREIGN KEY (ops_audit_custom_select1_option_id) REFERENCES public.ops_audit_custom_select1_options(id);


--
-- Name: ops_audits ops_audits_ops_audit_custom_select2_option_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audits
    ADD CONSTRAINT ops_audits_ops_audit_custom_select2_option_id_fkey FOREIGN KEY (ops_audit_custom_select2_option_id) REFERENCES public.ops_audit_custom_select2_options(id);


--
-- Name: ops_audits ops_audits_ops_audit_custom_select3_option_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audits
    ADD CONSTRAINT ops_audits_ops_audit_custom_select3_option_id_fkey FOREIGN KEY (ops_audit_custom_select3_option_id) REFERENCES public.ops_audit_custom_select3_options(id);


--
-- Name: ops_audits_ops_audit_locations ops_audits_ops_audit_locations_ops_audit_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audits_ops_audit_locations
    ADD CONSTRAINT ops_audits_ops_audit_locations_ops_audit_id_fkey FOREIGN KEY (ops_audit_id) REFERENCES public.ops_audits(id) ON DELETE RESTRICT;


--
-- Name: ops_audits_ops_audit_locations ops_audits_ops_audit_locations_ops_audit_location_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audits_ops_audit_locations
    ADD CONSTRAINT ops_audits_ops_audit_locations_ops_audit_location_id_fkey FOREIGN KEY (ops_audit_location_id) REFERENCES public.ops_audit_locations(id) ON DELETE RESTRICT;


--
-- Name: ops_audits ops_audits_ops_audit_opinion_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audits
    ADD CONSTRAINT ops_audits_ops_audit_opinion_id_fkey FOREIGN KEY (ops_audit_opinion_id) REFERENCES public.ops_audit_opinions(id);


--
-- Name: ops_audits ops_audits_ops_audit_period_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audits
    ADD CONSTRAINT ops_audits_ops_audit_period_id_fkey FOREIGN KEY (ops_audit_period_id) REFERENCES public.ops_audit_periods(id);


--
-- Name: ops_audits ops_audits_ops_audit_result_custom_select1_option_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audits
    ADD CONSTRAINT ops_audits_ops_audit_result_custom_select1_option_id_fkey FOREIGN KEY (ops_audit_result_custom_select1_option_id) REFERENCES public.ops_audit_result_custom_select1_options(id);


--
-- Name: ops_audits ops_audits_ops_audit_result_custom_select2_option_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audits
    ADD CONSTRAINT ops_audits_ops_audit_result_custom_select2_option_id_fkey FOREIGN KEY (ops_audit_result_custom_select2_option_id) REFERENCES public.ops_audit_result_custom_select2_options(id);


--
-- Name: ops_audits ops_audits_ops_audit_result_custom_select3_option_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audits
    ADD CONSTRAINT ops_audits_ops_audit_result_custom_select3_option_id_fkey FOREIGN KEY (ops_audit_result_custom_select3_option_id) REFERENCES public.ops_audit_result_custom_select3_options(id);


--
-- Name: ops_audits ops_audits_ops_audit_result_custom_select4_option_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audits
    ADD CONSTRAINT ops_audits_ops_audit_result_custom_select4_option_id_fkey FOREIGN KEY (ops_audit_result_custom_select4_option_id) REFERENCES public.ops_audit_result_custom_select4_options(id);


--
-- Name: ops_audits ops_audits_ops_audit_risk_level_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audits
    ADD CONSTRAINT ops_audits_ops_audit_risk_level_id_fkey FOREIGN KEY (ops_audit_risk_level_id) REFERENCES public.ops_audit_risk_levels(id);


--
-- Name: ops_audits ops_audits_project_director_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audits
    ADD CONSTRAINT ops_audits_project_director_user_id_fkey FOREIGN KEY (project_director_user_id) REFERENCES public.users(id);


--
-- Name: ops_audits ops_audits_project_leader_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audits
    ADD CONSTRAINT ops_audits_project_leader_user_id_fkey FOREIGN KEY (project_leader_user_id) REFERENCES public.users(id);


--
-- Name: ops_audits ops_audits_started_by_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audits
    ADD CONSTRAINT ops_audits_started_by_user_id_fkey FOREIGN KEY (started_by_user_id) REFERENCES public.users(id);


--
-- Name: ops_audits_supervisor_users ops_audits_supervisor_users_ops_audit_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audits_supervisor_users
    ADD CONSTRAINT ops_audits_supervisor_users_ops_audit_id_fkey FOREIGN KEY (ops_audit_id) REFERENCES public.ops_audits(id) ON DELETE CASCADE;


--
-- Name: ops_audits_supervisor_users ops_audits_supervisor_users_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_audits_supervisor_users
    ADD CONSTRAINT ops_audits_supervisor_users_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: ops_ra_process_entities ops_ra_process_entities_entity_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_ra_process_entities
    ADD CONSTRAINT ops_ra_process_entities_entity_id_fkey FOREIGN KEY (entity_id) REFERENCES public.entities(id) ON DELETE CASCADE;


--
-- Name: ops_ra_process_entities ops_ra_process_entities_ops_risk_assessment_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_ra_process_entities
    ADD CONSTRAINT ops_ra_process_entities_ops_risk_assessment_id_fkey FOREIGN KEY (ops_risk_assessment_id) REFERENCES public.ops_risk_assessments(id) ON DELETE CASCADE;


--
-- Name: ops_ra_process_entities ops_ra_process_entities_process_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_ra_process_entities
    ADD CONSTRAINT ops_ra_process_entities_process_id_fkey FOREIGN KEY (process_id) REFERENCES public.processes(id) ON DELETE CASCADE;


--
-- Name: ops_ra_values ops_ra_values_ops_ra_process_entity_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_ra_values
    ADD CONSTRAINT ops_ra_values_ops_ra_process_entity_id_fkey FOREIGN KEY (ops_ra_process_entity_id) REFERENCES public.ops_ra_process_entities(id) ON DELETE CASCADE;


--
-- Name: ops_ra_values ops_ra_values_ops_risk_criteria_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_ra_values
    ADD CONSTRAINT ops_ra_values_ops_risk_criteria_id_fkey FOREIGN KEY (ops_risk_criteria_id) REFERENCES public.ops_risk_criteria(id) ON DELETE CASCADE;


--
-- Name: ops_ra_values ops_ra_values_ops_risk_value_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_ra_values
    ADD CONSTRAINT ops_ra_values_ops_risk_value_id_fkey FOREIGN KEY (ops_risk_value_id) REFERENCES public.ops_risk_values(id) ON DELETE CASCADE;


--
-- Name: ops_risk_assessments ops_risk_assessments_created_by_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_risk_assessments
    ADD CONSTRAINT ops_risk_assessments_created_by_user_id_fkey FOREIGN KEY (created_by_user_id) REFERENCES public.users(id);


--
-- Name: ops_risk_assessments ops_risk_assessments_finalized_by_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ops_risk_assessments
    ADD CONSTRAINT ops_risk_assessments_finalized_by_user_id_fkey FOREIGN KEY (finalized_by_user_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: password_histories password_histories_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.password_histories
    ADD CONSTRAINT password_histories_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: powerbi_report_instances powerbi_report_instances_powerbi_report_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.powerbi_report_instances
    ADD CONSTRAINT powerbi_report_instances_powerbi_report_id_fkey FOREIGN KEY (powerbi_report_id) REFERENCES public.powerbi_reports(id);


--
-- Name: powerbi_reports powerbi_reports_pbix_file_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.powerbi_reports
    ADD CONSTRAINT powerbi_reports_pbix_file_id_fkey FOREIGN KEY (pbix_file_id) REFERENCES public.pbix_files(id) ON DELETE RESTRICT;


--
-- Name: processes_data processes_data_entity_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.processes_data
    ADD CONSTRAINT processes_data_entity_id_fkey FOREIGN KEY (entity_id) REFERENCES public.entities(id) ON DELETE RESTRICT;


--
-- Name: processes_data processes_data_process_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.processes_data
    ADD CONSTRAINT processes_data_process_id_fkey FOREIGN KEY (process_id) REFERENCES public.processes(id) ON DELETE RESTRICT;


--
-- Name: processes_process_types processes_process_types_process_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.processes_process_types
    ADD CONSTRAINT processes_process_types_process_id_fkey FOREIGN KEY (process_id) REFERENCES public.processes(id) ON DELETE CASCADE;


--
-- Name: processes_process_types processes_process_types_process_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.processes_process_types
    ADD CONSTRAINT processes_process_types_process_type_id_fkey FOREIGN KEY (process_type_id) REFERENCES public.process_types(id) ON DELETE CASCADE;


--
-- Name: question_responses question_responses_question_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.question_responses
    ADD CONSTRAINT question_responses_question_id_fkey FOREIGN KEY (question_id) REFERENCES public.questions(id) ON DELETE RESTRICT;


--
-- Name: question_responses question_responses_survey_response_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.question_responses
    ADD CONSTRAINT question_responses_survey_response_id_fkey FOREIGN KEY (survey_response_id) REFERENCES public.survey_responses(id) ON DELETE RESTRICT;


--
-- Name: questions questions_survey_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.questions
    ADD CONSTRAINT questions_survey_id_fkey FOREIGN KEY (survey_id) REFERENCES public.surveys(id) ON DELETE RESTRICT;


--
-- Name: risks risks_process_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.risks
    ADD CONSTRAINT risks_process_id_fkey FOREIGN KEY (process_id) REFERENCES public.processes(id) ON DELETE RESTRICT;


--
-- Name: role_permissions role_permissions_global_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.role_permissions
    ADD CONSTRAINT role_permissions_global_permission_id_fkey FOREIGN KEY (global_permission_id) REFERENCES public.global_permissions(id) ON DELETE RESTRICT;


--
-- Name: role_permissions role_permissions_role_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.role_permissions
    ADD CONSTRAINT role_permissions_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE SET NULL;


--
-- Name: sessions sessions_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE RESTRICT;


--
-- Name: sheet_versions sheet_versions_modified_by_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sheet_versions
    ADD CONSTRAINT sheet_versions_modified_by_user_id_fkey FOREIGN KEY (modified_by_user_id) REFERENCES public.users(id);


--
-- Name: subprocesses_data subprocesses_data_processes_datum_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.subprocesses_data
    ADD CONSTRAINT subprocesses_data_processes_datum_id_fkey FOREIGN KEY (processes_datum_id) REFERENCES public.processes_data(id) ON DELETE RESTRICT;


--
-- Name: subprocesses_data subprocesses_data_subprocess_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.subprocesses_data
    ADD CONSTRAINT subprocesses_data_subprocess_id_fkey FOREIGN KEY (subprocess_id) REFERENCES public.subprocesses(id) ON DELETE RESTRICT;


--
-- Name: subprocesses subprocesses_process_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.subprocesses
    ADD CONSTRAINT subprocesses_process_id_fkey FOREIGN KEY (process_id) REFERENCES public.processes(id) ON DELETE RESTRICT;


--
-- Name: survey_responses survey_responses_survey_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.survey_responses
    ADD CONSTRAINT survey_responses_survey_id_fkey FOREIGN KEY (survey_id) REFERENCES public.surveys(id) ON DELETE RESTRICT;


--
-- Name: survey_responses survey_responses_task_item_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.survey_responses
    ADD CONSTRAINT survey_responses_task_item_id_fkey FOREIGN KEY (task_item_id) REFERENCES public.task_items(id) ON DELETE RESTRICT;


--
-- Name: surveys surveys_task_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.surveys
    ADD CONSTRAINT surveys_task_category_id_fkey FOREIGN KEY (task_category_id) REFERENCES public.task_categories(id);


--
-- Name: sys_op_logs sys_op_logs_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sys_op_logs
    ADD CONSTRAINT sys_op_logs_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: task_group_owners task_group_owners_task_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.task_group_owners
    ADD CONSTRAINT task_group_owners_task_group_id_fkey FOREIGN KEY (task_group_id) REFERENCES public.task_groups(id) ON DELETE CASCADE;


--
-- Name: task_group_owners task_group_owners_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.task_group_owners
    ADD CONSTRAINT task_group_owners_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: task_groups task_groups_creator_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.task_groups
    ADD CONSTRAINT task_groups_creator_user_id_fkey FOREIGN KEY (creator_user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: task_groups task_groups_ops_audit_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.task_groups
    ADD CONSTRAINT task_groups_ops_audit_id_fkey FOREIGN KEY (ops_audit_id) REFERENCES public.ops_audits(id);


--
-- Name: task_groups task_groups_survey_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.task_groups
    ADD CONSTRAINT task_groups_survey_id_fkey FOREIGN KEY (survey_id) REFERENCES public.surveys(id);


--
-- Name: task_groups task_groups_task_group_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.task_groups
    ADD CONSTRAINT task_groups_task_group_category_id_fkey FOREIGN KEY (task_category_id) REFERENCES public.task_categories(id) ON DELETE SET NULL;


--
-- Name: task_groups task_groups_task_period_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.task_groups
    ADD CONSTRAINT task_groups_task_period_id_fkey FOREIGN KEY (task_period_id) REFERENCES public.task_periods(id) ON DELETE SET NULL;


--
-- Name: task_groups task_groups_test_section_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.task_groups
    ADD CONSTRAINT task_groups_test_section_id_fkey FOREIGN KEY (test_section_id) REFERENCES public.test_sections(id);


--
-- Name: task_item_reviewers task_item_reviewers_certified_by_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.task_item_reviewers
    ADD CONSTRAINT task_item_reviewers_certified_by_user_id_fkey FOREIGN KEY (certified_by_user_id) REFERENCES public.users(id);


--
-- Name: task_item_reviewers task_item_reviewers_reviewer_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.task_item_reviewers
    ADD CONSTRAINT task_item_reviewers_reviewer_user_id_fkey FOREIGN KEY (reviewer_user_id) REFERENCES public.users(id);


--
-- Name: task_item_reviewers task_item_reviewers_task_item_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.task_item_reviewers
    ADD CONSTRAINT task_item_reviewers_task_item_id_fkey FOREIGN KEY (task_item_id) REFERENCES public.task_items(id);


--
-- Name: task_items task_items_assignee_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.task_items
    ADD CONSTRAINT task_items_assignee_user_id_fkey FOREIGN KEY (assignee_user_id) REFERENCES public.users(id);


--
-- Name: task_items task_items_certified_by_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.task_items
    ADD CONSTRAINT task_items_certified_by_user_id_fkey FOREIGN KEY (certified_by_user_id) REFERENCES public.users(id);


--
-- Name: task_items task_items_closed_by_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.task_items
    ADD CONSTRAINT task_items_closed_by_user_id_fkey FOREIGN KEY (closed_by_user_id) REFERENCES public.users(id);


--
-- Name: task_items task_items_controls_datum_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.task_items
    ADD CONSTRAINT task_items_controls_datum_id_fkey FOREIGN KEY (controls_datum_id) REFERENCES public.controls_data(id);


--
-- Name: task_items task_items_creator_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.task_items
    ADD CONSTRAINT task_items_creator_user_id_fkey FOREIGN KEY (creator_user_id) REFERENCES public.users(id);


--
-- Name: task_items task_items_department_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.task_items
    ADD CONSTRAINT task_items_department_id_fkey FOREIGN KEY (department_id) REFERENCES public.departments(id);


--
-- Name: task_items task_items_issue_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.task_items
    ADD CONSTRAINT task_items_issue_id_fkey FOREIGN KEY (issue_id) REFERENCES public.issues(id);


--
-- Name: task_items task_items_location_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.task_items
    ADD CONSTRAINT task_items_location_id_fkey FOREIGN KEY (location_id) REFERENCES public.locations(id);


--
-- Name: task_items task_items_opened_by_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.task_items
    ADD CONSTRAINT task_items_opened_by_user_id_fkey FOREIGN KEY (opened_by_user_id) REFERENCES public.users(id);


--
-- Name: task_items task_items_ops_audit_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.task_items
    ADD CONSTRAINT task_items_ops_audit_id_fkey FOREIGN KEY (ops_audit_id) REFERENCES public.ops_audits(id);


--
-- Name: task_items task_items_ops_audit_item_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.task_items
    ADD CONSTRAINT task_items_ops_audit_item_id_fkey FOREIGN KEY (ops_audit_item_id) REFERENCES public.ops_audit_items(id);


--
-- Name: task_items task_items_reviewer_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.task_items
    ADD CONSTRAINT task_items_reviewer_user_id_fkey FOREIGN KEY (reviewer_user_id) REFERENCES public.users(id);


--
-- Name: task_items task_items_task_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.task_items
    ADD CONSTRAINT task_items_task_category_id_fkey FOREIGN KEY (task_category_id) REFERENCES public.task_categories(id);


--
-- Name: task_items task_items_task_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.task_items
    ADD CONSTRAINT task_items_task_group_id_fkey FOREIGN KEY (task_group_id) REFERENCES public.task_groups(id) ON DELETE CASCADE;


--
-- Name: task_items task_items_task_period_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.task_items
    ADD CONSTRAINT task_items_task_period_id_fkey FOREIGN KEY (task_period_id) REFERENCES public.task_periods(id);


--
-- Name: task_items task_items_task_priority_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.task_items
    ADD CONSTRAINT task_items_task_priority_id_fkey FOREIGN KEY (task_priority_id) REFERENCES public.task_priorities(id);


--
-- Name: task_items task_items_test_section_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.task_items
    ADD CONSTRAINT task_items_test_section_id_fkey FOREIGN KEY (test_section_id) REFERENCES public.test_sections(id);


--
-- Name: team_users team_users_team_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.team_users
    ADD CONSTRAINT team_users_team_id_fkey FOREIGN KEY (team_id) REFERENCES public.teams(id) ON DELETE SET NULL;


--
-- Name: team_users team_users_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.team_users
    ADD CONSTRAINT team_users_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: teams_owner_users teams_owner_users_team_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.teams_owner_users
    ADD CONSTRAINT teams_owner_users_team_id_fkey FOREIGN KEY (team_id) REFERENCES public.teams(id) ON DELETE SET NULL;


--
-- Name: teams_owner_users teams_owner_users_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.teams_owner_users
    ADD CONSTRAINT teams_owner_users_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: test_comments test_comments_comment_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.test_comments
    ADD CONSTRAINT test_comments_comment_user_id_fkey FOREIGN KEY (comment_user_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: test_comments test_comments_controls_datum_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.test_comments
    ADD CONSTRAINT test_comments_controls_datum_id_fkey FOREIGN KEY (controls_datum_id) REFERENCES public.controls_data(id) ON DELETE SET NULL;


--
-- Name: test_comments test_comments_test_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.test_comments
    ADD CONSTRAINT test_comments_test_id_fkey FOREIGN KEY (test_id) REFERENCES public.tests(id) ON DELETE SET NULL;


--
-- Name: tests tests_complete_by_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tests
    ADD CONSTRAINT tests_complete_by_user_id_fkey FOREIGN KEY (complete_by_user_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: tests tests_control_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tests
    ADD CONSTRAINT tests_control_id_fkey FOREIGN KEY (control_id) REFERENCES public.controls(id) ON DELETE SET NULL;


--
-- Name: tests tests_controls_datum_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tests
    ADD CONSTRAINT tests_controls_datum_id_fkey FOREIGN KEY (controls_datum_id) REFERENCES public.controls_data(id) ON DELETE CASCADE;


--
-- Name: tests tests_effectiveness_option_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tests
    ADD CONSTRAINT tests_effectiveness_option_id_fkey FOREIGN KEY (effectiveness_option_id) REFERENCES public.effectiveness_options(id) ON DELETE SET NULL;


--
-- Name: tests tests_entity_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tests
    ADD CONSTRAINT tests_entity_id_fkey FOREIGN KEY (entity_id) REFERENCES public.entities(id) ON DELETE SET NULL;


--
-- Name: tests tests_external_auditor_status_option_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tests
    ADD CONSTRAINT tests_external_auditor_status_option_id_fkey FOREIGN KEY (external_auditor_status_option_id) REFERENCES public.external_auditor_status_options(id) ON DELETE SET NULL;


--
-- Name: tests tests_review_notes_by_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tests
    ADD CONSTRAINT tests_review_notes_by_user_id_fkey FOREIGN KEY (review_notes_by_user_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: tests tests_reviewed_by_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tests
    ADD CONSTRAINT tests_reviewed_by_user_id_fkey FOREIGN KEY (reviewed_by_user_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: tests tests_reviewer_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tests
    ADD CONSTRAINT tests_reviewer_user_id_fkey FOREIGN KEY (reviewer_user_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: tests tests_secondary_reviewer_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tests
    ADD CONSTRAINT tests_secondary_reviewer_user_id_fkey FOREIGN KEY (secondary_reviewer_user_id) REFERENCES public.users(id);


--
-- Name: tests tests_sheet_file_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tests
    ADD CONSTRAINT tests_sheet_file_id_fkey FOREIGN KEY (sheet_file_id) REFERENCES public.files(id) ON DELETE SET NULL;


--
-- Name: tests tests_sheet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tests
    ADD CONSTRAINT tests_sheet_id_fkey FOREIGN KEY (sheet_id) REFERENCES public.sheets(id) ON DELETE SET NULL;


--
-- Name: tests tests_status_option_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tests
    ADD CONSTRAINT tests_status_option_id_fkey FOREIGN KEY (status_option_id) REFERENCES public.status_options(id) ON DELETE SET NULL;


--
-- Name: tests tests_test_custom_select1_option_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tests
    ADD CONSTRAINT tests_test_custom_select1_option_id_fkey FOREIGN KEY (test_custom_select1_option_id) REFERENCES public.test_custom_select1_options(id) ON DELETE SET NULL;


--
-- Name: tests tests_test_custom_select2_option_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tests
    ADD CONSTRAINT tests_test_custom_select2_option_id_fkey FOREIGN KEY (test_custom_select2_option_id) REFERENCES public.test_custom_select2_options(id) ON DELETE SET NULL;


--
-- Name: tests tests_test_custom_select3_option_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tests
    ADD CONSTRAINT tests_test_custom_select3_option_id_fkey FOREIGN KEY (test_custom_select3_option_id) REFERENCES public.test_custom_select3_options(id) ON DELETE SET NULL;


--
-- Name: tests tests_test_section_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tests
    ADD CONSTRAINT tests_test_section_id_fkey FOREIGN KEY (test_section_id) REFERENCES public.test_sections(id) ON DELETE SET NULL;


--
-- Name: tests tests_tester_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tests
    ADD CONSTRAINT tests_tester_user_id_fkey FOREIGN KEY (tester_user_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: timesheet_entries timesheet_entries_timesheet_project_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.timesheet_entries
    ADD CONSTRAINT timesheet_entries_timesheet_project_id_fkey FOREIGN KEY (timesheet_project_id) REFERENCES public.timesheet_projects(id) ON DELETE RESTRICT;


--
-- Name: timesheet_entries timesheet_entries_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.timesheet_entries
    ADD CONSTRAINT timesheet_entries_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE RESTRICT;


--
-- Name: user_settings user_settings_setting_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_settings
    ADD CONSTRAINT user_settings_setting_id_fkey FOREIGN KEY (setting_id) REFERENCES public.settings(id) ON DELETE CASCADE;


--
-- Name: user_settings user_settings_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_settings
    ADD CONSTRAINT user_settings_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: users user_stat_id_foreign_idx; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT user_stat_id_foreign_idx FOREIGN KEY (user_stat_id) REFERENCES public.user_stats(id);


--
-- Name: user_stats user_stats_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_stats
    ADD CONSTRAINT user_stats_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: users users_department_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_department_id_fkey FOREIGN KEY (department_id) REFERENCES public.departments(id);


--
-- Name: users users_location_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_location_id_fkey FOREIGN KEY (location_id) REFERENCES public.locations(id);


--
-- Name: users users_role_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

