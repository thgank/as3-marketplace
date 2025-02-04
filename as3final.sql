PGDMP          ,                 {            as3help    15.1    15.1 F    N           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            O           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            P           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            Q           1262    16510    as3help    DATABASE        CREATE DATABASE as3help WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Kazakhstan.1251';
    DROP DATABASE as3help;
                postgres    false            �            1259    16566    Device    TABLE     �   CREATE TABLE public."Device" (
    id integer NOT NULL,
    brand character varying,
    model character varying,
    price double precision
);
    DROP TABLE public."Device";
       public         heap    postgres    false            �            1259    16766    BusinessTablet    TABLE     7  CREATE TABLE public."BusinessTablet" (
    fingerprint_scanner boolean NOT NULL,
    facial_recognition boolean,
    stylus_support boolean,
    keyboard_support boolean,
    screen_ratio character varying,
    seller character varying,
    "selfid(do not touch)" integer NOT NULL
)
INHERITS (public."Device");
 $   DROP TABLE public."BusinessTablet";
       public         heap    postgres    false    215            �            1259    16773 (   Business_Tablet_selfid(do not touch)_seq    SEQUENCE     �   CREATE SEQUENCE public."Business_Tablet_selfid(do not touch)_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public."Business_Tablet_selfid(do not touch)_seq";
       public          postgres    false    225            R           0    0 (   Business_Tablet_selfid(do not touch)_seq    SEQUENCE OWNED BY     z   ALTER SEQUENCE public."Business_Tablet_selfid(do not touch)_seq" OWNED BY public."BusinessTablet"."selfid(do not touch)";
          public          postgres    false    226            �            1259    16565    Device_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Device_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."Device_id_seq";
       public          postgres    false    215            S           0    0    Device_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."Device_id_seq" OWNED BY public."Device".id;
          public          postgres    false    214            �            1259    16757    DrawingTablet    TABLE       CREATE TABLE public."DrawingTablet" (
    pressure_sensitivity integer NOT NULL,
    eraser boolean,
    stylus_support boolean,
    keyboard_support boolean,
    screen_ratio character varying,
    seller character varying,
    selfid integer NOT NULL
)
INHERITS (public."Device");
 #   DROP TABLE public."DrawingTablet";
       public         heap    postgres    false    215            �            1259    16756    Drawing_Tablet_selfid_seq    SEQUENCE     �   CREATE SEQUENCE public."Drawing_Tablet_selfid_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."Drawing_Tablet_selfid_seq";
       public          postgres    false    224            T           0    0    Drawing_Tablet_selfid_seq    SEQUENCE OWNED BY     Z   ALTER SEQUENCE public."Drawing_Tablet_selfid_seq" OWNED BY public."DrawingTablet".selfid;
          public          postgres    false    223            �            1259    16747    GamingTablet    TABLE     C  CREATE TABLE public."GamingTablet" (
    gpu character varying,
    vr_support boolean,
    memory integer,
    ram integer,
    stylus_support boolean,
    keyboard_support boolean,
    screen_ratio character varying,
    seller character varying,
    "selfid(do not touch)" integer NOT NULL
)
INHERITS (public."Device");
 "   DROP TABLE public."GamingTablet";
       public         heap    postgres    false    215            �            1259    16746 %   GamingTablet_selfid(do not touch)_seq    SEQUENCE     �   CREATE SEQUENCE public."GamingTablet_selfid(do not touch)_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public."GamingTablet_selfid(do not touch)_seq";
       public          postgres    false    222            U           0    0 %   GamingTablet_selfid(do not touch)_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public."GamingTablet_selfid(do not touch)_seq" OWNED BY public."GamingTablet"."selfid(do not touch)";
          public          postgres    false    221            �            1259    16782 
   Headphones    TABLE     �   CREATE TABLE public."Headphones" (
    type character varying,
    audio_quality character varying NOT NULL,
    noise_cancel boolean,
    seller character varying,
    selfid integer NOT NULL
)
INHERITS (public."Device");
     DROP TABLE public."Headphones";
       public         heap    postgres    false    215            �            1259    16788    Head_phones_selfid_seq    SEQUENCE     �   CREATE SEQUENCE public."Head_phones_selfid_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."Head_phones_selfid_seq";
       public          postgres    false    227            V           0    0    Head_phones_selfid_seq    SEQUENCE OWNED BY     T   ALTER SEQUENCE public."Head_phones_selfid_seq" OWNED BY public."Headphones".selfid;
          public          postgres    false    228            �            1259    16737    MobilePhone    TABLE       CREATE TABLE public."MobilePhone" (
    ram integer,
    memory integer,
    screen_size character varying,
    camera character varying,
    dual_sim boolean,
    seller character varying,
    "selfid(do not touch)" integer NOT NULL
)
INHERITS (public."Device");
 !   DROP TABLE public."MobilePhone";
       public         heap    postgres    false    215            �            1259    16736 $   MobilePhone_selfid(do not touch)_seq    SEQUENCE     �   CREATE SEQUENCE public."MobilePhone_selfid(do not touch)_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public."MobilePhone_selfid(do not touch)_seq";
       public          postgres    false    220            W           0    0 $   MobilePhone_selfid(do not touch)_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public."MobilePhone_selfid(do not touch)_seq" OWNED BY public."MobilePhone"."selfid(do not touch)";
          public          postgres    false    219            �            1259    16797 
   Smartwatch    TABLE     �   CREATE TABLE public."Smartwatch" (
    type character varying,
    operating_system character varying NOT NULL,
    fitness_tracker boolean,
    heart_rate boolean,
    seller character varying,
    selfid integer NOT NULL
)
INHERITS (public."Device");
     DROP TABLE public."Smartwatch";
       public         heap    postgres    false    215            �            1259    16803    Smart_watch_selfid_seq    SEQUENCE     �   CREATE SEQUENCE public."Smart_watch_selfid_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."Smart_watch_selfid_seq";
       public          postgres    false    229            X           0    0    Smart_watch_selfid_seq    SEQUENCE OWNED BY     T   ALTER SEQUENCE public."Smart_watch_selfid_seq" OWNED BY public."Smartwatch".selfid;
          public          postgres    false    230            �            1259    16721 
   Smartphone    TABLE     >  CREATE TABLE public."Smartphone" (
    ram integer,
    memory integer,
    screen_size character varying,
    camera character varying,
    os character varying,
    face_id boolean,
    fingerprint_sensor boolean,
    seller character varying,
    "selfid(do not use)" integer NOT NULL
)
INHERITS (public."Device");
     DROP TABLE public."Smartphone";
       public         heap    postgres    false    215            �            1259    16720 !   Smartphone_selfid(do not use)_seq    SEQUENCE     �   CREATE SEQUENCE public."Smartphone_selfid(do not use)_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public."Smartphone_selfid(do not use)_seq";
       public          postgres    false    218            Y           0    0 !   Smartphone_selfid(do not use)_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public."Smartphone_selfid(do not use)_seq" OWNED BY public."Smartphone"."selfid(do not use)";
          public          postgres    false    217            �            1259    16712    sellers    TABLE     f   CREATE TABLE public.sellers (
    login character varying NOT NULL,
    password character varying
);
    DROP TABLE public.sellers;
       public         heap    postgres    false            �           2604    16769    BusinessTablet id    DEFAULT     r   ALTER TABLE ONLY public."BusinessTablet" ALTER COLUMN id SET DEFAULT nextval('public."Device_id_seq"'::regclass);
 B   ALTER TABLE public."BusinessTablet" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    214            �           2604    16774 #   BusinessTablet selfid(do not touch)    DEFAULT     �   ALTER TABLE ONLY public."BusinessTablet" ALTER COLUMN "selfid(do not touch)" SET DEFAULT nextval('public."Business_Tablet_selfid(do not touch)_seq"'::regclass);
 V   ALTER TABLE public."BusinessTablet" ALTER COLUMN "selfid(do not touch)" DROP DEFAULT;
       public          postgres    false    226    225            �           2604    16569 	   Device id    DEFAULT     j   ALTER TABLE ONLY public."Device" ALTER COLUMN id SET DEFAULT nextval('public."Device_id_seq"'::regclass);
 :   ALTER TABLE public."Device" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            �           2604    16760    DrawingTablet id    DEFAULT     q   ALTER TABLE ONLY public."DrawingTablet" ALTER COLUMN id SET DEFAULT nextval('public."Device_id_seq"'::regclass);
 A   ALTER TABLE public."DrawingTablet" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    224            �           2604    16761    DrawingTablet selfid    DEFAULT     �   ALTER TABLE ONLY public."DrawingTablet" ALTER COLUMN selfid SET DEFAULT nextval('public."Drawing_Tablet_selfid_seq"'::regclass);
 E   ALTER TABLE public."DrawingTablet" ALTER COLUMN selfid DROP DEFAULT;
       public          postgres    false    223    224    224            �           2604    16750    GamingTablet id    DEFAULT     p   ALTER TABLE ONLY public."GamingTablet" ALTER COLUMN id SET DEFAULT nextval('public."Device_id_seq"'::regclass);
 @   ALTER TABLE public."GamingTablet" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    214            �           2604    16751 !   GamingTablet selfid(do not touch)    DEFAULT     �   ALTER TABLE ONLY public."GamingTablet" ALTER COLUMN "selfid(do not touch)" SET DEFAULT nextval('public."GamingTablet_selfid(do not touch)_seq"'::regclass);
 T   ALTER TABLE public."GamingTablet" ALTER COLUMN "selfid(do not touch)" DROP DEFAULT;
       public          postgres    false    221    222    222            �           2604    16785    Headphones id    DEFAULT     n   ALTER TABLE ONLY public."Headphones" ALTER COLUMN id SET DEFAULT nextval('public."Device_id_seq"'::regclass);
 >   ALTER TABLE public."Headphones" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    214            �           2604    16789    Headphones selfid    DEFAULT     {   ALTER TABLE ONLY public."Headphones" ALTER COLUMN selfid SET DEFAULT nextval('public."Head_phones_selfid_seq"'::regclass);
 B   ALTER TABLE public."Headphones" ALTER COLUMN selfid DROP DEFAULT;
       public          postgres    false    228    227            �           2604    16740    MobilePhone id    DEFAULT     o   ALTER TABLE ONLY public."MobilePhone" ALTER COLUMN id SET DEFAULT nextval('public."Device_id_seq"'::regclass);
 ?   ALTER TABLE public."MobilePhone" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    214            �           2604    16741     MobilePhone selfid(do not touch)    DEFAULT     �   ALTER TABLE ONLY public."MobilePhone" ALTER COLUMN "selfid(do not touch)" SET DEFAULT nextval('public."MobilePhone_selfid(do not touch)_seq"'::regclass);
 S   ALTER TABLE public."MobilePhone" ALTER COLUMN "selfid(do not touch)" DROP DEFAULT;
       public          postgres    false    220    219    220            �           2604    16724    Smartphone id    DEFAULT     n   ALTER TABLE ONLY public."Smartphone" ALTER COLUMN id SET DEFAULT nextval('public."Device_id_seq"'::regclass);
 >   ALTER TABLE public."Smartphone" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    218            �           2604    16725    Smartphone selfid(do not use)    DEFAULT     �   ALTER TABLE ONLY public."Smartphone" ALTER COLUMN "selfid(do not use)" SET DEFAULT nextval('public."Smartphone_selfid(do not use)_seq"'::regclass);
 P   ALTER TABLE public."Smartphone" ALTER COLUMN "selfid(do not use)" DROP DEFAULT;
       public          postgres    false    218    217    218            �           2604    16800    Smartwatch id    DEFAULT     n   ALTER TABLE ONLY public."Smartwatch" ALTER COLUMN id SET DEFAULT nextval('public."Device_id_seq"'::regclass);
 >   ALTER TABLE public."Smartwatch" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    214            �           2604    16804    Smartwatch selfid    DEFAULT     {   ALTER TABLE ONLY public."Smartwatch" ALTER COLUMN selfid SET DEFAULT nextval('public."Smart_watch_selfid_seq"'::regclass);
 B   ALTER TABLE public."Smartwatch" ALTER COLUMN selfid DROP DEFAULT;
       public          postgres    false    230    229            F          0    16766    BusinessTablet 
   TABLE DATA           �   COPY public."BusinessTablet" (id, brand, model, price, fingerprint_scanner, facial_recognition, stylus_support, keyboard_support, screen_ratio, seller, "selfid(do not touch)") FROM stdin;
    public          postgres    false    225   nW       <          0    16566    Device 
   TABLE DATA           ;   COPY public."Device" (id, brand, model, price) FROM stdin;
    public          postgres    false    215   �X       E          0    16757    DrawingTablet 
   TABLE DATA           �   COPY public."DrawingTablet" (id, brand, model, price, pressure_sensitivity, eraser, stylus_support, keyboard_support, screen_ratio, seller, selfid) FROM stdin;
    public          postgres    false    224   �X       C          0    16747    GamingTablet 
   TABLE DATA           �   COPY public."GamingTablet" (id, brand, model, price, gpu, vr_support, memory, ram, stylus_support, keyboard_support, screen_ratio, seller, "selfid(do not touch)") FROM stdin;
    public          postgres    false    222   �Y       H          0    16782 
   Headphones 
   TABLE DATA           r   COPY public."Headphones" (id, brand, model, price, type, audio_quality, noise_cancel, seller, selfid) FROM stdin;
    public          postgres    false    227   [       A          0    16737    MobilePhone 
   TABLE DATA           �   COPY public."MobilePhone" (id, brand, model, price, ram, memory, screen_size, camera, dual_sim, seller, "selfid(do not touch)") FROM stdin;
    public          postgres    false    220   \       ?          0    16721 
   Smartphone 
   TABLE DATA           �   COPY public."Smartphone" (id, brand, model, price, ram, memory, screen_size, camera, os, face_id, fingerprint_sensor, seller, "selfid(do not use)") FROM stdin;
    public          postgres    false    218   �\       J          0    16797 
   Smartwatch 
   TABLE DATA           �   COPY public."Smartwatch" (id, brand, model, price, type, operating_system, fitness_tracker, heart_rate, seller, selfid) FROM stdin;
    public          postgres    false    229   s^       =          0    16712    sellers 
   TABLE DATA           2   COPY public.sellers (login, password) FROM stdin;
    public          postgres    false    216   �_       Z           0    0 (   Business_Tablet_selfid(do not touch)_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public."Business_Tablet_selfid(do not touch)_seq"', 24, true);
          public          postgres    false    226            [           0    0    Device_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Device_id_seq"', 221, true);
          public          postgres    false    214            \           0    0    Drawing_Tablet_selfid_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."Drawing_Tablet_selfid_seq"', 24, true);
          public          postgres    false    223            ]           0    0 %   GamingTablet_selfid(do not touch)_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public."GamingTablet_selfid(do not touch)_seq"', 20, true);
          public          postgres    false    221            ^           0    0    Head_phones_selfid_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."Head_phones_selfid_seq"', 24, true);
          public          postgres    false    228            _           0    0 $   MobilePhone_selfid(do not touch)_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public."MobilePhone_selfid(do not touch)_seq"', 15, true);
          public          postgres    false    219            `           0    0    Smart_watch_selfid_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."Smart_watch_selfid_seq"', 45, true);
          public          postgres    false    230            a           0    0 !   Smartphone_selfid(do not use)_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public."Smartphone_selfid(do not use)_seq"', 35, true);
          public          postgres    false    217            �           2606    16781 #   BusinessTablet Business_Tablet_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public."BusinessTablet"
    ADD CONSTRAINT "Business_Tablet_pkey" PRIMARY KEY ("selfid(do not touch)");
 Q   ALTER TABLE ONLY public."BusinessTablet" DROP CONSTRAINT "Business_Tablet_pkey";
       public            postgres    false    225            �           2606    16573    Device Device_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."Device"
    ADD CONSTRAINT "Device_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."Device" DROP CONSTRAINT "Device_pkey";
       public            postgres    false    215            �           2606    16765 !   DrawingTablet Drawing_Tablet_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public."DrawingTablet"
    ADD CONSTRAINT "Drawing_Tablet_pkey" PRIMARY KEY (selfid);
 O   ALTER TABLE ONLY public."DrawingTablet" DROP CONSTRAINT "Drawing_Tablet_pkey";
       public            postgres    false    224            �           2606    16755    GamingTablet GamingTablet_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."GamingTablet"
    ADD CONSTRAINT "GamingTablet_pkey" PRIMARY KEY ("selfid(do not touch)");
 L   ALTER TABLE ONLY public."GamingTablet" DROP CONSTRAINT "GamingTablet_pkey";
       public            postgres    false    222            �           2606    16796    Headphones Head_phones_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public."Headphones"
    ADD CONSTRAINT "Head_phones_pkey" PRIMARY KEY (selfid);
 I   ALTER TABLE ONLY public."Headphones" DROP CONSTRAINT "Head_phones_pkey";
       public            postgres    false    227            �           2606    16745    MobilePhone MobilePhone_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public."MobilePhone"
    ADD CONSTRAINT "MobilePhone_pkey" PRIMARY KEY ("selfid(do not touch)");
 J   ALTER TABLE ONLY public."MobilePhone" DROP CONSTRAINT "MobilePhone_pkey";
       public            postgres    false    220            �           2606    16811    Smartwatch Smart_watch_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public."Smartwatch"
    ADD CONSTRAINT "Smart_watch_pkey" PRIMARY KEY (selfid);
 I   ALTER TABLE ONLY public."Smartwatch" DROP CONSTRAINT "Smart_watch_pkey";
       public            postgres    false    229            �           2606    16729    Smartphone Smartphone_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."Smartphone"
    ADD CONSTRAINT "Smartphone_pkey" PRIMARY KEY ("selfid(do not use)");
 H   ALTER TABLE ONLY public."Smartphone" DROP CONSTRAINT "Smartphone_pkey";
       public            postgres    false    218            �           2606    16718    sellers sellers_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.sellers
    ADD CONSTRAINT sellers_pkey PRIMARY KEY (login);
 >   ALTER TABLE ONLY public.sellers DROP CONSTRAINT sellers_pkey;
       public            postgres    false    216            F     x����J�0����S�,��M�,gPtЁ��B�Mf�Z�e�Է��х�Rhw��s���|�^�:���S��Au^�����W��^�{ݬ7�������xh�g��E��V���e&S�K�ؔ�-`.`[v��� v%�pS��[Z�Nc�6ӱ�a�kfbo-���u���>�7@�p0�s ��  �`�bs Z$�p���9��m������F�[�r�S��#�6=��'�JHϱ?��s�ϙ��s��K�XWU���      <      x������ � �      E   
  x����J�0����S�*��&M��܌�p`�d:#V�)�,���� �KB ���/��iL�<���>�f��mn�4|��y$��E�j��J�*��y����K��t�"1�}I!�*R)T�,�XErF��H=$�"yHZE
�:�����-���{+ޯx��m��fn�1v�c�+}�����P	�cD)1w��s�HO��iXfz8���9MS��m[땴�Iن���?٩+HN�b��ׅ��Bu�
rԾXA����X��������      C   ,  x��ӹj1��z�)�1���)]%͂æ0!�b��K�0>H�����!�~v0����EX��~RF։u���l�<��x9���U�x����9��}� �i���HY�HEC��i��c��׷�3U����e�=ޑv�|
�jU�a�އ�4*��|�9����J���(Eނ�ؼ�(�]���N���b#��G�����P|rԠ����#�F-�$G���t
�MTñ��D`�����p��鿾��u�/��ɵ�چ��h�����PƂ�Z�X(�$l΂��6C���W      H     x����J�0����U�
���_�3#XE���.��X�-�Yx�~Rq�dq�Ϸ9��%����a���fl��#IQ	%�5̾��Bu�>i���vm;�.$��*��:���&�+p��5�K��J�I#ҹ��xz�9~�ϵ�Z�]��㯪��h%X��Q�Q��1���q�ј��fy�5�����qk������<�J�~W�C�o�X�;����AO��)P�-sGКU�#(���thM�b���7���      A   �   x��ҿ
�@��9����$����]\D����Q*-b��c�Ip��K�|�C�2m�K�?�cY�Y�I�=�%�I
U��u;��:_�[��|ɻv�;	T�)Y�]��n����eJ�j̓��J�O�I�ٟ���Kh9]+T����u���Z�i��{��g
�//�?�)�2�[D;�;D7�{D?��
 O���      ?   �  x����j�@��u���ї���rV���ě`���Gغ`��y��<I��2FԺ�oS��Qh7M��~�t9��Py&��#%2i�����Ӆ�D�W7t�_t{l�����yD��b��"b��������ħ��Z���`o�%p��28�i��4��+1hjR�9��Ӝ�԰���6q���&��+Al���ퟞ�;��>�/������ZZ�Zϔ�~z�v�?�ݾP���B�� ��ʐhD5����}�ڱ���a�w���T���Ǳ,9�2�O����]��(Z������(CsT��>b�9����g�?��,d+���F�b��d+�@��lĢ�
]M�Xv:�U*w&s�Y��g�&-�:�j�h2`"40m�����      J   g  x��ӽj�0��Yz
?A�d[wm)��ڡ�����|ฅ�}�B��=h���?�un}:MC�tخ�׷�l���0�ù�.DUQ��3̗�\���q�}�~,�nX�N�t�@ʀ��\3�HP(0�Pd@�Ā2��)��d��6�Δ�qgJ܂��R� o��-�[�{�q?^?�3~���Rm�e^��2M�a�bR<�M[��8��篈�5RE��*"}m�"6�-S؂vT��L�U�}�k�� 
Ul R7Z��̈́"u3!C�n&(D�fb��"��� � j0 �- z� �[�@�- �dЪ4 iJk JK�	%��Ą�RbB��RbB��Rbj���{����0      =   S   x���H�N���K-�4724�r�K�IL�I-)�L�.�OJ��\.���)� ���Ĝ�̜D.����"���ļD�=... �\�     