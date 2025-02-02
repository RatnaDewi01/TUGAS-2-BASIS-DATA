toc.dat                                                                                             0000600 0004000 0002000 00000023324 14337352731 0014453 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       	                
    z            tugasku    15.0    15.0 '    "           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         #           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         $           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         %           1262    16424    tugasku    DATABASE     ~   CREATE DATABASE tugasku WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Indonesia.1252';
    DROP DATABASE tugasku;
                postgres    false         �            1259    16440    dosen    TABLE     �   CREATE TABLE public.dosen (
    pengajar character varying(90),
    matakuliah character varying(80),
    kode integer NOT NULL
);
    DROP TABLE public.dosen;
       public         heap    postgres    false         �            1259    16439    dosen_kode_seq    SEQUENCE     �   CREATE SEQUENCE public.dosen_kode_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.dosen_kode_seq;
       public          postgres    false    219         &           0    0    dosen_kode_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.dosen_kode_seq OWNED BY public.dosen.kode;
          public          postgres    false    218         �            1259    16426 	   mahasiswi    TABLE     ~   CREATE TABLE public.mahasiswi (
    nim integer NOT NULL,
    nama character varying(90),
    alamat character varying(80)
);
    DROP TABLE public.mahasiswi;
       public         heap    postgres    false         �            1259    16425    mahasiswi_nim_seq    SEQUENCE     �   CREATE SEQUENCE public.mahasiswi_nim_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.mahasiswi_nim_seq;
       public          postgres    false    215         '           0    0    mahasiswi_nim_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.mahasiswi_nim_seq OWNED BY public.mahasiswi.nim;
          public          postgres    false    214         �            1259    16433 
   matakuliah    TABLE     �   CREATE TABLE public.matakuliah (
    matkul character varying(70),
    waktu character varying(60),
    sks integer NOT NULL
);
    DROP TABLE public.matakuliah;
       public         heap    postgres    false         �            1259    16432    matakuliah_sks_seq    SEQUENCE     �   CREATE SEQUENCE public.matakuliah_sks_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.matakuliah_sks_seq;
       public          postgres    false    217         (           0    0    matakuliah_sks_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.matakuliah_sks_seq OWNED BY public.matakuliah.sks;
          public          postgres    false    216         �            1259    16447    murid    TABLE     z   CREATE TABLE public.murid (
    nim integer NOT NULL,
    nama character varying(90),
    alamat character varying(80)
);
    DROP TABLE public.murid;
       public         heap    postgres    false         �            1259    16446    murid_nim_seq    SEQUENCE     �   CREATE SEQUENCE public.murid_nim_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.murid_nim_seq;
       public          postgres    false    221         )           0    0    murid_nim_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.murid_nim_seq OWNED BY public.murid.nim;
          public          postgres    false    220         �            1259    16455    siswi    TABLE     z   CREATE TABLE public.siswi (
    nim integer NOT NULL,
    nama character varying(70),
    alamat character varying(60)
);
    DROP TABLE public.siswi;
       public         heap    postgres    false         �            1259    16454    siswi_nim_seq    SEQUENCE     �   CREATE SEQUENCE public.siswi_nim_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.siswi_nim_seq;
       public          postgres    false    223         *           0    0    siswi_nim_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.siswi_nim_seq OWNED BY public.siswi.nim;
          public          postgres    false    222         {           2604    16443 
   dosen kode    DEFAULT     h   ALTER TABLE ONLY public.dosen ALTER COLUMN kode SET DEFAULT nextval('public.dosen_kode_seq'::regclass);
 9   ALTER TABLE public.dosen ALTER COLUMN kode DROP DEFAULT;
       public          postgres    false    219    218    219         y           2604    16429    mahasiswi nim    DEFAULT     n   ALTER TABLE ONLY public.mahasiswi ALTER COLUMN nim SET DEFAULT nextval('public.mahasiswi_nim_seq'::regclass);
 <   ALTER TABLE public.mahasiswi ALTER COLUMN nim DROP DEFAULT;
       public          postgres    false    214    215    215         z           2604    16436    matakuliah sks    DEFAULT     p   ALTER TABLE ONLY public.matakuliah ALTER COLUMN sks SET DEFAULT nextval('public.matakuliah_sks_seq'::regclass);
 =   ALTER TABLE public.matakuliah ALTER COLUMN sks DROP DEFAULT;
       public          postgres    false    217    216    217         |           2604    16450 	   murid nim    DEFAULT     f   ALTER TABLE ONLY public.murid ALTER COLUMN nim SET DEFAULT nextval('public.murid_nim_seq'::regclass);
 8   ALTER TABLE public.murid ALTER COLUMN nim DROP DEFAULT;
       public          postgres    false    220    221    221         }           2604    16458 	   siswi nim    DEFAULT     f   ALTER TABLE ONLY public.siswi ALTER COLUMN nim SET DEFAULT nextval('public.siswi_nim_seq'::regclass);
 8   ALTER TABLE public.siswi ALTER COLUMN nim DROP DEFAULT;
       public          postgres    false    222    223    223                   0    16440    dosen 
   TABLE DATA           ;   COPY public.dosen (pengajar, matakuliah, kode) FROM stdin;
    public          postgres    false    219       3355.dat           0    16426 	   mahasiswi 
   TABLE DATA           6   COPY public.mahasiswi (nim, nama, alamat) FROM stdin;
    public          postgres    false    215       3351.dat           0    16433 
   matakuliah 
   TABLE DATA           8   COPY public.matakuliah (matkul, waktu, sks) FROM stdin;
    public          postgres    false    217       3353.dat           0    16447    murid 
   TABLE DATA           2   COPY public.murid (nim, nama, alamat) FROM stdin;
    public          postgres    false    221       3357.dat           0    16455    siswi 
   TABLE DATA           2   COPY public.siswi (nim, nama, alamat) FROM stdin;
    public          postgres    false    223       3359.dat +           0    0    dosen_kode_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.dosen_kode_seq', 1, false);
          public          postgres    false    218         ,           0    0    mahasiswi_nim_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.mahasiswi_nim_seq', 1, false);
          public          postgres    false    214         -           0    0    matakuliah_sks_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.matakuliah_sks_seq', 1, false);
          public          postgres    false    216         .           0    0    murid_nim_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.murid_nim_seq', 1, false);
          public          postgres    false    220         /           0    0    siswi_nim_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.siswi_nim_seq', 1, false);
          public          postgres    false    222         �           2606    16445    dosen dosen_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.dosen
    ADD CONSTRAINT dosen_pkey PRIMARY KEY (kode);
 :   ALTER TABLE ONLY public.dosen DROP CONSTRAINT dosen_pkey;
       public            postgres    false    219                    2606    16431    mahasiswi mahasiswi_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.mahasiswi
    ADD CONSTRAINT mahasiswi_pkey PRIMARY KEY (nim);
 B   ALTER TABLE ONLY public.mahasiswi DROP CONSTRAINT mahasiswi_pkey;
       public            postgres    false    215         �           2606    16438    matakuliah matakuliah_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.matakuliah
    ADD CONSTRAINT matakuliah_pkey PRIMARY KEY (sks);
 D   ALTER TABLE ONLY public.matakuliah DROP CONSTRAINT matakuliah_pkey;
       public            postgres    false    217         �           2606    16452    murid murid_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY public.murid
    ADD CONSTRAINT murid_pkey PRIMARY KEY (nim);
 :   ALTER TABLE ONLY public.murid DROP CONSTRAINT murid_pkey;
       public            postgres    false    221         �           2606    16460    siswi siswi_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY public.siswi
    ADD CONSTRAINT siswi_pkey PRIMARY KEY (nim);
 :   ALTER TABLE ONLY public.siswi DROP CONSTRAINT siswi_pkey;
       public            postgres    false    223                                                                                                                                                                                                                                                                                                                    3355.dat                                                                                            0000600 0004000 0002000 00000000143 14337352731 0014257 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        Ismaun Rusman	IMK	163219
