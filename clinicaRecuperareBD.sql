PGDMP     #    3                {           ClinicaRecuperareV2    15.2    15.2 D    H           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            I           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            J           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            K           1262    16765    ClinicaRecuperareV2    DATABASE     �   CREATE DATABASE "ClinicaRecuperareV2" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_American Samoa.1252';
 %   DROP DATABASE "ClinicaRecuperareV2";
                postgres    false            �            1259    16802 	   afectiune    TABLE     �   CREATE TABLE public.afectiune (
    idafectiune integer NOT NULL,
    denumire character varying(20),
    idprocedura integer
);
    DROP TABLE public.afectiune;
       public         heap    postgres    false            �            1259    16801    afectiune_idafectiune_seq    SEQUENCE     �   CREATE SEQUENCE public.afectiune_idafectiune_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.afectiune_idafectiune_seq;
       public          postgres    false    219            L           0    0    afectiune_idafectiune_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.afectiune_idafectiune_seq OWNED BY public.afectiune.idafectiune;
          public          postgres    false    218            �            1259    16879    angajat    TABLE     �   CREATE TABLE public.angajat (
    idangajat integer NOT NULL,
    idspecializare integer,
    nume character varying(20),
    prenume character varying(20),
    salariu integer
);
    DROP TABLE public.angajat;
       public         heap    postgres    false            �            1259    16878    angajat_idangajat_seq    SEQUENCE     �   CREATE SEQUENCE public.angajat_idangajat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.angajat_idangajat_seq;
       public          postgres    false    229            M           0    0    angajat_idangajat_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.angajat_idangajat_seq OWNED BY public.angajat.idangajat;
          public          postgres    false    228            �            1259    16823 	   aparatura    TABLE     h   CREATE TABLE public.aparatura (
    idaparatura integer NOT NULL,
    denumire character varying(20)
);
    DROP TABLE public.aparatura;
       public         heap    postgres    false            �            1259    16822    aparatura_idaparatura_seq    SEQUENCE     �   CREATE SEQUENCE public.aparatura_idaparatura_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.aparatura_idaparatura_seq;
       public          postgres    false    223            N           0    0    aparatura_idaparatura_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.aparatura_idaparatura_seq OWNED BY public.aparatura.idaparatura;
          public          postgres    false    222            �            1259    16830    material    TABLE     f   CREATE TABLE public.material (
    idmaterial integer NOT NULL,
    denumire character varying(20)
);
    DROP TABLE public.material;
       public         heap    postgres    false            �            1259    16829    material_idmaterial_seq    SEQUENCE     �   CREATE SEQUENCE public.material_idmaterial_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.material_idmaterial_seq;
       public          postgres    false    225            O           0    0    material_idmaterial_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.material_idmaterial_seq OWNED BY public.material.idmaterial;
          public          postgres    false    224            �            1259    16774    pacient    TABLE     �   CREATE TABLE public.pacient (
    idpacient integer NOT NULL,
    idafectiune integer,
    idprogramare integer,
    nume character varying(20),
    prenume character varying(20),
    varsta integer
);
    DROP TABLE public.pacient;
       public         heap    postgres    false            �            1259    16773    pacient_idpacient_seq    SEQUENCE     �   CREATE SEQUENCE public.pacient_idpacient_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.pacient_idpacient_seq;
       public          postgres    false    215            P           0    0    pacient_idpacient_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.pacient_idpacient_seq OWNED BY public.pacient.idpacient;
          public          postgres    false    214            �            1259    16809 	   procedura    TABLE     �   CREATE TABLE public.procedura (
    idprocedura integer NOT NULL,
    denumire character varying(20),
    idafectiune integer,
    idaparatura integer,
    idmaterial integer
);
    DROP TABLE public.procedura;
       public         heap    postgres    false            �            1259    16808    procedura_idprocedura_seq    SEQUENCE     �   CREATE SEQUENCE public.procedura_idprocedura_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.procedura_idprocedura_seq;
       public          postgres    false    221            Q           0    0    procedura_idprocedura_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.procedura_idprocedura_seq OWNED BY public.procedura.idprocedura;
          public          postgres    false    220            �            1259    16795 
   programare    TABLE     �   CREATE TABLE public.programare (
    idprogramare integer NOT NULL,
    idpacient integer,
    idangajat integer,
    idcabinet integer,
    dataconsultatie date,
    oraconsultatiei time without time zone
);
    DROP TABLE public.programare;
       public         heap    postgres    false            �            1259    16794    programare_idprogramare_seq    SEQUENCE     �   CREATE SEQUENCE public.programare_idprogramare_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.programare_idprogramare_seq;
       public          postgres    false    217            R           0    0    programare_idprogramare_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.programare_idprogramare_seq OWNED BY public.programare.idprogramare;
          public          postgres    false    216            �            1259    16867    specializare    TABLE     n   CREATE TABLE public.specializare (
    idspecializare integer NOT NULL,
    denumire character varying(20)
);
     DROP TABLE public.specializare;
       public         heap    postgres    false            �            1259    16866    specializare_idspecializare_seq    SEQUENCE     �   CREATE SEQUENCE public.specializare_idspecializare_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.specializare_idspecializare_seq;
       public          postgres    false    227            S           0    0    specializare_idspecializare_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.specializare_idspecializare_seq OWNED BY public.specializare.idspecializare;
          public          postgres    false    226            �           2604    16805    afectiune idafectiune    DEFAULT     ~   ALTER TABLE ONLY public.afectiune ALTER COLUMN idafectiune SET DEFAULT nextval('public.afectiune_idafectiune_seq'::regclass);
 D   ALTER TABLE public.afectiune ALTER COLUMN idafectiune DROP DEFAULT;
       public          postgres    false    219    218    219            �           2604    16882    angajat idangajat    DEFAULT     v   ALTER TABLE ONLY public.angajat ALTER COLUMN idangajat SET DEFAULT nextval('public.angajat_idangajat_seq'::regclass);
 @   ALTER TABLE public.angajat ALTER COLUMN idangajat DROP DEFAULT;
       public          postgres    false    229    228    229            �           2604    16826    aparatura idaparatura    DEFAULT     ~   ALTER TABLE ONLY public.aparatura ALTER COLUMN idaparatura SET DEFAULT nextval('public.aparatura_idaparatura_seq'::regclass);
 D   ALTER TABLE public.aparatura ALTER COLUMN idaparatura DROP DEFAULT;
       public          postgres    false    222    223    223            �           2604    16833    material idmaterial    DEFAULT     z   ALTER TABLE ONLY public.material ALTER COLUMN idmaterial SET DEFAULT nextval('public.material_idmaterial_seq'::regclass);
 B   ALTER TABLE public.material ALTER COLUMN idmaterial DROP DEFAULT;
       public          postgres    false    224    225    225            �           2604    16777    pacient idpacient    DEFAULT     v   ALTER TABLE ONLY public.pacient ALTER COLUMN idpacient SET DEFAULT nextval('public.pacient_idpacient_seq'::regclass);
 @   ALTER TABLE public.pacient ALTER COLUMN idpacient DROP DEFAULT;
       public          postgres    false    215    214    215            �           2604    16812    procedura idprocedura    DEFAULT     ~   ALTER TABLE ONLY public.procedura ALTER COLUMN idprocedura SET DEFAULT nextval('public.procedura_idprocedura_seq'::regclass);
 D   ALTER TABLE public.procedura ALTER COLUMN idprocedura DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    16798    programare idprogramare    DEFAULT     �   ALTER TABLE ONLY public.programare ALTER COLUMN idprogramare SET DEFAULT nextval('public.programare_idprogramare_seq'::regclass);
 F   ALTER TABLE public.programare ALTER COLUMN idprogramare DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    16870    specializare idspecializare    DEFAULT     �   ALTER TABLE ONLY public.specializare ALTER COLUMN idspecializare SET DEFAULT nextval('public.specializare_idspecializare_seq'::regclass);
 J   ALTER TABLE public.specializare ALTER COLUMN idspecializare DROP DEFAULT;
       public          postgres    false    227    226    227            ;          0    16802 	   afectiune 
   TABLE DATA           G   COPY public.afectiune (idafectiune, denumire, idprocedura) FROM stdin;
    public          postgres    false    219   �P       E          0    16879    angajat 
   TABLE DATA           T   COPY public.angajat (idangajat, idspecializare, nume, prenume, salariu) FROM stdin;
    public          postgres    false    229   NQ       ?          0    16823 	   aparatura 
   TABLE DATA           :   COPY public.aparatura (idaparatura, denumire) FROM stdin;
    public          postgres    false    223   �Q       A          0    16830    material 
   TABLE DATA           8   COPY public.material (idmaterial, denumire) FROM stdin;
    public          postgres    false    225   R       7          0    16774    pacient 
   TABLE DATA           ^   COPY public.pacient (idpacient, idafectiune, idprogramare, nume, prenume, varsta) FROM stdin;
    public          postgres    false    215   wR       =          0    16809 	   procedura 
   TABLE DATA           `   COPY public.procedura (idprocedura, denumire, idafectiune, idaparatura, idmaterial) FROM stdin;
    public          postgres    false    221   �R       9          0    16795 
   programare 
   TABLE DATA           u   COPY public.programare (idprogramare, idpacient, idangajat, idcabinet, dataconsultatie, oraconsultatiei) FROM stdin;
    public          postgres    false    217   YS       C          0    16867    specializare 
   TABLE DATA           @   COPY public.specializare (idspecializare, denumire) FROM stdin;
    public          postgres    false    227   �S       T           0    0    afectiune_idafectiune_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.afectiune_idafectiune_seq', 5, true);
          public          postgres    false    218            U           0    0    angajat_idangajat_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.angajat_idangajat_seq', 5, true);
          public          postgres    false    228            V           0    0    aparatura_idaparatura_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.aparatura_idaparatura_seq', 5, true);
          public          postgres    false    222            W           0    0    material_idmaterial_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.material_idmaterial_seq', 5, true);
          public          postgres    false    224            X           0    0    pacient_idpacient_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.pacient_idpacient_seq', 5, true);
          public          postgres    false    214            Y           0    0    procedura_idprocedura_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.procedura_idprocedura_seq', 5, true);
          public          postgres    false    220            Z           0    0    programare_idprogramare_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.programare_idprogramare_seq', 5, true);
          public          postgres    false    216            [           0    0    specializare_idspecializare_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.specializare_idspecializare_seq', 6, true);
          public          postgres    false    226            �           2606    16807    afectiune afectiune_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.afectiune
    ADD CONSTRAINT afectiune_pkey PRIMARY KEY (idafectiune);
 B   ALTER TABLE ONLY public.afectiune DROP CONSTRAINT afectiune_pkey;
       public            postgres    false    219            �           2606    16884    angajat angajat_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.angajat
    ADD CONSTRAINT angajat_pkey PRIMARY KEY (idangajat);
 >   ALTER TABLE ONLY public.angajat DROP CONSTRAINT angajat_pkey;
       public            postgres    false    229            �           2606    16828    aparatura aparatura_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.aparatura
    ADD CONSTRAINT aparatura_pkey PRIMARY KEY (idaparatura);
 B   ALTER TABLE ONLY public.aparatura DROP CONSTRAINT aparatura_pkey;
       public            postgres    false    223            �           2606    16835    material material_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.material
    ADD CONSTRAINT material_pkey PRIMARY KEY (idmaterial);
 @   ALTER TABLE ONLY public.material DROP CONSTRAINT material_pkey;
       public            postgres    false    225            �           2606    16779    pacient pacient_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.pacient
    ADD CONSTRAINT pacient_pkey PRIMARY KEY (idpacient);
 >   ALTER TABLE ONLY public.pacient DROP CONSTRAINT pacient_pkey;
       public            postgres    false    215            �           2606    16814    procedura procedura_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.procedura
    ADD CONSTRAINT procedura_pkey PRIMARY KEY (idprocedura);
 B   ALTER TABLE ONLY public.procedura DROP CONSTRAINT procedura_pkey;
       public            postgres    false    221            �           2606    16800    programare programare_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.programare
    ADD CONSTRAINT programare_pkey PRIMARY KEY (idprogramare);
 D   ALTER TABLE ONLY public.programare DROP CONSTRAINT programare_pkey;
       public            postgres    false    217            �           2606    16872    specializare specializare_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.specializare
    ADD CONSTRAINT specializare_pkey PRIMARY KEY (idspecializare);
 H   ALTER TABLE ONLY public.specializare DROP CONSTRAINT specializare_pkey;
       public            postgres    false    227            �           2606    16905     afectiune fk_afectiune_procedura    FK CONSTRAINT     �   ALTER TABLE ONLY public.afectiune
    ADD CONSTRAINT fk_afectiune_procedura FOREIGN KEY (idprocedura) REFERENCES public.procedura(idprocedura) ON UPDATE CASCADE ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.afectiune DROP CONSTRAINT fk_afectiune_procedura;
       public          postgres    false    3223    219    221            �           2606    16885    pacient fk_pacient_afectiune    FK CONSTRAINT     �   ALTER TABLE ONLY public.pacient
    ADD CONSTRAINT fk_pacient_afectiune FOREIGN KEY (idafectiune) REFERENCES public.afectiune(idafectiune) ON UPDATE CASCADE ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.pacient DROP CONSTRAINT fk_pacient_afectiune;
       public          postgres    false    215    3221    219            �           2606    16890    pacient fk_pacient_programare    FK CONSTRAINT     �   ALTER TABLE ONLY public.pacient
    ADD CONSTRAINT fk_pacient_programare FOREIGN KEY (idprogramare) REFERENCES public.programare(idprogramare) ON UPDATE CASCADE ON DELETE SET NULL;
 G   ALTER TABLE ONLY public.pacient DROP CONSTRAINT fk_pacient_programare;
       public          postgres    false    217    215    3219            �           2606    16910     procedura fk_procedura_afectiune    FK CONSTRAINT     �   ALTER TABLE ONLY public.procedura
    ADD CONSTRAINT fk_procedura_afectiune FOREIGN KEY (idafectiune) REFERENCES public.afectiune(idafectiune) ON UPDATE CASCADE ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.procedura DROP CONSTRAINT fk_procedura_afectiune;
       public          postgres    false    221    3221    219            �           2606    16915     procedura fk_procedura_aparatura    FK CONSTRAINT     �   ALTER TABLE ONLY public.procedura
    ADD CONSTRAINT fk_procedura_aparatura FOREIGN KEY (idaparatura) REFERENCES public.aparatura(idaparatura) ON UPDATE CASCADE ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.procedura DROP CONSTRAINT fk_procedura_aparatura;
       public          postgres    false    223    221    3225            �           2606    16920    procedura fk_procedura_material    FK CONSTRAINT     �   ALTER TABLE ONLY public.procedura
    ADD CONSTRAINT fk_procedura_material FOREIGN KEY (idmaterial) REFERENCES public.material(idmaterial) ON UPDATE CASCADE ON DELETE SET NULL;
 I   ALTER TABLE ONLY public.procedura DROP CONSTRAINT fk_procedura_material;
       public          postgres    false    225    221    3227            �           2606    16900     programare fk_programare_angajat    FK CONSTRAINT     �   ALTER TABLE ONLY public.programare
    ADD CONSTRAINT fk_programare_angajat FOREIGN KEY (idangajat) REFERENCES public.angajat(idangajat) ON UPDATE CASCADE ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.programare DROP CONSTRAINT fk_programare_angajat;
       public          postgres    false    3231    217    229            �           2606    16895     programare fk_programare_pacient    FK CONSTRAINT     �   ALTER TABLE ONLY public.programare
    ADD CONSTRAINT fk_programare_pacient FOREIGN KEY (idpacient) REFERENCES public.pacient(idpacient) ON UPDATE CASCADE ON DELETE CASCADE;
 J   ALTER TABLE ONLY public.programare DROP CONSTRAINT fk_programare_pacient;
       public          postgres    false    3217    217    215            ;   _   x�3�)J,�M,�,��4�2�J�I�H,JU�--N.�I,J�4�2���,�/)�O�D�0�2�t)-J-ʄ�r�p�r����H�I��K�4����� j!�      E   b   x��;
�0E��e1�oa)؉`!V6�	8 Fݿ���^��O~H^$|��ZYX�y���R(��0��pô�<<��;���g@���,��$����(�>r�      ?   O   x�3�t)J�K�R���MK,�L�2�IMN,�2��I,N-�2�t�IM.)�/.��-�I,J�2���O�V(O,K����� /�      A   H   x�3��,�/(J��2�t�,NVHJ�I�+�2�t�/���2�tJͫ�TH�I,.�LN�2�tO�+I-J����� ��*      7   h   x��;�0D�z�b"�y+�)�E�f\XB6"���Ӟ{�A�+���b��X�P��g�\��K_�y�#�SO����ѵ�V�I��KDn:Q�      =   Z   x�3�IMN,�4�4���2��I,N-r�A\cNל�䒢|����ҜĢT��	Hʄ34/%U�8?�7��r�$d楃y�&\1z\\\ ���      9   T   x�M��� ��.�� R�����(�B��ɶ��x��W�Z'g,�l)��ɖ�c6��/+�c��%��)B�׼�q�����      C   `   x�E�;
�0 �99EO �����p)m�1%MO��[_[~HYI|!S��)'��������M���|�bOP�#,�ű(�8�^��xųA���!d     