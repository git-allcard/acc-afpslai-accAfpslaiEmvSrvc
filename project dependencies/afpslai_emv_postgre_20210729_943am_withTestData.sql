PGDMP     )    +    	            y            afpslai_emv    13.3    13.3 ?    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    24576    afpslai_emv    DATABASE     o   CREATE DATABASE afpslai_emv WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE afpslai_emv;
                postgres    false                        2615    24577    afpslai_emv    SCHEMA        CREATE SCHEMA afpslai_emv;
    DROP SCHEMA afpslai_emv;
                postgres    false            ?            1259    24578    address    TABLE     ?  CREATE TABLE afpslai_emv.address (
    id integer NOT NULL,
    member_id integer,
    address1 character varying(100),
    address2 character varying(100),
    address3 character varying(100),
    city character varying(100),
    province character varying(100),
    country_id integer,
    zipcode character varying(10),
    date_post date DEFAULT CURRENT_DATE,
    time_post time without time zone DEFAULT CURRENT_TIME,
    is_cancel boolean DEFAULT false
);
     DROP TABLE afpslai_emv.address;
       afpslai_emv         heap    postgres    false    4            ?            1259    24587    address_serial    SEQUENCE     ?   CREATE SEQUENCE afpslai_emv.address_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE afpslai_emv.address_serial;
       afpslai_emv          postgres    false    201    4            ?           0    0    address_serial    SEQUENCE OWNED BY     K   ALTER SEQUENCE afpslai_emv.address_serial OWNED BY afpslai_emv.address.id;
          afpslai_emv          postgres    false    202            ?            1259    24589    api_request_log    TABLE     ?  CREATE TABLE afpslai_emv.api_request_log (
    id integer NOT NULL,
    api_owner character varying(10),
    api_name character varying(50),
    member_id integer,
    card_id integer,
    request character varying(300),
    response character varying(1000),
    is_success boolean DEFAULT true,
    date_post date DEFAULT CURRENT_DATE,
    time_post time without time zone DEFAULT CURRENT_TIME
);
 (   DROP TABLE afpslai_emv.api_request_log;
       afpslai_emv         heap    postgres    false    4            ?            1259    24598    api_request_log_serial    SEQUENCE     ?   CREATE SEQUENCE afpslai_emv.api_request_log_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE afpslai_emv.api_request_log_serial;
       afpslai_emv          postgres    false    203    4            ?           0    0    api_request_log_serial    SEQUENCE OWNED BY     [   ALTER SEQUENCE afpslai_emv.api_request_log_serial OWNED BY afpslai_emv.api_request_log.id;
          afpslai_emv          postgres    false    204            ?            1259    24600    associate_type    TABLE     ?   CREATE TABLE afpslai_emv.associate_type (
    id integer NOT NULL,
    "associateType" character varying(20),
    is_deleted boolean DEFAULT false
);
 '   DROP TABLE afpslai_emv.associate_type;
       afpslai_emv         heap    postgres    false    4            ?            1259    24604    associate_type_serial    SEQUENCE     ?   CREATE SEQUENCE afpslai_emv.associate_type_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE afpslai_emv.associate_type_serial;
       afpslai_emv          postgres    false    4    205            ?           0    0    associate_type_serial    SEQUENCE OWNED BY     Y   ALTER SEQUENCE afpslai_emv.associate_type_serial OWNED BY afpslai_emv.associate_type.id;
          afpslai_emv          postgres    false    206            ?            1259    24606    branch    TABLE     ?   CREATE TABLE afpslai_emv.branch (
    id integer NOT NULL,
    "branchName" character varying(100),
    code character varying(10),
    is_deleted boolean DEFAULT false
);
    DROP TABLE afpslai_emv.branch;
       afpslai_emv         heap    postgres    false    4            ?            1259    24610    branch_serial    SEQUENCE     ?   CREATE SEQUENCE afpslai_emv.branch_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE afpslai_emv.branch_serial;
       afpslai_emv          postgres    false    207    4            ?           0    0    branch_serial    SEQUENCE OWNED BY     I   ALTER SEQUENCE afpslai_emv.branch_serial OWNED BY afpslai_emv.branch.id;
          afpslai_emv          postgres    false    208            ?            1259    24612    card    TABLE     W  CREATE TABLE afpslai_emv.card (
    id integer NOT NULL,
    member_id integer,
    "cardNo" character varying(50),
    "date_CMS" timestamp without time zone,
    "date_CBS" timestamp without time zone,
    date_post date DEFAULT CURRENT_DATE,
    time_post time without time zone DEFAULT CURRENT_TIME,
    is_cancel boolean DEFAULT false
);
    DROP TABLE afpslai_emv.card;
       afpslai_emv         heap    postgres    false    4            ?            1259    24618    card_serial    SEQUENCE     ?   CREATE SEQUENCE afpslai_emv.card_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE afpslai_emv.card_serial;
       afpslai_emv          postgres    false    209    4            ?           0    0    card_serial    SEQUENCE OWNED BY     E   ALTER SEQUENCE afpslai_emv.card_serial OWNED BY afpslai_emv.card.id;
          afpslai_emv          postgres    false    210            ?            1259    24620    civil_status    TABLE     ?   CREATE TABLE afpslai_emv.civil_status (
    id integer NOT NULL,
    "civilStatus" character varying(20),
    is_deleted boolean DEFAULT false
);
 %   DROP TABLE afpslai_emv.civil_status;
       afpslai_emv         heap    postgres    false    4            ?            1259    24624    civil_status_serial    SEQUENCE     ?   CREATE SEQUENCE afpslai_emv.civil_status_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE afpslai_emv.civil_status_serial;
       afpslai_emv          postgres    false    211    4            ?           0    0    civil_status_serial    SEQUENCE OWNED BY     U   ALTER SEQUENCE afpslai_emv.civil_status_serial OWNED BY afpslai_emv.civil_status.id;
          afpslai_emv          postgres    false    212            ?            1259    24626    country    TABLE     ?   CREATE TABLE afpslai_emv.country (
    id integer NOT NULL,
    "countryName" character varying(100),
    code character varying(10),
    is_deleted boolean DEFAULT false
);
     DROP TABLE afpslai_emv.country;
       afpslai_emv         heap    postgres    false    4            ?            1259    24630    country_serial    SEQUENCE     ?   CREATE SEQUENCE afpslai_emv.country_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE afpslai_emv.country_serial;
       afpslai_emv          postgres    false    4    213            ?           0    0    country_serial    SEQUENCE OWNED BY     K   ALTER SEQUENCE afpslai_emv.country_serial OWNED BY afpslai_emv.country.id;
          afpslai_emv          postgres    false    214            ?            1259    24632    cps_card_elements    TABLE     ?  CREATE TABLE afpslai_emv.cps_card_elements (
    id integer NOT NULL,
    element character varying(30),
    x integer,
    y integer,
    width integer,
    height integer,
    font_name character varying(50),
    font_size integer,
    font_style integer,
    element_type character varying(10),
    date_post date,
    time_post time without time zone,
    last_updated timestamp without time zone
);
 *   DROP TABLE afpslai_emv.cps_card_elements;
       afpslai_emv         heap    postgres    false    4            ?            1259    24635    cps_card_elements_serial    SEQUENCE     ?   CREATE SEQUENCE afpslai_emv.cps_card_elements_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE afpslai_emv.cps_card_elements_serial;
       afpslai_emv          postgres    false    215    4            ?           0    0    cps_card_elements_serial    SEQUENCE OWNED BY     _   ALTER SEQUENCE afpslai_emv.cps_card_elements_serial OWNED BY afpslai_emv.cps_card_elements.id;
          afpslai_emv          postgres    false    216            ?            1259    24637    dcs_system_setting    TABLE     E  CREATE TABLE afpslai_emv.dcs_system_setting (
    id integer NOT NULL,
    cif_length integer,
    member_type_assoc_allow_yrs integer,
    member_type_reg_allow_yrs integer,
    cardname_length integer,
    system_default_password character varying(100),
    last_updated timestamp without time zone DEFAULT CURRENT_DATE
);
 +   DROP TABLE afpslai_emv.dcs_system_setting;
       afpslai_emv         heap    postgres    false    4            ?            1259    24641    dcs_system_setting_serial    SEQUENCE     ?   CREATE SEQUENCE afpslai_emv.dcs_system_setting_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE afpslai_emv.dcs_system_setting_serial;
       afpslai_emv          postgres    false    4    217            ?           0    0    dcs_system_setting_serial    SEQUENCE OWNED BY     a   ALTER SEQUENCE afpslai_emv.dcs_system_setting_serial OWNED BY afpslai_emv.dcs_system_setting.id;
          afpslai_emv          postgres    false    218            ?            1259    24643    member    TABLE     G  CREATE TABLE afpslai_emv.member (
    id integer NOT NULL,
    cif character varying(20),
    last_name character varying(50),
    first_name character varying(50),
    middle_name character varying(50),
    suffix character varying(10),
    gender character varying(10),
    date_birth date,
    civil_status_id integer,
    membership_type_id integer,
    membership_status_id integer,
    membership_date date,
    contact_nos character varying(50),
    mobile_nos character varying(50),
    emergency_contact_name character varying(200),
    emergency_contact_nos character varying(50),
    principal_associate_type_id integer,
    principal_cif character varying(20),
    principal_name character varying(200),
    cca_no character varying(50),
    user_id integer,
    terminal_id character varying(50),
    branch_id integer,
    online_reference_number character varying(20),
    card_name character varying(50),
    email character varying(100),
    print_type_id integer,
    recard_reason_id integer,
    date_post date,
    time_post time without time zone,
    is_cancel boolean
);
    DROP TABLE afpslai_emv.member;
       afpslai_emv         heap    postgres    false    4            ?            1259    24649    member_serial    SEQUENCE     ?   CREATE SEQUENCE afpslai_emv.member_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE afpslai_emv.member_serial;
       afpslai_emv          postgres    false    4    219            ?           0    0    member_serial    SEQUENCE OWNED BY     I   ALTER SEQUENCE afpslai_emv.member_serial OWNED BY afpslai_emv.member.id;
          afpslai_emv          postgres    false    220            ?            1259    24651    membership_status    TABLE     ?   CREATE TABLE afpslai_emv.membership_status (
    id integer NOT NULL,
    "membershipStatus" character varying(20),
    is_deleted boolean DEFAULT false
);
 *   DROP TABLE afpslai_emv.membership_status;
       afpslai_emv         heap    postgres    false    4            ?            1259    24655    membership_status_serial    SEQUENCE     ?   CREATE SEQUENCE afpslai_emv.membership_status_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE afpslai_emv.membership_status_serial;
       afpslai_emv          postgres    false    4    221            ?           0    0    membership_status_serial    SEQUENCE OWNED BY     _   ALTER SEQUENCE afpslai_emv.membership_status_serial OWNED BY afpslai_emv.membership_status.id;
          afpslai_emv          postgres    false    222            ?            1259    24657    membership_type    TABLE     ?   CREATE TABLE afpslai_emv.membership_type (
    id integer NOT NULL,
    "membershipType" character varying(20),
    is_deleted boolean DEFAULT false
);
 (   DROP TABLE afpslai_emv.membership_type;
       afpslai_emv         heap    postgres    false    4            ?            1259    24661    membership_type_serial    SEQUENCE     ?   CREATE SEQUENCE afpslai_emv.membership_type_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE afpslai_emv.membership_type_serial;
       afpslai_emv          postgres    false    223    4            ?           0    0    membership_type_serial    SEQUENCE OWNED BY     [   ALTER SEQUENCE afpslai_emv.membership_type_serial OWNED BY afpslai_emv.membership_type.id;
          afpslai_emv          postgres    false    224            ?            1259    24663    online_registration    TABLE     ?  CREATE TABLE afpslai_emv.online_registration (
    id integer NOT NULL,
    cif character varying(20),
    last_name character varying(50),
    first_name character varying(50),
    middle_name character varying(50),
    suffix character varying(10),
    gender character varying(10),
    date_birth date,
    mobile_nos character varying(50),
    email character varying(100),
    cca_no character varying(50),
    reference_number character varying(20),
    qr_code character varying(100),
    branch character varying(100),
    date_schedule date,
    time_schedule character varying(100),
    date_captured date,
    reference_id integer,
    date_post date DEFAULT CURRENT_DATE,
    time_post time without time zone DEFAULT CURRENT_TIME
);
 ,   DROP TABLE afpslai_emv.online_registration;
       afpslai_emv         heap    postgres    false    4            ?            1259    24671    online_registration_serial    SEQUENCE     ?   CREATE SEQUENCE afpslai_emv.online_registration_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE afpslai_emv.online_registration_serial;
       afpslai_emv          postgres    false    4    225            ?           0    0    online_registration_serial    SEQUENCE OWNED BY     c   ALTER SEQUENCE afpslai_emv.online_registration_serial OWNED BY afpslai_emv.online_registration.id;
          afpslai_emv          postgres    false    226            ?            1259    24673 
   print_type    TABLE     ?   CREATE TABLE afpslai_emv.print_type (
    id integer NOT NULL,
    "printType" character varying(20),
    is_deleted boolean DEFAULT false
);
 #   DROP TABLE afpslai_emv.print_type;
       afpslai_emv         heap    postgres    false    4            ?            1259    24677    print_type_serial    SEQUENCE     ?   CREATE SEQUENCE afpslai_emv.print_type_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE afpslai_emv.print_type_serial;
       afpslai_emv          postgres    false    4    227            ?           0    0    print_type_serial    SEQUENCE OWNED BY     Q   ALTER SEQUENCE afpslai_emv.print_type_serial OWNED BY afpslai_emv.print_type.id;
          afpslai_emv          postgres    false    228            ?            1259    24679    recard_reason    TABLE     ?   CREATE TABLE afpslai_emv.recard_reason (
    id integer NOT NULL,
    "recardReason" character varying(50),
    is_deleted boolean DEFAULT false
);
 &   DROP TABLE afpslai_emv.recard_reason;
       afpslai_emv         heap    postgres    false    4            ?            1259    24683    recard_reason_serial    SEQUENCE     ?   CREATE SEQUENCE afpslai_emv.recard_reason_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE afpslai_emv.recard_reason_serial;
       afpslai_emv          postgres    false    229    4            ?           0    0    recard_reason_serial    SEQUENCE OWNED BY     W   ALTER SEQUENCE afpslai_emv.recard_reason_serial OWNED BY afpslai_emv.recard_reason.id;
          afpslai_emv          postgres    false    230            ?            1259    24685 
   system_log    TABLE     &  CREATE TABLE afpslai_emv.system_log (
    id integer NOT NULL,
    system character varying(10),
    log_desc character varying(2000),
    log_type character varying(10),
    user_id integer,
    date_post date DEFAULT CURRENT_DATE,
    time_post time without time zone DEFAULT CURRENT_TIME
);
 #   DROP TABLE afpslai_emv.system_log;
       afpslai_emv         heap    postgres    false    4            ?            1259    24693    system_log_serial    SEQUENCE     ?   CREATE SEQUENCE afpslai_emv.system_log_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE afpslai_emv.system_log_serial;
       afpslai_emv          postgres    false    4    231            ?           0    0    system_log_serial    SEQUENCE OWNED BY     Q   ALTER SEQUENCE afpslai_emv.system_log_serial OWNED BY afpslai_emv.system_log.id;
          afpslai_emv          postgres    false    232            ?            1259    24695    system_role    TABLE     ?   CREATE TABLE afpslai_emv.system_role (
    id integer NOT NULL,
    role character varying(20),
    is_deleted boolean DEFAULT false
);
 $   DROP TABLE afpslai_emv.system_role;
       afpslai_emv         heap    postgres    false    4            ?            1259    24699    system_role_serial    SEQUENCE     ?   CREATE SEQUENCE afpslai_emv.system_role_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE afpslai_emv.system_role_serial;
       afpslai_emv          postgres    false    233    4            ?           0    0    system_role_serial    SEQUENCE OWNED BY     S   ALTER SEQUENCE afpslai_emv.system_role_serial OWNED BY afpslai_emv.system_role.id;
          afpslai_emv          postgres    false    234            ?            1259    24701    system_user    TABLE     ?  CREATE TABLE afpslai_emv.system_user (
    id integer NOT NULL,
    user_name character varying(50),
    user_pass character varying(500),
    last_name character varying(50),
    first_name character varying(50),
    middle_name character varying(50),
    suffix character varying(10),
    role_id integer,
    status character varying(20),
    is_deleted boolean DEFAULT false,
    date_post date DEFAULT CURRENT_DATE,
    time_post time without time zone DEFAULT CURRENT_TIME
);
 $   DROP TABLE afpslai_emv.system_user;
       afpslai_emv         heap    postgres    false    4            ?            1259    24710    system_user_serial    SEQUENCE     ?   CREATE SEQUENCE afpslai_emv.system_user_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE afpslai_emv.system_user_serial;
       afpslai_emv          postgres    false    4    235            ?           0    0    system_user_serial    SEQUENCE OWNED BY     S   ALTER SEQUENCE afpslai_emv.system_user_serial OWNED BY afpslai_emv.system_user.id;
          afpslai_emv          postgres    false    236            ?           2604    24712 
   address id    DEFAULT     r   ALTER TABLE ONLY afpslai_emv.address ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.address_serial'::regclass);
 >   ALTER TABLE afpslai_emv.address ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    202    201            ?           2604    24713    api_request_log id    DEFAULT     ?   ALTER TABLE ONLY afpslai_emv.api_request_log ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.api_request_log_serial'::regclass);
 F   ALTER TABLE afpslai_emv.api_request_log ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    204    203            ?           2604    24714    associate_type id    DEFAULT     ?   ALTER TABLE ONLY afpslai_emv.associate_type ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.associate_type_serial'::regclass);
 E   ALTER TABLE afpslai_emv.associate_type ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    206    205            ?           2604    24715 	   branch id    DEFAULT     p   ALTER TABLE ONLY afpslai_emv.branch ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.branch_serial'::regclass);
 =   ALTER TABLE afpslai_emv.branch ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    208    207            ?           2604    24716    card id    DEFAULT     l   ALTER TABLE ONLY afpslai_emv.card ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.card_serial'::regclass);
 ;   ALTER TABLE afpslai_emv.card ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    210    209            ?           2604    24717    civil_status id    DEFAULT     |   ALTER TABLE ONLY afpslai_emv.civil_status ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.civil_status_serial'::regclass);
 C   ALTER TABLE afpslai_emv.civil_status ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    212    211            ?           2604    24718 
   country id    DEFAULT     r   ALTER TABLE ONLY afpslai_emv.country ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.country_serial'::regclass);
 >   ALTER TABLE afpslai_emv.country ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    214    213            ?           2604    24719    cps_card_elements id    DEFAULT     ?   ALTER TABLE ONLY afpslai_emv.cps_card_elements ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.cps_card_elements_serial'::regclass);
 H   ALTER TABLE afpslai_emv.cps_card_elements ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    216    215            ?           2604    24720    dcs_system_setting id    DEFAULT     ?   ALTER TABLE ONLY afpslai_emv.dcs_system_setting ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.dcs_system_setting_serial'::regclass);
 I   ALTER TABLE afpslai_emv.dcs_system_setting ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    218    217            ?           2604    24721 	   member id    DEFAULT     p   ALTER TABLE ONLY afpslai_emv.member ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.member_serial'::regclass);
 =   ALTER TABLE afpslai_emv.member ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    220    219            ?           2604    24722    membership_status id    DEFAULT     ?   ALTER TABLE ONLY afpslai_emv.membership_status ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.membership_status_serial'::regclass);
 H   ALTER TABLE afpslai_emv.membership_status ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    222    221            ?           2604    24723    membership_type id    DEFAULT     ?   ALTER TABLE ONLY afpslai_emv.membership_type ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.membership_type_serial'::regclass);
 F   ALTER TABLE afpslai_emv.membership_type ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    224    223            ?           2604    24724    online_registration id    DEFAULT     ?   ALTER TABLE ONLY afpslai_emv.online_registration ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.online_registration_serial'::regclass);
 J   ALTER TABLE afpslai_emv.online_registration ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    226    225            ?           2604    24725    print_type id    DEFAULT     x   ALTER TABLE ONLY afpslai_emv.print_type ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.print_type_serial'::regclass);
 A   ALTER TABLE afpslai_emv.print_type ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    228    227            ?           2604    24726    recard_reason id    DEFAULT     ~   ALTER TABLE ONLY afpslai_emv.recard_reason ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.recard_reason_serial'::regclass);
 D   ALTER TABLE afpslai_emv.recard_reason ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    230    229            ?           2604    24727    system_log id    DEFAULT     x   ALTER TABLE ONLY afpslai_emv.system_log ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.system_log_serial'::regclass);
 A   ALTER TABLE afpslai_emv.system_log ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    232    231            ?           2604    24728    system_role id    DEFAULT     z   ALTER TABLE ONLY afpslai_emv.system_role ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.system_role_serial'::regclass);
 B   ALTER TABLE afpslai_emv.system_role ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    234    233            ?           2604    24729    system_user id    DEFAULT     z   ALTER TABLE ONLY afpslai_emv.system_user ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.system_user_serial'::regclass);
 B   ALTER TABLE afpslai_emv.system_user ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    236    235            a          0    24578    address 
   TABLE DATA           ?   COPY afpslai_emv.address (id, member_id, address1, address2, address3, city, province, country_id, zipcode, date_post, time_post, is_cancel) FROM stdin;
    afpslai_emv          postgres    false    201   }?       c          0    24589    api_request_log 
   TABLE DATA           ?   COPY afpslai_emv.api_request_log (id, api_owner, api_name, member_id, card_id, request, response, is_success, date_post, time_post) FROM stdin;
    afpslai_emv          postgres    false    203   ??       e          0    24600    associate_type 
   TABLE DATA           N   COPY afpslai_emv.associate_type (id, "associateType", is_deleted) FROM stdin;
    afpslai_emv          postgres    false    205   ??       g          0    24606    branch 
   TABLE DATA           I   COPY afpslai_emv.branch (id, "branchName", code, is_deleted) FROM stdin;
    afpslai_emv          postgres    false    207   Ĩ       i          0    24612    card 
   TABLE DATA           u   COPY afpslai_emv.card (id, member_id, "cardNo", "date_CMS", "date_CBS", date_post, time_post, is_cancel) FROM stdin;
    afpslai_emv          postgres    false    209   ??       k          0    24620    civil_status 
   TABLE DATA           J   COPY afpslai_emv.civil_status (id, "civilStatus", is_deleted) FROM stdin;
    afpslai_emv          postgres    false    211   W?       m          0    24626    country 
   TABLE DATA           K   COPY afpslai_emv.country (id, "countryName", code, is_deleted) FROM stdin;
    afpslai_emv          postgres    false    213   ??       o          0    24632    cps_card_elements 
   TABLE DATA           ?   COPY afpslai_emv.cps_card_elements (id, element, x, y, width, height, font_name, font_size, font_style, element_type, date_post, time_post, last_updated) FROM stdin;
    afpslai_emv          postgres    false    215   u?       q          0    24637    dcs_system_setting 
   TABLE DATA           ?   COPY afpslai_emv.dcs_system_setting (id, cif_length, member_type_assoc_allow_yrs, member_type_reg_allow_yrs, cardname_length, system_default_password, last_updated) FROM stdin;
    afpslai_emv          postgres    false    217   N?       s          0    24643    member 
   TABLE DATA           ?  COPY afpslai_emv.member (id, cif, last_name, first_name, middle_name, suffix, gender, date_birth, civil_status_id, membership_type_id, membership_status_id, membership_date, contact_nos, mobile_nos, emergency_contact_name, emergency_contact_nos, principal_associate_type_id, principal_cif, principal_name, cca_no, user_id, terminal_id, branch_id, online_reference_number, card_name, email, print_type_id, recard_reason_id, date_post, time_post, is_cancel) FROM stdin;
    afpslai_emv          postgres    false    219   ??       u          0    24651    membership_status 
   TABLE DATA           T   COPY afpslai_emv.membership_status (id, "membershipStatus", is_deleted) FROM stdin;
    afpslai_emv          postgres    false    221   ??       w          0    24657    membership_type 
   TABLE DATA           P   COPY afpslai_emv.membership_type (id, "membershipType", is_deleted) FROM stdin;
    afpslai_emv          postgres    false    223   ??       y          0    24663    online_registration 
   TABLE DATA           
  COPY afpslai_emv.online_registration (id, cif, last_name, first_name, middle_name, suffix, gender, date_birth, mobile_nos, email, cca_no, reference_number, qr_code, branch, date_schedule, time_schedule, date_captured, reference_id, date_post, time_post) FROM stdin;
    afpslai_emv          postgres    false    225   ?       {          0    24673 
   print_type 
   TABLE DATA           F   COPY afpslai_emv.print_type (id, "printType", is_deleted) FROM stdin;
    afpslai_emv          postgres    false    227   ??       }          0    24679    recard_reason 
   TABLE DATA           L   COPY afpslai_emv.recard_reason (id, "recardReason", is_deleted) FROM stdin;
    afpslai_emv          postgres    false    229   ??                 0    24685 
   system_log 
   TABLE DATA           h   COPY afpslai_emv.system_log (id, system, log_desc, log_type, user_id, date_post, time_post) FROM stdin;
    afpslai_emv          postgres    false    231   3?       ?          0    24695    system_role 
   TABLE DATA           @   COPY afpslai_emv.system_role (id, role, is_deleted) FROM stdin;
    afpslai_emv          postgres    false    233   n?       ?          0    24701    system_user 
   TABLE DATA           ?   COPY afpslai_emv.system_user (id, user_name, user_pass, last_name, first_name, middle_name, suffix, role_id, status, is_deleted, date_post, time_post) FROM stdin;
    afpslai_emv          postgres    false    235   ??       ?           0    0    address_serial    SEQUENCE SET     A   SELECT pg_catalog.setval('afpslai_emv.address_serial', 2, true);
          afpslai_emv          postgres    false    202            ?           0    0    api_request_log_serial    SEQUENCE SET     I   SELECT pg_catalog.setval('afpslai_emv.api_request_log_serial', 7, true);
          afpslai_emv          postgres    false    204            ?           0    0    associate_type_serial    SEQUENCE SET     H   SELECT pg_catalog.setval('afpslai_emv.associate_type_serial', 3, true);
          afpslai_emv          postgres    false    206            ?           0    0    branch_serial    SEQUENCE SET     A   SELECT pg_catalog.setval('afpslai_emv.branch_serial', 21, true);
          afpslai_emv          postgres    false    208            ?           0    0    card_serial    SEQUENCE SET     >   SELECT pg_catalog.setval('afpslai_emv.card_serial', 7, true);
          afpslai_emv          postgres    false    210            ?           0    0    civil_status_serial    SEQUENCE SET     F   SELECT pg_catalog.setval('afpslai_emv.civil_status_serial', 5, true);
          afpslai_emv          postgres    false    212            ?           0    0    country_serial    SEQUENCE SET     C   SELECT pg_catalog.setval('afpslai_emv.country_serial', 173, true);
          afpslai_emv          postgres    false    214            ?           0    0    cps_card_elements_serial    SEQUENCE SET     K   SELECT pg_catalog.setval('afpslai_emv.cps_card_elements_serial', 5, true);
          afpslai_emv          postgres    false    216            ?           0    0    dcs_system_setting_serial    SEQUENCE SET     L   SELECT pg_catalog.setval('afpslai_emv.dcs_system_setting_serial', 1, true);
          afpslai_emv          postgres    false    218            ?           0    0    member_serial    SEQUENCE SET     @   SELECT pg_catalog.setval('afpslai_emv.member_serial', 2, true);
          afpslai_emv          postgres    false    220            ?           0    0    membership_status_serial    SEQUENCE SET     K   SELECT pg_catalog.setval('afpslai_emv.membership_status_serial', 3, true);
          afpslai_emv          postgres    false    222            ?           0    0    membership_type_serial    SEQUENCE SET     I   SELECT pg_catalog.setval('afpslai_emv.membership_type_serial', 4, true);
          afpslai_emv          postgres    false    224            ?           0    0    online_registration_serial    SEQUENCE SET     M   SELECT pg_catalog.setval('afpslai_emv.online_registration_serial', 1, true);
          afpslai_emv          postgres    false    226            ?           0    0    print_type_serial    SEQUENCE SET     D   SELECT pg_catalog.setval('afpslai_emv.print_type_serial', 3, true);
          afpslai_emv          postgres    false    228            ?           0    0    recard_reason_serial    SEQUENCE SET     G   SELECT pg_catalog.setval('afpslai_emv.recard_reason_serial', 3, true);
          afpslai_emv          postgres    false    230            ?           0    0    system_log_serial    SEQUENCE SET     F   SELECT pg_catalog.setval('afpslai_emv.system_log_serial', 297, true);
          afpslai_emv          postgres    false    232            ?           0    0    system_role_serial    SEQUENCE SET     E   SELECT pg_catalog.setval('afpslai_emv.system_role_serial', 2, true);
          afpslai_emv          postgres    false    234            ?           0    0    system_user_serial    SEQUENCE SET     E   SELECT pg_catalog.setval('afpslai_emv.system_user_serial', 2, true);
          afpslai_emv          postgres    false    236            ?           2606    24731    address address_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY afpslai_emv.address
    ADD CONSTRAINT address_pkey PRIMARY KEY (id);
 C   ALTER TABLE ONLY afpslai_emv.address DROP CONSTRAINT address_pkey;
       afpslai_emv            postgres    false    201            ?           2606    24733 $   api_request_log api_request_log_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY afpslai_emv.api_request_log
    ADD CONSTRAINT api_request_log_pkey PRIMARY KEY (id);
 S   ALTER TABLE ONLY afpslai_emv.api_request_log DROP CONSTRAINT api_request_log_pkey;
       afpslai_emv            postgres    false    203            ?           2606    24735 "   associate_type associate_type_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY afpslai_emv.associate_type
    ADD CONSTRAINT associate_type_pkey PRIMARY KEY (id);
 Q   ALTER TABLE ONLY afpslai_emv.associate_type DROP CONSTRAINT associate_type_pkey;
       afpslai_emv            postgres    false    205            ?           2606    24737    branch branch_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY afpslai_emv.branch
    ADD CONSTRAINT branch_pkey PRIMARY KEY (id);
 A   ALTER TABLE ONLY afpslai_emv.branch DROP CONSTRAINT branch_pkey;
       afpslai_emv            postgres    false    207            ?           2606    24739    card card_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY afpslai_emv.card
    ADD CONSTRAINT card_pkey PRIMARY KEY (id);
 =   ALTER TABLE ONLY afpslai_emv.card DROP CONSTRAINT card_pkey;
       afpslai_emv            postgres    false    209            ?           2606    24741    civil_status civil_status_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY afpslai_emv.civil_status
    ADD CONSTRAINT civil_status_pkey PRIMARY KEY (id);
 M   ALTER TABLE ONLY afpslai_emv.civil_status DROP CONSTRAINT civil_status_pkey;
       afpslai_emv            postgres    false    211            ?           2606    24743    country country_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY afpslai_emv.country
    ADD CONSTRAINT country_pkey PRIMARY KEY (id);
 C   ALTER TABLE ONLY afpslai_emv.country DROP CONSTRAINT country_pkey;
       afpslai_emv            postgres    false    213            ?           2606    24745 (   cps_card_elements cps_card_elements_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY afpslai_emv.cps_card_elements
    ADD CONSTRAINT cps_card_elements_pkey PRIMARY KEY (id);
 W   ALTER TABLE ONLY afpslai_emv.cps_card_elements DROP CONSTRAINT cps_card_elements_pkey;
       afpslai_emv            postgres    false    215            ?           2606    24747 *   dcs_system_setting dcs_system_setting_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY afpslai_emv.dcs_system_setting
    ADD CONSTRAINT dcs_system_setting_pkey PRIMARY KEY (id);
 Y   ALTER TABLE ONLY afpslai_emv.dcs_system_setting DROP CONSTRAINT dcs_system_setting_pkey;
       afpslai_emv            postgres    false    217            ?           2606    24749    member member_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY afpslai_emv.member
    ADD CONSTRAINT member_pkey PRIMARY KEY (id);
 A   ALTER TABLE ONLY afpslai_emv.member DROP CONSTRAINT member_pkey;
       afpslai_emv            postgres    false    219            ?           2606    24751 (   membership_status membership_status_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY afpslai_emv.membership_status
    ADD CONSTRAINT membership_status_pkey PRIMARY KEY (id);
 W   ALTER TABLE ONLY afpslai_emv.membership_status DROP CONSTRAINT membership_status_pkey;
       afpslai_emv            postgres    false    221            ?           2606    24753 $   membership_type membership_type_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY afpslai_emv.membership_type
    ADD CONSTRAINT membership_type_pkey PRIMARY KEY (id);
 S   ALTER TABLE ONLY afpslai_emv.membership_type DROP CONSTRAINT membership_type_pkey;
       afpslai_emv            postgres    false    223            ?           2606    24755 ,   online_registration online_registration_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY afpslai_emv.online_registration
    ADD CONSTRAINT online_registration_pkey PRIMARY KEY (id);
 [   ALTER TABLE ONLY afpslai_emv.online_registration DROP CONSTRAINT online_registration_pkey;
       afpslai_emv            postgres    false    225            ?           2606    24757    print_type print_type_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY afpslai_emv.print_type
    ADD CONSTRAINT print_type_pkey PRIMARY KEY (id);
 I   ALTER TABLE ONLY afpslai_emv.print_type DROP CONSTRAINT print_type_pkey;
       afpslai_emv            postgres    false    227            ?           2606    24759     recard_reason recard_reason_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY afpslai_emv.recard_reason
    ADD CONSTRAINT recard_reason_pkey PRIMARY KEY (id);
 O   ALTER TABLE ONLY afpslai_emv.recard_reason DROP CONSTRAINT recard_reason_pkey;
       afpslai_emv            postgres    false    229            ?           2606    24761    system_log system_log_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY afpslai_emv.system_log
    ADD CONSTRAINT system_log_pkey PRIMARY KEY (id);
 I   ALTER TABLE ONLY afpslai_emv.system_log DROP CONSTRAINT system_log_pkey;
       afpslai_emv            postgres    false    231            ?           2606    24763    system_role system_role_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY afpslai_emv.system_role
    ADD CONSTRAINT system_role_pkey PRIMARY KEY (id);
 K   ALTER TABLE ONLY afpslai_emv.system_role DROP CONSTRAINT system_role_pkey;
       afpslai_emv            postgres    false    233            ?           2606    24765    system_user system_user_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY afpslai_emv.system_user
    ADD CONSTRAINT system_user_pkey PRIMARY KEY (id);
 K   ALTER TABLE ONLY afpslai_emv.system_user DROP CONSTRAINT system_user_pkey;
       afpslai_emv            postgres    false    235            a   m   x?]?A
?0???]??LH?.?P
????????-????=?h?ħ??[?׾b_??
?$*?A?@s?T?G??lx?~?.??ݖ}???Ԫ%Jђ?(1?????      c   v  x????j?@???S????;?3???hm?t????D-6tS??MI?p??H??{?q?Cɶ? ۬?o}???]ZF?|??uEqY???Y汋????Mw<M?.??x?@??i??7V+ ??9R??/?! ????y(??Wپ;5~9d_WiV?Ħɪ??q?xx]?????sߗEh???Z??3`??	?VOq?&??Uք??#_}f{??i?3?3?	򮃉??-e?|l?r>????l??1???׏????????p?_??????^>1?OL?S??3??Q???#f80Me???'?????qp\???:?	??a???S?????)'?X??Q	?????????4?sy??????????Z?N(??\b/      e   4   x?3?tI-H?KI?+?L?2?s?WH?+???K-
s:'???$c???? \?F      g   ?   x?%?Kn? ?u?s?(?????00?g?e??!??TӼn??p?̴h??????x?=t_? [r????0?ʈ?9$??k??`?3?T???f?i?A?i}"Lg????a??|??fɋ?ߏ?0?S???iJ?????,5??K????yj??a?J??????ٚX.F?ҁk??墌<|1?V+[?r?3V>)?????t?_8ʎ??)?+-?ԭ?`???LͿ]??N?L?      i   ?   x??͹1D?X????W??+p?0k?&"??y?r?
G$
R]???F?ƋeQ?R???<??nz??5[
P???????W??????t~:?FoH?g??['3??ɸ8]?:?F?$???????mΑaӻ`????Kh      k   @   x?3??M,*?LM?L?2??L?/??9?S?K?<N?̲??d0ǔ383/='Ȍ???? ?4?      m   ?  x?]WM??H=??nkG?l ?u?4?z?{)???TLIj????2?;??D>?Gf??|?>?_/WU??Q?1}?Ч?8R&3??????C
K?'Uy?*-?<<??:[?`o?ǰ/?`?wM`6??*OUgo?ܱ=??=?M)t??????Z|إ???????M?¶n?*x?!g??R5??g(??&οiwT???16??Uå?*UM?p??? 8e*??6L T?B?u}?"??ā???m;F??B?@?@???Ŵ%͢????i?b?}خ?d?"?1 P?????????̖zD3[?W?4?ʁ???H?$v?ݛ??WN?lő???m?-'???z3B????igS_?'?.??Vu??jZ=	?k+m??] ???(N???>D?^p???j?#m?36.Vi?ʣ=c?<?w???ڊ??l?ԙWp??	?????;k?gO?M??K???y??????8??_;????=????ͯ?L?%>?a??.ٽa?M?i?䛇??G?VR=?????=߲?C?o?????ǳ_????-???Х=9հ'[.????o?7???WD?5?B?????ws??m?w??????V??Bs7?:?|???d?~???ߘ??/ۈ?M???eH?a4???J?^h!?h??m?Z<r?FcZ??T??"?ڟ???????h4?HՍ?7Ȝ?Q~?Lt??O?O?tGE?U?(?3??=?.?[CQ??:?)*?k??n???q???[?X?????TZQ}?O??g ڱ??!Euc??D9W?xDQs5??Ȟ?d<?????ꑭ	?? 'a<?????)?q@?:??q?ɝ????J??'>?ڢ??-~?I?k? ????W.?X?8R?????_b2b[J!?4Sܪ?⃜?a??%: 9aJ?q??'?????Եj)?q??=?w???????T?Z??kڧ??έC3\n??逑???Z??AO??l+??;-?fD?????r.???VW?J?`:?՜[?׶??70_5?B7?f?L???V??}?B?i%/????t??z?s?w}Z?N?>p???U?i?糂!=??3o卂?N?8?`L?֝????	?՛z??:?C????ֺ?+ZKu?-???????z?Ŏ?Y?O??֢^???r?ѕ?r???i?~G?i}?K?>???r?.?E?zJZNn??l??'?HZoD??`???j&?Hm???$q?M(1G?d??=e??v(v ???J??Y"?P??4?V?dߩ?OI?C????B????)U'}?2K????????r??8X???Df ??a"???i(@~???J?xh?NIVbl6ؑHZ???j???t/???@?F?
?|(p????4?H???9?????}??????~j<?'z?e,?:??>??*???4{????7?D???q?g?
/?kHvj+?7n;?&`ZbOc?D:?ҜxQ7Z@?S??-??Vcg7? J?2???b[?s??*?Q?ᆴ??P??oi?Q?獾??6Q&?6??u
???? ѿ?OqE?W?BG??F????:?<??P???)|??wM?a???*;?lv0??Ψ???N??@ ?[4Lڊ???L?t?jJeA?3??R?? Ѱ?.h{???P?ݮT?$??,g??Q?=L?>d9?ܾcu?Ĕ2??eQg?ah0??Ք-%`?of%ٶ| ?i/?o?E	?Z????-;t??>????+g?ΖB??V?	
?kkp??޹hP??n???0?A$vI???9???[???e(??WSS????????=qIw???'??/?㡤? 	?I?Ї:ws??
??õ?`e)?)·<??z{[j9*?Ǔ?i???5ht?ڳ?B???kuJ??Js????m???[TI??.?˃A?s}?]??2?????E?D??)?? ?D??^L?{4?@m????I85gH???a9?<?Y??9??9??+7?yǇ?K??Ai'????>|????      o   ?   x???=N?@???)?@??۝?K?h@"?iLXK?????q?(2B??????7??????'Fp]C??z:??o7eZ	/?l`oL???Y??I?N?1kX*˚???/?[?ݰ.`?0??燗{???<?ݰ?/I?&?%?,??w???_??4?n??f+ؓq0m_u
]??	?y\)j
???dg?e??v??m??ê
!? ??c      q   4   x?3?44?42?44?42?Lt+?q?L?-32 ??]s R00?#?=... ?
J      s   ?   x????N?0???y?V?c?io?i?tR???&?@? \???)t-\f????/?zh????yc?5?m??b?U?s?v??#??CT?z@?(xђ?}?)?]??s k9մD??_Η??????j????????]????wc{?`?So+0?X?$@e?Z?Tm???[??2e?,??v6?GI!9??ee??(???F?iln ?k*%C??,˾8?`      u   '   x?3????q?L?2?	????9?C<?\??=... ?5-      w   7   x?3?JM/?I,?L?2?t,.?O?L,I??9???
???<?$Qd?1z\\\ ???      y   ?   x?E?M
?0??/??Rޏ?$+#??i?u#݈$`?x{[?8?b?a?/$?B??????:T?˝!2Ȁ???N????|?????RvM???h???m?e*c?v0?4?[@??????(K\?~	0{AO.?eeՐ)?>?'      {   0   x?3??K-?L?2?J-?ILN??al??BI???s?&P"F??? [??      }   =   x?3???/.Q@?i\F?!?Ey?.?????)HƜ?y??EE??%
)?%??9??=... ن?         +  x???Kn9???S?:?x?Q??A?r6j??вK===???HZpc%?Yd?_2??????w?w?O?O|z?_w????ry??;L???????t?R??G?`?0]??R?";??YӚ%??????sHg?5?2?b?v&g?+Q???8j?΁?lk?&^?;;3?3p$[???s(kЬ?K?{?y?N???O?P
??Jg?kI9(i???Yl%?b!5?5ddU?Bx??2?E??hlZ??aC6?T??]??גC6<1??!?a ???I????O/?N??????O]?\NO??<??@Jk??r^(W?????˗_??????.??B-??}??????|?s
????-?>???5ay?z????]x,
??UfgJ?i4??Ǣ??3???u˵???ӻ?????DfWDHʂ??17????????? ?????瞐}Y8mŷ?b? ???? ???2!ˊ?Q?J)?H???0??`????i????w8d?)2??qv??v?Dj?SV?d?A?m?P????!M??R?1?E?ĳA?XYdC0?/????Ng/j????0?C?*r?^Ɵ ???%??fRt??F??	?Z?6?P???2/:<??ɢ?#?06I??b??Č@4?`??????ҾЌ>5?!*T????ц???B???حG??>?؍??N??MI?A?????Y?sj???X????Z??e??az8j?b?2;U#.?????Y1?$+BK?e)??(?,?v?\Ú?q[[?????o145`?"??y?TOp?(?[<Z?5?m?c?ZC? O,qZ??"??v??h?$???c?E?P?JI??%?K?M|B??,?n???͆?gI|+Eul?,3.I&?(J92-I?et???Ǘ???/?-U??? ?U??׎?f?K?ǔ?`UӒ?euff(AR?uD?`>ZР2????i6?\ Vע%?????2E?.yH?D5??F?	!????UEm?????????˶;"??+?????zh???8?P????zhS?%?ʡ1P????????ًbD-G???IH?R?	??X-?R??(?_??f? %??????ˇm'??j	???"h0?0?/?1T?????2-?F!MN?UA?p???d??i???i؟qP??l\7???D5??N?%?I9tJ???.=??Ig22%R??:?%??vH?%%??lVc?<&5?!1??n??? ?&+?g?@?Y?@;???J(?i4Lf?D?h?b????3??3???????4%L!Z:&??R??1-????0??h?X*???GÞдBt????QI4Z????$?XH?>.??$&熙?D??@??~?&ď?"???G5?h?	sA?c?h?D??D<????J?цg5?(???,??w?ø;???bfBrT??h??c?h??[6-???D?bf?Q)???bc'????3?C?oag?,??>!G?4??????χ?otO:???-ƥ??}lM?#?5?oxZT?Ĩ?PQ????BM?%?k??>⅚n%M9?g?5???????Ⱦ?}?ND?Q?G?`?8ǈ?\???D?l?????Ȗ60?cؠ???Y??Φ?RO?B???M???@?3?????bD?;̻]?u?R?????78N???,?l?9O??U???,N???j?o?t?+%{?շ??܀2?'?????N?V?}??6npn*擮?q<??1?????7x?
f5??S??4?P1c?f9vX?YF???	ul?U?WIkzNї8??q?fYΒ1?)~2?o?j?D?"?????c??B)U??ފ?r??t??-;?o~	??&?긓?*,??g?)??i(?b2?]|?@آB
?n?~?ãy??B?Y*?f??((??[???Gk5r?䚆B?[Z}???+ci(??2?Y>??!T*n9??:n'$?s?[4?%s -巷Y,?w?)o?????+:섄?7R??bF?????a??Z??7Go??I?}??ћ}?Z?O&?????;?g????a?#z}?>S??s(6KS<v5L?|?C?[&???<???e(?%\R/-aL?ӌ2??%յ%??????p?%?WA[???P???5$????R?4Ѫ?2C??ȝ(???r???%?1?4?{e8???"?J?p/?ɗ'0C@f)?1T?V??0?G???#?񞯓d?9vĐ?K?Es?K?aG????W?`9C|D???É?xC?\̨??z
????h??1y ??U?E?a?A????Jא<?r8t(???xw???%?W???o&?,????u?GW???~2?i?]?+??ں???ȯ????>?0b??t?W??~??W(??~???r?a?+L???}??[?P?	??A?????{Qr?O_????~2??M?+V? H.<???A???YI4J	??-6?^cY?!S??b?-?=?Q??w???????????B?kxz????
h???W???-???
??w??^l???E? /?U,Y?e???hQ??ًT,???Z???=?}??L???)???4?rІ?^7X??k??_o??D??????W??????
??Y]?3?$?ߣ?w?gЉR????£H7hH??ı[?,ˍ5??;S'???.?nP?? W?ڙї1????h??6S?????????X??K?h?????S/?zr???????/u~K3??N;??E?eӑ?0????u?s??}???
,U??3{?a;j?tZ??!	پZe?4??#,?dY???`??i??P??XT????R?c?a?d??)???s)qG??u?(??]?w?&??Q?jSt?C?ܷ??}?M?u7???ڬO?J?ΰY?6?@̨????~?6?	?w?З?P??B{??V?1c???S[?x?|z??<??///??????j?W?o9Q)??B,;Z}???=y?±f?v'7?uNt?痧?fԵIߧ%z5?x??ҙ???1I?|?<?|?????勿???Ï^??^???-pC_x?%?O[P@n?@n9???WK?5g1?Sz??_??WlV???Ji?e]? ?.?Syܐ?}l)H}Ͳ?R| ???r?a????7k`9W????at???屸??B??~!?|~?e?e?]?"u??:n??Y騎??vXf?p)??j?	??"??߁,?c?!????c??????>}y8}?>?v?|?:??M???o"?<?F?n?4?ˎ%???Z?P??v	?M?_-T_u@pmB??h<f%?	Sx?	їCX?Z??"? ???N!???i-4???b? ??:???Zf??g6??cV???Ʋc?u??R	?˿?eY??Dw?      ?   '   x?3?tqV?/H-J,?/?L?28??f?y1z\\\ ?M	9      ?   r  x?e??n?0??y??lH?[?P?T?l???%?ـcӪ???/tWZ??f?2??#ho|ۡ??~5-?Y{C?Nt?????t????}??H????{g?j?c???????C???&??>-]???*6^???Ľ???B????a??O??CcU???HCN9?I?@a?Y?
3???&?v?s?_U&C?o~???^?;?a*?n?????oD1%??b,??
??f??Ƌ(??\????????@??VXo?yR??V։|?ݢvM??U??IxM???߉????P_, IC?l?6???v2??p?c?w?!???-?w-d?K[y(ND%G??7?͐?G+?2?v????s D?+?"?Ut?????1???Y q(??     