Muh Imam Quraisy	AOK	143219
Chairi Nur Insani	Pemrograman Web	113319
\.


                                                                                                                                                                                                                                                                                                                                                                                                                             3351.dat                                                                                            0000600 0004000 0002000 00000000120 14337352731 0014246 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        111368	Putri Sophia	Sidodadi
222369	Mutiara	Bogor
333370	Fitriani	Polewali
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                3353.dat                                                                                            0000600 0004000 0002000 00000000104 14337352731 0014252 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        Basis Data	Pagi	3
Bahasa Inggris	Siang	2
Aljabar Linear	Sore	1
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                            3357.dat                                                                                            0000600 0004000 0002000 00000000100 14337352731 0014252 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        221345	Putri Salsabila	Bogor
221368	Putri Sophia	Wonomulyo
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                3359.dat                                                                                            0000600 0004000 0002000 00000000075 14337352731 0014267 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        221110	Ratna Dewi	Campalagian
221119	Ratna Sari	Cirebon
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                   restore.sql                                                                                         0000600 0004000 0002000 00000020146 14337352731 0015377 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 15.0
-- Dumped by pg_dump version 15.0

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

DROP DATABASE tugasku;
--
-- Name: tugasku; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE tugasku WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Indonesia.1252';


ALTER DATABASE tugasku OWNER TO postgres;

\connect tugasku

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
-- Name: dosen; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dosen (
    pengajar character varying(90),
    matakuliah character varying(80),
    kode integer NOT NULL
);


ALTER TABLE public.dosen OWNER TO postgres;

