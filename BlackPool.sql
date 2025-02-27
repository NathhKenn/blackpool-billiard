PGDMP  "    0                |         	   BlackPool    16.3    16.2 l    y           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            z           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            {           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            |           1262    21007 	   BlackPool    DATABASE     �   CREATE DATABASE "BlackPool" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "BlackPool";
                postgres    false            �            1259    21008    bookings    TABLE     {  CREATE TABLE public.bookings (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    table_id bigint NOT NULL,
    date date NOT NULL,
    "time" json NOT NULL,
    totalprice numeric(8,2) NOT NULL,
    status character varying(255) DEFAULT 'pending'::character varying NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.bookings;
       public         heap    postgres    false            �            1259    21014    bookings_id_seq    SEQUENCE     x   CREATE SEQUENCE public.bookings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.bookings_id_seq;
       public          postgres    false    215            }           0    0    bookings_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.bookings_id_seq OWNED BY public.bookings.id;
          public          postgres    false    216            �            1259    21015    cart    TABLE     ?  CREATE TABLE public.cart (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    date date NOT NULL,
    totalprice integer NOT NULL,
    product_id bigint,
    product_type character varying(255),
    quantity integer,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.cart;
       public         heap    postgres    false            �            1259    21018    cart_bookings    TABLE     \  CREATE TABLE public.cart_bookings (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    table_id bigint NOT NULL,
    date date NOT NULL,
    "time" json NOT NULL,
    totalprice numeric(10,2) NOT NULL,
    status character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 !   DROP TABLE public.cart_bookings;
       public         heap    postgres    false            �            1259    21023    cart_bookings_id_seq    SEQUENCE     }   CREATE SEQUENCE public.cart_bookings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.cart_bookings_id_seq;
       public          postgres    false    218            ~           0    0    cart_bookings_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.cart_bookings_id_seq OWNED BY public.cart_bookings.id;
          public          postgres    false    219            �            1259    21024    cart_id_seq    SEQUENCE     t   CREATE SEQUENCE public.cart_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.cart_id_seq;
       public          postgres    false    217                       0    0    cart_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.cart_id_seq OWNED BY public.cart.id;
          public          postgres    false    220            �            1259    21025    failed_jobs    TABLE     &  CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.failed_jobs;
       public         heap    postgres    false            �            1259    21031    failed_jobs_id_seq    SEQUENCE     {   CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.failed_jobs_id_seq;
       public          postgres    false    221            �           0    0    failed_jobs_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;
          public          postgres    false    222            �            1259    21032    foodandbeverage    TABLE     �  CREATE TABLE public.foodandbeverage (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    price numeric(8,2) NOT NULL,
    description text NOT NULL,
    stock integer NOT NULL,
    mainpic character varying(255) NOT NULL,
    pic2 character varying(255),
    pic3 character varying(255),
    pic4 character varying(255),
    type character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 #   DROP TABLE public.foodandbeverage;
       public         heap    postgres    false            �            1259    21037    foodandbeverage_id_seq    SEQUENCE        CREATE SEQUENCE public.foodandbeverage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.foodandbeverage_id_seq;
       public          postgres    false    223            �           0    0    foodandbeverage_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.foodandbeverage_id_seq OWNED BY public.foodandbeverage.id;
          public          postgres    false    224            �            1259    21038    history    TABLE     �  CREATE TABLE public.history (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    product_id bigint,
    product_type character varying(50),
    date date NOT NULL,
    "time" time(0) without time zone NOT NULL,
    totalprice integer NOT NULL,
    paymentmethod character varying(30) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    quantity integer
);
    DROP TABLE public.history;
       public         heap    postgres    false            �            1259    21041    history_bookings    TABLE     �  CREATE TABLE public.history_bookings (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    table_id bigint NOT NULL,
    booking_start timestamp(0) without time zone NOT NULL,
    "time" json NOT NULL,
    total_price numeric(10,2) NOT NULL,
    payment_method character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 $   DROP TABLE public.history_bookings;
       public         heap    postgres    false            �            1259    21046    history_bookings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.history_bookings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.history_bookings_id_seq;
       public          postgres    false    226            �           0    0    history_bookings_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.history_bookings_id_seq OWNED BY public.history_bookings.id;
          public          postgres    false    227            �            1259    21047    history_id_seq    SEQUENCE     w   CREATE SEQUENCE public.history_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.history_id_seq;
       public          postgres    false    225            �           0    0    history_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.history_id_seq OWNED BY public.history.id;
          public          postgres    false    228            �            1259    21048 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         heap    postgres    false            �            1259    21051    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          postgres    false    229            �           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          postgres    false    230            �            1259    21052    password_resets    TABLE     �   CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 #   DROP TABLE public.password_resets;
       public         heap    postgres    false            �            1259    21057    personal_access_tokens    TABLE     �  CREATE TABLE public.personal_access_tokens (
    id bigint NOT NULL,
    tokenable_type character varying(255) NOT NULL,
    tokenable_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    token character varying(64) NOT NULL,
    abilities text,
    last_used_at timestamp(0) without time zone,
    expires_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 *   DROP TABLE public.personal_access_tokens;
       public         heap    postgres    false            �            1259    21062    personal_access_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.personal_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.personal_access_tokens_id_seq;
       public          postgres    false    232            �           0    0    personal_access_tokens_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.personal_access_tokens_id_seq OWNED BY public.personal_access_tokens.id;
          public          postgres    false    233            �            1259    21063    sessions    TABLE     �   CREATE TABLE public.sessions (
    id character varying(255) NOT NULL,
    user_id bigint,
    ip_address character varying(45),
    user_agent text,
    payload text NOT NULL,
    last_activity integer NOT NULL
);
    DROP TABLE public.sessions;
       public         heap    postgres    false            �            1259    21068    stick    TABLE     �  CREATE TABLE public.stick (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    price numeric(8,2) NOT NULL,
    description text NOT NULL,
    stock integer NOT NULL,
    mainpic character varying(255) NOT NULL,
    pic2 character varying(255),
    pic3 character varying(255),
    pic4 character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.stick;
       public         heap    postgres    false            �            1259    21073    stick_id_seq    SEQUENCE     u   CREATE SEQUENCE public.stick_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.stick_id_seq;
       public          postgres    false    235            �           0    0    stick_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.stick_id_seq OWNED BY public.stick.id;
          public          postgres    false    236            �            1259    21074    tables    TABLE     �  CREATE TABLE public.tables (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    status character varying(255) DEFAULT 'available'::character varying NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    CONSTRAINT tables_status_check CHECK (((status)::text = ANY (ARRAY[('available'::character varying)::text, ('booked'::character varying)::text])))
);
    DROP TABLE public.tables;
       public         heap    postgres    false            �            1259    21081    tables_id_seq    SEQUENCE     v   CREATE SEQUENCE public.tables_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.tables_id_seq;
       public          postgres    false    237            �           0    0    tables_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.tables_id_seq OWNED BY public.tables.id;
          public          postgres    false    238            �            1259    21082    users    TABLE     �  CREATE TABLE public.users (
    id bigint NOT NULL,
    username character varying(50) NOT NULL,
    email character varying(50) NOT NULL,
    password character varying(255) NOT NULL,
    profilepic character varying(255) NOT NULL,
    is_admin boolean DEFAULT false NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    21088    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    239            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    240            �           2604    21089    bookings id    DEFAULT     j   ALTER TABLE ONLY public.bookings ALTER COLUMN id SET DEFAULT nextval('public.bookings_id_seq'::regclass);
 :   ALTER TABLE public.bookings ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215            �           2604    21090    cart id    DEFAULT     b   ALTER TABLE ONLY public.cart ALTER COLUMN id SET DEFAULT nextval('public.cart_id_seq'::regclass);
 6   ALTER TABLE public.cart ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    217            �           2604    21091    cart_bookings id    DEFAULT     t   ALTER TABLE ONLY public.cart_bookings ALTER COLUMN id SET DEFAULT nextval('public.cart_bookings_id_seq'::regclass);
 ?   ALTER TABLE public.cart_bookings ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218            �           2604    21092    failed_jobs id    DEFAULT     p   ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);
 =   ALTER TABLE public.failed_jobs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221            �           2604    21093    foodandbeverage id    DEFAULT     x   ALTER TABLE ONLY public.foodandbeverage ALTER COLUMN id SET DEFAULT nextval('public.foodandbeverage_id_seq'::regclass);
 A   ALTER TABLE public.foodandbeverage ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223            �           2604    21094 
   history id    DEFAULT     h   ALTER TABLE ONLY public.history ALTER COLUMN id SET DEFAULT nextval('public.history_id_seq'::regclass);
 9   ALTER TABLE public.history ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    225            �           2604    21095    history_bookings id    DEFAULT     z   ALTER TABLE ONLY public.history_bookings ALTER COLUMN id SET DEFAULT nextval('public.history_bookings_id_seq'::regclass);
 B   ALTER TABLE public.history_bookings ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226            �           2604    21096    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229            �           2604    21097    personal_access_tokens id    DEFAULT     �   ALTER TABLE ONLY public.personal_access_tokens ALTER COLUMN id SET DEFAULT nextval('public.personal_access_tokens_id_seq'::regclass);
 H   ALTER TABLE public.personal_access_tokens ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232            �           2604    21098    stick id    DEFAULT     d   ALTER TABLE ONLY public.stick ALTER COLUMN id SET DEFAULT nextval('public.stick_id_seq'::regclass);
 7   ALTER TABLE public.stick ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    235            �           2604    21099 	   tables id    DEFAULT     f   ALTER TABLE ONLY public.tables ALTER COLUMN id SET DEFAULT nextval('public.tables_id_seq'::regclass);
 8   ALTER TABLE public.tables ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    237            �           2604    21100    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    239            ]          0    21008    bookings 
   TABLE DATA           s   COPY public.bookings (id, user_id, table_id, date, "time", totalprice, status, created_at, updated_at) FROM stdin;
    public          postgres    false    215   ��       _          0    21015    cart 
   TABLE DATA           y   COPY public.cart (id, user_id, date, totalprice, product_id, product_type, quantity, created_at, updated_at) FROM stdin;
    public          postgres    false    217   ��       `          0    21018    cart_bookings 
   TABLE DATA           x   COPY public.cart_bookings (id, user_id, table_id, date, "time", totalprice, status, created_at, updated_at) FROM stdin;
    public          postgres    false    218   ��       c          0    21025    failed_jobs 
   TABLE DATA           a   COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
    public          postgres    false    221   ݆       e          0    21032    foodandbeverage 
   TABLE DATA           �   COPY public.foodandbeverage (id, name, price, description, stock, mainpic, pic2, pic3, pic4, type, created_at, updated_at) FROM stdin;
    public          postgres    false    223   ��       g          0    21038    history 
   TABLE DATA           �   COPY public.history (id, user_id, product_id, product_type, date, "time", totalprice, paymentmethod, created_at, updated_at, quantity) FROM stdin;
    public          postgres    false    225   ��       h          0    21041    history_bookings 
   TABLE DATA           �   COPY public.history_bookings (id, user_id, table_id, booking_start, "time", total_price, payment_method, created_at, updated_at) FROM stdin;
    public          postgres    false    226   �       k          0    21048 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public          postgres    false    229   7�       m          0    21052    password_resets 
   TABLE DATA           C   COPY public.password_resets (email, token, created_at) FROM stdin;
    public          postgres    false    231   A�       n          0    21057    personal_access_tokens 
   TABLE DATA           �   COPY public.personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, expires_at, created_at, updated_at) FROM stdin;
    public          postgres    false    232   ^�       p          0    21063    sessions 
   TABLE DATA           _   COPY public.sessions (id, user_id, ip_address, user_agent, payload, last_activity) FROM stdin;
    public          postgres    false    234   {�       q          0    21068    stick 
   TABLE DATA           w   COPY public.stick (id, name, price, description, stock, mainpic, pic2, pic3, pic4, created_at, updated_at) FROM stdin;
    public          postgres    false    235   5�       s          0    21074    tables 
   TABLE DATA           J   COPY public.tables (id, name, status, created_at, updated_at) FROM stdin;
    public          postgres    false    237   �       u          0    21082    users 
   TABLE DATA           |   COPY public.users (id, username, email, password, profilepic, is_admin, remember_token, created_at, updated_at) FROM stdin;
    public          postgres    false    239   y�       �           0    0    bookings_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.bookings_id_seq', 2, true);
          public          postgres    false    216            �           0    0    cart_bookings_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.cart_bookings_id_seq', 3, true);
          public          postgres    false    219            �           0    0    cart_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.cart_id_seq', 2, true);
          public          postgres    false    220            �           0    0    failed_jobs_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);
          public          postgres    false    222            �           0    0    foodandbeverage_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.foodandbeverage_id_seq', 7, true);
          public          postgres    false    224            �           0    0    history_bookings_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.history_bookings_id_seq', 2, true);
          public          postgres    false    227            �           0    0    history_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.history_id_seq', 2, true);
          public          postgres    false    228            �           0    0    migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.migrations_id_seq', 13, true);
          public          postgres    false    230            �           0    0    personal_access_tokens_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.personal_access_tokens_id_seq', 1, false);
          public          postgres    false    233            �           0    0    stick_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.stick_id_seq', 7, true);
          public          postgres    false    236            �           0    0    tables_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.tables_id_seq', 16, true);
          public          postgres    false    238            �           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 4, true);
          public          postgres    false    240            �           2606    21102    bookings bookings_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.bookings
    ADD CONSTRAINT bookings_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.bookings DROP CONSTRAINT bookings_pkey;
       public            postgres    false    215            �           2606    21104     cart_bookings cart_bookings_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.cart_bookings
    ADD CONSTRAINT cart_bookings_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.cart_bookings DROP CONSTRAINT cart_bookings_pkey;
       public            postgres    false    218            �           2606    21106    cart cart_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT cart_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.cart DROP CONSTRAINT cart_pkey;
       public            postgres    false    217            �           2606    21108    failed_jobs failed_jobs_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_pkey;
       public            postgres    false    221            �           2606    21110 #   failed_jobs failed_jobs_uuid_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);
 M   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_uuid_unique;
       public            postgres    false    221            �           2606    21112 $   foodandbeverage foodandbeverage_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.foodandbeverage
    ADD CONSTRAINT foodandbeverage_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.foodandbeverage DROP CONSTRAINT foodandbeverage_pkey;
       public            postgres    false    223            �           2606    21114 &   history_bookings history_bookings_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.history_bookings
    ADD CONSTRAINT history_bookings_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.history_bookings DROP CONSTRAINT history_bookings_pkey;
       public            postgres    false    226            �           2606    21116    history history_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.history
    ADD CONSTRAINT history_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.history DROP CONSTRAINT history_pkey;
       public            postgres    false    225            �           2606    21118    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public            postgres    false    229            �           2606    21120 $   password_resets password_resets_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.password_resets
    ADD CONSTRAINT password_resets_pkey PRIMARY KEY (email);
 N   ALTER TABLE ONLY public.password_resets DROP CONSTRAINT password_resets_pkey;
       public            postgres    false    231            �           2606    21122 2   personal_access_tokens personal_access_tokens_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.personal_access_tokens DROP CONSTRAINT personal_access_tokens_pkey;
       public            postgres    false    232            �           2606    21124 :   personal_access_tokens personal_access_tokens_token_unique 
   CONSTRAINT     v   ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_token_unique UNIQUE (token);
 d   ALTER TABLE ONLY public.personal_access_tokens DROP CONSTRAINT personal_access_tokens_token_unique;
       public            postgres    false    232            �           2606    21126    sessions sessions_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.sessions DROP CONSTRAINT sessions_pkey;
       public            postgres    false    234            �           2606    21128    stick stick_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.stick
    ADD CONSTRAINT stick_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.stick DROP CONSTRAINT stick_pkey;
       public            postgres    false    235            �           2606    21130    tables tables_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.tables
    ADD CONSTRAINT tables_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.tables DROP CONSTRAINT tables_pkey;
       public            postgres    false    237            �           2606    21132    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public            postgres    false    239            �           2606    21134    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    239            �           1259    21135 8   personal_access_tokens_tokenable_type_tokenable_id_index    INDEX     �   CREATE INDEX personal_access_tokens_tokenable_type_tokenable_id_index ON public.personal_access_tokens USING btree (tokenable_type, tokenable_id);
 L   DROP INDEX public.personal_access_tokens_tokenable_type_tokenable_id_index;
       public            postgres    false    232    232            �           1259    21136    sessions_last_activity_index    INDEX     Z   CREATE INDEX sessions_last_activity_index ON public.sessions USING btree (last_activity);
 0   DROP INDEX public.sessions_last_activity_index;
       public            postgres    false    234            �           1259    21137    sessions_user_id_index    INDEX     N   CREATE INDEX sessions_user_id_index ON public.sessions USING btree (user_id);
 *   DROP INDEX public.sessions_user_id_index;
       public            postgres    false    234            �           2606    21138 "   bookings bookings_table_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.bookings
    ADD CONSTRAINT bookings_table_id_foreign FOREIGN KEY (table_id) REFERENCES public.tables(id) ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.bookings DROP CONSTRAINT bookings_table_id_foreign;
       public          postgres    false    215    4801    237            �           2606    21143 !   bookings bookings_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.bookings
    ADD CONSTRAINT bookings_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.bookings DROP CONSTRAINT bookings_user_id_foreign;
       public          postgres    false    215    4805    239            �           2606    21148 ,   cart_bookings cart_bookings_table_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart_bookings
    ADD CONSTRAINT cart_bookings_table_id_foreign FOREIGN KEY (table_id) REFERENCES public.tables(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.cart_bookings DROP CONSTRAINT cart_bookings_table_id_foreign;
       public          postgres    false    237    218    4801            �           2606    21153 +   cart_bookings cart_bookings_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart_bookings
    ADD CONSTRAINT cart_bookings_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 U   ALTER TABLE ONLY public.cart_bookings DROP CONSTRAINT cart_bookings_user_id_foreign;
       public          postgres    false    239    4805    218            �           2606    21158    cart cart_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT cart_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 C   ALTER TABLE ONLY public.cart DROP CONSTRAINT cart_user_id_foreign;
       public          postgres    false    217    4805    239            �           2606    21163 2   history_bookings history_bookings_table_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.history_bookings
    ADD CONSTRAINT history_bookings_table_id_foreign FOREIGN KEY (table_id) REFERENCES public.tables(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.history_bookings DROP CONSTRAINT history_bookings_table_id_foreign;
       public          postgres    false    4801    237    226            �           2606    21168 1   history_bookings history_bookings_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.history_bookings
    ADD CONSTRAINT history_bookings_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.history_bookings DROP CONSTRAINT history_bookings_user_id_foreign;
       public          postgres    false    226    4805    239            �           2606    21173    history history_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.history
    ADD CONSTRAINT history_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.history DROP CONSTRAINT history_user_id_foreign;
       public          postgres    false    4805    225    239            ]      x������ � �      _      x������ � �      `      x������ � �      c      x������ � �      e   �  x�}�Qo�0ǟ�O�0�4]�x��	�Ҥ�ߜ�;�c���9�iY�����l��w�n�D��tZ��A�k�Tu���#����uWrB�Th��&iz��S�a$�DS�8� �i��"�V=�Zt=b�6��]��uhWB�+q�Ϧ9f���%��_ҿ����`䈊1��	<�|S�(n��������@�D�	�#=?�L�5�Њ~w��� �!G&�]�x
�G�&D���NsJK� ?c^��#�(��yK	-_7��w�ǁ��=��a�i^ͬt݈o~b]` ȏ�}3�>&6ì��ے���Ŭ�;Ug?�!-Z�+n�r
��/E-,�u�,��r��٣�<$����?{�s���$��wq���&�G=���)�KJ*7��u kQ��:���R�/����t���J�[�e�,�{�kr]/n�&���x���B�XD��PQ��ge :����ғ`Sב�g��	4N�*�3qƽ�6��oS ��      g      x������ � �      h      x������ � �      k   �   x�e�Mn� �u|�����]*��=M�-Sm����Â����.��D`�����D¯@>`4�J��B?M?���)P��#�+滉��Ҍn�\>x~^>8�	i���4QH��V�*%�@�� R�aON���t�dL��݆��o�}�i�,Q&��;��:�z����[�v�v( 9:u�oC��R �V��Нs3�mƑ�ɛ��T*�T�)�i!�D:�J�C��r������Xw��ח��� ��r      m      x������ � �      n      x������ � �      p   �  x�=�]��0���W�r&�(�H�����Q+P�7���������f�^��99��	&E5�Ͽ�s���9N�!by��>c�v�:�����} u{���QB���i�-����>��?@/ �ܑ��m+�0O֢[�=2x[/�� RT9�yZ5�`V|6u>�:z4�?����_d�Y��K�h��J:Z�w2+;U�F�F$�������(<u`�b��ܘ$��સ0��~�m��Tt��[Tx�t�ɬ��,"��sDX��T����	j�s��-[N��1��2�"3�)爺��9E�a�GeX�G�\��I��윾O���^����S��\�����>E�������܀��ڋ��1�N��H,^ϕ_/��/���퍰�I0����u)
q+��OV��;g m蘶61&�_��p��	��      q   �  x����R�0��������@
��@��u	�n{cd�]Ʉ<R_�O��NHfh&K������#/&L�3SIpW����	������J����S�*JH*��ty[�z����Ѱ�K$HLQ+������Y�Fd8�E6,�m��2�+����b��*�Ae�T���wp�]Vx+���X�IQ�̛�}�H-H��i\�u �6��I�/5\� �.�E�
�v���L.	A��F��b"�Z�i죲Uh4��F=cێvڻ\'�"1T֚��<~����;y����gXw���	GVS�����|�Hh��,D���\e����T6d߄�=~׉v;�L�)]ħ���fx����[�I�~l�v��(^6#�/6F���C\Q����f\�RX���1��9
v���Dy���V�����|مou�c�*�{{M���5��I�3cծ
�E���I7q%���לą�\+c-,��`�����i�J�soϳ��/-��I���G�Y���iƗtc�w���XX�p����=����{�(��9�~���y��G�țU��{,�:��,��Ng��;�؝T�g�d�����^�Ob�'Z�L�/�V�
�����:��7��5o#2����m�W~WBI���^���ԙ��B���Ҟ|�T>�
��?��ӳ      s   �   x���1
�0D�:9�Pv֘����&��`��E����^��~��П~��*�Fɣ�AR��P���f���ٙ��l"�bv!l6�	[�®fW�V����C�L[����L_���OLc���T�O1�W�ދ      u   �   x�m��
�@ @����E�0��Vf�(�nD�G>f|d���� ���Q����{:�/��
�p(��tC̏=t;O���}�3Tfk���4i�ښ3D$r|M�E�Ԍ�,�K��S����$@�U^��[��d��ݛ�9PL�3빛0| t��%�ׅj��q,����g�M���� /��H
     