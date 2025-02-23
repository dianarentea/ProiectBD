PGDMP     ;                    {           ClinicaRecuperareV2    15.2    15.2 J    Q           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            R           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            S           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            T           1262    24576    ClinicaRecuperareV2    DATABASE     �   CREATE DATABASE "ClinicaRecuperareV2" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United Kingdom.1252';
 %   DROP DATABASE "ClinicaRecuperareV2";
                postgres    false                        2615    24759    clinica    SCHEMA        CREATE SCHEMA clinica;
    DROP SCHEMA clinica;
                postgres    false            �            1259    32790    test    TABLE     X   CREATE TABLE clinica.test (
    id bigint NOT NULL,
    title character varying(255)
);
    DROP TABLE clinica.test;
       clinica         heap    postgres    false    6            �            1259    32789    test_id_seq    SEQUENCE     u   CREATE SEQUENCE clinica.test_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE clinica.test_id_seq;
       clinica          postgres    false    232    6            U           0    0    test_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE clinica.test_id_seq OWNED BY clinica.test.id;
          clinica          postgres    false    231            �            1259    24606 	   afectiune    TABLE     �   CREATE TABLE public.afectiune (
    idafectiune integer NOT NULL,
    denumire character varying(20),
    idprocedura integer
);
    DROP TABLE public.afectiune;
       public         heap    postgres    false            �            1259    24605    afectiune_idafectiune_seq    SEQUENCE     �   CREATE SEQUENCE public.afectiune_idafectiune_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.afectiune_idafectiune_seq;
       public          postgres    false    220            V           0    0    afectiune_idafectiune_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.afectiune_idafectiune_seq OWNED BY public.afectiune.idafectiune;
          public          postgres    false    219            �            1259    24578    angajat    TABLE     �   CREATE TABLE public.angajat (
    idangajat integer NOT NULL,
    idspecializare integer,
    nume character varying(20),
    prenume character varying(20),
    salariu integer
);
    DROP TABLE public.angajat;
       public         heap    postgres    false            �            1259    24577    angajat_idangajat_seq    SEQUENCE     �   CREATE SEQUENCE public.angajat_idangajat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.angajat_idangajat_seq;
       public          postgres    false    216            W           0    0    angajat_idangajat_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.angajat_idangajat_seq OWNED BY public.angajat.idangajat;
          public          postgres    false    215            �            1259    24620 	   aparatura    TABLE     h   CREATE TABLE public.aparatura (
    idaparatura integer NOT NULL,
    denumire character varying(20)
);
    DROP TABLE public.aparatura;
       public         heap    postgres    false            �            1259    24619    aparatura_idaparatura_seq    SEQUENCE     �   CREATE SEQUENCE public.aparatura_idaparatura_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.aparatura_idaparatura_seq;
       public          postgres    false    224            X           0    0    aparatura_idaparatura_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.aparatura_idaparatura_seq OWNED BY public.aparatura.idaparatura;
          public          postgres    false    223            �            1259    24748    material    TABLE     f   CREATE TABLE public.material (
    idmaterial integer NOT NULL,
    denumire character varying(20)
);
    DROP TABLE public.material;
       public         heap    postgres    false            �            1259    24747    material_idmaterial_seq    SEQUENCE     �   CREATE SEQUENCE public.material_idmaterial_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.material_idmaterial_seq;
       public          postgres    false    230            Y           0    0    material_idmaterial_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.material_idmaterial_seq OWNED BY public.material.idmaterial;
          public          postgres    false    229            �            1259    24729    pacient    TABLE     �   CREATE TABLE public.pacient (
    idpacient integer NOT NULL,
    idafectiune integer,
    idprogramare integer,
    nume character varying(20),
    prenume character varying(20),
    varsta integer
);
    DROP TABLE public.pacient;
       public         heap    postgres    false            �            1259    24728    pacient_idpacient_seq    SEQUENCE     �   CREATE SEQUENCE public.pacient_idpacient_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.pacient_idpacient_seq;
       public          postgres    false    226            Z           0    0    pacient_idpacient_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.pacient_idpacient_seq OWNED BY public.pacient.idpacient;
          public          postgres    false    225            �            1259    24613 	   procedura    TABLE     �   CREATE TABLE public.procedura (
    idprocedura integer NOT NULL,
    denumire character varying(20),
    idafectiune integer,
    idaparatura integer,
    idmaterial integer
);
    DROP TABLE public.procedura;
       public         heap    postgres    false            �            1259    24612    procedura_idprocedura_seq    SEQUENCE     �   CREATE SEQUENCE public.procedura_idprocedura_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.procedura_idprocedura_seq;
       public          postgres    false    222            [           0    0    procedura_idprocedura_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.procedura_idprocedura_seq OWNED BY public.procedura.idprocedura;
          public          postgres    false    221            �            1259    24599 
   programare    TABLE     �   CREATE TABLE public.programare (
    idprogramare integer NOT NULL,
    idpacient integer,
    idangajat integer,
    dataconsultatie date,
    oraconsultatiei time without time zone
);
    DROP TABLE public.programare;
       public         heap    postgres    false            �            1259    24598    programare_idprogramare_seq    SEQUENCE     �   CREATE SEQUENCE public.programare_idprogramare_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.programare_idprogramare_seq;
       public          postgres    false    218            \           0    0    programare_idprogramare_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.programare_idprogramare_seq OWNED BY public.programare.idprogramare;
          public          postgres    false    217            �            1259    24741    specializare    TABLE     n   CREATE TABLE public.specializare (
    idspecializare integer NOT NULL,
    denumire character varying(20)
);
     DROP TABLE public.specializare;
       public         heap    postgres    false            �            1259    24740    specializare_idspecializare_seq    SEQUENCE     �   CREATE SEQUENCE public.specializare_idspecializare_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.specializare_idspecializare_seq;
       public          postgres    false    228            ]           0    0    specializare_idspecializare_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.specializare_idspecializare_seq OWNED BY public.specializare.idspecializare;
          public          postgres    false    227            �           2604    32793    test id    DEFAULT     d   ALTER TABLE ONLY clinica.test ALTER COLUMN id SET DEFAULT nextval('clinica.test_id_seq'::regclass);
 7   ALTER TABLE clinica.test ALTER COLUMN id DROP DEFAULT;
       clinica          postgres    false    232    231    232            �           2604    24609    afectiune idafectiune    DEFAULT     ~   ALTER TABLE ONLY public.afectiune ALTER COLUMN idafectiune SET DEFAULT nextval('public.afectiune_idafectiune_seq'::regclass);
 D   ALTER TABLE public.afectiune ALTER COLUMN idafectiune DROP DEFAULT;
       public          postgres    false    219    220    220            �           2604    24581    angajat idangajat    DEFAULT     v   ALTER TABLE ONLY public.angajat ALTER COLUMN idangajat SET DEFAULT nextval('public.angajat_idangajat_seq'::regclass);
 @   ALTER TABLE public.angajat ALTER COLUMN idangajat DROP DEFAULT;
       public          postgres    false    216    215    216            �           2604    24623    aparatura idaparatura    DEFAULT     ~   ALTER TABLE ONLY public.aparatura ALTER COLUMN idaparatura SET DEFAULT nextval('public.aparatura_idaparatura_seq'::regclass);
 D   ALTER TABLE public.aparatura ALTER COLUMN idaparatura DROP DEFAULT;
       public          postgres    false    224    223    224            �           2604    24751    material idmaterial    DEFAULT     z   ALTER TABLE ONLY public.material ALTER COLUMN idmaterial SET DEFAULT nextval('public.material_idmaterial_seq'::regclass);
 B   ALTER TABLE public.material ALTER COLUMN idmaterial DROP DEFAULT;
       public          postgres    false    230    229    230            �           2604    24732    pacient idpacient    DEFAULT     v   ALTER TABLE ONLY public.pacient ALTER COLUMN idpacient SET DEFAULT nextval('public.pacient_idpacient_seq'::regclass);
 @   ALTER TABLE public.pacient ALTER COLUMN idpacient DROP DEFAULT;
       public          postgres    false    225    226    226            �           2604    24616    procedura idprocedura    DEFAULT     ~   ALTER TABLE ONLY public.procedura ALTER COLUMN idprocedura SET DEFAULT nextval('public.procedura_idprocedura_seq'::regclass);
 D   ALTER TABLE public.procedura ALTER COLUMN idprocedura DROP DEFAULT;
       public          postgres    false    222    221    222            �           2604    24602    programare idprogramare    DEFAULT     �   ALTER TABLE ONLY public.programare ALTER COLUMN idprogramare SET DEFAULT nextval('public.programare_idprogramare_seq'::regclass);
 F   ALTER TABLE public.programare ALTER COLUMN idprogramare DROP DEFAULT;
       public          postgres    false    217    218    218            �           2604    24744    specializare idspecializare    DEFAULT     �   ALTER TABLE ONLY public.specializare ALTER COLUMN idspecializare SET DEFAULT nextval('public.specializare_idspecializare_seq'::regclass);
 J   ALTER TABLE public.specializare ALTER COLUMN idspecializare DROP DEFAULT;
       public          postgres    false    227    228    228            N          0    32790    test 
   TABLE DATA           *   COPY clinica.test (id, title) FROM stdin;
    clinica          postgres    false    232   �T       B          0    24606 	   afectiune 
   TABLE DATA           G   COPY public.afectiune (idafectiune, denumire, idprocedura) FROM stdin;
    public          postgres    false    220   �T       >          0    24578    angajat 
   TABLE DATA           T   COPY public.angajat (idangajat, idspecializare, nume, prenume, salariu) FROM stdin;
    public          postgres    false    216   eU       F          0    24620 	   aparatura 
   TABLE DATA           :   COPY public.aparatura (idaparatura, denumire) FROM stdin;
    public          postgres    false    224   �U       L          0    24748    material 
   TABLE DATA           8   COPY public.material (idmaterial, denumire) FROM stdin;
    public          postgres    false    230   GV       H          0    24729    pacient 
   TABLE DATA           ^   COPY public.pacient (idpacient, idafectiune, idprogramare, nume, prenume, varsta) FROM stdin;
    public          postgres    false    226   �V       D          0    24613 	   procedura 
   TABLE DATA           `   COPY public.procedura (idprocedura, denumire, idafectiune, idaparatura, idmaterial) FROM stdin;
    public          postgres    false    222   W       @          0    24599 
   programare 
   TABLE DATA           j   COPY public.programare (idprogramare, idpacient, idangajat, dataconsultatie, oraconsultatiei) FROM stdin;
    public          postgres    false    218   �W       J          0    24741    specializare 
   TABLE DATA           @   COPY public.specializare (idspecializare, denumire) FROM stdin;
    public          postgres    false    228   �W       ^           0    0    test_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('clinica.test_id_seq', 1, true);
          clinica          postgres    false    231            _           0    0    afectiune_idafectiune_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.afectiune_idafectiune_seq', 5, true);
          public          postgres    false    219            `           0    0    angajat_idangajat_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.angajat_idangajat_seq', 5, true);
          public          postgres    false    215            a           0    0    aparatura_idaparatura_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.aparatura_idaparatura_seq', 10, true);
          public          postgres    false    223            b           0    0    material_idmaterial_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.material_idmaterial_seq', 5, true);
          public          postgres    false    229            c           0    0    pacient_idpacient_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.pacient_idpacient_seq', 5, true);
          public          postgres    false    225            d           0    0    procedura_idprocedura_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.procedura_idprocedura_seq', 5, true);
          public          postgres    false    221            e           0    0    programare_idprogramare_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.programare_idprogramare_seq', 5, true);
          public          postgres    false    217            f           0    0    specializare_idspecializare_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.specializare_idspecializare_seq', 6, true);
          public          postgres    false    227            �           2606    32795    test test_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY clinica.test
    ADD CONSTRAINT test_pkey PRIMARY KEY (id);
 9   ALTER TABLE ONLY clinica.test DROP CONSTRAINT test_pkey;
       clinica            postgres    false    232            �           2606    24611    afectiune afectiune_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.afectiune
    ADD CONSTRAINT afectiune_pkey PRIMARY KEY (idafectiune);
 B   ALTER TABLE ONLY public.afectiune DROP CONSTRAINT afectiune_pkey;
       public            postgres    false    220            �           2606    24583    angajat angajat_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.angajat
    ADD CONSTRAINT angajat_pkey PRIMARY KEY (idangajat);
 >   ALTER TABLE ONLY public.angajat DROP CONSTRAINT angajat_pkey;
       public            postgres    false    216            �           2606    24625    aparatura aparatura_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.aparatura
    ADD CONSTRAINT aparatura_pkey PRIMARY KEY (idaparatura);
 B   ALTER TABLE ONLY public.aparatura DROP CONSTRAINT aparatura_pkey;
       public            postgres    false    224            �           2606    24753    material material_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.material
    ADD CONSTRAINT material_pkey PRIMARY KEY (idmaterial);
 @   ALTER TABLE ONLY public.material DROP CONSTRAINT material_pkey;
       public            postgres    false    230            �           2606    24734    pacient pacient_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.pacient
    ADD CONSTRAINT pacient_pkey PRIMARY KEY (idpacient);
 >   ALTER TABLE ONLY public.pacient DROP CONSTRAINT pacient_pkey;
       public            postgres    false    226            �           2606    24618    procedura procedura_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.procedura
    ADD CONSTRAINT procedura_pkey PRIMARY KEY (idprocedura);
 B   ALTER TABLE ONLY public.procedura DROP CONSTRAINT procedura_pkey;
       public            postgres    false    222            �           2606    24604    programare programare_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.programare
    ADD CONSTRAINT programare_pkey PRIMARY KEY (idprogramare);
 D   ALTER TABLE ONLY public.programare DROP CONSTRAINT programare_pkey;
       public            postgres    false    218            �           2606    24746    specializare specializare_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.specializare
    ADD CONSTRAINT specializare_pkey PRIMARY KEY (idspecializare);
 H   ALTER TABLE ONLY public.specializare DROP CONSTRAINT specializare_pkey;
       public            postgres    false    228            �           2606    24693     afectiune fk_afectiune_procedura    FK CONSTRAINT     �   ALTER TABLE ONLY public.afectiune
    ADD CONSTRAINT fk_afectiune_procedura FOREIGN KEY (idprocedura) REFERENCES public.procedura(idprocedura) ON UPDATE CASCADE ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.afectiune DROP CONSTRAINT fk_afectiune_procedura;
       public          postgres    false    3230    222    220            �           2606    24698     procedura fk_procedura_afectiune    FK CONSTRAINT     �   ALTER TABLE ONLY public.procedura
    ADD CONSTRAINT fk_procedura_afectiune FOREIGN KEY (idafectiune) REFERENCES public.afectiune(idafectiune) ON UPDATE CASCADE ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.procedura DROP CONSTRAINT fk_procedura_afectiune;
       public          postgres    false    222    3228    220            �           2606    24703     procedura fk_procedura_aparatura    FK CONSTRAINT     �   ALTER TABLE ONLY public.procedura
    ADD CONSTRAINT fk_procedura_aparatura FOREIGN KEY (idaparatura) REFERENCES public.aparatura(idaparatura) ON UPDATE CASCADE ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.procedura DROP CONSTRAINT fk_procedura_aparatura;
       public          postgres    false    3232    222    224            �           2606    24754    procedura fk_procedura_material    FK CONSTRAINT     �   ALTER TABLE ONLY public.procedura
    ADD CONSTRAINT fk_procedura_material FOREIGN KEY (idmaterial) REFERENCES public.material(idmaterial) ON UPDATE CASCADE ON DELETE SET NULL;
 I   ALTER TABLE ONLY public.procedura DROP CONSTRAINT fk_procedura_material;
       public          postgres    false    222    3238    230            �           2606    24688     programare fk_programare_angajat    FK CONSTRAINT     �   ALTER TABLE ONLY public.programare
    ADD CONSTRAINT fk_programare_angajat FOREIGN KEY (idangajat) REFERENCES public.angajat(idangajat) ON UPDATE CASCADE ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.programare DROP CONSTRAINT fk_programare_angajat;
       public          postgres    false    218    3224    216            �           2606    24735     programare fk_programare_pacient    FK CONSTRAINT     �   ALTER TABLE ONLY public.programare
    ADD CONSTRAINT fk_programare_pacient FOREIGN KEY (idpacient) REFERENCES public.pacient(idpacient) ON UPDATE CASCADE ON DELETE CASCADE;
 J   ALTER TABLE ONLY public.programare DROP CONSTRAINT fk_programare_pacient;
       public          postgres    false    3234    226    218            N      x�3�̭I-.	�,�I����� =�u      B   _   x�3�)J,�M,�,��4�2�J�I�H,JU�--N.�I,J�4�2���,�/)�O�D�0�2�t)-J-ʄ�r�p�r����H�I��K�4����� j!�      >   b   x��;
�0E��e1�oa)؉`!V6�	8 Fݿ���^��O~H^$|��ZYX�y���R(��0��pô�<<��;���g@���,��$����(�>r�      F   `   x�3�t)J�K�R���MK,�L�2�IMN,�2��I,N-�2�t�IM.)�/.��-�I,J�2���O�V(O,K�2�0�j��KL������� �+�      L   H   x�3��,�/(J��2�t�,NVHJ�I�+�2�t�/���2�tJͫ�TH�I,.�LN�2�tO�+I-J����� ��*      H   h   x��;�0D�z�b"�y+�)�E�f\XB6"���Ӟ{�A�+���b��X�P��g�\��K_�y�#�SO����ѵ�V�I��KDn:Q�      D   Y   x�3�IMN,�4�4���2��I,N-r�A\cNל�䒢|����ҜĢT��	Hʄ34/%U�8?�7��r�$d楃y �=... �3U      @   O   x�5���0�xW`'R�Y����D���#���P���ㆸM��Mz̎F.�P�5
|��(NG��hue�efܽ      J   `   x�E�;
�0 �99EO �����p)m�1%MO��[_[~HYI|!S��)'��������M���|�bOP�#,�ű(�8�^��xųA���!d     