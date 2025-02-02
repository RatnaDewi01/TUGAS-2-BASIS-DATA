PGDMP     &            	    
    z            siakad    15.0    15.0                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16421    siakad    DATABASE     �   CREATE DATABASE siakad WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE siakad;
                postgres    false            �            1259    16437    dosen    TABLE     �   CREATE TABLE public.dosen (
    pengajar character varying(90),
    matakuliah character varying(80),
    kode integer NOT NULL
);
    DROP TABLE public.dosen;
       public         heap    postgres    false            �            1259    16436    dosen_kode_seq    SEQUENCE     �   CREATE SEQUENCE public.dosen_kode_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.dosen_kode_seq;
       public          postgres    false    219                       0    0    dosen_kode_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.dosen_kode_seq OWNED BY public.dosen.kode;
          public          postgres    false    218            �            1259    16423 	   mahasiswa    TABLE     ~   CREATE TABLE public.mahasiswa (
    nim integer NOT NULL,
    nama character varying(30),
    alamat character varying(50)
);
    DROP TABLE public.mahasiswa;
       public         heap    postgres    false            �            1259    16422    mahasiswa_nim_seq    SEQUENCE     �   CREATE SEQUENCE public.mahasiswa_nim_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.mahasiswa_nim_seq;
       public          postgres    false    215                       0    0    mahasiswa_nim_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.mahasiswa_nim_seq OWNED BY public.mahasiswa.nim;
          public          postgres    false    214            �            1259    16430 
   matakuliah    TABLE     _   CREATE TABLE public.matakuliah (
    matkul character varying(30),
    sks integer NOT NULL
);
    DROP TABLE public.matakuliah;
       public         heap    postgres    false            �            1259    16429    matakuliah_sks_seq    SEQUENCE     �   CREATE SEQUENCE public.matakuliah_sks_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.matakuliah_sks_seq;
       public          postgres    false    217                       0    0    matakuliah_sks_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.matakuliah_sks_seq OWNED BY public.matakuliah.sks;
          public          postgres    false    216            q           2604    16440 
   dosen kode    DEFAULT     h   ALTER TABLE ONLY public.dosen ALTER COLUMN kode SET DEFAULT nextval('public.dosen_kode_seq'::regclass);
 9   ALTER TABLE public.dosen ALTER COLUMN kode DROP DEFAULT;
       public          postgres    false    218    219    219            o           2604    16426    mahasiswa nim    DEFAULT     n   ALTER TABLE ONLY public.mahasiswa ALTER COLUMN nim SET DEFAULT nextval('public.mahasiswa_nim_seq'::regclass);
 <   ALTER TABLE public.mahasiswa ALTER COLUMN nim DROP DEFAULT;
       public          postgres    false    214    215    215            p           2604    16433    matakuliah sks    DEFAULT     p   ALTER TABLE ONLY public.matakuliah ALTER COLUMN sks SET DEFAULT nextval('public.matakuliah_sks_seq'::regclass);
 =   ALTER TABLE public.matakuliah ALTER COLUMN sks DROP DEFAULT;
       public          postgres    false    217    216    217                      0    16437    dosen 
   TABLE DATA           ;   COPY public.dosen (pengajar, matakuliah, kode) FROM stdin;
    public          postgres    false    219                    0    16423 	   mahasiswa 
   TABLE DATA           6   COPY public.mahasiswa (nim, nama, alamat) FROM stdin;
    public          postgres    false    215   �       	          0    16430 
   matakuliah 
   TABLE DATA           1   COPY public.matakuliah (matkul, sks) FROM stdin;
    public          postgres    false    217   �                  0    0    dosen_kode_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.dosen_kode_seq', 1, false);
          public          postgres    false    218                       0    0    mahasiswa_nim_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.mahasiswa_nim_seq', 1, false);
          public          postgres    false    214                       0    0    matakuliah_sks_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.matakuliah_sks_seq', 1, false);
          public          postgres    false    216            w           2606    16442    dosen dosen_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.dosen
    ADD CONSTRAINT dosen_pkey PRIMARY KEY (kode);
 :   ALTER TABLE ONLY public.dosen DROP CONSTRAINT dosen_pkey;
       public            postgres    false    219            s           2606    16428    mahasiswa mahasiswa_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.mahasiswa
    ADD CONSTRAINT mahasiswa_pkey PRIMARY KEY (nim);
 B   ALTER TABLE ONLY public.mahasiswa DROP CONSTRAINT mahasiswa_pkey;
       public            postgres    false    215            u           2606    16435    matakuliah matakuliah_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.matakuliah
    ADD CONSTRAINT matakuliah_pkey PRIMARY KEY (sks);
 D   ALTER TABLE ONLY public.matakuliah DROP CONSTRAINT matakuliah_pkey;
       public            postgres    false    217               a   x��,�M,�S*�y���ޜ�f�F��\��
�@1��Ң���JNG��	X�9#1�(S���H�3�81/�� 5�(?�(��<5������0F��� �\S         5   x�322444�,J,�K�LN�-H�IL�L��2IXr�%�&r�rK�b���� d�      	       x�KJ,�,VHI,I�4�����4����� ^�A     