--
-- Name: dosen_kode_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.dosen_kode_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dosen_kode_seq OWNER TO postgres;

--
-- Name: dosen_kode_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.dosen_kode_seq OWNED BY public.dosen.kode;


--
-- Name: mahasiswi; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mahasiswi (
    nim integer NOT NULL,
    nama character varying(90),
    alamat character varying(80)
);


ALTER TABLE public.mahasiswi OWNER TO postgres;

--
-- Name: mahasiswi_nim_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mahasiswi_nim_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mahasiswi_nim_seq OWNER TO postgres;

--
-- Name: mahasiswi_nim_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mahasiswi_nim_seq OWNED BY public.mahasiswi.nim;


--
-- Name: matakuliah; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.matakuliah (
    matkul character varying(70),
    waktu character varying(60),
    sks integer NOT NULL
);


ALTER TABLE public.matakuliah OWNER TO postgres;

--
-- Name: matakuliah_sks_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.matakuliah_sks_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.matakuliah_sks_seq OWNER TO postgres;

--
-- Name: matakuliah_sks_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.matakuliah_sks_seq OWNED BY public.matakuliah.sks;


--
-- Name: murid; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.murid (
    nim integer NOT NULL,
    nama character varying(90),
    alamat character varying(80)
);


ALTER TABLE public.murid OWNER TO postgres;

--
-- Name: murid_nim_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.murid_nim_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.murid_nim_seq OWNER TO postgres;

--
-- Name: murid_nim_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.murid_nim_seq OWNED BY public.murid.nim;


--
-- Name: siswi; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.siswi (
    nim integer NOT NULL,
    nama character varying(70),
    alamat character varying(60)
);


ALTER TABLE public.siswi OWNER TO postgres;

--
-- Name: siswi_nim_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.siswi_nim_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.siswi_nim_seq OWNER TO postgres;

--
-- Name: siswi_nim_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.siswi_nim_seq OWNED BY public.siswi.nim;


--
-- Name: dosen kode; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dosen ALTER COLUMN kode SET DEFAULT nextval('public.dosen_kode_seq'::regclass);


--
-- Name: mahasiswi nim; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mahasiswi ALTER COLUMN nim SET DEFAULT nextval('public.mahasiswi_nim_seq'::regclass);


--
-- Name: matakuliah sks; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.matakuliah ALTER COLUMN sks SET DEFAULT nextval('public.matakuliah_sks_seq'::regclass);


--
-- Name: murid nim; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.murid ALTER COLUMN nim SET DEFAULT nextval('public.murid_nim_seq'::regclass);


--
-- Name: siswi nim; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.siswi ALTER COLUMN nim SET DEFAULT nextval('public.siswi_nim_seq'::regclass);


--
-- Data for Name: dosen; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dosen (pengajar, matakuliah, kode) FROM stdin;
\.
COPY public.dosen (pengajar, matakuliah, kode) FROM '$$PATH$$/3355.dat';

--
-- Data for Name: mahasiswi; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mahasiswi (nim, nama, alamat) FROM stdin;
\.
COPY public.mahasiswi (nim, nama, alamat) FROM '$$PATH$$/3351.dat';

--
-- Data for Name: matakuliah; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.matakuliah (matkul, waktu, sks) FROM stdin;
\.
COPY public.matakuliah (matkul, waktu, sks) FROM '$$PATH$$/3353.dat';

--
-- Data for Name: murid; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.murid (nim, nama, alamat) FROM stdin;
\.
COPY public.murid (nim, nama, alamat) FROM '$$PATH$$/3357.dat';

--
-- Data for Name: siswi; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.siswi (nim, nama, alamat) FROM stdin;
\.
COPY public.siswi (nim, nama, alamat) FROM '$$PATH$$/3359.dat';

--
-- Name: dosen_kode_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.dosen_kode_seq', 1, false);


--
-- Name: mahasiswi_nim_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mahasiswi_nim_seq', 1, false);


--
-- Name: matakuliah_sks_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.matakuliah_sks_seq', 1, false);


--
-- Name: murid_nim_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.murid_nim_seq', 1, false);


--
-- Name: siswi_nim_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.siswi_nim_seq', 1, false);


--
-- Name: dosen dosen_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dosen
    ADD CONSTRAINT dosen_pkey PRIMARY KEY (kode);


--
-- Name: mahasiswi mahasiswi_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mahasiswi
    ADD CONSTRAINT mahasiswi_pkey PRIMARY KEY (nim);


--
-- Name: matakuliah matakuliah_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.matakuliah
    ADD CONSTRAINT matakuliah_pkey PRIMARY KEY (sks);


--
-- Name: murid murid_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.murid
    ADD CONSTRAINT murid_pkey PRIMARY KEY (nim);


--
-- Name: siswi siswi_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.siswi
    ADD CONSTRAINT siswi_pkey PRIMARY KEY (nim);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          