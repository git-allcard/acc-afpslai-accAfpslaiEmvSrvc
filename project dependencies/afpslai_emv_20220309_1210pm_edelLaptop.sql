PGDMP     -    
        	        z            afpslai_emv    13.3    13.3 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    24576    afpslai_emv    DATABASE     o   CREATE DATABASE afpslai_emv WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE afpslai_emv;
                postgres    false                        2615    33973    afpslai_emv    SCHEMA        CREATE SCHEMA afpslai_emv;
    DROP SCHEMA afpslai_emv;
                postgres    false            �            1259    33974    address    TABLE     �  CREATE TABLE afpslai_emv.address (
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
       afpslai_emv         heap    postgres    false    4            �            1259    33983    address_serial    SEQUENCE     �   CREATE SEQUENCE afpslai_emv.address_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE afpslai_emv.address_serial;
       afpslai_emv          postgres    false    201    4            �           0    0    address_serial    SEQUENCE OWNED BY     K   ALTER SEQUENCE afpslai_emv.address_serial OWNED BY afpslai_emv.address.id;
          afpslai_emv          postgres    false    202            �            1259    33985    api_request_log    TABLE     �  CREATE TABLE afpslai_emv.api_request_log (
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
       afpslai_emv         heap    postgres    false    4            �            1259    33994    api_request_log_serial    SEQUENCE     �   CREATE SEQUENCE afpslai_emv.api_request_log_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE afpslai_emv.api_request_log_serial;
       afpslai_emv          postgres    false    203    4            �           0    0    api_request_log_serial    SEQUENCE OWNED BY     [   ALTER SEQUENCE afpslai_emv.api_request_log_serial OWNED BY afpslai_emv.api_request_log.id;
          afpslai_emv          postgres    false    204            �            1259    33996    associate_type    TABLE     �   CREATE TABLE afpslai_emv.associate_type (
    id integer NOT NULL,
    "associateType" character varying(20),
    is_deleted boolean DEFAULT false
);
 '   DROP TABLE afpslai_emv.associate_type;
       afpslai_emv         heap    postgres    false    4            �            1259    34000    associate_type_serial    SEQUENCE     �   CREATE SEQUENCE afpslai_emv.associate_type_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE afpslai_emv.associate_type_serial;
       afpslai_emv          postgres    false    4    205            �           0    0    associate_type_serial    SEQUENCE OWNED BY     Y   ALTER SEQUENCE afpslai_emv.associate_type_serial OWNED BY afpslai_emv.associate_type.id;
          afpslai_emv          postgres    false    206            �            1259    34002    branch    TABLE     �   CREATE TABLE afpslai_emv.branch (
    id integer NOT NULL,
    "branchName" character varying(100),
    code character varying(10),
    is_deleted boolean DEFAULT false,
    "cbsUser" character varying(100)
);
    DROP TABLE afpslai_emv.branch;
       afpslai_emv         heap    postgres    false    4            �            1259    34006    branch_serial    SEQUENCE     �   CREATE SEQUENCE afpslai_emv.branch_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE afpslai_emv.branch_serial;
       afpslai_emv          postgres    false    207    4            �           0    0    branch_serial    SEQUENCE OWNED BY     I   ALTER SEQUENCE afpslai_emv.branch_serial OWNED BY afpslai_emv.branch.id;
          afpslai_emv          postgres    false    208            �            1259    34008    card    TABLE     W  CREATE TABLE afpslai_emv.card (
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
       afpslai_emv         heap    postgres    false    4            �            1259    34014    card_serial    SEQUENCE     �   CREATE SEQUENCE afpslai_emv.card_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE afpslai_emv.card_serial;
       afpslai_emv          postgres    false    209    4            �           0    0    card_serial    SEQUENCE OWNED BY     E   ALTER SEQUENCE afpslai_emv.card_serial OWNED BY afpslai_emv.card.id;
          afpslai_emv          postgres    false    210            �            1259    34016    civil_status    TABLE     �   CREATE TABLE afpslai_emv.civil_status (
    id integer NOT NULL,
    "civilStatus" character varying(20),
    is_deleted boolean DEFAULT false
);
 %   DROP TABLE afpslai_emv.civil_status;
       afpslai_emv         heap    postgres    false    4            �            1259    34020    civil_status_serial    SEQUENCE     �   CREATE SEQUENCE afpslai_emv.civil_status_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE afpslai_emv.civil_status_serial;
       afpslai_emv          postgres    false    211    4            �           0    0    civil_status_serial    SEQUENCE OWNED BY     U   ALTER SEQUENCE afpslai_emv.civil_status_serial OWNED BY afpslai_emv.civil_status.id;
          afpslai_emv          postgres    false    212            �            1259    34022    country    TABLE     �   CREATE TABLE afpslai_emv.country (
    id integer NOT NULL,
    "countryName" character varying(100),
    code character varying(10),
    is_deleted boolean DEFAULT false
);
     DROP TABLE afpslai_emv.country;
       afpslai_emv         heap    postgres    false    4            �            1259    34026    country_serial    SEQUENCE     �   CREATE SEQUENCE afpslai_emv.country_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE afpslai_emv.country_serial;
       afpslai_emv          postgres    false    4    213            �           0    0    country_serial    SEQUENCE OWNED BY     K   ALTER SEQUENCE afpslai_emv.country_serial OWNED BY afpslai_emv.country.id;
          afpslai_emv          postgres    false    214            �            1259    34028    cps_card_elements    TABLE     �  CREATE TABLE afpslai_emv.cps_card_elements (
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
       afpslai_emv         heap    postgres    false    4            �            1259    34031    cps_card_elements_serial    SEQUENCE     �   CREATE SEQUENCE afpslai_emv.cps_card_elements_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE afpslai_emv.cps_card_elements_serial;
       afpslai_emv          postgres    false    215    4            �           0    0    cps_card_elements_serial    SEQUENCE OWNED BY     _   ALTER SEQUENCE afpslai_emv.cps_card_elements_serial OWNED BY afpslai_emv.cps_card_elements.id;
          afpslai_emv          postgres    false    216            �            1259    34033    dcs_system_setting    TABLE     E  CREATE TABLE afpslai_emv.dcs_system_setting (
    id integer NOT NULL,
    cif_length integer,
    member_type_assoc_allow_yrs integer,
    member_type_reg_allow_yrs integer,
    cardname_length integer,
    system_default_password character varying(100),
    last_updated timestamp without time zone DEFAULT CURRENT_DATE
);
 +   DROP TABLE afpslai_emv.dcs_system_setting;
       afpslai_emv         heap    postgres    false    4            �            1259    34037    dcs_system_setting_serial    SEQUENCE     �   CREATE SEQUENCE afpslai_emv.dcs_system_setting_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE afpslai_emv.dcs_system_setting_serial;
       afpslai_emv          postgres    false    4    217            �           0    0    dcs_system_setting_serial    SEQUENCE OWNED BY     a   ALTER SEQUENCE afpslai_emv.dcs_system_setting_serial OWNED BY afpslai_emv.dcs_system_setting.id;
          afpslai_emv          postgres    false    218            �            1259    34039    member    TABLE     G  CREATE TABLE afpslai_emv.member (
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
       afpslai_emv         heap    postgres    false    4            �            1259    34045    member_serial    SEQUENCE     �   CREATE SEQUENCE afpslai_emv.member_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE afpslai_emv.member_serial;
       afpslai_emv          postgres    false    4    219            �           0    0    member_serial    SEQUENCE OWNED BY     I   ALTER SEQUENCE afpslai_emv.member_serial OWNED BY afpslai_emv.member.id;
          afpslai_emv          postgres    false    220            �            1259    34047    membership_status    TABLE     �   CREATE TABLE afpslai_emv.membership_status (
    id integer NOT NULL,
    "membershipStatus" character varying(20),
    is_deleted boolean DEFAULT false
);
 *   DROP TABLE afpslai_emv.membership_status;
       afpslai_emv         heap    postgres    false    4            �            1259    34051    membership_status_serial    SEQUENCE     �   CREATE SEQUENCE afpslai_emv.membership_status_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE afpslai_emv.membership_status_serial;
       afpslai_emv          postgres    false    4    221            �           0    0    membership_status_serial    SEQUENCE OWNED BY     _   ALTER SEQUENCE afpslai_emv.membership_status_serial OWNED BY afpslai_emv.membership_status.id;
          afpslai_emv          postgres    false    222            �            1259    34053    membership_type    TABLE     �   CREATE TABLE afpslai_emv.membership_type (
    id integer NOT NULL,
    "membershipType" character varying(20),
    is_deleted boolean DEFAULT false
);
 (   DROP TABLE afpslai_emv.membership_type;
       afpslai_emv         heap    postgres    false    4            �            1259    34057    membership_type_serial    SEQUENCE     �   CREATE SEQUENCE afpslai_emv.membership_type_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE afpslai_emv.membership_type_serial;
       afpslai_emv          postgres    false    223    4            �           0    0    membership_type_serial    SEQUENCE OWNED BY     [   ALTER SEQUENCE afpslai_emv.membership_type_serial OWNED BY afpslai_emv.membership_type.id;
          afpslai_emv          postgres    false    224            �            1259    34059    online_registration    TABLE     �  CREATE TABLE afpslai_emv.online_registration (
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
       afpslai_emv         heap    postgres    false    4            �            1259    34067    online_registration_serial    SEQUENCE     �   CREATE SEQUENCE afpslai_emv.online_registration_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE afpslai_emv.online_registration_serial;
       afpslai_emv          postgres    false    4    225            �           0    0    online_registration_serial    SEQUENCE OWNED BY     c   ALTER SEQUENCE afpslai_emv.online_registration_serial OWNED BY afpslai_emv.online_registration.id;
          afpslai_emv          postgres    false    226            �            1259    34069 
   print_type    TABLE     �   CREATE TABLE afpslai_emv.print_type (
    id integer NOT NULL,
    "printType" character varying(20),
    is_deleted boolean DEFAULT false
);
 #   DROP TABLE afpslai_emv.print_type;
       afpslai_emv         heap    postgres    false    4            �            1259    34073    print_type_serial    SEQUENCE     �   CREATE SEQUENCE afpslai_emv.print_type_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE afpslai_emv.print_type_serial;
       afpslai_emv          postgres    false    4    227            �           0    0    print_type_serial    SEQUENCE OWNED BY     Q   ALTER SEQUENCE afpslai_emv.print_type_serial OWNED BY afpslai_emv.print_type.id;
          afpslai_emv          postgres    false    228            �            1259    34075    recard_reason    TABLE     �   CREATE TABLE afpslai_emv.recard_reason (
    id integer NOT NULL,
    "recardReason" character varying(50),
    is_deleted boolean DEFAULT false
);
 &   DROP TABLE afpslai_emv.recard_reason;
       afpslai_emv         heap    postgres    false    4            �            1259    34079    recard_reason_serial    SEQUENCE     �   CREATE SEQUENCE afpslai_emv.recard_reason_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE afpslai_emv.recard_reason_serial;
       afpslai_emv          postgres    false    229    4            �           0    0    recard_reason_serial    SEQUENCE OWNED BY     W   ALTER SEQUENCE afpslai_emv.recard_reason_serial OWNED BY afpslai_emv.recard_reason.id;
          afpslai_emv          postgres    false    230            �            1259    34081 
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
       afpslai_emv         heap    postgres    false    4            �            1259    34089    system_log_serial    SEQUENCE     �   CREATE SEQUENCE afpslai_emv.system_log_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE afpslai_emv.system_log_serial;
       afpslai_emv          postgres    false    4    231            �           0    0    system_log_serial    SEQUENCE OWNED BY     Q   ALTER SEQUENCE afpslai_emv.system_log_serial OWNED BY afpslai_emv.system_log.id;
          afpslai_emv          postgres    false    232            �            1259    34091    system_role    TABLE     �   CREATE TABLE afpslai_emv.system_role (
    id integer NOT NULL,
    role character varying(20),
    is_deleted boolean DEFAULT false
);
 $   DROP TABLE afpslai_emv.system_role;
       afpslai_emv         heap    postgres    false    4            �            1259    34095    system_role_serial    SEQUENCE     �   CREATE SEQUENCE afpslai_emv.system_role_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE afpslai_emv.system_role_serial;
       afpslai_emv          postgres    false    233    4            �           0    0    system_role_serial    SEQUENCE OWNED BY     S   ALTER SEQUENCE afpslai_emv.system_role_serial OWNED BY afpslai_emv.system_role.id;
          afpslai_emv          postgres    false    234            �            1259    34097    system_user    TABLE     �  CREATE TABLE afpslai_emv.system_user (
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
    time_post time without time zone DEFAULT CURRENT_TIME,
    is_default_pass boolean
);
 $   DROP TABLE afpslai_emv.system_user;
       afpslai_emv         heap    postgres    false    4            �            1259    34106    system_user_serial    SEQUENCE     �   CREATE SEQUENCE afpslai_emv.system_user_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE afpslai_emv.system_user_serial;
       afpslai_emv          postgres    false    4    235            �           0    0    system_user_serial    SEQUENCE OWNED BY     S   ALTER SEQUENCE afpslai_emv.system_user_serial OWNED BY afpslai_emv.system_user.id;
          afpslai_emv          postgres    false    236            �           2604    34108 
   address id    DEFAULT     r   ALTER TABLE ONLY afpslai_emv.address ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.address_serial'::regclass);
 >   ALTER TABLE afpslai_emv.address ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    202    201            �           2604    34109    api_request_log id    DEFAULT     �   ALTER TABLE ONLY afpslai_emv.api_request_log ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.api_request_log_serial'::regclass);
 F   ALTER TABLE afpslai_emv.api_request_log ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    204    203            �           2604    34110    associate_type id    DEFAULT     �   ALTER TABLE ONLY afpslai_emv.associate_type ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.associate_type_serial'::regclass);
 E   ALTER TABLE afpslai_emv.associate_type ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    206    205            �           2604    34111 	   branch id    DEFAULT     p   ALTER TABLE ONLY afpslai_emv.branch ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.branch_serial'::regclass);
 =   ALTER TABLE afpslai_emv.branch ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    208    207            �           2604    34112    card id    DEFAULT     l   ALTER TABLE ONLY afpslai_emv.card ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.card_serial'::regclass);
 ;   ALTER TABLE afpslai_emv.card ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    210    209            �           2604    34113    civil_status id    DEFAULT     |   ALTER TABLE ONLY afpslai_emv.civil_status ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.civil_status_serial'::regclass);
 C   ALTER TABLE afpslai_emv.civil_status ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    212    211            �           2604    34114 
   country id    DEFAULT     r   ALTER TABLE ONLY afpslai_emv.country ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.country_serial'::regclass);
 >   ALTER TABLE afpslai_emv.country ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    214    213            �           2604    34115    cps_card_elements id    DEFAULT     �   ALTER TABLE ONLY afpslai_emv.cps_card_elements ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.cps_card_elements_serial'::regclass);
 H   ALTER TABLE afpslai_emv.cps_card_elements ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    216    215            �           2604    34116    dcs_system_setting id    DEFAULT     �   ALTER TABLE ONLY afpslai_emv.dcs_system_setting ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.dcs_system_setting_serial'::regclass);
 I   ALTER TABLE afpslai_emv.dcs_system_setting ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    218    217            �           2604    34117 	   member id    DEFAULT     p   ALTER TABLE ONLY afpslai_emv.member ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.member_serial'::regclass);
 =   ALTER TABLE afpslai_emv.member ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    220    219            �           2604    34118    membership_status id    DEFAULT     �   ALTER TABLE ONLY afpslai_emv.membership_status ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.membership_status_serial'::regclass);
 H   ALTER TABLE afpslai_emv.membership_status ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    222    221            �           2604    34119    membership_type id    DEFAULT     �   ALTER TABLE ONLY afpslai_emv.membership_type ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.membership_type_serial'::regclass);
 F   ALTER TABLE afpslai_emv.membership_type ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    224    223            �           2604    34120    online_registration id    DEFAULT     �   ALTER TABLE ONLY afpslai_emv.online_registration ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.online_registration_serial'::regclass);
 J   ALTER TABLE afpslai_emv.online_registration ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    226    225            �           2604    34121    print_type id    DEFAULT     x   ALTER TABLE ONLY afpslai_emv.print_type ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.print_type_serial'::regclass);
 A   ALTER TABLE afpslai_emv.print_type ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    228    227            �           2604    34122    recard_reason id    DEFAULT     ~   ALTER TABLE ONLY afpslai_emv.recard_reason ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.recard_reason_serial'::regclass);
 D   ALTER TABLE afpslai_emv.recard_reason ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    230    229            �           2604    34123    system_log id    DEFAULT     x   ALTER TABLE ONLY afpslai_emv.system_log ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.system_log_serial'::regclass);
 A   ALTER TABLE afpslai_emv.system_log ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    232    231            �           2604    34124    system_role id    DEFAULT     z   ALTER TABLE ONLY afpslai_emv.system_role ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.system_role_serial'::regclass);
 B   ALTER TABLE afpslai_emv.system_role ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    234    233            �           2604    34125    system_user id    DEFAULT     z   ALTER TABLE ONLY afpslai_emv.system_user ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.system_user_serial'::regclass);
 B   ALTER TABLE afpslai_emv.system_user ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    236    235            a          0    33974    address 
   TABLE DATA           �   COPY afpslai_emv.address (id, member_id, address1, address2, address3, city, province, country_id, zipcode, date_post, time_post, is_cancel) FROM stdin;
    afpslai_emv          postgres    false    201   �       c          0    33985    api_request_log 
   TABLE DATA           �   COPY afpslai_emv.api_request_log (id, api_owner, api_name, member_id, card_id, request, response, is_success, date_post, time_post) FROM stdin;
    afpslai_emv          postgres    false    203   E�       e          0    33996    associate_type 
   TABLE DATA           N   COPY afpslai_emv.associate_type (id, "associateType", is_deleted) FROM stdin;
    afpslai_emv          postgres    false    205   M�       g          0    34002    branch 
   TABLE DATA           T   COPY afpslai_emv.branch (id, "branchName", code, is_deleted, "cbsUser") FROM stdin;
    afpslai_emv          postgres    false    207   ��       i          0    34008    card 
   TABLE DATA           u   COPY afpslai_emv.card (id, member_id, "cardNo", "date_CMS", "date_CBS", date_post, time_post, is_cancel) FROM stdin;
    afpslai_emv          postgres    false    209   ��       k          0    34016    civil_status 
   TABLE DATA           J   COPY afpslai_emv.civil_status (id, "civilStatus", is_deleted) FROM stdin;
    afpslai_emv          postgres    false    211   �       m          0    34022    country 
   TABLE DATA           K   COPY afpslai_emv.country (id, "countryName", code, is_deleted) FROM stdin;
    afpslai_emv          postgres    false    213   R�       o          0    34028    cps_card_elements 
   TABLE DATA           �   COPY afpslai_emv.cps_card_elements (id, element, x, y, width, height, font_name, font_size, font_style, element_type, date_post, time_post, last_updated) FROM stdin;
    afpslai_emv          postgres    false    215    �       q          0    34033    dcs_system_setting 
   TABLE DATA           �   COPY afpslai_emv.dcs_system_setting (id, cif_length, member_type_assoc_allow_yrs, member_type_reg_allow_yrs, cardname_length, system_default_password, last_updated) FROM stdin;
    afpslai_emv          postgres    false    217   ��       s          0    34039    member 
   TABLE DATA           �  COPY afpslai_emv.member (id, cif, last_name, first_name, middle_name, suffix, gender, date_birth, civil_status_id, membership_type_id, membership_status_id, membership_date, contact_nos, mobile_nos, emergency_contact_name, emergency_contact_nos, principal_associate_type_id, principal_cif, principal_name, cca_no, user_id, terminal_id, branch_id, online_reference_number, card_name, email, print_type_id, recard_reason_id, date_post, time_post, is_cancel) FROM stdin;
    afpslai_emv          postgres    false    219   >�       u          0    34047    membership_status 
   TABLE DATA           T   COPY afpslai_emv.membership_status (id, "membershipStatus", is_deleted) FROM stdin;
    afpslai_emv          postgres    false    221   ��       w          0    34053    membership_type 
   TABLE DATA           P   COPY afpslai_emv.membership_type (id, "membershipType", is_deleted) FROM stdin;
    afpslai_emv          postgres    false    223   �       y          0    34059    online_registration 
   TABLE DATA           
  COPY afpslai_emv.online_registration (id, cif, last_name, first_name, middle_name, suffix, gender, date_birth, mobile_nos, email, cca_no, reference_number, qr_code, branch, date_schedule, time_schedule, date_captured, reference_id, date_post, time_post) FROM stdin;
    afpslai_emv          postgres    false    225   X�       {          0    34069 
   print_type 
   TABLE DATA           F   COPY afpslai_emv.print_type (id, "printType", is_deleted) FROM stdin;
    afpslai_emv          postgres    false    227   ��       }          0    34075    recard_reason 
   TABLE DATA           L   COPY afpslai_emv.recard_reason (id, "recardReason", is_deleted) FROM stdin;
    afpslai_emv          postgres    false    229   �                 0    34081 
   system_log 
   TABLE DATA           h   COPY afpslai_emv.system_log (id, system, log_desc, log_type, user_id, date_post, time_post) FROM stdin;
    afpslai_emv          postgres    false    231   o�       �          0    34091    system_role 
   TABLE DATA           @   COPY afpslai_emv.system_role (id, role, is_deleted) FROM stdin;
    afpslai_emv          postgres    false    233   T�       �          0    34097    system_user 
   TABLE DATA           �   COPY afpslai_emv.system_user (id, user_name, user_pass, last_name, first_name, middle_name, suffix, role_id, status, is_deleted, date_post, time_post, is_default_pass) FROM stdin;
    afpslai_emv          postgres    false    235   ��       �           0    0    address_serial    SEQUENCE SET     B   SELECT pg_catalog.setval('afpslai_emv.address_serial', 12, true);
          afpslai_emv          postgres    false    202            �           0    0    api_request_log_serial    SEQUENCE SET     J   SELECT pg_catalog.setval('afpslai_emv.api_request_log_serial', 74, true);
          afpslai_emv          postgres    false    204            �           0    0    associate_type_serial    SEQUENCE SET     H   SELECT pg_catalog.setval('afpslai_emv.associate_type_serial', 5, true);
          afpslai_emv          postgres    false    206            �           0    0    branch_serial    SEQUENCE SET     A   SELECT pg_catalog.setval('afpslai_emv.branch_serial', 23, true);
          afpslai_emv          postgres    false    208            �           0    0    card_serial    SEQUENCE SET     ?   SELECT pg_catalog.setval('afpslai_emv.card_serial', 36, true);
          afpslai_emv          postgres    false    210            �           0    0    civil_status_serial    SEQUENCE SET     F   SELECT pg_catalog.setval('afpslai_emv.civil_status_serial', 7, true);
          afpslai_emv          postgres    false    212            �           0    0    country_serial    SEQUENCE SET     C   SELECT pg_catalog.setval('afpslai_emv.country_serial', 173, true);
          afpslai_emv          postgres    false    214            �           0    0    cps_card_elements_serial    SEQUENCE SET     K   SELECT pg_catalog.setval('afpslai_emv.cps_card_elements_serial', 5, true);
          afpslai_emv          postgres    false    216            �           0    0    dcs_system_setting_serial    SEQUENCE SET     L   SELECT pg_catalog.setval('afpslai_emv.dcs_system_setting_serial', 1, true);
          afpslai_emv          postgres    false    218            �           0    0    member_serial    SEQUENCE SET     A   SELECT pg_catalog.setval('afpslai_emv.member_serial', 12, true);
          afpslai_emv          postgres    false    220            �           0    0    membership_status_serial    SEQUENCE SET     K   SELECT pg_catalog.setval('afpslai_emv.membership_status_serial', 5, true);
          afpslai_emv          postgres    false    222            �           0    0    membership_type_serial    SEQUENCE SET     I   SELECT pg_catalog.setval('afpslai_emv.membership_type_serial', 5, true);
          afpslai_emv          postgres    false    224            �           0    0    online_registration_serial    SEQUENCE SET     N   SELECT pg_catalog.setval('afpslai_emv.online_registration_serial', 10, true);
          afpslai_emv          postgres    false    226            �           0    0    print_type_serial    SEQUENCE SET     D   SELECT pg_catalog.setval('afpslai_emv.print_type_serial', 4, true);
          afpslai_emv          postgres    false    228            �           0    0    recard_reason_serial    SEQUENCE SET     G   SELECT pg_catalog.setval('afpslai_emv.recard_reason_serial', 5, true);
          afpslai_emv          postgres    false    230            �           0    0    system_log_serial    SEQUENCE SET     F   SELECT pg_catalog.setval('afpslai_emv.system_log_serial', 488, true);
          afpslai_emv          postgres    false    232            �           0    0    system_role_serial    SEQUENCE SET     E   SELECT pg_catalog.setval('afpslai_emv.system_role_serial', 3, true);
          afpslai_emv          postgres    false    234            �           0    0    system_user_serial    SEQUENCE SET     F   SELECT pg_catalog.setval('afpslai_emv.system_user_serial', 12, true);
          afpslai_emv          postgres    false    236            �           2606    34127    address address_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY afpslai_emv.address
    ADD CONSTRAINT address_pkey PRIMARY KEY (id);
 C   ALTER TABLE ONLY afpslai_emv.address DROP CONSTRAINT address_pkey;
       afpslai_emv            postgres    false    201            �           2606    34129 $   api_request_log api_request_log_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY afpslai_emv.api_request_log
    ADD CONSTRAINT api_request_log_pkey PRIMARY KEY (id);
 S   ALTER TABLE ONLY afpslai_emv.api_request_log DROP CONSTRAINT api_request_log_pkey;
       afpslai_emv            postgres    false    203            �           2606    34131 "   associate_type associate_type_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY afpslai_emv.associate_type
    ADD CONSTRAINT associate_type_pkey PRIMARY KEY (id);
 Q   ALTER TABLE ONLY afpslai_emv.associate_type DROP CONSTRAINT associate_type_pkey;
       afpslai_emv            postgres    false    205            �           2606    34133    branch branch_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY afpslai_emv.branch
    ADD CONSTRAINT branch_pkey PRIMARY KEY (id);
 A   ALTER TABLE ONLY afpslai_emv.branch DROP CONSTRAINT branch_pkey;
       afpslai_emv            postgres    false    207            �           2606    34135    card card_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY afpslai_emv.card
    ADD CONSTRAINT card_pkey PRIMARY KEY (id);
 =   ALTER TABLE ONLY afpslai_emv.card DROP CONSTRAINT card_pkey;
       afpslai_emv            postgres    false    209            �           2606    34137    civil_status civil_status_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY afpslai_emv.civil_status
    ADD CONSTRAINT civil_status_pkey PRIMARY KEY (id);
 M   ALTER TABLE ONLY afpslai_emv.civil_status DROP CONSTRAINT civil_status_pkey;
       afpslai_emv            postgres    false    211            �           2606    34139    country country_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY afpslai_emv.country
    ADD CONSTRAINT country_pkey PRIMARY KEY (id);
 C   ALTER TABLE ONLY afpslai_emv.country DROP CONSTRAINT country_pkey;
       afpslai_emv            postgres    false    213            �           2606    34141 (   cps_card_elements cps_card_elements_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY afpslai_emv.cps_card_elements
    ADD CONSTRAINT cps_card_elements_pkey PRIMARY KEY (id);
 W   ALTER TABLE ONLY afpslai_emv.cps_card_elements DROP CONSTRAINT cps_card_elements_pkey;
       afpslai_emv            postgres    false    215            �           2606    34143 *   dcs_system_setting dcs_system_setting_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY afpslai_emv.dcs_system_setting
    ADD CONSTRAINT dcs_system_setting_pkey PRIMARY KEY (id);
 Y   ALTER TABLE ONLY afpslai_emv.dcs_system_setting DROP CONSTRAINT dcs_system_setting_pkey;
       afpslai_emv            postgres    false    217            �           2606    34145    member member_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY afpslai_emv.member
    ADD CONSTRAINT member_pkey PRIMARY KEY (id);
 A   ALTER TABLE ONLY afpslai_emv.member DROP CONSTRAINT member_pkey;
       afpslai_emv            postgres    false    219            �           2606    34147 (   membership_status membership_status_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY afpslai_emv.membership_status
    ADD CONSTRAINT membership_status_pkey PRIMARY KEY (id);
 W   ALTER TABLE ONLY afpslai_emv.membership_status DROP CONSTRAINT membership_status_pkey;
       afpslai_emv            postgres    false    221            �           2606    34149 $   membership_type membership_type_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY afpslai_emv.membership_type
    ADD CONSTRAINT membership_type_pkey PRIMARY KEY (id);
 S   ALTER TABLE ONLY afpslai_emv.membership_type DROP CONSTRAINT membership_type_pkey;
       afpslai_emv            postgres    false    223            �           2606    34151 ,   online_registration online_registration_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY afpslai_emv.online_registration
    ADD CONSTRAINT online_registration_pkey PRIMARY KEY (id);
 [   ALTER TABLE ONLY afpslai_emv.online_registration DROP CONSTRAINT online_registration_pkey;
       afpslai_emv            postgres    false    225            �           2606    34153    print_type print_type_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY afpslai_emv.print_type
    ADD CONSTRAINT print_type_pkey PRIMARY KEY (id);
 I   ALTER TABLE ONLY afpslai_emv.print_type DROP CONSTRAINT print_type_pkey;
       afpslai_emv            postgres    false    227            �           2606    34155     recard_reason recard_reason_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY afpslai_emv.recard_reason
    ADD CONSTRAINT recard_reason_pkey PRIMARY KEY (id);
 O   ALTER TABLE ONLY afpslai_emv.recard_reason DROP CONSTRAINT recard_reason_pkey;
       afpslai_emv            postgres    false    229            �           2606    34157    system_log system_log_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY afpslai_emv.system_log
    ADD CONSTRAINT system_log_pkey PRIMARY KEY (id);
 I   ALTER TABLE ONLY afpslai_emv.system_log DROP CONSTRAINT system_log_pkey;
       afpslai_emv            postgres    false    231            �           2606    34159    system_role system_role_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY afpslai_emv.system_role
    ADD CONSTRAINT system_role_pkey PRIMARY KEY (id);
 K   ALTER TABLE ONLY afpslai_emv.system_role DROP CONSTRAINT system_role_pkey;
       afpslai_emv            postgres    false    233            �           2606    34161    system_user system_user_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY afpslai_emv.system_user
    ADD CONSTRAINT system_user_pkey PRIMARY KEY (id);
 K   ALTER TABLE ONLY afpslai_emv.system_user DROP CONSTRAINT system_user_pkey;
       afpslai_emv            postgres    false    235            a   S  x�m��j�0���_"tgFϝI ��n��Z
���?�R,�yx%��ǚ+�@��?��JY?Ư�H��D�D ��2v6�	1��jMJ��y`�@#P�����J�eج�h�� $�����swk<R�lbШR�J��}����;�g�,ָ���Gn!B#����e��[%�J�Ζ3�8�jQ<�VE�}���]	A���i����
���a����Ĩ:��j�؜^+{��`5M�F!QjB/��;��NF�$����kL/���*A�5�̤�2P�G{��M*3�����N����%�J�%�T:�O��?�ԥ�|S�2ZGӔm4����k�a����      c   �  x��[[S�8~�~���E#����z�'LAS��ŋ!f�V.T�ӳ��}�R�+���Ww���؟��;RTqyq[�܍ǃO��EU��4��ח���_���R�]�v�.�,�,�d�[����RL�F1X+l�,(�)KT�ov�Zy�^�J����2�b"�0��l�H@��S�Im�-(���Z�:e|z�,�q&��	o�W��-5�����&��Bq9�-.����f:4W�YaU��|~>�|gRO.���h���/������z8�\�ǝ��P��:|8��[��Y)A*�Tx2�]4�z9H�ɰ�^���fZ�[�;��j�̦�jR?���W�����{=;�}�?~����t��U���CĄ�Ґ����đ�-Φ�Ÿ�auy�'�hD�o�����W7�x���J,hzH���IN1�?����So�'�;����Tf<1J�x���{�J��
H���	k���x�<���	����i��¡ �tO����x�+��
O� ^���>!��&���v������}�T%x�<@mL�JS�"���$�6O�g�3�6��	1!Z/S&�����	��PB�P4I@�(N��I��zz�x��QD��P>&m��C�L. ��;�������!�?���'g�xW<�-%�@Z��*J�xzJ2	<�<�6�.,{\ؼ��{��r>7Ǆb)� �'�0�_�@%�^@}gM�񒎏n�!֔`JaL �Oq���a ����xJ���G������j܌�ÐL:S"�#-h�S<��_�����܇wsr%�N͉8���K���$�4&$ZH�5T�#-�)f㋐�`�A�D�Λ"h(�
4������>� T��v�}l�$=��j�T�hv[�����jʏN^p�<�H�z�,��_��[�Wc���������t���Y���]�&�|ut!Ci(�+
ɐ�H%9z��������Ӏ�����z\�����7�>"/��!}��)��T���I��诣L�?������Ϯ�ӯ������?��������&B�}qF��ȳ2j���3N�����v��yl��Х��%�N1��y��Ma���������1�T�n�9X�HE��8Z�+R��'��5E���������-���������'���C�-v����*4�Rp��S<�:���]3���{ϸ�۳��R���l�U��8>1f�S�b�N&Е���u4��u� �i���6��[frtpr�?�~9<}u�12z��$�86J2HA��Փ)^'"�OMĺ�x�D���}ĉ@x�����2�����A�\ƉH��S����M��O��/5:鈣j)�'"��S����'��^f"L	R齲RT�jNH@���U@5g_�Qj�o�(%�Gl��#c-�%W�YM�R�V�&��N!�]g,��z�j?��Z�!�ӯ��zB��e}g��6S�k�pF�@!<c��T�[U�}A�!��`�A;}2e�6qoS�V�U�&G&����0HΒ�f������&,_$����L���S�y��j�e;q��ҿe��z�uɬ�?���	BY��B�.�7ѻR��֤ɣ!g�	���IqL;-%�tӱ�����uW�4�Q<C�2��V�7h�a׶��dj�hW��k��&2�L�b(��2�
�Ȥ�W]Q ��gWp̖�b�E:;��*�]�q�Xʸ@,��Ā]�!7�����U0�k_�L�+SC�q��dvyѪ�u^t/3��0�Sn���~��KM�V*��L�eȄ�)'�f&Ǎ2DF������q����݁|���q#EV-���9�������g��O{������)�!�3y�u8��Oq��]�>��gs��_����m��Q��2��`�$��|ne�DI�e&���;�i�5=[��n�-��Jh�t��x����0V2p��!s�.��!��Pa`6/m�jgPM�~{3m�����k���]��%��[���N����X��j<����ٔ/kb�j���,A	=0�������NSyn��K�o{�!��!6�5�̉
��HIG�P�&@�d5yl3���Y��@��<?v���n�pP^:��v�C��Q�X�бTF-(u:b�+�m���e2<�'��}���l�Ts��چ��v<*�Ѯ���f���9*B\N��/�]SLam��댉���{>�Q��oB;8�\g�{��D��N��v�+x�J+%��З�M��N���j �\g
.�ؿ��2���)�ջHg�hg����� `��      e   F   x�3�s�WH�+���K-�L�2�tNLI-�9]RR�RR�@<Β���.S0#3/�ȉ���� ײ       g     x�U�Mn� FןO�T���^�"T��[%�6=@����U=���͌�-fJS�Vg�����|�6-�B�o��#�`K���"t��+���r�=���2t�vw�5�+Y�F��D����H�󙓅�;&�~�0B�b*�0��u��0��Pɥby�Ax����T���w�m�kF��|�@S�Q�7t�|���,���K׈�_(�����ž�p���ʕZD�V�}s�럷����-�^�w����i�?���u      i   %  x����qc!���U�3�GP�V�gW��g%��&@&���~Bґ+�ޛ0 6�R��䏀�~)�Cu�UT#��qqi+GN� ��ڠ��{�rVҀV]U���Պ��\/����|�/B�6��_��{q����7�C� �ڌI���h2A�*w^3��B��f�[�ۗL�a"P���o�<n1Js/�K^U�� �@f��Ӯܚr2�Rq�&���ˊsNH>����Y6(Ab�;'�j>�׎��ڼ5`3π��oe��2YTPY�N���[�16Q7�`�$D��F�����a�J�էBr �m~�9�e.�,����G�����S�T����a�l;�w�Ablg��ggi��M���=;��� }���8�C�XZ_>o[Uw����¿,r4�0�v���X��	���$�Ox�#(�QX��������pl�5L�|��φ��Rk��4�sy�_>~���t�������k߭�ߠ�Б5i�p}� �p��]M�sk٪vI�e~��>�W�)˩.=<��Fd�VJ�;���{���/۠w�      k   O   x�3��L�/OM�L�2�N-H,J,�L8]2���S��̼��T Ӑ�7��(,l��d�s��� 1z\\\ .e      m   �  x�]WM��H=��nkG�l �u�4�z�{)��TLIj����2�;��D>�Gf��|�>�_/WU��Q�1}�Ч�8R&3������C
K�'Uy�*-�<<��:[�`o�ǰ/�`�wM`6��*OUgo�ܱ=�=�M)t������Z|إ������M�¶n�*x�!g��R5��g(��&οiwT���16��Uå�*UM�p��� 8e*��6L T�B�u}�"��ā���m;F��B�@�@���Ŵ%͢���i�b�}خ�d�"�1 P��������̖zD3[�W�4�ʁ���H�$v�ݛ��WN�lő��m�-'���z3B���igS_�'�.��Vu��jZ=	�k+m��] ���(N���>D�^p���j�#m�36.Vi�ʣ=c�<�w���ڊ�l�ԙWp��	����;k�gO�M��K���y����8��_;����=���ͯ�L�%>�a��.ٽa�M�i�䛇��G�VR=�����=߲�C�o��?��ǳ_���-���Х=9հ'[.���o�7���WD�5�B�����ws��m�w������V��Bs7�:�|��d�~���ߘ��/ۈ�M���eH�a4���J�^h!�h��m�Z<r�FcZ��T��"�ڟ������h4�HՍ�7Ȝ�Q~�Lt��O�O�tGE�U�(�3��=�.�[CQ��:�)*�k��n���q���[�X�����TZQ}�O��g ڱ��!Euc��D9W�xDQs5��Ȟ�d<�����ꑭ	�� 'a<�����)�q@�:��q�ɝ����J��'>�ڢ��-~�I�k� ���W.�X�8R���_b2b[J!�4Sܪ�⃜?a��%: 9aJ?q�'�����Եj)�q��=�w�������T�Z��kڧ��έC3\n��逑���Z��AO��l+�;-�fD�����r.��VW�J�`:�՜[�׶��70_5�B7�f�L���V��}�B�i%/���?t��z�s�w}Z�N�>p���U�i�糂!=��3o卂�N�8�`L�֝����	�՛z��:�C����ֺ�+ZKu�-�������z�Ŏ�Y�O��֢^���r�ѕ�r���i�~G�i}�K�>���r�.�E�zJZNn��l��'�HZoD��`���j&�Hm���$q�M(1G�d��=e��v(v ���J��Y"�P��4�V�dߩ�OI�C����B��?�)U'}�2K������r��8X���Df ��a"���i(@~�?�J�xh�NIVbl6ؑHZ���j���t/���@�F�
�|(p����4�H���9�����}������~j<�'z�e,�:��>��*���4{����7�D���q�g�
/�kHvj+�7n;�&`ZbOc�D:�ҜxQ7Z@�S��-��Vcg7� J�2���b[�s��*�Q�ᆴ��P��oi�Q�獾��6Q&�6��u
��� ѿ�OqE�W�BG��F����:�<��P���)|��wM�a���*;�lv0��Ψ���N��@ �[4Lڊ���L�t�jJeA�3��R�� Ѱ�.h{���P�ݮT�$�,g�Q�=L�>d9�ܾcu�Ĕ2��eQg�ah0��Ք-%`�of%ٶ| �i/�o�E	�Z����-;t�>���+g�ΖB��V�	
�kkp��޹hP�n��0�A$vI���9���[���e(��WSS�������=qIw���'��/�㡤� 	�I�Ї:ws��
�õ�`e)�)·<��z{[j9*�Ǔ�i���5ht�ڳ�B���kuJ��Js��m���[TI��.�˃A�s}?]��2�����E�D��)� �D�^L�{4�@m����I85gH���a9�<�Y��9��9��+7�yǇ�K��Ai'����>|����      o   �   x��αN�@�����پ�}�&�(c�P�6IQTx~J�	!�~/���f���#�*�R D��]r;��z^	7�+8w�t�[�9�^N��t��	ul-�	� ��T��0�*8)�������5X@؜�aگ���奕��B�G�:<?�w�L�hp��w��!a��
���鬅x���A�^;�7�~���u�d��m�b�      q   4   x�3�44�42�44�42�Lt+�q�L�-32 ��]s R00�#�=... �
J      s   m  x�}�o�1�_�>E� �N�wߑ�a�3&�(z�q/��;]���e�R��v~�L�.�?ʊ�Շ����n�j�n�������L@�f��D�Zh���D���B��X�w����[K����B�P�O�� ֧�iw�/7�����F�L�%N}Z�&*L�[�Z�� ��ۍ����A���,5QP��z,`iC������F��7{�u�s#����0	ׂj�o���x�2����l�{����z���O߼?�Y
�20:��9����\���_й+��ld��1
�hA�rF���B�E9_}Q��D�a4kI��y���鼤��s�
z4����At��/�<�GX���1�Q��]A#���C��:����ϫ�5�́1��9HZ�?�P4\�����$���%L�U�ա�J��r k����\t�Ӣd7q>�htȘ� �� �dg�-��꘎���|�ռ����֩��N����
^�&xM��������k�����<"{k�/��6��FN�r}����<�}���m�G0�+NG�dG8*��7廢P��5=�c̊��h���#ft�\��g<y����X)}�T�5��έ�*Jr$ K�$ঔ��{��􌂙��".�1�����{:��̺������ZhpJ��A�*P2! �!��sR�_�\:��8�y� �B�13:l�/�*۽\o����0 ������	&�L
i$�H��H#�4\�g:��0"��߁G��ɝx|U�8V������x��+����B�V�&۝_�U�!Q�!UoJWn��
�1&V�$��yą�i�+�|��K�b�Z=�_-���ۦV��!x�������hX�      u   9   x�3����q�L�2�	����9�C<�\�LΒ��̼�b�.S0Ȉ���� ���      w   D   x�3�JM/�I,�L�2�t,.�O�L,I�9��
�<�$Qdզ�%��%�y�Ŝ%\1z\\\ �+      y   [  x��ԽN�0 ��y���#��I�	�D%%ίSJԥbA�*@Yx{�c�`��t��dK�����W��{�Q��Ѿ�
��Q�HL)&Ie,�r���iz{?]}�)|��_�*���Ʀ�N�CQ��F���=�L �RB�^��vk��VQ�K9I�IBx$��6\�YY��Uf�RY�C��L��H�la,�q��;����)�z4� ��	�- �������� N@bF��Q��@�,- ����xS�� ��	��@�P�����`	 K �p� ]�x��v~O @:���
�����7^ J.s��/���Z㻼�^�}�'�J9�      {   =   x�3��K-�L�2�J-�ILN��al��BI���s�&P�$��$3/����+F��� /54      }   O   x�3���/.Q@�i\F�!�Ey�.����)HƜ�y��EE��%
)�%��9��@aΐ�� Ô����K�c���� �	            x��]�r%��]w}��y�2�L����Y�F�n"4I�9ѯ )y��sN���%�de��#ܭ�@�n�p}u������ç���?~�������!����?�r�˅�YjKR���.��ڃ�8�W/�\�>��J�I7���9��N�ïw���z�m������/��Pf)1�2�M8̳��E����s�Z4O}N.B�%Iiq�aP/�Ͻ����ES��`Li	3��l�j�s.IFts�qD	s+��>E7i �9ΩK�:��J��8w�5aU]�I�Ch<QAS�R����	�۬9���qg�e.RslSt1��~!B��*I˔\�@�}Uڔ� v�Ϊ��<%���?q�Elss�L�Ŝ�S���|��9P/�*`Y�]�@�Fp�b#;F�2g s�c��)UϱZ�Pr:�z�S�2�@�έ��4��W��{���7��7�_~�?��>�������k�R���Ya�d���k�}/� �Z�!��I6�)��VSU�d�`*����d�r�M�:�I�d�4z0ι�`Q�\F�0�R���B
&�%u3)���4�&+�UA�)YS2�e��͚H��ɚ�7��5є��J�iR7k��Y�P`�'u�F�S��]���YӸ8PA!C�ʤn�sY�%`@7k���5����Y���g���|�z��b��	&��f��m�«�M9�t���3K�1�)��������������J5�P �CrzD�����׻������?on��n�=_����P#��)��d@�9�s��N��% 3! S��\yP�����O���ˇ_��yE͛��t�����]��̡d��)��	jp*:���ow�_���q�IenAs��v/�}�
C�P|*@/��?��T\�7�(;p�i*�̩���Lԛs�='�B�X�(dA,ԧ⣝�Pۦ`��O�U�<��p�{ԀE���Fg8�/����Խ.͐e�Q�ް?͵Z��`�XC�?j�뛇��O����ݜF��u{w����������_�GoH���z�Qm�pj>i�Ԧ곖�v���4�T}�Ҁ9�T&*�4U��;�ٻ�����]�N��$����q�c�<�d�^���A�M�g+������G]L���׫�ˇ��ʊ���tb))�\����)
~fª�k�¬���������ۿ��ǻ߮�����c�n<�c(�ڻ��yIH`���;V:Nm������#.'������7�nn���p����0�� "l����lq�;����	�[x�͕�Z�J���vm0��3\z���Þ�&�Z}�}��,����,�P�Nͫ"G�!�
�-S{T��{�m�3̖!�	�Cz8}<[�C��J�1B���� /��R�tz�4��C�'k����dαGD?�g����"X,|Ƙn�	�{1X練�L�:����gDk	g���ϡ��,R�SoO�����0(߮�w�&���a�"�e1�����m�q��7���T�)��(��d�E�r,1���W��?|���ϛ�o�\ݼ<����gJ�Xi��y�?��OMP��}��@��.h����p��)d���(aj�+HpqL��y(W>�&fqö3�)d�b�t��i_���h�DSGD�9��ɠ�g���L�t�S��	t��~'��S2&㦉�n�)����"�f�F���g~�e�^c����u���5=8V>�>ٞ?@8-a+�r�C��4���Q��%.Q\�'ϖ�|�Ian3�,�xu�_'�A�~N�6�FE�C�ι��k�O��A_�X�Z�#&���ZWt)��cQ�E�3�}fcJO��Pƌ�v��Tzr�]C&���d5㻉+a�?�)ܘ�3�++<
t�<���^f�L��@[��!\Y��QFH_��Y1Z�̒S1^�2��|�j���X_�K�eGf���]�Aʡ��s�,���f8�PeK�e�4�J4:�JL_�I��;}�x,��q��q�񭉟�Og�w��G���hoE�N��Ms��!�5q��1�w�f�RR�;�~����S���Q��~r�S'����������p�����rk	�!����2�`���5��i���-Z�C/���A��R�+��91y.n�W2	�������II�a�qt g������������O��(J-�P�4-�������:�,�'C��"M�ȟv����y�!ъ�Ų9�Y��V�i��N8D8�yp�?~���������̂a���y7���Cm����J��0[f) �R���ɺR����G	LN���]�}�܁�������ڣ��" E��֟d	-�������t��J�+�/6�b��\X̌���@"X�_���,�TѱN�h(�\�~�@*�����1)��ㆀ���Wp����EΠ����̐d[�6���a��Y���0#^���<��Yͧ�tm�ك��D���Xeb�yw����2���-x�^RZ�C��W�:݆����?�tx�rV��0Cg��Z�1���XD̗�
_�s.)��p�(Z��R���''����wW���[du�}�dKTU}�y�1D��,��<z��mYĤ��b_��u�sl ���yY]���b�>hR������1�	�i��׳���5Ŷ�Tl��57�:2��ng偏�A��Z*���'��9v]�� ���'��ev���S7��\�^���W� ۲��J������-χ�{5�*�!�h�$�v������w��Kn��=۾W�kو�1�O�l&���_{� 0Q�R_ۆ����&s�X)�=x7�+�d�lu����m��O���!�=6�=i�����x%�ۅ�����ϋUO��u��ߖU�w�Zc�s/ �.��}��~��H�1�������ú`s�����#'�ߖVb)�4�ߖUc�'��j�$76���-�'ĊR���,���aK�ED��!��3����Ub����ܤ���w�٫�MJ-��\��2�����9"��I��18����nL�����9>!ͯ��F�C��5�Z�X��8,ܿ�s<��]̄$��^dg�;�K����d���׶���^��D�"���;e��+�G�B�ÍWg���V��#�Ϳ�6F�|�����d|�v�5=�=��.���s�ס=�f>d<�AzW6
T�M�M��$[�+FƱK�e�Hd�Rͦ�bc�~� *'/�x^�.JUުI^Z�qd��V�������錠H�j��NK�9�"8���T��ݔ`)X��$q�0i��.wpA��i�%�P����/�X������@zU��2�����N���Ҩ]g8p��T���l��v��nY�H��jPs��򮜛E�ʜz�?��E��	�����\�9"s`�I�Z*V�s����,�O��<gH����
��E��Fg^���N7��#��"�nYo
L#|�"ӭ�����Y�{R�&���1"f��M!v4ڦ��lSV#�7����o����3az��˹��?�Up���y��&�k`�<����IJ�y�?����l��x�0b����y��)��_`,����}�(S�ĝ����.����pc�H�<X@���缇�G9L��@mJe?O�X��aD��Ɠ,-��@�6��tX8��lg�Q
�̢�\��cc1�7T搭��<�����N����B���@2�mw�r�=�T|���U:���֌�����T��nO�ׁ��;%���gz�+Y���:(��s�
����`��V�9i���1��1}�2fef��;��'�q��>����dݟ�8�V��@��7�q�%p=*oL��#�q&&�(�b�'4Τ���%�����Ք�@�v���5��lq��.��	���S�r �rK%�rVR��F���;�����h'�f��S�Y�N�F�-�)&��h>ϐ���Î8�c���(�q~�hX�{�ϙ��0�n)�l?>g�z���� ������9t*T����ϙ�FB.��=����@��s�M��P:�{)f�]n���a�\�c�MLYR�K]d�r �	  ���^��>ҐjE�c��� �63������@Ű��bJ}�w�3Τ�X<���3Y�)���f�I�]`$!f�y��`�t~�[��3���q}��Vy�=4{������Ukb�-�������0=TC��h-�B%xU@���O���9'qV ������k� ��� �Cop�q ��(���O���9ʈA��X�@��=jm;��N�.
aKGf�D�������6!f��tQhAf��U;(�E��{��"��O�dg4-�G>��\�Q*]E�R��CR�׎Pu| )�8tB�ZR4�#�zÂ�f�3am��C9�)Vs�d)6l�'1$q��YJ;�ţ4���$[���Ź,xl���@��\��q�,Ŋ��QH��_J��+\<"�ܓ=�'��ł�+�1E�b�W�X�vo�M�c����)�:kD"�
��U7T��p� -��[���J��;6�j֞���Vi�JV�8v\!�J�j�l+�s�+[,H{�OZ�R7�X�a93��]�M�fZ4��Y2Q7�,�¥-��,���\�!����j' J�� 7(�[�-d>�)��ł�t��@w_͂��|��z
����G�h�d���۞�4�VIj��ؔ�#�x
�j3�"����cPZ2�V=M�*yGع�a��U��@���\ߪ����a�,l��wy{�y.�7�5 D�v���Պ��S���'d�#'b�>�yD��� �3�>B$�β�<��,^B�w���m�g��W��L��F��ŧ��f�� �)>�&��R��8bC:�@9"-��?T�j�WlX���R��U�B>�f���r�%��ǡ�,�O�z���qȐ�PZ�T`kPj�jÂl��^2��>
P-��[���d�����Hx_��H�Ba�@*�f�C<�B?�&�l�W�����#l��P�u���ؽ������4�������?��0M��?�LL������?	�SQp��M�R��`/3��*�$.�R�@�"�^ ���}��t�.Sa��.��,B��I�jc�4Z:�%;�O�K��R�@2�P�� C��Ұ��'1ʆ_t����"?J�9��2g���\V��w�d�=l!�^W�ҥ각��B�Qlq����q������8��RE�;�3�GG� �ʄIU��Ҏ���R!D��}t�����WxZ�w��L֕��V�_m ��@;�	J����8G9�<.��R*�sΤ˳�R/�~�D��������i5�N1i�8��sp�t)�\mD���`�.��w��u��>t)�c�;r�_ե��o���S���> �]���<�d���b�K�BC=�����'�+4�Z�n���^�]uxD�A\�tu�$_]���^ ����S�. ���\+[rx'6v���Ұ y�`n%�F��J�@2��f8��-�WhHyy�=��10]��BC�v?�՞��sG�t�c��6���iw��\���C����,�.S���鹘\SÚ6Oϥ���}��^g�͢y�_P}w$r��R�l\P��i%��H!�r�M�����#���Qϟ��K8�K��oX�x�W��`���z@?]���~������?�PK@�c�=����!�?��g�y����˼:�%��x�����T/Q>���c�ګ��/�$��*]��.������J^���嬍�iL%���e���o�gѡf����8z}=����u*���1zK�gm*���F/��K����Y�W	��b*��k)���ɽ�5�G�?��|Dg��㵩�'
�	ϔC�����V��$��}���#:B�W�¿�s������H&~{�'����w}{1_�	�˹Kc��ꪂQ���ξ�WG/V����*�)����T>L2����l��}KȞ�7�;��@_�ϧ�^���;a��,bK������E�֍�����_�1��ק��c/�A���ؗ��a��~�Z��nN	�����՝)�g�J�@�w�����e(��5'�TLI��ycJ��	B'2;RT�M�J�|L�5��py��.�+�p\c�����^�/3b�ĩ�L�?V�Q��3Y���	�gb��e�3�O��������W�1��� 5<������z��9s-���=��on��Hy�3�8G��//��E�c�d̿�)�!�u�Ke�T0�\�u���T-[���ވ:C��2���z%j �%�`y�.��H����	$�=~�����A��+QG$˛��f��t���3��E����՟C:G2�3Gƻؕ�*�2�=�J���\�8tB*�ΑCx�\W��L�I�Ås���HgH��5��?�t�,,E����@{���5��M�R���@�W��#]}$���$@����u���Αj���bFlJ�R�W��w���#l^���x�BzkDzD��9ރF&���A��WRv�hs(��X�W��"dshA�l
�ׄ��{�)Z�Yg�0w��?�4M��1�/      �   2   x�3�tqVpL����L�2�,I-.���2���%���b���� ,�e      �   �  x�}V�r��}��b~`\����-n.��D���T�b�; ��8N����!�&i�3U1N��b��.뢭v����U�D;�.H��v�}����Ij�S����4���U��T��M�_�%f�Lt�S4o�d�v~ڤ��N�#7�N�&�pVjV2a�2M��Ų��^�Ⱦ��Kj��%S/)/J�F��<���p�!�ᜦgJ���?��!|\�b�1n�c��5~�'����3dOД87���1�^��O�MQ�ż�QRn����ל�,�S?�C���!�y��j�`*Liѻ Q������܊9d�F�i��<��f��E���d=%�7o�WVLK����^в����Yy�R�/��������jg�����'����9��db˺�����j�I@��IQ��cSde�@���>�Y�v�ǟ��Y���OA�������ɒ�N@��l�ICU+��b�Jҳ�TÀ��Fڱ��SYt��Bǜ��,��baDT�* ��N겦� P��nk�@��3Bf6� �D�X#�����D��;3��*u����d�_��OX�-�R����k'Sv�d�;�j+��@�+/:��M��h���Z"���Ig��=ߊ��dpN���X��o�+���3=#�ϋ��H �3˙Y�d�{P�=�ٿ~�o��yM����I�b��5�I�j\�@(J.���� �x�4͒c�� a�
}05L�KS�A3�[߂���<�d��8\���,9�d���@)>Q�Z���IK���������=3�{�{
���@�B K�s���*����oH��
�=C�	(�ģhK�H'���E��K�Eu9~��v 6�f��巄��f>�=H����:Ŕ/j���WD�Lv����1p�]�6���5C734�خ������'t�d�н[���Ƿ|WR���8�Zfߕo��:�����)r����Eu�~ق���ϨIy}��E�<р�!��^�s8#O{��R'�C�kdTd)R�BC�b^6� h��受k8R`�mML�E�
���j����b�b�W�UoX�w�[����5��G+1�3X�m�j��y�F,����at�����m��!�-
�d=L�� `:�i�۬��S�Bj$�ғ$x+�O����q��#��c��H��w ��fą�A77@���	�x yH£�urfm~�8y��Jur_\�x݅�fl�v�u�=A��7h���45����%�!m�D��0t`�Ǫ�su`3�F�@p�Cp��&a���d�� x��v��r��t�X�k�1���4+h���jCe��ĕ�/p����߆/�"�'<l�b��e�A����5��ϔ�z�5F��@�y�g�����T�B���K���5TD�t�2�45�5�D�c��a����ׂ�5�9#Ό�{�:���/�,~/����"o�6�����gѧ�#��k��xڵi��O,��D`_z_-�/`�y`��a�Q��6�E3��ȡ��F9Ff41]hɕ��%�b�z�Є���y����`";� ��]l,|��C��R���o�0��vU�$li���V5��@���m��~�/��/E��퀽 �����GPz��!x�{MI{����V!J�{�M���}����T@�CX����$�<Wl0�Yrg�Ђ���菿&?~�����(     