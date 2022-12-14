PGDMP     :                
    z            etiya-ecommerce-pair4    15.1    15.1 v    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16399    etiya-ecommerce-pair4    DATABASE     ?   CREATE DATABASE "etiya-ecommerce-pair4" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United Kingdom.1252';
 '   DROP DATABASE "etiya-ecommerce-pair4";
                postgres    false            ?            1259    16555    address_types    TABLE     d   CREATE TABLE public.address_types (
    id integer NOT NULL,
    name character varying NOT NULL
);
 !   DROP TABLE public.address_types;
       public         heap    postgres    false            ?            1259    16554    address_types_id_seq    SEQUENCE     ?   ALTER TABLE public.address_types ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.address_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    239            ?            1259    16564 	   addresses    TABLE     ?   CREATE TABLE public.addresses (
    id integer NOT NULL,
    description character varying NOT NULL,
    address_type_id integer NOT NULL,
    street_id integer NOT NULL,
    user_id integer NOT NULL
);
    DROP TABLE public.addresses;
       public         heap    postgres    false            ?            1259    16563    addresses_id_seq    SEQUENCE     ?   ALTER TABLE public.addresses ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.addresses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    241            ?            1259    16486    carts    TABLE     u   CREATE TABLE public.carts (
    id integer NOT NULL,
    total_price money NOT NULL,
    user_id integer NOT NULL
);
    DROP TABLE public.carts;
       public         heap    postgres    false            ?            1259    16485    carts_id_seq    SEQUENCE     ?   ALTER TABLE public.carts ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.carts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    229            ?            1259    16401 
   categories    TABLE     a   CREATE TABLE public.categories (
    id integer NOT NULL,
    name character varying NOT NULL
);
    DROP TABLE public.categories;
       public         heap    postgres    false            ?            1259    16400    categories_id_seq    SEQUENCE     ?   ALTER TABLE public.categories ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    215            ?            1259    16505    cities    TABLE     ~   CREATE TABLE public.cities (
    id integer NOT NULL,
    name character varying NOT NULL,
    country_id integer NOT NULL
);
    DROP TABLE public.cities;
       public         heap    postgres    false            ?            1259    16504    cities_id_seq    SEQUENCE     ?   ALTER TABLE public.cities ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.cities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    233            ?            1259    16497 	   countries    TABLE     `   CREATE TABLE public.countries (
    id integer NOT NULL,
    name character varying NOT NULL
);
    DROP TABLE public.countries;
       public         heap    postgres    false            ?            1259    16496    countries_id_seq    SEQUENCE     ?   ALTER TABLE public.countries ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.countries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    231            ?            1259    16457 	   customers    TABLE     ?   CREATE TABLE public.customers (
    id integer NOT NULL,
    customer_number character varying NOT NULL,
    user_id integer NOT NULL
);
    DROP TABLE public.customers;
       public         heap    postgres    false            ?            1259    16456    customers_id_seq    SEQUENCE     ?   ALTER TABLE public.customers ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.customers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    225            ?            1259    16530 	   districts    TABLE     ~   CREATE TABLE public.districts (
    id integer NOT NULL,
    name character varying NOT NULL,
    town_id integer NOT NULL
);
    DROP TABLE public.districts;
       public         heap    postgres    false            ?            1259    16529    districts_id_seq    SEQUENCE     ?   ALTER TABLE public.districts ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.districts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    236            ?            1259    16608    order_details    TABLE     ?   CREATE TABLE public.order_details (
    id integer NOT NULL,
    product_suppliers_id integer NOT NULL,
    quantity integer
);
 !   DROP TABLE public.order_details;
       public         heap    postgres    false            ?            1259    16607    order_details_id_seq    SEQUENCE     ?   ALTER TABLE public.order_details ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.order_details_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    247            ?            1259    16619    orders    TABLE     ?   CREATE TABLE public.orders (
    id integer NOT NULL,
    user_id integer NOT NULL,
    payment_id integer NOT NULL,
    order_detail_id integer NOT NULL
);
    DROP TABLE public.orders;
       public         heap    postgres    false            ?            1259    16618    orders_id_seq    SEQUENCE     ?   ALTER TABLE public.orders ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    249            ?            1259    16587    payment_types    TABLE     d   CREATE TABLE public.payment_types (
    id integer NOT NULL,
    name character varying NOT NULL
);
 !   DROP TABLE public.payment_types;
       public         heap    postgres    false            ?            1259    16586    payment_types_id_seq    SEQUENCE     ?   ALTER TABLE public.payment_types ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.payment_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    243            ?            1259    16595    payments    TABLE     ?   CREATE TABLE public.payments (
    id integer NOT NULL,
    payment_type_id integer NOT NULL,
    description character varying NOT NULL
);
    DROP TABLE public.payments;
       public         heap    postgres    false            ?            1259    16594    payments_id_seq    SEQUENCE     ?   ALTER TABLE public.payments ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.payments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    245            ?            1259    16417    product_categories    TABLE     ?   CREATE TABLE public.product_categories (
    id integer NOT NULL,
    product_id integer NOT NULL,
    category_id integer NOT NULL
);
 &   DROP TABLE public.product_categories;
       public         heap    postgres    false            ?            1259    16416    product_categories_id_seq    SEQUENCE     ?   ALTER TABLE public.product_categories ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.product_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    219            ?            1259    16470    product_suppliers    TABLE     ?   CREATE TABLE public.product_suppliers (
    id integer NOT NULL,
    product_id integer NOT NULL,
    supplier_id integer NOT NULL
);
 %   DROP TABLE public.product_suppliers;
       public         heap    postgres    false            ?            1259    16469    product_suppliers_id_seq    SEQUENCE     ?   ALTER TABLE public.product_suppliers ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.product_suppliers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    227            ?            1259    16409    products    TABLE     ?   CREATE TABLE public.products (
    id integer NOT NULL,
    name character varying NOT NULL,
    unit_price money NOT NULL,
    stock integer NOT NULL
);
    DROP TABLE public.products;
       public         heap    postgres    false            ?            1259    16408    products_id_seq    SEQUENCE     ?   ALTER TABLE public.products ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    217            ?            1259    16542    streets    TABLE     ?   CREATE TABLE public.streets (
    id integer NOT NULL,
    name character varying NOT NULL,
    district_id integer NOT NULL
);
    DROP TABLE public.streets;
       public         heap    postgres    false            ?            1259    16640    streets_id_seq    SEQUENCE     ?   ALTER TABLE public.streets ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.streets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    237            ?            1259    16444 	   suppliers    TABLE     ?   CREATE TABLE public.suppliers (
    id integer NOT NULL,
    supplier_number character varying NOT NULL,
    user_id integer NOT NULL
);
    DROP TABLE public.suppliers;
       public         heap    postgres    false            ?            1259    16443    suppliers_id_seq    SEQUENCE     ?   ALTER TABLE public.suppliers ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.suppliers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    223            ?            1259    16517    towns    TABLE     z   CREATE TABLE public.towns (
    id integer NOT NULL,
    name character varying NOT NULL,
    city_id integer NOT NULL
);
    DROP TABLE public.towns;
       public         heap    postgres    false            ?            1259    16639    towns_id_seq    SEQUENCE     ?   ALTER TABLE public.towns ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.towns_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    234            ?            1259    16432    users    TABLE     ?   CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying NOT NULL,
    phone_number character varying NOT NULL,
    email character varying NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false            ?            1259    16435    users_id_seq    SEQUENCE     ?   ALTER TABLE public.users ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    220            ?          0    16555    address_types 
   TABLE DATA                 public          postgres    false    239   m?       ?          0    16564 	   addresses 
   TABLE DATA                 public          postgres    false    241   ??       ?          0    16486    carts 
   TABLE DATA                 public          postgres    false    229   v?       ?          0    16401 
   categories 
   TABLE DATA                 public          postgres    false    215   ??       ?          0    16505    cities 
   TABLE DATA                 public          postgres    false    233   ^?       ?          0    16497 	   countries 
   TABLE DATA                 public          postgres    false    231   Յ       ?          0    16457 	   customers 
   TABLE DATA                 public          postgres    false    225   A?       ?          0    16530 	   districts 
   TABLE DATA                 public          postgres    false    236   ??       ?          0    16608    order_details 
   TABLE DATA                 public          postgres    false    247   2?       ?          0    16619    orders 
   TABLE DATA                 public          postgres    false    249   ??       ?          0    16587    payment_types 
   TABLE DATA                 public          postgres    false    243   -?       ?          0    16595    payments 
   TABLE DATA                 public          postgres    false    245   ??       ?          0    16417    product_categories 
   TABLE DATA                 public          postgres    false    219   ?       ?          0    16470    product_suppliers 
   TABLE DATA                 public          postgres    false    227   ??       ?          0    16409    products 
   TABLE DATA                 public          postgres    false    217   ??       ?          0    16542    streets 
   TABLE DATA                 public          postgres    false    237   ??       ?          0    16444 	   suppliers 
   TABLE DATA                 public          postgres    false    223   ??       ?          0    16517    towns 
   TABLE DATA                 public          postgres    false    234   w?       ?          0    16432    users 
   TABLE DATA                 public          postgres    false    220   ??       ?           0    0    address_types_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.address_types_id_seq', 2, true);
          public          postgres    false    238            ?           0    0    addresses_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.addresses_id_seq', 1, true);
          public          postgres    false    240            ?           0    0    carts_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.carts_id_seq', 1, true);
          public          postgres    false    228            ?           0    0    categories_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.categories_id_seq', 1, true);
          public          postgres    false    214            ?           0    0    cities_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.cities_id_seq', 1, true);
          public          postgres    false    232            ?           0    0    countries_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.countries_id_seq', 1, true);
          public          postgres    false    230            ?           0    0    customers_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.customers_id_seq', 1, true);
          public          postgres    false    224            ?           0    0    districts_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.districts_id_seq', 1, true);
          public          postgres    false    235            ?           0    0    order_details_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.order_details_id_seq', 1, true);
          public          postgres    false    246            ?           0    0    orders_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.orders_id_seq', 2, true);
          public          postgres    false    248            ?           0    0    payment_types_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.payment_types_id_seq', 1, true);
          public          postgres    false    242            ?           0    0    payments_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.payments_id_seq', 1, true);
          public          postgres    false    244            ?           0    0    product_categories_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.product_categories_id_seq', 1, true);
          public          postgres    false    218            ?           0    0    product_suppliers_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.product_suppliers_id_seq', 1, true);
          public          postgres    false    226            ?           0    0    products_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.products_id_seq', 1, true);
          public          postgres    false    216            ?           0    0    streets_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.streets_id_seq', 1, true);
          public          postgres    false    251            ?           0    0    suppliers_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.suppliers_id_seq', 1, true);
          public          postgres    false    222            ?           0    0    towns_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.towns_id_seq', 1, true);
          public          postgres    false    250            ?           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 2, true);
          public          postgres    false    221            ?           2606    16561     address_types address_types_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.address_types
    ADD CONSTRAINT address_types_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.address_types DROP CONSTRAINT address_types_pkey;
       public            postgres    false    239            ?           2606    16570    addresses addresses_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT addresses_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.addresses DROP CONSTRAINT addresses_pkey;
       public            postgres    false    241            ?           2606    16490    carts carts_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.carts
    ADD CONSTRAINT carts_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.carts DROP CONSTRAINT carts_pkey;
       public            postgres    false    229            ?           2606    16407    categories categories_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            postgres    false    215            ?           2606    16511    cities cities_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.cities DROP CONSTRAINT cities_pkey;
       public            postgres    false    233            ?           2606    16503    countries countries_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.countries DROP CONSTRAINT countries_pkey;
       public            postgres    false    231            ?           2606    16463    customers customers_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.customers DROP CONSTRAINT customers_pkey;
       public            postgres    false    225            ?           2606    16536    districts districts_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.districts
    ADD CONSTRAINT districts_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.districts DROP CONSTRAINT districts_pkey;
       public            postgres    false    236            ?           2606    16612     order_details order_details_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.order_details
    ADD CONSTRAINT order_details_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.order_details DROP CONSTRAINT order_details_pkey;
       public            postgres    false    247            ?           2606    16623    orders orders_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    249            ?           2606    16593     payment_types payment_types_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.payment_types
    ADD CONSTRAINT payment_types_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.payment_types DROP CONSTRAINT payment_types_pkey;
       public            postgres    false    243            ?           2606    16601    payments payments_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.payments DROP CONSTRAINT payments_pkey;
       public            postgres    false    245            ?           2606    16421 *   product_categories product_categories_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.product_categories
    ADD CONSTRAINT product_categories_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.product_categories DROP CONSTRAINT product_categories_pkey;
       public            postgres    false    219            ?           2606    16474 (   product_suppliers product_suppliers_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.product_suppliers
    ADD CONSTRAINT product_suppliers_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.product_suppliers DROP CONSTRAINT product_suppliers_pkey;
       public            postgres    false    227            ?           2606    16415    products products_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            postgres    false    217            ?           2606    16548    streets streets_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.streets
    ADD CONSTRAINT streets_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.streets DROP CONSTRAINT streets_pkey;
       public            postgres    false    237            ?           2606    16450    suppliers suppliers_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.suppliers
    ADD CONSTRAINT suppliers_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.suppliers DROP CONSTRAINT suppliers_pkey;
       public            postgres    false    223            ?           2606    16523    towns towns_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.towns
    ADD CONSTRAINT towns_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.towns DROP CONSTRAINT towns_pkey;
       public            postgres    false    234            ?           2606    16442    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    220            ?           2606    16571 &   addresses addresses_address_type_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT addresses_address_type_id_fk FOREIGN KEY (address_type_id) REFERENCES public.address_types(id);
 P   ALTER TABLE ONLY public.addresses DROP CONSTRAINT addresses_address_type_id_fk;
       public          postgres    false    241    3290    239            ?           2606    16581     addresses addresses_street_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT addresses_street_id_fk FOREIGN KEY (street_id) REFERENCES public.streets(id);
 J   ALTER TABLE ONLY public.addresses DROP CONSTRAINT addresses_street_id_fk;
       public          postgres    false    3288    241    237            ?           2606    16576    addresses addresses_user_id_fk    FK CONSTRAINT     }   ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT addresses_user_id_fk FOREIGN KEY (user_id) REFERENCES public.users(id);
 H   ALTER TABLE ONLY public.addresses DROP CONSTRAINT addresses_user_id_fk;
       public          postgres    false    241    3270    220            ?           2606    16491    carts carts_users_id_fk    FK CONSTRAINT     v   ALTER TABLE ONLY public.carts
    ADD CONSTRAINT carts_users_id_fk FOREIGN KEY (user_id) REFERENCES public.users(id);
 A   ALTER TABLE ONLY public.carts DROP CONSTRAINT carts_users_id_fk;
       public          postgres    false    3270    220    229            ?           2606    16512    cities cities_countries_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_countries_id_fk FOREIGN KEY (country_id) REFERENCES public.countries(id);
 G   ALTER TABLE ONLY public.cities DROP CONSTRAINT cities_countries_id_fk;
       public          postgres    false    231    233    3280            ?           2606    16464 $   customers customers_users_user_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_users_user_id_fk FOREIGN KEY (user_id) REFERENCES public.users(id);
 N   ALTER TABLE ONLY public.customers DROP CONSTRAINT customers_users_user_id_fk;
       public          postgres    false    3270    225    220            ?           2606    16537    districts districts_towns_id_fk    FK CONSTRAINT     ~   ALTER TABLE ONLY public.districts
    ADD CONSTRAINT districts_towns_id_fk FOREIGN KEY (town_id) REFERENCES public.towns(id);
 I   ALTER TABLE ONLY public.districts DROP CONSTRAINT districts_towns_id_fk;
       public          postgres    false    236    3284    234            ?           2606    16613 3   order_details order_details_product_suppliers_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.order_details
    ADD CONSTRAINT order_details_product_suppliers_id_fk FOREIGN KEY (product_suppliers_id) REFERENCES public.product_suppliers(id);
 ]   ALTER TABLE ONLY public.order_details DROP CONSTRAINT order_details_product_suppliers_id_fk;
       public          postgres    false    247    3276    227            ?           2606    16634 !   orders orders_order_details_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_order_details_id_fk FOREIGN KEY (order_detail_id) REFERENCES public.order_details(id);
 K   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_order_details_id_fk;
       public          postgres    false    3298    249    247            ?           2606    16629    orders orders_payments_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_payments_id_fk FOREIGN KEY (payment_id) REFERENCES public.payments(id);
 F   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_payments_id_fk;
       public          postgres    false    249    245    3296            ?           2606    16624    orders orders_users_id_fk    FK CONSTRAINT     x   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_users_id_fk FOREIGN KEY (user_id) REFERENCES public.users(id);
 C   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_users_id_fk;
       public          postgres    false    220    249    3270            ?           2606    16602 $   payments payments_payment_type_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_payment_type_id_fk FOREIGN KEY (payment_type_id) REFERENCES public.payment_types(id);
 N   ALTER TABLE ONLY public.payments DROP CONSTRAINT payments_payment_type_id_fk;
       public          postgres    false    243    245    3294            ?           2606    16427 4   product_categories product_categories_category_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.product_categories
    ADD CONSTRAINT product_categories_category_id_fk FOREIGN KEY (category_id) REFERENCES public.categories(id);
 ^   ALTER TABLE ONLY public.product_categories DROP CONSTRAINT product_categories_category_id_fk;
       public          postgres    false    219    215    3264            ?           2606    16422 3   product_categories product_categories_product_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.product_categories
    ADD CONSTRAINT product_categories_product_id_fk FOREIGN KEY (product_id) REFERENCES public.products(id);
 ]   ALTER TABLE ONLY public.product_categories DROP CONSTRAINT product_categories_product_id_fk;
       public          postgres    false    217    219    3266            ?           2606    16475 2   product_suppliers product_suppliers_products_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.product_suppliers
    ADD CONSTRAINT product_suppliers_products_id_fk FOREIGN KEY (product_id) REFERENCES public.products(id);
 \   ALTER TABLE ONLY public.product_suppliers DROP CONSTRAINT product_suppliers_products_id_fk;
       public          postgres    false    227    3266    217            ?           2606    16480 3   product_suppliers product_suppliers_suppliers_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.product_suppliers
    ADD CONSTRAINT product_suppliers_suppliers_id_fk FOREIGN KEY (supplier_id) REFERENCES public.suppliers(id);
 ]   ALTER TABLE ONLY public.product_suppliers DROP CONSTRAINT product_suppliers_suppliers_id_fk;
       public          postgres    false    223    3272    227            ?           2606    16549    streets streets_districts_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.streets
    ADD CONSTRAINT streets_districts_id_fk FOREIGN KEY (district_id) REFERENCES public.districts(id);
 I   ALTER TABLE ONLY public.streets DROP CONSTRAINT streets_districts_id_fk;
       public          postgres    false    237    236    3286            ?           2606    16451 &   suppliers suppliers_users_user_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.suppliers
    ADD CONSTRAINT suppliers_users_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);
 P   ALTER TABLE ONLY public.suppliers DROP CONSTRAINT suppliers_users_user_id_fkey;
       public          postgres    false    3270    220    223            ?           2606    16524    towns towns_cities_id_fk    FK CONSTRAINT     x   ALTER TABLE ONLY public.towns
    ADD CONSTRAINT towns_cities_id_fk FOREIGN KEY (city_id) REFERENCES public.cities(id);
 B   ALTER TABLE ONLY public.towns DROP CONSTRAINT towns_cities_id_fk;
       public          postgres    false    233    3282    234            ?   i   x???v
Q???W((M??L?KLI)J-.?/?,H-V??L?Q?K?M?T?s
?t??sW?q?Us?	u???
?:
??e???\?T4?h??G????? ԧ5C      ?   ?   x?-??
?0????kA?ڕ`????Ă???Yj??????0??S֓6???ܦ8n?!d0???AR ?9?????+a?^.(?\?u??V??9??8?N???g??Q?J?f܁g%?]i?B?7?D,?      ?   m   x???v
Q???W((M??L?KN,*)V??L?Q(?/Ỉ/(?LN?Q(-N-??L?T?s
?t??sW?q?Us?	u???
?:
????????(jZsqq ?I?      ?   [   x???v
Q???W((M??L?KN,IM?/?L-V??L?Q?K?M?T?s
?t??sW?q?Us?	u???
?:
??????\\\ ʇ?      ?   g   x???v
Q???W((M??L?K?,?L-V??L?Q?K?M?QH?/?+)???L?T?s
?t??sW?q?Us?	u???
?:
??yىE??:
???\\\ =?@      ?   \   x???v
Q???W((M??L?K?/?+)?L-V??L?Q?K?M?T?s
?t??sW?q?Us?	u???
?:
?!?Eٙ?????\\\ ??1      ?   i   x???v
Q???W((M??L?K.-.??M-*V??L?Q?q??Js?R?tJ????M?0נ OO?w????W_?0G?PW??a???nhdD?:
F??\\\ 
? ?      ?   h   x???v
Q???W((M??L?K?,.)?L.)V??L?Q?K?M?Q(?/ϋ?L?T?s
?t??sW?q?Us?	u???
?:
??E????y?:
???\\\ h??      ?   r   x???v
Q???W((M??L??/JI-?OI-I??)V??L?Q((?O)M.?/.-(??L-*???&??d?Tj*???y?x??+G???*?9???B?`C 2Ҵ??? ?L#?      ?   i   x???v
Q???W((M??L??/JI-*V??L?Q(-N-?1
+sS?J?l????Ԓ???????kP??????Bpdp???B??O?+?V?0?Q0? Mk... ??"?      ?   ]   x???v
Q???W((M??L?+H??M?+?/?,H-V??L?Q?K?M?T?s
?t??sW?q?Us?	u???
?:
?މE%???\\\ #??      ?   j   x???v
Q???W((M??L?+H??M?+)V??L?Q???K*R?A)???E?%??y?
?a?AA?.?~?
???!??
a?>??2XA?PG?Խ?J?5???? H?"?      ?   b   x???v
Q???W((M??L?+(?O)M.?ON,IM?/?L-V??L?Q????P?J GS???5(?????]!828??W!??'?B+h?(???5 lS"?      ?   `   x???v
Q???W((M??L?+(?O)M.?/.-(??L-*V??L?Q?	??0) GS???5(?????]!828??W!??'?B+h?(???5 R?"?      ?   {   x???v
Q???W((M??L?+(?O)M.)V??L?Q?K?M?Q(??,?/(?L??K???5??\??<]<???#?C\}?}B]!d??????z?nqFfQ?:?yh???????md?i??? ??$H      ?   i   x???v
Q???W((M??L?+.)JM-)V??L?Q?K?M?QH?
f&??g?h*???y?x??+G???*?9???B?`CuCCC=??luCMk... ??l      ?   m   x???v
Q???W((M??L?+.-(??L-*V??L?Q?q??Js?R?tJ????M?0נ OO?w????W_?0G?PW??a???nhdlh"???u5???? ??!?      ?   f   x???v
Q???W((M??L?+?/?+V??L?Q?K?M?QH?,???L?T?s
?t??sW?q?Us?	u???
?:
??%??????%?:
???\\\ 	?      ?   ?   x???v
Q???W((M??L?+-N-*V??L?Q?K?M?Q(???K??+?MJ-?QH?M???T?s
?t??sW?q?Us?	u???
?:
꾩E%\?@?)?؉?)@??2F/9?W]Ӛ˓V?0Z?TZ????
?0Du ?P:     