PGDMP                         {            bdhealth    15.2    15.2 x    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    22496    bdhealth    DATABASE     {   CREATE DATABASE bdhealth WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'French_France.1252';
    DROP DATABASE bdhealth;
                postgres    false            �            1259    28094    blood_donation    TABLE     h  CREATE TABLE public.blood_donation (
    id_blood_donation bigint NOT NULL,
    blood_group character varying(250),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    donation_date timestamp without time zone,
    symptoms character varying(250),
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
 "   DROP TABLE public.blood_donation;
       public         heap    postgres    false            �            1259    28093 $   blood_donation_id_blood_donation_seq    SEQUENCE     �   CREATE SEQUENCE public.blood_donation_id_blood_donation_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.blood_donation_id_blood_donation_seq;
       public          postgres    false    236            �           0    0 $   blood_donation_id_blood_donation_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.blood_donation_id_blood_donation_seq OWNED BY public.blood_donation.id_blood_donation;
          public          postgres    false    235            �            1259    22498    consultation    TABLE       CREATE TABLE public.consultation (
    id_consultation integer NOT NULL,
    consultation_date timestamp(6) with time zone,
    reason_consultation character varying(250),
    symptoms character varying(250),
    prescribed_treatment character varying(250),
    created_at timestamp(6) without time zone,
    "updatedAt" timestamp(6) without time zone,
    id_prescription integer,
    id_profil integer,
    id_medecin integer,
    id_hopital integer,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
     DROP TABLE public.consultation;
       public         heap    postgres    false            �            1259    22497     consultation_id_consultation_seq    SEQUENCE     �   CREATE SEQUENCE public.consultation_id_consultation_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.consultation_id_consultation_seq;
       public          postgres    false    215            �           0    0     consultation_id_consultation_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.consultation_id_consultation_seq OWNED BY public.consultation.id_consultation;
          public          postgres    false    214            �            1259    22516    healthRecord    TABLE     �  CREATE TABLE public."healthRecord" (
    "id_healthRecord" integer NOT NULL,
    size character varying(250),
    weight double precision,
    "bloodGroup" character varying(250),
    allergy character varying(250),
    "medicalHistoryHealth" character varying(250),
    vaccination character varying(250),
    "createdAt" timestamp(6) with time zone,
    "updatedAt" timestamp(6) without time zone
);
 "   DROP TABLE public."healthRecord";
       public         heap    postgres    false            �            1259    22515     healthRecord_id_healthRecord_seq    SEQUENCE     �   CREATE SEQUENCE public."healthRecord_id_healthRecord_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public."healthRecord_id_healthRecord_seq";
       public          postgres    false    217            �           0    0     healthRecord_id_healthRecord_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public."healthRecord_id_healthRecord_seq" OWNED BY public."healthRecord"."id_healthRecord";
          public          postgres    false    216            �            1259    28106    health_record    TABLE     �  CREATE TABLE public.health_record (
    id_health_record bigint NOT NULL,
    allergy character varying(250),
    blood_group character varying(250),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    medical_history_health character varying(250),
    size double precision,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    vaccination character varying(250),
    weight double precision
);
 !   DROP TABLE public.health_record;
       public         heap    postgres    false            �            1259    28105 "   health_record_id_health_record_seq    SEQUENCE     �   CREATE SEQUENCE public.health_record_id_health_record_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.health_record_id_health_record_seq;
       public          postgres    false    238            �           0    0 "   health_record_id_health_record_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.health_record_id_health_record_seq OWNED BY public.health_record.id_health_record;
          public          postgres    false    237            �            1259    22525    hopital    TABLE     E  CREATE TABLE public.hopital (
    id_hopital integer NOT NULL,
    hopital_name character varying(250),
    address character varying(250),
    contact character varying(250),
    email character varying(250),
    createdat time(6) without time zone,
    updatedat time(6) without time zone,
    "id_healthRecord" integer,
    id_profil integer,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    phone character varying(20),
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    address_email character varying(250)
);
    DROP TABLE public.hopital;
       public         heap    postgres    false            �            1259    22524    hopital_id_hopital_seq    SEQUENCE     �   CREATE SEQUENCE public.hopital_id_hopital_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.hopital_id_hopital_seq;
       public          postgres    false    219            �           0    0    hopital_id_hopital_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.hopital_id_hopital_seq OWNED BY public.hopital.id_hopital;
          public          postgres    false    218            �            1259    28119    medecin    TABLE     �  CREATE TABLE public.medecin (
    id_medein bigint NOT NULL,
    address character varying(250),
    contact character varying(250),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    address_email character varying(250),
    first_name character varying(250),
    last_name character varying(250),
    service_number character varying(250),
    speciality character varying(250),
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.medecin;
       public         heap    postgres    false            �            1259    28118    medecin_id_medein_seq    SEQUENCE     ~   CREATE SEQUENCE public.medecin_id_medein_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.medecin_id_medein_seq;
       public          postgres    false    240            �           0    0    medecin_id_medein_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.medecin_id_medein_seq OWNED BY public.medecin.id_medein;
          public          postgres    false    239            �            1259    22534    medein    TABLE     �  CREATE TABLE public.medein (
    id_medein integer NOT NULL,
    first_name character varying(250),
    last_name character varying(250),
    speciality character varying(250),
    service_number character varying(250),
    email character varying(250),
    contact character varying(250),
    address character varying(250),
    createdat timestamp(6) with time zone,
    updatedat timestamp(6) with time zone,
    "id_roleProfil" integer,
    id_speciality integer,
    id_municipality integer
);
    DROP TABLE public.medein;
       public         heap    postgres    false            �            1259    22533    medein_id_medein_seq    SEQUENCE     �   CREATE SEQUENCE public.medein_id_medein_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.medein_id_medein_seq;
       public          postgres    false    221            �           0    0    medein_id_medein_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.medein_id_medein_seq OWNED BY public.medein.id_medein;
          public          postgres    false    220            �            1259    22543    municipality    TABLE     m  CREATE TABLE public.municipality (
    id_municipality integer NOT NULL,
    municipality_name character varying(250),
    createdat timestamp(6) with time zone,
    updatedat timestamp(6) with time zone,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
     DROP TABLE public.municipality;
       public         heap    postgres    false            �            1259    22542     municipality_id_municipality_seq    SEQUENCE     �   CREATE SEQUENCE public.municipality_id_municipality_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.municipality_id_municipality_seq;
       public          postgres    false    223            �           0    0     municipality_id_municipality_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.municipality_id_municipality_seq OWNED BY public.municipality.id_municipality;
          public          postgres    false    222            �            1259    22590    pharma_hopital    TABLE     Z   CREATE TABLE public.pharma_hopital (
    id_hopital integer,
    id_pharmarcie integer
);
 "   DROP TABLE public.pharma_hopital;
       public         heap    postgres    false            �            1259    22550 	   pharmacie    TABLE     !  CREATE TABLE public.pharmacie (
    id_pharmacie integer NOT NULL,
    pharmacie_name character varying(250),
    address character varying(250),
    contact character varying(250),
    email character varying(250),
    site_web character varying(250),
    createdat timestamp(6) with time zone,
    updatedat timestamp(6) with time zone,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    consultation_date character varying(250),
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.pharmacie;
       public         heap    postgres    false            �            1259    22549    pharmacie_id_pharmacie_seq    SEQUENCE     �   CREATE SEQUENCE public.pharmacie_id_pharmacie_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.pharmacie_id_pharmacie_seq;
       public          postgres    false    225            �           0    0    pharmacie_id_pharmacie_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.pharmacie_id_pharmacie_seq OWNED BY public.pharmacie.id_pharmacie;
          public          postgres    false    224            �            1259    22559    prescription    TABLE     Q  CREATE TABLE public.prescription (
    id_prescription integer NOT NULL,
    prescription_date timestamp(6) with time zone,
    prescribed_medication character varying(250),
    dosage character varying(250),
    duration_treatment integer,
    createdat timestamp(6) without time zone,
    updatedat timestamp(6) without time zone,
    id_consultation integer,
    id_profil integer,
    id_medecin integer,
    id_hopital integer,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
     DROP TABLE public.prescription;
       public         heap    postgres    false            �            1259    22558     prescription_id_prescription_seq    SEQUENCE     �   CREATE SEQUENCE public.prescription_id_prescription_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.prescription_id_prescription_seq;
       public          postgres    false    227            �           0    0     prescription_id_prescription_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.prescription_id_prescription_seq OWNED BY public.prescription.id_prescription;
          public          postgres    false    226            �            1259    22568    profil    TABLE     �  CREATE TABLE public.profil (
    id_profil integer NOT NULL,
    first_name character varying(250),
    last_name character varying(250),
    email character varying(250),
    password character varying(250),
    birthday character varying(6),
    address character varying(250),
    contact character varying(250),
    createdat timestamp(6) with time zone,
    updatedat timestamp(6) with time zone,
    "id_roleProfil" integer,
    id_municipality integer,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    gender character varying(255)
);
    DROP TABLE public.profil;
       public         heap    postgres    false            �            1259    22567    profil_id_profil_seq    SEQUENCE     �   CREATE SEQUENCE public.profil_id_profil_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.profil_id_profil_seq;
       public          postgres    false    229            �           0    0    profil_id_profil_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.profil_id_profil_seq OWNED BY public.profil.id_profil;
          public          postgres    false    228            �            1259    28138    role    TABLE     	  CREATE TABLE public.role (
    id_role_profil bigint NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    name character varying(255) NOT NULL,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.role;
       public         heap    postgres    false            �            1259    22584 
   roleProfil    TABLE     �   CREATE TABLE public."roleProfil" (
    "id_RoleProfil" integer NOT NULL,
    name character varying(250),
    createdat timestamp(6) without time zone,
    updatedat timestamp(6) without time zone
);
     DROP TABLE public."roleProfil";
       public         heap    postgres    false            �            1259    22583    roleProfil_id_RoleProfil_seq    SEQUENCE     �   CREATE SEQUENCE public."roleProfil_id_RoleProfil_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public."roleProfil_id_RoleProfil_seq";
       public          postgres    false    233            �           0    0    roleProfil_id_RoleProfil_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."roleProfil_id_RoleProfil_seq" OWNED BY public."roleProfil"."id_RoleProfil";
          public          postgres    false    232            �            1259    28137    role_id_role_profil_seq    SEQUENCE     �   CREATE SEQUENCE public.role_id_role_profil_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.role_id_role_profil_seq;
       public          postgres    false    242            �           0    0    role_id_role_profil_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.role_id_role_profil_seq OWNED BY public.role.id_role_profil;
          public          postgres    false    241            �            1259    22577 
   speciality    TABLE     j  CREATE TABLE public.speciality (
    id_speciality integer NOT NULL,
    speciality_name character varying(250),
    createdat timestamp(6) without time zone,
    updatedat timestamp(6) with time zone,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.speciality;
       public         heap    postgres    false            �            1259    22576    speciality_id_speciality_seq    SEQUENCE     �   CREATE SEQUENCE public.speciality_id_speciality_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.speciality_id_speciality_seq;
       public          postgres    false    231            �           0    0    speciality_id_speciality_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.speciality_id_speciality_seq OWNED BY public.speciality.id_speciality;
          public          postgres    false    230            �           2604    28097     blood_donation id_blood_donation    DEFAULT     �   ALTER TABLE ONLY public.blood_donation ALTER COLUMN id_blood_donation SET DEFAULT nextval('public.blood_donation_id_blood_donation_seq'::regclass);
 O   ALTER TABLE public.blood_donation ALTER COLUMN id_blood_donation DROP DEFAULT;
       public          postgres    false    236    235    236            �           2604    22501    consultation id_consultation    DEFAULT     �   ALTER TABLE ONLY public.consultation ALTER COLUMN id_consultation SET DEFAULT nextval('public.consultation_id_consultation_seq'::regclass);
 K   ALTER TABLE public.consultation ALTER COLUMN id_consultation DROP DEFAULT;
       public          postgres    false    214    215    215            �           2604    22519    healthRecord id_healthRecord    DEFAULT     �   ALTER TABLE ONLY public."healthRecord" ALTER COLUMN "id_healthRecord" SET DEFAULT nextval('public."healthRecord_id_healthRecord_seq"'::regclass);
 O   ALTER TABLE public."healthRecord" ALTER COLUMN "id_healthRecord" DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    28109    health_record id_health_record    DEFAULT     �   ALTER TABLE ONLY public.health_record ALTER COLUMN id_health_record SET DEFAULT nextval('public.health_record_id_health_record_seq'::regclass);
 M   ALTER TABLE public.health_record ALTER COLUMN id_health_record DROP DEFAULT;
       public          postgres    false    238    237    238            �           2604    22528    hopital id_hopital    DEFAULT     x   ALTER TABLE ONLY public.hopital ALTER COLUMN id_hopital SET DEFAULT nextval('public.hopital_id_hopital_seq'::regclass);
 A   ALTER TABLE public.hopital ALTER COLUMN id_hopital DROP DEFAULT;
       public          postgres    false    219    218    219            �           2604    28122    medecin id_medein    DEFAULT     v   ALTER TABLE ONLY public.medecin ALTER COLUMN id_medein SET DEFAULT nextval('public.medecin_id_medein_seq'::regclass);
 @   ALTER TABLE public.medecin ALTER COLUMN id_medein DROP DEFAULT;
       public          postgres    false    239    240    240            �           2604    22537    medein id_medein    DEFAULT     t   ALTER TABLE ONLY public.medein ALTER COLUMN id_medein SET DEFAULT nextval('public.medein_id_medein_seq'::regclass);
 ?   ALTER TABLE public.medein ALTER COLUMN id_medein DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    22546    municipality id_municipality    DEFAULT     �   ALTER TABLE ONLY public.municipality ALTER COLUMN id_municipality SET DEFAULT nextval('public.municipality_id_municipality_seq'::regclass);
 K   ALTER TABLE public.municipality ALTER COLUMN id_municipality DROP DEFAULT;
       public          postgres    false    222    223    223            �           2604    22553    pharmacie id_pharmacie    DEFAULT     �   ALTER TABLE ONLY public.pharmacie ALTER COLUMN id_pharmacie SET DEFAULT nextval('public.pharmacie_id_pharmacie_seq'::regclass);
 E   ALTER TABLE public.pharmacie ALTER COLUMN id_pharmacie DROP DEFAULT;
       public          postgres    false    225    224    225            �           2604    22562    prescription id_prescription    DEFAULT     �   ALTER TABLE ONLY public.prescription ALTER COLUMN id_prescription SET DEFAULT nextval('public.prescription_id_prescription_seq'::regclass);
 K   ALTER TABLE public.prescription ALTER COLUMN id_prescription DROP DEFAULT;
       public          postgres    false    227    226    227            �           2604    22571    profil id_profil    DEFAULT     t   ALTER TABLE ONLY public.profil ALTER COLUMN id_profil SET DEFAULT nextval('public.profil_id_profil_seq'::regclass);
 ?   ALTER TABLE public.profil ALTER COLUMN id_profil DROP DEFAULT;
       public          postgres    false    229    228    229            �           2604    28141    role id_role_profil    DEFAULT     z   ALTER TABLE ONLY public.role ALTER COLUMN id_role_profil SET DEFAULT nextval('public.role_id_role_profil_seq'::regclass);
 B   ALTER TABLE public.role ALTER COLUMN id_role_profil DROP DEFAULT;
       public          postgres    false    241    242    242            �           2604    22587    roleProfil id_RoleProfil    DEFAULT     �   ALTER TABLE ONLY public."roleProfil" ALTER COLUMN "id_RoleProfil" SET DEFAULT nextval('public."roleProfil_id_RoleProfil_seq"'::regclass);
 K   ALTER TABLE public."roleProfil" ALTER COLUMN "id_RoleProfil" DROP DEFAULT;
       public          postgres    false    232    233    233            �           2604    22580    speciality id_speciality    DEFAULT     �   ALTER TABLE ONLY public.speciality ALTER COLUMN id_speciality SET DEFAULT nextval('public.speciality_id_speciality_seq'::regclass);
 G   ALTER TABLE public.speciality ALTER COLUMN id_speciality DROP DEFAULT;
       public          postgres    false    231    230    231            �          0    28094    blood_donation 
   TABLE DATA           y   COPY public.blood_donation (id_blood_donation, blood_group, created_at, donation_date, symptoms, updated_at) FROM stdin;
    public          postgres    false    236   ��       �          0    22498    consultation 
   TABLE DATA           �   COPY public.consultation (id_consultation, consultation_date, reason_consultation, symptoms, prescribed_treatment, created_at, "updatedAt", id_prescription, id_profil, id_medecin, id_hopital, updated_at) FROM stdin;
    public          postgres    false    215   /�       �          0    22516    healthRecord 
   TABLE DATA           �   COPY public."healthRecord" ("id_healthRecord", size, weight, "bloodGroup", allergy, "medicalHistoryHealth", vaccination, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    217   ��       �          0    28106    health_record 
   TABLE DATA           �   COPY public.health_record (id_health_record, allergy, blood_group, created_at, medical_history_health, size, updated_at, vaccination, weight) FROM stdin;
    public          postgres    false    238   ��       �          0    22525    hopital 
   TABLE DATA           �   COPY public.hopital (id_hopital, hopital_name, address, contact, email, createdat, updatedat, "id_healthRecord", id_profil, created_at, phone, updated_at, address_email) FROM stdin;
    public          postgres    false    219   &�       �          0    28119    medecin 
   TABLE DATA           �   COPY public.medecin (id_medein, address, contact, created_at, address_email, first_name, last_name, service_number, speciality, updated_at) FROM stdin;
    public          postgres    false    240   �       �          0    22534    medein 
   TABLE DATA           �   COPY public.medein (id_medein, first_name, last_name, speciality, service_number, email, contact, address, createdat, updatedat, "id_roleProfil", id_speciality, id_municipality) FROM stdin;
    public          postgres    false    221   ��       �          0    22543    municipality 
   TABLE DATA           x   COPY public.municipality (id_municipality, municipality_name, createdat, updatedat, created_at, updated_at) FROM stdin;
    public          postgres    false    223   Ʀ       �          0    22590    pharma_hopital 
   TABLE DATA           C   COPY public.pharma_hopital (id_hopital, id_pharmarcie) FROM stdin;
    public          postgres    false    234   i�       �          0    22550 	   pharmacie 
   TABLE DATA           �   COPY public.pharmacie (id_pharmacie, pharmacie_name, address, contact, email, site_web, createdat, updatedat, created_at, consultation_date, updated_at) FROM stdin;
    public          postgres    false    225   ��       �          0    22559    prescription 
   TABLE DATA           �   COPY public.prescription (id_prescription, prescription_date, prescribed_medication, dosage, duration_treatment, createdat, updatedat, id_consultation, id_profil, id_medecin, id_hopital, created_at, updated_at) FROM stdin;
    public          postgres    false    227   ��       �          0    22568    profil 
   TABLE DATA           �   COPY public.profil (id_profil, first_name, last_name, email, password, birthday, address, contact, createdat, updatedat, "id_roleProfil", id_municipality, created_at, updated_at, gender) FROM stdin;
    public          postgres    false    229   s�       �          0    28138    role 
   TABLE DATA           L   COPY public.role (id_role_profil, created_at, name, updated_at) FROM stdin;
    public          postgres    false    242   N�       �          0    22584 
   roleProfil 
   TABLE DATA           S   COPY public."roleProfil" ("id_RoleProfil", name, createdat, updatedat) FROM stdin;
    public          postgres    false    233   ��       �          0    22577 
   speciality 
   TABLE DATA           r   COPY public.speciality (id_speciality, speciality_name, createdat, updatedat, created_at, updated_at) FROM stdin;
    public          postgres    false    231   ٩       �           0    0 $   blood_donation_id_blood_donation_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.blood_donation_id_blood_donation_seq', 3, true);
          public          postgres    false    235            �           0    0     consultation_id_consultation_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.consultation_id_consultation_seq', 1, true);
          public          postgres    false    214            �           0    0     healthRecord_id_healthRecord_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."healthRecord_id_healthRecord_seq"', 1, false);
          public          postgres    false    216            �           0    0 "   health_record_id_health_record_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.health_record_id_health_record_seq', 2, true);
          public          postgres    false    237            �           0    0    hopital_id_hopital_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.hopital_id_hopital_seq', 4, true);
          public          postgres    false    218            �           0    0    medecin_id_medein_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.medecin_id_medein_seq', 3, true);
          public          postgres    false    239            �           0    0    medein_id_medein_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.medein_id_medein_seq', 1, false);
          public          postgres    false    220            �           0    0     municipality_id_municipality_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.municipality_id_municipality_seq', 5, true);
          public          postgres    false    222            �           0    0    pharmacie_id_pharmacie_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.pharmacie_id_pharmacie_seq', 1, true);
          public          postgres    false    224            �           0    0     prescription_id_prescription_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.prescription_id_prescription_seq', 2, true);
          public          postgres    false    226            �           0    0    profil_id_profil_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.profil_id_profil_seq', 4, true);
          public          postgres    false    228            �           0    0    roleProfil_id_RoleProfil_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."roleProfil_id_RoleProfil_seq"', 1, false);
          public          postgres    false    232            �           0    0    role_id_role_profil_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.role_id_role_profil_seq', 3, true);
          public          postgres    false    241            �           0    0    speciality_id_speciality_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.speciality_id_speciality_seq', 3, true);
          public          postgres    false    230            �           2606    28103 "   blood_donation blood_donation_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.blood_donation
    ADD CONSTRAINT blood_donation_pkey PRIMARY KEY (id_blood_donation);
 L   ALTER TABLE ONLY public.blood_donation DROP CONSTRAINT blood_donation_pkey;
       public            postgres    false    236            �           2606    22505    consultation consultation_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.consultation
    ADD CONSTRAINT consultation_pkey PRIMARY KEY (id_consultation);
 H   ALTER TABLE ONLY public.consultation DROP CONSTRAINT consultation_pkey;
       public            postgres    false    215            �           2606    22523    healthRecord healthRecord_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public."healthRecord"
    ADD CONSTRAINT "healthRecord_pkey" PRIMARY KEY ("id_healthRecord");
 L   ALTER TABLE ONLY public."healthRecord" DROP CONSTRAINT "healthRecord_pkey";
       public            postgres    false    217            �           2606    28115     health_record health_record_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.health_record
    ADD CONSTRAINT health_record_pkey PRIMARY KEY (id_health_record);
 J   ALTER TABLE ONLY public.health_record DROP CONSTRAINT health_record_pkey;
       public            postgres    false    238            �           2606    22532    hopital hopital_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.hopital
    ADD CONSTRAINT hopital_pkey PRIMARY KEY (id_hopital);
 >   ALTER TABLE ONLY public.hopital DROP CONSTRAINT hopital_pkey;
       public            postgres    false    219            �           2606    28128    medecin medecin_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.medecin
    ADD CONSTRAINT medecin_pkey PRIMARY KEY (id_medein);
 >   ALTER TABLE ONLY public.medecin DROP CONSTRAINT medecin_pkey;
       public            postgres    false    240            �           2606    22541    medein medein_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.medein
    ADD CONSTRAINT medein_pkey PRIMARY KEY (id_medein);
 <   ALTER TABLE ONLY public.medein DROP CONSTRAINT medein_pkey;
       public            postgres    false    221            �           2606    22548    municipality municipality_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.municipality
    ADD CONSTRAINT municipality_pkey PRIMARY KEY (id_municipality);
 H   ALTER TABLE ONLY public.municipality DROP CONSTRAINT municipality_pkey;
       public            postgres    false    223            �           2606    22557    pharmacie pharmacie_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.pharmacie
    ADD CONSTRAINT pharmacie_pkey PRIMARY KEY (id_pharmacie);
 B   ALTER TABLE ONLY public.pharmacie DROP CONSTRAINT pharmacie_pkey;
       public            postgres    false    225            �           2606    22566    prescription prescription_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.prescription
    ADD CONSTRAINT prescription_pkey PRIMARY KEY (id_prescription);
 H   ALTER TABLE ONLY public.prescription DROP CONSTRAINT prescription_pkey;
       public            postgres    false    227            �           2606    22575    profil profil_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.profil
    ADD CONSTRAINT profil_pkey PRIMARY KEY (id_profil);
 <   ALTER TABLE ONLY public.profil DROP CONSTRAINT profil_pkey;
       public            postgres    false    229            �           2606    22589    roleProfil roleProfil_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public."roleProfil"
    ADD CONSTRAINT "roleProfil_pkey" PRIMARY KEY ("id_RoleProfil");
 H   ALTER TABLE ONLY public."roleProfil" DROP CONSTRAINT "roleProfil_pkey";
       public            postgres    false    233            �           2606    28145    role role_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.role
    ADD CONSTRAINT role_pkey PRIMARY KEY (id_role_profil);
 8   ALTER TABLE ONLY public.role DROP CONSTRAINT role_pkey;
       public            postgres    false    242            �           2606    22582    speciality speciality_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.speciality
    ADD CONSTRAINT speciality_pkey PRIMARY KEY (id_speciality);
 D   ALTER TABLE ONLY public.speciality DROP CONSTRAINT speciality_pkey;
       public            postgres    false    231            �           2606    22643    prescription fk_consultation    FK CONSTRAINT     �   ALTER TABLE ONLY public.prescription
    ADD CONSTRAINT fk_consultation FOREIGN KEY (id_consultation) REFERENCES public.consultation(id_consultation) NOT VALID;
 F   ALTER TABLE ONLY public.prescription DROP CONSTRAINT fk_consultation;
       public          postgres    false    227    3278    215            �           2606    22618    hopital fk_healthRecord    FK CONSTRAINT     �   ALTER TABLE ONLY public.hopital
    ADD CONSTRAINT "fk_healthRecord" FOREIGN KEY ("id_healthRecord") REFERENCES public."healthRecord"("id_healthRecord") NOT VALID;
 C   ALTER TABLE ONLY public.hopital DROP CONSTRAINT "fk_healthRecord";
       public          postgres    false    219    3280    217            �           2606    22603    consultation fk_hopital    FK CONSTRAINT     �   ALTER TABLE ONLY public.consultation
    ADD CONSTRAINT fk_hopital FOREIGN KEY (id_hopital) REFERENCES public.hopital(id_hopital) NOT VALID;
 A   ALTER TABLE ONLY public.consultation DROP CONSTRAINT fk_hopital;
       public          postgres    false    215    3282    219            �           2606    22658    prescription fk_hopital    FK CONSTRAINT     �   ALTER TABLE ONLY public.prescription
    ADD CONSTRAINT fk_hopital FOREIGN KEY (id_hopital) REFERENCES public.hopital(id_hopital) NOT VALID;
 A   ALTER TABLE ONLY public.prescription DROP CONSTRAINT fk_hopital;
       public          postgres    false    3282    219    227            �           2606    22678    pharma_hopital fk_hopital    FK CONSTRAINT     �   ALTER TABLE ONLY public.pharma_hopital
    ADD CONSTRAINT fk_hopital FOREIGN KEY (id_hopital) REFERENCES public.hopital(id_hopital) NOT VALID;
 C   ALTER TABLE ONLY public.pharma_hopital DROP CONSTRAINT fk_hopital;
       public          postgres    false    219    3282    234            �           2606    22598    consultation fk_medecin    FK CONSTRAINT     �   ALTER TABLE ONLY public.consultation
    ADD CONSTRAINT fk_medecin FOREIGN KEY (id_medecin) REFERENCES public.medein(id_medein) NOT VALID;
 A   ALTER TABLE ONLY public.consultation DROP CONSTRAINT fk_medecin;
       public          postgres    false    221    3284    215            �           2606    22653    prescription fk_medecin    FK CONSTRAINT     �   ALTER TABLE ONLY public.prescription
    ADD CONSTRAINT fk_medecin FOREIGN KEY (id_medecin) REFERENCES public.medein(id_medein) NOT VALID;
 A   ALTER TABLE ONLY public.prescription DROP CONSTRAINT fk_medecin;
       public          postgres    false    227    221    3284            �           2606    22638    medein fk_municipality    FK CONSTRAINT     �   ALTER TABLE ONLY public.medein
    ADD CONSTRAINT fk_municipality FOREIGN KEY (id_municipality) REFERENCES public.municipality(id_municipality) NOT VALID;
 @   ALTER TABLE ONLY public.medein DROP CONSTRAINT fk_municipality;
       public          postgres    false    223    3286    221            �           2606    22668    profil fk_municipality    FK CONSTRAINT     �   ALTER TABLE ONLY public.profil
    ADD CONSTRAINT fk_municipality FOREIGN KEY (id_municipality) REFERENCES public.municipality(id_municipality) NOT VALID;
 @   ALTER TABLE ONLY public.profil DROP CONSTRAINT fk_municipality;
       public          postgres    false    3286    229    223            �           2606    22673    pharma_hopital fk_pharmacie    FK CONSTRAINT     �   ALTER TABLE ONLY public.pharma_hopital
    ADD CONSTRAINT fk_pharmacie FOREIGN KEY (id_pharmarcie) REFERENCES public.pharmacie(id_pharmacie) NOT VALID;
 E   ALTER TABLE ONLY public.pharma_hopital DROP CONSTRAINT fk_pharmacie;
       public          postgres    false    225    3288    234            �           2606    22593    consultation fk_profil    FK CONSTRAINT     �   ALTER TABLE ONLY public.consultation
    ADD CONSTRAINT fk_profil FOREIGN KEY (id_profil) REFERENCES public.profil(id_profil) NOT VALID;
 @   ALTER TABLE ONLY public.consultation DROP CONSTRAINT fk_profil;
       public          postgres    false    215    229    3292            �           2606    22623    hopital fk_profil    FK CONSTRAINT     �   ALTER TABLE ONLY public.hopital
    ADD CONSTRAINT fk_profil FOREIGN KEY (id_profil) REFERENCES public.profil(id_profil) NOT VALID;
 ;   ALTER TABLE ONLY public.hopital DROP CONSTRAINT fk_profil;
       public          postgres    false    3292    229    219            �           2606    22648    prescription fk_profil    FK CONSTRAINT     �   ALTER TABLE ONLY public.prescription
    ADD CONSTRAINT fk_profil FOREIGN KEY (id_profil) REFERENCES public.profil(id_profil) NOT VALID;
 @   ALTER TABLE ONLY public.prescription DROP CONSTRAINT fk_profil;
       public          postgres    false    229    227    3292            �           2606    22628    medein fk_roleProfil    FK CONSTRAINT     �   ALTER TABLE ONLY public.medein
    ADD CONSTRAINT "fk_roleProfil" FOREIGN KEY ("id_roleProfil") REFERENCES public."roleProfil"("id_RoleProfil") NOT VALID;
 @   ALTER TABLE ONLY public.medein DROP CONSTRAINT "fk_roleProfil";
       public          postgres    false    221    233    3296            �           2606    22663    profil fk_roleProfil    FK CONSTRAINT     �   ALTER TABLE ONLY public.profil
    ADD CONSTRAINT "fk_roleProfil" FOREIGN KEY ("id_roleProfil") REFERENCES public."roleProfil"("id_RoleProfil") NOT VALID;
 @   ALTER TABLE ONLY public.profil DROP CONSTRAINT "fk_roleProfil";
       public          postgres    false    233    3296    229            �           2606    22633    medein fk_speciality    FK CONSTRAINT     �   ALTER TABLE ONLY public.medein
    ADD CONSTRAINT fk_speciality FOREIGN KEY (id_speciality) REFERENCES public.speciality(id_speciality) NOT VALID;
 >   ALTER TABLE ONLY public.medein DROP CONSTRAINT fk_speciality;
       public          postgres    false    221    231    3294            �   c   x�3�t��4202�50�52T0��22�24ҳ003���L�K��Lũ�ˈ��Ʀz�&�� #
sJ���2�b�������P�%N3��p��qqq �)�      �   _   x�3���,I-*�L�IU()�/�)�
e�y%���y)���%��y��E�ɩ%���9 Mh����X��X��P��������\�����Ԓ+F��� ��      �      x������ � �      �   [   x�3�,��K�L/J����4202�50�52T00�22�22�37�04��㴰�#���ihn�e��8 2ֳ02654�n��������1z\\\ :#�      �   �   x���M
�0��ur��!���<�'�fLC���
zz-�R�����]<��;^��H]�Hu ; �:?>�SB�B�BI&lP>���K��R_)�}����cn�",�s��s��E�%FHmW�L�䫱m8n��~���g�����İ�:��a����o��� ��O�̯8��_p      �   �   x��б�0��}�� ���&��qqtbi��%-��L�Q����w'��ƺ0�,s�|�Is%�Af\f W��j	��@�g��A[L��Gb"���H��t�	�{U�.��v6���Ia���5��Y�j�1Y��E����=�y)ڥ�L�f���������������MN)}�4w       �      x������ � �      �   �   x�}�A
�0��u�^�!��LHv���	�`��Ъ��Ս�&0�~�X��6��[�ߡAj5hO�G�I���B�*]n)O�Y���C���}}��}.u���	Gc���4��׼,�EN���A*N�]����}>�h�� >~K�      �      x������ � �      �   g   x�3����M,J�/�T(*MU(()��622�0714�,N��+I-N�%���9z��� Mdd`d�k`�kd�``nebneh�gjfhhiի ֌GW� ��#�      �   f   x���;
�0k��%��n6�����(���S��7���Mt�Rݺ��w�"�P/�0�SȜL���y�<��/P`=���4FMLrC����h,�      �   �   x���1n�0��Y>��")�&��'�	�(�S��e4�{��idZ O������4�������S������穔�7��-y:����f؛�e�^��ļx@���O�>� �<X��1!8�DZi�w�&�答?����Ђ$��S��J��h#fVQ�ܲi��1*!�R��ɏ�����V�!���)DQc�[�*�u�7��      �   ^   x�}�1� F�=���E���ep�8p���`�ߗ<%l����$��)��U��GU�����v�����P��b ��,���#�;f~Y&'�      �      x������ � �      �   k   x�}�K
� @ѱom@y5q�ZA�(	!*��_- ��\R]�R�|^I�#�F�L���Hb��X��Z�Ӵ��r��8�@�+��4��*��c�A���
�` ���1     