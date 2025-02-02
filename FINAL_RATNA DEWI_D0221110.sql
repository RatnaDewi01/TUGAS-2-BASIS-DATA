toc.dat                                                                                             0000600 0004000 0002000 00000022073 14346347071 0014454 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP                           z            retail    15.0    15.0                 0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                    0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                    0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                    1262    16606    retail    DATABASE     �   CREATE DATABASE retail WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE retail;
                postgres    false         �            1259    16629    barang    TABLE     �   CREATE TABLE public.barang (
    no integer,
    kode_barang integer NOT NULL,
    nama_barang character varying(30),
    stok_awal character varying(25),
    stok_akhir character varying(15)
);
    DROP TABLE public.barang;
       public         heap    postgres    false         �            1259    16628    barang_kode_barang_seq    SEQUENCE     �   CREATE SEQUENCE public.barang_kode_barang_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.barang_kode_barang_seq;
       public          postgres    false    215                    0    0    barang_kode_barang_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.barang_kode_barang_seq OWNED BY public.barang.kode_barang;
          public          postgres    false    214         �            1259    16636 	   pelanggan    TABLE     �   CREATE TABLE public.pelanggan (
    no integer,
    kode_pelanggan integer NOT NULL,
    no_whatsap character varying(30),
    nama_pelanggan character varying(25),
    alamat character varying(30)
);
    DROP TABLE public.pelanggan;
       public         heap    postgres    false         �            1259    16635    pelanggan_kode_pelanggan_seq    SEQUENCE     �   CREATE SEQUENCE public.pelanggan_kode_pelanggan_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.pelanggan_kode_pelanggan_seq;
       public          postgres    false    217                    0    0    pelanggan_kode_pelanggan_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.pelanggan_kode_pelanggan_seq OWNED BY public.pelanggan.kode_pelanggan;
          public          postgres    false    216         �            1259    16650 
   pembayaran    TABLE     �   CREATE TABLE public.pembayaran (
    no integer,
    no_pembayaran integer NOT NULL,
    kode_pesanan integer,
    total_bayar integer,
    tanggal_bayar date,
    keterangan character varying(50)
);
    DROP TABLE public.pembayaran;
       public         heap    postgres    false         �            1259    16649    pembayaran_no_pembayaran_seq    SEQUENCE     �   CREATE SEQUENCE public.pembayaran_no_pembayaran_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.pembayaran_no_pembayaran_seq;
       public          postgres    false    221                    0    0    pembayaran_no_pembayaran_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.pembayaran_no_pembayaran_seq OWNED BY public.pembayaran.no_pembayaran;
          public          postgres    false    220         �            1259    16643    pesanan    TABLE       CREATE TABLE public.pesanan (
    no integer,
    kode_pesanan integer NOT NULL,
    kode_pelanggan integer,
    kode_barang integer,
    jumlah_pesanan integer,
    harga_jual integer,
    harga_beli integer,
    total_harga integer,
    tanggal_pesanan date
);
    DROP TABLE public.pesanan;
       public         heap    postgres    false         �            1259    16642    pesanan_kode_pesanan_seq    SEQUENCE     �   CREATE SEQUENCE public.pesanan_kode_pesanan_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.pesanan_kode_pesanan_seq;
       public          postgres    false    219                    0    0    pesanan_kode_pesanan_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.pesanan_kode_pesanan_seq OWNED BY public.pesanan.kode_pesanan;
          public          postgres    false    218         t           2604    16632    barang kode_barang    DEFAULT     x   ALTER TABLE ONLY public.barang ALTER COLUMN kode_barang SET DEFAULT nextval('public.barang_kode_barang_seq'::regclass);
 A   ALTER TABLE public.barang ALTER COLUMN kode_barang DROP DEFAULT;
       public          postgres    false    215    214    215         u           2604    16639    pelanggan kode_pelanggan    DEFAULT     �   ALTER TABLE ONLY public.pelanggan ALTER COLUMN kode_pelanggan SET DEFAULT nextval('public.pelanggan_kode_pelanggan_seq'::regclass);
 G   ALTER TABLE public.pelanggan ALTER COLUMN kode_pelanggan DROP DEFAULT;
       public          postgres    false    217    216    217         w           2604    16653    pembayaran no_pembayaran    DEFAULT     �   ALTER TABLE ONLY public.pembayaran ALTER COLUMN no_pembayaran SET DEFAULT nextval('public.pembayaran_no_pembayaran_seq'::regclass);
 G   ALTER TABLE public.pembayaran ALTER COLUMN no_pembayaran DROP DEFAULT;
       public          postgres    false    220    221    221         v           2604    16646    pesanan kode_pesanan    DEFAULT     |   ALTER TABLE ONLY public.pesanan ALTER COLUMN kode_pesanan SET DEFAULT nextval('public.pesanan_kode_pesanan_seq'::regclass);
 C   ALTER TABLE public.pesanan ALTER COLUMN kode_pesanan DROP DEFAULT;
       public          postgres    false    218    219    219                   0    16629    barang 
   TABLE DATA           U   COPY public.barang (no, kode_barang, nama_barang, stok_awal, stok_akhir) FROM stdin;
    public          postgres    false    215       3343.dat           0    16636 	   pelanggan 
   TABLE DATA           [   COPY public.pelanggan (no, kode_pelanggan, no_whatsap, nama_pelanggan, alamat) FROM stdin;
    public          postgres    false    217       3345.dat           0    16650 
   pembayaran 
   TABLE DATA           m   COPY public.pembayaran (no, no_pembayaran, kode_pesanan, total_bayar, tanggal_bayar, keterangan) FROM stdin;
    public          postgres    false    221       3349.dat           0    16643    pesanan 
   TABLE DATA           �   COPY public.pesanan (no, kode_pesanan, kode_pelanggan, kode_barang, jumlah_pesanan, harga_jual, harga_beli, total_harga, tanggal_pesanan) FROM stdin;
    public          postgres    false    219       3347.dat             0    0    barang_kode_barang_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.barang_kode_barang_seq', 1, false);
          public          postgres    false    214         !           0    0    pelanggan_kode_pelanggan_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.pelanggan_kode_pelanggan_seq', 1, false);
          public          postgres    false    216         "           0    0    pembayaran_no_pembayaran_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.pembayaran_no_pembayaran_seq', 1, false);
          public          postgres    false    220         #           0    0    pesanan_kode_pesanan_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.pesanan_kode_pesanan_seq', 1, false);
          public          postgres    false    218         y           2606    16634    barang barang_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.barang
    ADD CONSTRAINT barang_pkey PRIMARY KEY (kode_barang);
 <   ALTER TABLE ONLY public.barang DROP CONSTRAINT barang_pkey;
       public            postgres    false    215         {           2606    16641    pelanggan pelanggan_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.pelanggan
    ADD CONSTRAINT pelanggan_pkey PRIMARY KEY (kode_pelanggan);
 B   ALTER TABLE ONLY public.pelanggan DROP CONSTRAINT pelanggan_pkey;
       public            postgres    false    217                    2606    16655    pembayaran pembayaran_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.pembayaran
    ADD CONSTRAINT pembayaran_pkey PRIMARY KEY (no_pembayaran);
 D   ALTER TABLE ONLY public.pembayaran DROP CONSTRAINT pembayaran_pkey;
       public            postgres    false    221         }           2606    16648    pesanan pesanan_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.pesanan
    ADD CONSTRAINT pesanan_pkey PRIMARY KEY (kode_pesanan);
 >   ALTER TABLE ONLY public.pesanan DROP CONSTRAINT pesanan_pkey;
       public            postgres    false    219                                                                                                                                                                                                                                                                                                                                                                                                                                                                             3343.dat                                                                                            0000600 0004000 0002000 00000000573 14346347071 0014264 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	2220	BAJU GAMIS	50	25
2	2221	BAJU ABAYA	40	24
3	2222	BAJU KAOS	60	35
4	2223	BAJU BLEZER	70	45
5	2224	MUKENAH	39	24
6	2225	SAJADAH	40	21
7	2226	ROK	75	46
8	2227	ROK PLISKET	74	45
9	2228	CELANA PANJANG	56	15
10	2229	CELANA PENDEK	55	20
11	2230	JILBAB PASMINA	40	24
12	2231	JILBAB BELLA	45	25
13	2232	JILBAB RABBANI	44	30
14	2233	JILBAB PLISKET	43	31
15	2234	BAJU KOKO	40	30
\.


                                                                                                                                     3345.dat                                                                                            0000600 0004000 0002000 00000001001 14346347071 0014251 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	4041	082342567908	PUPUT	POLEWALI
2	4042	082095873456	CICI	CAMPALAGIAN
3	4043	082746352143	INTAN	BONDE
4	4044	082784673125	SALSA	MAJENE
5	4045	085947837465	RISMA	TINAMBUNG
6	4046	085095734875	JIHAN	PINRAN
7	4047	085349074652	SYIFA	BONE
8	4048	085152473694	ANJANI	MAKASSAR
9	4049	085153859068	DEDY	LAMPA
10	4050	082847563126	IKA	MAJENE
11	4051	082893486120	INA	KENJE
12	4052	082847238120	MAWAR	TINAMBUNG
13	4053	083084572134	APRIL	BOTTO
14	4054	083958372085	SISIL	WONOMULYO
15	4055	082536874690	ANTO	LAMPOKO
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               3349.dat                                                                                            0000600 0004000 0002000 00000001123 14346347071 0014262 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	2875400	3020	360000	2022-12-04	lunas
2	2875401	3021	495000	2022-12-06	lunas
3	2875402	3022	180000	2022-12-05	lunas
4	2875403	3023	570000	2022-12-08	lunas
5	2875404	3024	400000	2022-12-09	lunas
6	2875405	3025	285000	2022-12-11	lunas
7	2875406	3026	200000	2022-12-13	lunas
8	2875407	3027	210000	2022-12-15	lunas
9	2875408	3028	375000	2022-12-17	lunas
10	2875409	3029	356000	2022-12-19	lunas
11	2875410	3030	135000	2022-12-18	lunas
12	2875411	3031	75000	2022-12-21	lunas
13	2875412	3032	340000	2022-12-23	lunas
14	2875413	3033	275000	2022-12-25	lunas
15	2875414	3034	720000	2022-12-27	lunas
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                             3347.dat                                                                                            0000600 0004000 0002000 00000001363 14346347071 0014266 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	3020	4041	2220	4	95000	90000	360000	2022-12-01
2	3021	4042	2221	5	100000	99000	495000	2022-12-02
3	3022	4043	2222	4	50000	45000	180000	2022-12-03
4	3023	4044	2223	3	200000	190000	570000	2022-12-04
5	3024	4045	2224	2	250000	200000	400000	2022-12-05
6	3025	4046	2225	3	100000	95000	285000	2022-12-06
7	3026	4047	2226	2	150000	100000	200000	2022-12-07
8	3027	4048	2227	3	75000	70000	210000	2022-12-08
9	3028	4049	2228	5	80000	75000	375000	2022-12-09
10	3029	4050	2229	4	90000	89000	356000	2022-12-11
11	3030	4051	2230	3	50000	45000	135000	2022-12-13
12	3031	4052	2231	5	20000	15000	75000	2022-12-15
13	3032	4053	2232	4	90000	85000	340000	2022-12-18
14	3033	4054	2233	5	60000	55000	275000	2022-12-22
15	3034	4055	2234	3	250000	240000	720000	2022-12-26
\.


                                                                                                                                                                                                                                                                             restore.sql                                                                                         0000600 0004000 0002000 00000020046 14346347071 0015377 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
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

DROP DATABASE retail;
--
-- Name: retail; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE retail WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';


ALTER DATABASE retail OWNER TO postgres;

\connect retail

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
-- Name: barang; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.barang (
    no integer,
    kode_barang integer NOT NULL,
    nama_barang character varying(30),
    stok_awal character varying(25),
    stok_akhir character varying(15)
);


ALTER TABLE public.barang OWNER TO postgres;

--
-- Name: barang_kode_barang_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.barang_kode_barang_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.barang_kode_barang_seq OWNER TO postgres;

--
-- Name: barang_kode_barang_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.barang_kode_barang_seq OWNED BY public.barang.kode_barang;


--
-- Name: pelanggan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pelanggan (
    no integer,
    kode_pelanggan integer NOT NULL,
    no_whatsap character varying(30),
    nama_pelanggan character varying(25),
    alamat character varying(30)
);


ALTER TABLE public.pelanggan OWNER TO postgres;

--
-- Name: pelanggan_kode_pelanggan_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pelanggan_kode_pelanggan_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pelanggan_kode_pelanggan_seq OWNER TO postgres;

--
-- Name: pelanggan_kode_pelanggan_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pelanggan_kode_pelanggan_seq OWNED BY public.pelanggan.kode_pelanggan;


--
-- Name: pembayaran; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pembayaran (
    no integer,
    no_pembayaran integer NOT NULL,
    kode_pesanan integer,
    total_bayar integer,
    tanggal_bayar date,
    keterangan character varying(50)
);


ALTER TABLE public.pembayaran OWNER TO postgres;

--
-- Name: pembayaran_no_pembayaran_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pembayaran_no_pembayaran_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pembayaran_no_pembayaran_seq OWNER TO postgres;

--
-- Name: pembayaran_no_pembayaran_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pembayaran_no_pembayaran_seq OWNED BY public.pembayaran.no_pembayaran;


--
-- Name: pesanan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pesanan (
    no integer,
    kode_pesanan integer NOT NULL,
    kode_pelanggan integer,
    kode_barang integer,
    jumlah_pesanan integer,
    harga_jual integer,
    harga_beli integer,
    total_harga integer,
    tanggal_pesanan date
);


ALTER TABLE public.pesanan OWNER TO postgres;

--
-- Name: pesanan_kode_pesanan_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pesanan_kode_pesanan_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pesanan_kode_pesanan_seq OWNER TO postgres;

--
-- Name: pesanan_kode_pesanan_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pesanan_kode_pesanan_seq OWNED BY public.pesanan.kode_pesanan;


--
-- Name: barang kode_barang; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.barang ALTER COLUMN kode_barang SET DEFAULT nextval('public.barang_kode_barang_seq'::regclass);


--
-- Name: pelanggan kode_pelanggan; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pelanggan ALTER COLUMN kode_pelanggan SET DEFAULT nextval('public.pelanggan_kode_pelanggan_seq'::regclass);


--
-- Name: pembayaran no_pembayaran; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pembayaran ALTER COLUMN no_pembayaran SET DEFAULT nextval('public.pembayaran_no_pembayaran_seq'::regclass);


--
-- Name: pesanan kode_pesanan; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pesanan ALTER COLUMN kode_pesanan SET DEFAULT nextval('public.pesanan_kode_pesanan_seq'::regclass);


--
-- Data for Name: barang; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.barang (no, kode_barang, nama_barang, stok_awal, stok_akhir) FROM stdin;
\.
COPY public.barang (no, kode_barang, nama_barang, stok_awal, stok_akhir) FROM '$$PATH$$/3343.dat';

--
-- Data for Name: pelanggan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pelanggan (no, kode_pelanggan, no_whatsap, nama_pelanggan, alamat) FROM stdin;
\.
COPY public.pelanggan (no, kode_pelanggan, no_whatsap, nama_pelanggan, alamat) FROM '$$PATH$$/3345.dat';

--
-- Data for Name: pembayaran; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pembayaran (no, no_pembayaran, kode_pesanan, total_bayar, tanggal_bayar, keterangan) FROM stdin;
\.
COPY public.pembayaran (no, no_pembayaran, kode_pesanan, total_bayar, tanggal_bayar, keterangan) FROM '$$PATH$$/3349.dat';

--
-- Data for Name: pesanan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pesanan (no, kode_pesanan, kode_pelanggan, kode_barang, jumlah_pesanan, harga_jual, harga_beli, total_harga, tanggal_pesanan) FROM stdin;
\.
COPY public.pesanan (no, kode_pesanan, kode_pelanggan, kode_barang, jumlah_pesanan, harga_jual, harga_beli, total_harga, tanggal_pesanan) FROM '$$PATH$$/3347.dat';

--
-- Name: barang_kode_barang_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.barang_kode_barang_seq', 1, false);


--
-- Name: pelanggan_kode_pelanggan_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pelanggan_kode_pelanggan_seq', 1, false);


--
-- Name: pembayaran_no_pembayaran_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pembayaran_no_pembayaran_seq', 1, false);


--
-- Name: pesanan_kode_pesanan_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pesanan_kode_pesanan_seq', 1, false);


--
-- Name: barang barang_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.barang
    ADD CONSTRAINT barang_pkey PRIMARY KEY (kode_barang);


--
-- Name: pelanggan pelanggan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pelanggan
    ADD CONSTRAINT pelanggan_pkey PRIMARY KEY (kode_pelanggan);


--
-- Name: pembayaran pembayaran_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pembayaran
    ADD CONSTRAINT pembayaran_pkey PRIMARY KEY (no_pembayaran);


--
-- Name: pesanan pesanan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pesanan
    ADD CONSTRAINT pesanan_pkey PRIMARY KEY (kode_pesanan);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          