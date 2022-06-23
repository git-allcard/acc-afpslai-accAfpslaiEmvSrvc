PGDMP                           y            afpslai_emv    13.3    13.3 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16394    afpslai_emv    DATABASE     o   CREATE DATABASE afpslai_emv WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE afpslai_emv;
                postgres    false                        2615    24973    afpslai_emv    SCHEMA        CREATE SCHEMA afpslai_emv;
    DROP SCHEMA afpslai_emv;
                postgres    false            �            1259    24974    address    TABLE     �  CREATE TABLE afpslai_emv.address (
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
       afpslai_emv         heap    postgres    false    5            �            1259    24983    address_serial    SEQUENCE     �   CREATE SEQUENCE afpslai_emv.address_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE afpslai_emv.address_serial;
       afpslai_emv          postgres    false    201    5            �           0    0    address_serial    SEQUENCE OWNED BY     K   ALTER SEQUENCE afpslai_emv.address_serial OWNED BY afpslai_emv.address.id;
          afpslai_emv          postgres    false    202            �            1259    24985    api_request_log    TABLE     �  CREATE TABLE afpslai_emv.api_request_log (
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
       afpslai_emv         heap    postgres    false    5            �            1259    24994    api_request_log_serial    SEQUENCE     �   CREATE SEQUENCE afpslai_emv.api_request_log_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE afpslai_emv.api_request_log_serial;
       afpslai_emv          postgres    false    203    5            �           0    0    api_request_log_serial    SEQUENCE OWNED BY     [   ALTER SEQUENCE afpslai_emv.api_request_log_serial OWNED BY afpslai_emv.api_request_log.id;
          afpslai_emv          postgres    false    204            �            1259    24996    associate_type    TABLE     �   CREATE TABLE afpslai_emv.associate_type (
    id integer NOT NULL,
    "associateType" character varying(20),
    is_deleted boolean DEFAULT false
);
 '   DROP TABLE afpslai_emv.associate_type;
       afpslai_emv         heap    postgres    false    5            �            1259    25000    associate_type_serial    SEQUENCE     �   CREATE SEQUENCE afpslai_emv.associate_type_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE afpslai_emv.associate_type_serial;
       afpslai_emv          postgres    false    5    205            �           0    0    associate_type_serial    SEQUENCE OWNED BY     Y   ALTER SEQUENCE afpslai_emv.associate_type_serial OWNED BY afpslai_emv.associate_type.id;
          afpslai_emv          postgres    false    206            �            1259    25002    branch    TABLE     �   CREATE TABLE afpslai_emv.branch (
    id integer NOT NULL,
    "branchName" character varying(100),
    code character varying(10),
    is_deleted boolean DEFAULT false
);
    DROP TABLE afpslai_emv.branch;
       afpslai_emv         heap    postgres    false    5            �            1259    25006    branch_serial    SEQUENCE     �   CREATE SEQUENCE afpslai_emv.branch_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE afpslai_emv.branch_serial;
       afpslai_emv          postgres    false    207    5            �           0    0    branch_serial    SEQUENCE OWNED BY     I   ALTER SEQUENCE afpslai_emv.branch_serial OWNED BY afpslai_emv.branch.id;
          afpslai_emv          postgres    false    208            �            1259    25008    card    TABLE     W  CREATE TABLE afpslai_emv.card (
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
       afpslai_emv         heap    postgres    false    5            �            1259    25014    card_serial    SEQUENCE     �   CREATE SEQUENCE afpslai_emv.card_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE afpslai_emv.card_serial;
       afpslai_emv          postgres    false    209    5            �           0    0    card_serial    SEQUENCE OWNED BY     E   ALTER SEQUENCE afpslai_emv.card_serial OWNED BY afpslai_emv.card.id;
          afpslai_emv          postgres    false    210            �            1259    25016    civil_status    TABLE     �   CREATE TABLE afpslai_emv.civil_status (
    id integer NOT NULL,
    "civilStatus" character varying(20),
    is_deleted boolean DEFAULT false
);
 %   DROP TABLE afpslai_emv.civil_status;
       afpslai_emv         heap    postgres    false    5            �            1259    25020    civil_status_serial    SEQUENCE     �   CREATE SEQUENCE afpslai_emv.civil_status_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE afpslai_emv.civil_status_serial;
       afpslai_emv          postgres    false    211    5            �           0    0    civil_status_serial    SEQUENCE OWNED BY     U   ALTER SEQUENCE afpslai_emv.civil_status_serial OWNED BY afpslai_emv.civil_status.id;
          afpslai_emv          postgres    false    212            �            1259    25022    country    TABLE     �   CREATE TABLE afpslai_emv.country (
    id integer NOT NULL,
    "countryName" character varying(100),
    code character varying(10),
    is_deleted boolean DEFAULT false
);
     DROP TABLE afpslai_emv.country;
       afpslai_emv         heap    postgres    false    5            �            1259    25026    country_serial    SEQUENCE     �   CREATE SEQUENCE afpslai_emv.country_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE afpslai_emv.country_serial;
       afpslai_emv          postgres    false    5    213            �           0    0    country_serial    SEQUENCE OWNED BY     K   ALTER SEQUENCE afpslai_emv.country_serial OWNED BY afpslai_emv.country.id;
          afpslai_emv          postgres    false    214            �            1259    25028    cps_card_elements    TABLE     �  CREATE TABLE afpslai_emv.cps_card_elements (
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
       afpslai_emv         heap    postgres    false    5            �            1259    25031    cps_card_elements_serial    SEQUENCE     �   CREATE SEQUENCE afpslai_emv.cps_card_elements_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE afpslai_emv.cps_card_elements_serial;
       afpslai_emv          postgres    false    215    5            �           0    0    cps_card_elements_serial    SEQUENCE OWNED BY     _   ALTER SEQUENCE afpslai_emv.cps_card_elements_serial OWNED BY afpslai_emv.cps_card_elements.id;
          afpslai_emv          postgres    false    216            �            1259    25033    dcs_system_setting    TABLE     E  CREATE TABLE afpslai_emv.dcs_system_setting (
    id integer NOT NULL,
    cif_length integer,
    member_type_assoc_allow_yrs integer,
    member_type_reg_allow_yrs integer,
    cardname_length integer,
    system_default_password character varying(100),
    last_updated timestamp without time zone DEFAULT CURRENT_DATE
);
 +   DROP TABLE afpslai_emv.dcs_system_setting;
       afpslai_emv         heap    postgres    false    5            �            1259    25037    dcs_system_setting_serial    SEQUENCE     �   CREATE SEQUENCE afpslai_emv.dcs_system_setting_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE afpslai_emv.dcs_system_setting_serial;
       afpslai_emv          postgres    false    5    217            �           0    0    dcs_system_setting_serial    SEQUENCE OWNED BY     a   ALTER SEQUENCE afpslai_emv.dcs_system_setting_serial OWNED BY afpslai_emv.dcs_system_setting.id;
          afpslai_emv          postgres    false    218            �            1259    25039    member    TABLE     G  CREATE TABLE afpslai_emv.member (
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
       afpslai_emv         heap    postgres    false    5            �            1259    25045    member_serial    SEQUENCE     �   CREATE SEQUENCE afpslai_emv.member_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE afpslai_emv.member_serial;
       afpslai_emv          postgres    false    5    219            �           0    0    member_serial    SEQUENCE OWNED BY     I   ALTER SEQUENCE afpslai_emv.member_serial OWNED BY afpslai_emv.member.id;
          afpslai_emv          postgres    false    220            �            1259    25047    membership_status    TABLE     �   CREATE TABLE afpslai_emv.membership_status (
    id integer NOT NULL,
    "membershipStatus" character varying(20),
    is_deleted boolean DEFAULT false
);
 *   DROP TABLE afpslai_emv.membership_status;
       afpslai_emv         heap    postgres    false    5            �            1259    25051    membership_status_serial    SEQUENCE     �   CREATE SEQUENCE afpslai_emv.membership_status_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE afpslai_emv.membership_status_serial;
       afpslai_emv          postgres    false    5    221            �           0    0    membership_status_serial    SEQUENCE OWNED BY     _   ALTER SEQUENCE afpslai_emv.membership_status_serial OWNED BY afpslai_emv.membership_status.id;
          afpslai_emv          postgres    false    222            �            1259    25053    membership_type    TABLE     �   CREATE TABLE afpslai_emv.membership_type (
    id integer NOT NULL,
    "membershipType" character varying(20),
    is_deleted boolean DEFAULT false
);
 (   DROP TABLE afpslai_emv.membership_type;
       afpslai_emv         heap    postgres    false    5            �            1259    25057    membership_type_serial    SEQUENCE     �   CREATE SEQUENCE afpslai_emv.membership_type_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE afpslai_emv.membership_type_serial;
       afpslai_emv          postgres    false    223    5            �           0    0    membership_type_serial    SEQUENCE OWNED BY     [   ALTER SEQUENCE afpslai_emv.membership_type_serial OWNED BY afpslai_emv.membership_type.id;
          afpslai_emv          postgres    false    224            �            1259    25059    online_registration    TABLE     �  CREATE TABLE afpslai_emv.online_registration (
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
       afpslai_emv         heap    postgres    false    5            �            1259    25067    online_registration_serial    SEQUENCE     �   CREATE SEQUENCE afpslai_emv.online_registration_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE afpslai_emv.online_registration_serial;
       afpslai_emv          postgres    false    5    225            �           0    0    online_registration_serial    SEQUENCE OWNED BY     c   ALTER SEQUENCE afpslai_emv.online_registration_serial OWNED BY afpslai_emv.online_registration.id;
          afpslai_emv          postgres    false    226            �            1259    25069 
   print_type    TABLE     �   CREATE TABLE afpslai_emv.print_type (
    id integer NOT NULL,
    "printType" character varying(20),
    is_deleted boolean DEFAULT false
);
 #   DROP TABLE afpslai_emv.print_type;
       afpslai_emv         heap    postgres    false    5            �            1259    25073    print_type_serial    SEQUENCE     �   CREATE SEQUENCE afpslai_emv.print_type_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE afpslai_emv.print_type_serial;
       afpslai_emv          postgres    false    5    227            �           0    0    print_type_serial    SEQUENCE OWNED BY     Q   ALTER SEQUENCE afpslai_emv.print_type_serial OWNED BY afpslai_emv.print_type.id;
          afpslai_emv          postgres    false    228            �            1259    25075    recard_reason    TABLE     �   CREATE TABLE afpslai_emv.recard_reason (
    id integer NOT NULL,
    "recardReason" character varying(50),
    is_deleted boolean DEFAULT false
);
 &   DROP TABLE afpslai_emv.recard_reason;
       afpslai_emv         heap    postgres    false    5            �            1259    25079    recard_reason_serial    SEQUENCE     �   CREATE SEQUENCE afpslai_emv.recard_reason_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE afpslai_emv.recard_reason_serial;
       afpslai_emv          postgres    false    229    5            �           0    0    recard_reason_serial    SEQUENCE OWNED BY     W   ALTER SEQUENCE afpslai_emv.recard_reason_serial OWNED BY afpslai_emv.recard_reason.id;
          afpslai_emv          postgres    false    230            �            1259    25081 
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
       afpslai_emv         heap    postgres    false    5            �            1259    25089    system_log_serial    SEQUENCE     �   CREATE SEQUENCE afpslai_emv.system_log_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE afpslai_emv.system_log_serial;
       afpslai_emv          postgres    false    5    231            �           0    0    system_log_serial    SEQUENCE OWNED BY     Q   ALTER SEQUENCE afpslai_emv.system_log_serial OWNED BY afpslai_emv.system_log.id;
          afpslai_emv          postgres    false    232            �            1259    25091    system_role    TABLE     �   CREATE TABLE afpslai_emv.system_role (
    id integer NOT NULL,
    role character varying(20),
    is_deleted boolean DEFAULT false
);
 $   DROP TABLE afpslai_emv.system_role;
       afpslai_emv         heap    postgres    false    5            �            1259    25095    system_role_serial    SEQUENCE     �   CREATE SEQUENCE afpslai_emv.system_role_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE afpslai_emv.system_role_serial;
       afpslai_emv          postgres    false    233    5            �           0    0    system_role_serial    SEQUENCE OWNED BY     S   ALTER SEQUENCE afpslai_emv.system_role_serial OWNED BY afpslai_emv.system_role.id;
          afpslai_emv          postgres    false    234            �            1259    25097    system_user    TABLE     �  CREATE TABLE afpslai_emv.system_user (
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
       afpslai_emv         heap    postgres    false    5            �            1259    25106    system_user_serial    SEQUENCE     �   CREATE SEQUENCE afpslai_emv.system_user_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE afpslai_emv.system_user_serial;
       afpslai_emv          postgres    false    5    235            �           0    0    system_user_serial    SEQUENCE OWNED BY     S   ALTER SEQUENCE afpslai_emv.system_user_serial OWNED BY afpslai_emv.system_user.id;
          afpslai_emv          postgres    false    236            �           2604    25108 
   address id    DEFAULT     r   ALTER TABLE ONLY afpslai_emv.address ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.address_serial'::regclass);
 >   ALTER TABLE afpslai_emv.address ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    202    201            �           2604    25109    api_request_log id    DEFAULT     �   ALTER TABLE ONLY afpslai_emv.api_request_log ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.api_request_log_serial'::regclass);
 F   ALTER TABLE afpslai_emv.api_request_log ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    204    203            �           2604    25110    associate_type id    DEFAULT     �   ALTER TABLE ONLY afpslai_emv.associate_type ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.associate_type_serial'::regclass);
 E   ALTER TABLE afpslai_emv.associate_type ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    206    205            �           2604    25111 	   branch id    DEFAULT     p   ALTER TABLE ONLY afpslai_emv.branch ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.branch_serial'::regclass);
 =   ALTER TABLE afpslai_emv.branch ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    208    207            �           2604    25112    card id    DEFAULT     l   ALTER TABLE ONLY afpslai_emv.card ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.card_serial'::regclass);
 ;   ALTER TABLE afpslai_emv.card ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    210    209            �           2604    25113    civil_status id    DEFAULT     |   ALTER TABLE ONLY afpslai_emv.civil_status ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.civil_status_serial'::regclass);
 C   ALTER TABLE afpslai_emv.civil_status ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    212    211            �           2604    25114 
   country id    DEFAULT     r   ALTER TABLE ONLY afpslai_emv.country ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.country_serial'::regclass);
 >   ALTER TABLE afpslai_emv.country ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    214    213            �           2604    25115    cps_card_elements id    DEFAULT     �   ALTER TABLE ONLY afpslai_emv.cps_card_elements ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.cps_card_elements_serial'::regclass);
 H   ALTER TABLE afpslai_emv.cps_card_elements ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    216    215            �           2604    25116    dcs_system_setting id    DEFAULT     �   ALTER TABLE ONLY afpslai_emv.dcs_system_setting ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.dcs_system_setting_serial'::regclass);
 I   ALTER TABLE afpslai_emv.dcs_system_setting ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    218    217            �           2604    25117 	   member id    DEFAULT     p   ALTER TABLE ONLY afpslai_emv.member ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.member_serial'::regclass);
 =   ALTER TABLE afpslai_emv.member ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    220    219            �           2604    25118    membership_status id    DEFAULT     �   ALTER TABLE ONLY afpslai_emv.membership_status ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.membership_status_serial'::regclass);
 H   ALTER TABLE afpslai_emv.membership_status ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    222    221            �           2604    25119    membership_type id    DEFAULT     �   ALTER TABLE ONLY afpslai_emv.membership_type ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.membership_type_serial'::regclass);
 F   ALTER TABLE afpslai_emv.membership_type ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    224    223            �           2604    25120    online_registration id    DEFAULT     �   ALTER TABLE ONLY afpslai_emv.online_registration ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.online_registration_serial'::regclass);
 J   ALTER TABLE afpslai_emv.online_registration ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    226    225            �           2604    25121    print_type id    DEFAULT     x   ALTER TABLE ONLY afpslai_emv.print_type ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.print_type_serial'::regclass);
 A   ALTER TABLE afpslai_emv.print_type ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    228    227            �           2604    25122    recard_reason id    DEFAULT     ~   ALTER TABLE ONLY afpslai_emv.recard_reason ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.recard_reason_serial'::regclass);
 D   ALTER TABLE afpslai_emv.recard_reason ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    230    229            �           2604    25123    system_log id    DEFAULT     x   ALTER TABLE ONLY afpslai_emv.system_log ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.system_log_serial'::regclass);
 A   ALTER TABLE afpslai_emv.system_log ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    232    231            �           2604    25124    system_role id    DEFAULT     z   ALTER TABLE ONLY afpslai_emv.system_role ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.system_role_serial'::regclass);
 B   ALTER TABLE afpslai_emv.system_role ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    234    233            �           2604    25125    system_user id    DEFAULT     z   ALTER TABLE ONLY afpslai_emv.system_user ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.system_user_serial'::regclass);
 B   ALTER TABLE afpslai_emv.system_user ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    236    235            a          0    24974    address 
   TABLE DATA           �   COPY afpslai_emv.address (id, member_id, address1, address2, address3, city, province, country_id, zipcode, date_post, time_post, is_cancel) FROM stdin;
    afpslai_emv          postgres    false    201   ��       c          0    24985    api_request_log 
   TABLE DATA           �   COPY afpslai_emv.api_request_log (id, api_owner, api_name, member_id, card_id, request, response, is_success, date_post, time_post) FROM stdin;
    afpslai_emv          postgres    false    203   �       e          0    24996    associate_type 
   TABLE DATA           N   COPY afpslai_emv.associate_type (id, "associateType", is_deleted) FROM stdin;
    afpslai_emv          postgres    false    205   ��       g          0    25002    branch 
   TABLE DATA           I   COPY afpslai_emv.branch (id, "branchName", code, is_deleted) FROM stdin;
    afpslai_emv          postgres    false    207   ��       i          0    25008    card 
   TABLE DATA           u   COPY afpslai_emv.card (id, member_id, "cardNo", "date_CMS", "date_CBS", date_post, time_post, is_cancel) FROM stdin;
    afpslai_emv          postgres    false    209   �       k          0    25016    civil_status 
   TABLE DATA           J   COPY afpslai_emv.civil_status (id, "civilStatus", is_deleted) FROM stdin;
    afpslai_emv          postgres    false    211   
�       m          0    25022    country 
   TABLE DATA           K   COPY afpslai_emv.country (id, "countryName", code, is_deleted) FROM stdin;
    afpslai_emv          postgres    false    213   i�       o          0    25028    cps_card_elements 
   TABLE DATA           �   COPY afpslai_emv.cps_card_elements (id, element, x, y, width, height, font_name, font_size, font_style, element_type, date_post, time_post, last_updated) FROM stdin;
    afpslai_emv          postgres    false    215   7�       q          0    25033    dcs_system_setting 
   TABLE DATA           �   COPY afpslai_emv.dcs_system_setting (id, cif_length, member_type_assoc_allow_yrs, member_type_reg_allow_yrs, cardname_length, system_default_password, last_updated) FROM stdin;
    afpslai_emv          postgres    false    217   �       s          0    25039    member 
   TABLE DATA           �  COPY afpslai_emv.member (id, cif, last_name, first_name, middle_name, suffix, gender, date_birth, civil_status_id, membership_type_id, membership_status_id, membership_date, contact_nos, mobile_nos, emergency_contact_name, emergency_contact_nos, principal_associate_type_id, principal_cif, principal_name, cca_no, user_id, terminal_id, branch_id, online_reference_number, card_name, email, print_type_id, recard_reason_id, date_post, time_post, is_cancel) FROM stdin;
    afpslai_emv          postgres    false    219   V�       u          0    25047    membership_status 
   TABLE DATA           T   COPY afpslai_emv.membership_status (id, "membershipStatus", is_deleted) FROM stdin;
    afpslai_emv          postgres    false    221   ӽ       w          0    25053    membership_type 
   TABLE DATA           P   COPY afpslai_emv.membership_type (id, "membershipType", is_deleted) FROM stdin;
    afpslai_emv          postgres    false    223   �       y          0    25059    online_registration 
   TABLE DATA           
  COPY afpslai_emv.online_registration (id, cif, last_name, first_name, middle_name, suffix, gender, date_birth, mobile_nos, email, cca_no, reference_number, qr_code, branch, date_schedule, time_schedule, date_captured, reference_id, date_post, time_post) FROM stdin;
    afpslai_emv          postgres    false    225   p�       {          0    25069 
   print_type 
   TABLE DATA           F   COPY afpslai_emv.print_type (id, "printType", is_deleted) FROM stdin;
    afpslai_emv          postgres    false    227   ۿ       }          0    25075    recard_reason 
   TABLE DATA           L   COPY afpslai_emv.recard_reason (id, "recardReason", is_deleted) FROM stdin;
    afpslai_emv          postgres    false    229   (�                 0    25081 
   system_log 
   TABLE DATA           h   COPY afpslai_emv.system_log (id, system, log_desc, log_type, user_id, date_post, time_post) FROM stdin;
    afpslai_emv          postgres    false    231   ��       �          0    25091    system_role 
   TABLE DATA           @   COPY afpslai_emv.system_role (id, role, is_deleted) FROM stdin;
    afpslai_emv          postgres    false    233   y�       �          0    25097    system_user 
   TABLE DATA           �   COPY afpslai_emv.system_user (id, user_name, user_pass, last_name, first_name, middle_name, suffix, role_id, status, is_deleted, date_post, time_post, is_default_pass) FROM stdin;
    afpslai_emv          postgres    false    235   ��       �           0    0    address_serial    SEQUENCE SET     B   SELECT pg_catalog.setval('afpslai_emv.address_serial', 12, true);
          afpslai_emv          postgres    false    202            �           0    0    api_request_log_serial    SEQUENCE SET     J   SELECT pg_catalog.setval('afpslai_emv.api_request_log_serial', 32, true);
          afpslai_emv          postgres    false    204            �           0    0    associate_type_serial    SEQUENCE SET     H   SELECT pg_catalog.setval('afpslai_emv.associate_type_serial', 5, true);
          afpslai_emv          postgres    false    206            �           0    0    branch_serial    SEQUENCE SET     A   SELECT pg_catalog.setval('afpslai_emv.branch_serial', 23, true);
          afpslai_emv          postgres    false    208            �           0    0    card_serial    SEQUENCE SET     ?   SELECT pg_catalog.setval('afpslai_emv.card_serial', 31, true);
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
          afpslai_emv          postgres    false    230            �           0    0    system_log_serial    SEQUENCE SET     F   SELECT pg_catalog.setval('afpslai_emv.system_log_serial', 434, true);
          afpslai_emv          postgres    false    232            �           0    0    system_role_serial    SEQUENCE SET     E   SELECT pg_catalog.setval('afpslai_emv.system_role_serial', 3, true);
          afpslai_emv          postgres    false    234            �           0    0    system_user_serial    SEQUENCE SET     F   SELECT pg_catalog.setval('afpslai_emv.system_user_serial', 12, true);
          afpslai_emv          postgres    false    236            �           2606    25127    address address_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY afpslai_emv.address
    ADD CONSTRAINT address_pkey PRIMARY KEY (id);
 C   ALTER TABLE ONLY afpslai_emv.address DROP CONSTRAINT address_pkey;
       afpslai_emv            postgres    false    201            �           2606    25129 $   api_request_log api_request_log_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY afpslai_emv.api_request_log
    ADD CONSTRAINT api_request_log_pkey PRIMARY KEY (id);
 S   ALTER TABLE ONLY afpslai_emv.api_request_log DROP CONSTRAINT api_request_log_pkey;
       afpslai_emv            postgres    false    203            �           2606    25131 "   associate_type associate_type_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY afpslai_emv.associate_type
    ADD CONSTRAINT associate_type_pkey PRIMARY KEY (id);
 Q   ALTER TABLE ONLY afpslai_emv.associate_type DROP CONSTRAINT associate_type_pkey;
       afpslai_emv            postgres    false    205            �           2606    25133    branch branch_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY afpslai_emv.branch
    ADD CONSTRAINT branch_pkey PRIMARY KEY (id);
 A   ALTER TABLE ONLY afpslai_emv.branch DROP CONSTRAINT branch_pkey;
       afpslai_emv            postgres    false    207            �           2606    25135    card card_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY afpslai_emv.card
    ADD CONSTRAINT card_pkey PRIMARY KEY (id);
 =   ALTER TABLE ONLY afpslai_emv.card DROP CONSTRAINT card_pkey;
       afpslai_emv            postgres    false    209            �           2606    25137    civil_status civil_status_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY afpslai_emv.civil_status
    ADD CONSTRAINT civil_status_pkey PRIMARY KEY (id);
 M   ALTER TABLE ONLY afpslai_emv.civil_status DROP CONSTRAINT civil_status_pkey;
       afpslai_emv            postgres    false    211            �           2606    25139    country country_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY afpslai_emv.country
    ADD CONSTRAINT country_pkey PRIMARY KEY (id);
 C   ALTER TABLE ONLY afpslai_emv.country DROP CONSTRAINT country_pkey;
       afpslai_emv            postgres    false    213            �           2606    25141 (   cps_card_elements cps_card_elements_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY afpslai_emv.cps_card_elements
    ADD CONSTRAINT cps_card_elements_pkey PRIMARY KEY (id);
 W   ALTER TABLE ONLY afpslai_emv.cps_card_elements DROP CONSTRAINT cps_card_elements_pkey;
       afpslai_emv            postgres    false    215            �           2606    25143 *   dcs_system_setting dcs_system_setting_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY afpslai_emv.dcs_system_setting
    ADD CONSTRAINT dcs_system_setting_pkey PRIMARY KEY (id);
 Y   ALTER TABLE ONLY afpslai_emv.dcs_system_setting DROP CONSTRAINT dcs_system_setting_pkey;
       afpslai_emv            postgres    false    217            �           2606    25145    member member_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY afpslai_emv.member
    ADD CONSTRAINT member_pkey PRIMARY KEY (id);
 A   ALTER TABLE ONLY afpslai_emv.member DROP CONSTRAINT member_pkey;
       afpslai_emv            postgres    false    219            �           2606    25147 (   membership_status membership_status_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY afpslai_emv.membership_status
    ADD CONSTRAINT membership_status_pkey PRIMARY KEY (id);
 W   ALTER TABLE ONLY afpslai_emv.membership_status DROP CONSTRAINT membership_status_pkey;
       afpslai_emv            postgres    false    221            �           2606    25149 $   membership_type membership_type_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY afpslai_emv.membership_type
    ADD CONSTRAINT membership_type_pkey PRIMARY KEY (id);
 S   ALTER TABLE ONLY afpslai_emv.membership_type DROP CONSTRAINT membership_type_pkey;
       afpslai_emv            postgres    false    223            �           2606    25151 ,   online_registration online_registration_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY afpslai_emv.online_registration
    ADD CONSTRAINT online_registration_pkey PRIMARY KEY (id);
 [   ALTER TABLE ONLY afpslai_emv.online_registration DROP CONSTRAINT online_registration_pkey;
       afpslai_emv            postgres    false    225            �           2606    25153    print_type print_type_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY afpslai_emv.print_type
    ADD CONSTRAINT print_type_pkey PRIMARY KEY (id);
 I   ALTER TABLE ONLY afpslai_emv.print_type DROP CONSTRAINT print_type_pkey;
       afpslai_emv            postgres    false    227            �           2606    25155     recard_reason recard_reason_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY afpslai_emv.recard_reason
    ADD CONSTRAINT recard_reason_pkey PRIMARY KEY (id);
 O   ALTER TABLE ONLY afpslai_emv.recard_reason DROP CONSTRAINT recard_reason_pkey;
       afpslai_emv            postgres    false    229            �           2606    25157    system_log system_log_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY afpslai_emv.system_log
    ADD CONSTRAINT system_log_pkey PRIMARY KEY (id);
 I   ALTER TABLE ONLY afpslai_emv.system_log DROP CONSTRAINT system_log_pkey;
       afpslai_emv            postgres    false    231            �           2606    25159    system_role system_role_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY afpslai_emv.system_role
    ADD CONSTRAINT system_role_pkey PRIMARY KEY (id);
 K   ALTER TABLE ONLY afpslai_emv.system_role DROP CONSTRAINT system_role_pkey;
       afpslai_emv            postgres    false    233            �           2606    25161    system_user system_user_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY afpslai_emv.system_user
    ADD CONSTRAINT system_user_pkey PRIMARY KEY (id);
 K   ALTER TABLE ONLY afpslai_emv.system_user DROP CONSTRAINT system_user_pkey;
       afpslai_emv            postgres    false    235            a   S  x�m��j�0���_"tgFϝI ��n��Z
���?�R,�yx%��ǚ+�@��?��JY?Ư�H��D�D ��2v6�	1��jMJ��y`�@#P�����J�eج�h�� $�����swk<R�lbШR�J��}����;�g�,ָ���Gn!B#����e��[%�J�Ζ3�8�jQ<�VE�}���]	A���i����
���a����Ĩ:��j�؜^+{��`5M�F!QjB/��;��NF�$����kL/���*A�5�̤�2P�G{��M*3�����N����%�J�%�T:�O��?�ԥ�|S�2ZGӔm4����k�a����      c   ~  x�ݙ�S�Fǟ�����r{{?�FL��:��"lQkƖ�d�v��wϦ�	gI�8������~אL�����|>zs~����r���k���������&׉^	�J�D&E�4�ޢV��Hic��A&=��)v늅	�U��+cљTm����!5f(�r`�I���4\[E_����T8zl&��ImLj��"|�#��	�,w����VCH�~��+��H}2Y,�I�Lߔ�tT^���$��}�\V�-��UѼ�e��tw.\�>�g�k���_�:j_>�����F ��%�������G��V�U�,�*���zt��We]��Eq�U�W�����/ލ�ߟ|x��\t��f� �Z�ׁ	�L�Ev�8
W��\T�ռ`��0��آ�N��e�|.�ߔ��{%TB��q+$ZH	���S��_��̄�@��S��/@XA� ��&�i��������)��3�v�C%�US�Q�jO���6�O�����
h}b����z׻�;�\����	Y�4�&l� I�p#��T�����<��ٍ'�	�q§�#@}G��G@�V�D���Q�q������6�p���������M;sp�h�y�<(�U�����Ӌ�1;y�����.~Q��~�I ɽQ@�l���M&��=�i;JX����)a���w%L����=�'��ޱ:��*��u[5���	:}���)Qg
�Q�=|��<O�;,P�hߟ��lD�b�n���>��r�CZҞ��aP�2�s}*r�S�;�bEbS�a9���qa�oyC���d� �CJ��¤2�l\���t�@P�u�V��:+WZS��2�e��a��m`��u��͛2g���`�ׂ�fy�N��\n��L��Rh�qV.Y��X>�^:�®$˫z5�,Ln��zQ4�4�D�LӖ����@��R�I���iP�Zް�b��Qs��w`��s��ȅ[�Gd�.$5L ��wY&׿���wq������Ӣi�g���jU��{K��;qF�B�ie6�߸fD���U�y�0Х���Ҧ2��1�Ҹ���Q��!E����p�Z 1�y4OwĐ�G�e�h�O��Ulm�ɏf���z��ݟ_�G\�O0���>�G�ds���Ps���c>�$r�,{�av��{ɾ.Ƴa��1C8�p*N�s*c��z��n�-�rO�k`�� �H�8���ǟ�ڙ��=;��Ώ�ߝ��
BF��?e3�0!�V�d�y������t<������D�}v��P�,� UC;�	���c�2$":V�%�k�������s%Bz.,yT�ḅ�DD}~,]N�GL���?O"t��{��cV�4'FPDsb��9�Сh��>Gɐ*�6��X3�6W�I����i�/�a�6      e   F   x�3�s�WH�+���K-�L�2�tNLI-�9]RR�RR�@<Β���.S0#3/�ȉ���� ײ       g   �   x�%�Mn� ��/��	�!?��P���(!�f�m{����!޳���䏐(�R������ 9T9����n�3a��{BNU�xP�/J�s��23T�)����Հl����4�a]�bc�Dt�^� �`B ��K�	��́��ĈB6f�˗�,C1��]�/��̩	��H�iܤ/��AOOJ����e��`�Oby�4�Kn���Jޡ[Nf�\�P�N�s��.P7��0����l�����uU���[�u�$(S�      i   �  x����q� ��qi ��%(b+�� ��Jv6��3�3~1�	��#l֌c�0 :io�# |�xi�Su�uT#��~p�N'Ĥ��0���>\9k�i��P��?����ʍvB�����'c���<z�2��rq�?B/0��$���$�R�إhr>y�<x}�	*~f���ڿ��_N�p2�- �k3�@��8�Y�8�d��8�ʭ�/N&P)�ꢕ�=�8W���ec�~�˦����s��SGh�w���l�^�[�tV�,3�y��m��w�M��6�� 	Q�9���z;iS�Y�S�S!�!W7_d���,�KzCni�#K]���.�T���9a����+{����`�YY�E��I�PFTeQv��� ��S#�O���c׻FDvE���X���l]�X�#�n��
�0+�8��Z'�'(��`)p���-(�E�6(��	���f(]��&s�qHq��w���&w՚Q4��'��q0�-brY|��q���N�      k   O   x�3��L�/OM�L�2�N-H,J,�L8]2���S��̼��T Ӑ�7��(,l��d�s��� 1z\\\ .e      m   �  x�]WM��H=��nkG�l �u�4�z�{)��TLIj����2�;��D>�Gf��|�>�_/WU��Q�1}�Ч�8R&3������C
K�'Uy�*-�<<��:[�`o�ǰ/�`�wM`6��*OUgo�ܱ=�=�M)t������Z|إ������M�¶n�*x�!g��R5��g(��&οiwT���16��Uå�*UM�p��� 8e*��6L T�B�u}�"��ā���m;F��B�@�@���Ŵ%͢���i�b�}خ�d�"�1 P��������̖zD3[�W�4�ʁ���H�$v�ݛ��WN�lő��m�-'���z3B���igS_�'�.��Vu��jZ=	�k+m��] ���(N���>D�^p���j�#m�36.Vi�ʣ=c�<�w���ڊ�l�ԙWp��	����;k�gO�M��K���y����8��_;����=���ͯ�L�%>�a��.ٽa�M�i�䛇��G�VR=�����=߲�C�o��?��ǳ_���-���Х=9հ'[.���o�7���WD�5�B�����ws��m�w������V��Bs7�:�|��d�~���ߘ��/ۈ�M���eH�a4���J�^h!�h��m�Z<r�FcZ��T��"�ڟ������h4�HՍ�7Ȝ�Q~�Lt��O�O�tGE�U�(�3��=�.�[CQ��:�)*�k��n���q���[�X�����TZQ}�O��g ڱ��!Euc��D9W�xDQs5��Ȟ�d<�����ꑭ	�� 'a<�����)�q@�:��q�ɝ����J��'>�ڢ��-~�I�k� ���W.�X�8R���_b2b[J!�4Sܪ�⃜?a��%: 9aJ?q�'�����Եj)�q��=�w�������T�Z��kڧ��έC3\n��逑���Z��AO��l+�;-�fD�����r.��VW�J�`:�՜[�׶��70_5�B7�f�L���V��}�B�i%/���?t��z�s�w}Z�N�>p���U�i�糂!=��3o卂�N�8�`L�֝����	�՛z��:�C����ֺ�+ZKu�-�������z�Ŏ�Y�O��֢^���r�ѕ�r���i�~G�i}�K�>���r�.�E�zJZNn��l��'�HZoD��`���j&�Hm���$q�M(1G�d��=e��v(v ���J��Y"�P��4�V�dߩ�OI�C����B��?�)U'}�2K������r��8X���Df ��a"���i(@~�?�J�xh�NIVbl6ؑHZ���j���t/���@�F�
�|(p����4�H���9�����}������~j<�'z�e,�:��>��*���4{����7�D���q�g�
/�kHvj+�7n;�&`ZbOc�D:�ҜxQ7Z@�S��-��Vcg7� J�2���b[�s��*�Q�ᆴ��P��oi�Q�獾��6Q&�6��u
��� ѿ�OqE�W�BG��F����:�<��P���)|��wM�a���*;�lv0��Ψ���N��@ �[4Lڊ���L�t�jJeA�3��R�� Ѱ�.h{���P�ݮT�$�,g�Q�=L�>d9�ܾcu�Ĕ2��eQg�ah0��Ք-%`�of%ٶ| �i/�o�E	�Z����-;t�>���+g�ΖB��V�	
�kkp��޹hP�n��0�A$vI���9���[���e(��WSS�������=qIw���'��/�㡤� 	�I�Ї:ws��
�õ�`e)�)·<��z{[j9*�Ǔ�i���5ht�ڳ�B���kuJ��Js��m���[TI��.�˃A�s}?]��2�����E�D��)� �D�^L�{4�@m����I85gH���a9�<�Y��9��9��+7�yǇ�K��Ai'����>|����      o   �   x����J�P@�s��H�������(X���ۀI%T���*i��f�����t���@���}:�8��n^1U�+2��h4J�KQ��Tlw͌q9{b�᭛6����@s^����rĀ�9M��_�x.�K��E$'����=L� oHd_�fwM
c;t`2�W��Ҫ��X<����]����y��A��uJ��'c�      q   4   x�3�44�42�44�42�Lt+�q�L�-32 ��]s R00�#�=... �
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
)�%��9��@aΐ�� Ô����K�c���� �	            x��]Ms$��=�~E�|R��'#|�z�ǽH�m��"[n�W�y����Du��!�YE),;<�L���̗ �������ͧ�ϻ�_~��.~���a��"^H��C�?�~�e.��g�M�N�B�]�2�4�I�r�2�e�s˭�4�r�2�Yr��N����'�\�Lm��� S�'�2�YK�R��J�,���V�	�b�����BN/C�U��8ŰB0]�>�{�S���|���3��l���9рݘiQ��J�O���g��s�b�j�Lq��`U]����"&�4e-St��(�ۜ����qg�7�\��ئ�B��*W�J*���3��cH1i�$�Ď�9�RC��el�"Nb��m�@��$.�,�8U2���]�Yӥ�X,+̢9C�X��Ȏ���9�1�q��9V� �\�k��I�ȡ v$ͭ�������=������~��p��������ӗ��_o�7��x&�s�;��iF�>��'��	���9D��<�
0���ݪԤ�� \��7 �� S��	Z �6�L�N�9��XT7���� ��ԄE�Z!
*&�%u#)��E�Kӆ�� �%��d8�>%7j"=B&j~oJn�D3z�ê1˔ܨ�ū��B����5J�j���F��FM����3�Sr�f��2KԀݨ1�j�3&��F�`�8��Fn�"�K!��L�	���͐�G���6�ಕ&�\�Y{���<HϷ�����v����E#w��7�0 �!Y��^����������������n����N��.��Ò	&��8�TBIS�a	��D�#,WP�����������,��.�1�'G]I�f�@y���s(vx��}�HeNy`�������_�T�N5R�R�X��ET#���Q�0�	�g� H�<���jN�ſ�
`P����T�̩�����9������$
Y���`g�Zhm%���`�8�9�)`Q}&��y�7��R�R����QI�a�k�LN���*�����?\�~���{�?�>��������է��������Goh���z�Am���*8iHҦ����m|��v�>oi�9�T
�L�g����]�����]�NrWKҎ��a�bP�^2}/�(����M��+�B�3��������r}{��?��x��$��B�8�����3���i���������W������w�_�G��2���z�y�H�j�M�B

Ib�X�8���G\N����߿n�����=�}ۿ�� a��o�`���� �'�O ߂�u7WjkL����X�k�fh���9�=�viI�����4fY�74e���vj^9�U�V8m�ڣ���ۯg��)`���j ���	T�ll}.��Uz�ư�'�g�e0WI3iC�U�0�:$1}�gD��E�{D��}��u��b�3�tCMA��`��^�3�C��.O}F���p�����he~ ����Sѳ���2ߞ*�w�&�i���"�e1�����o�q��7���4�C����!)�(0�%�4El�����O�O���~��|�ybϵ�0&ΔڱJ���?���3	�x�n��:�)(S��O�p��2t�u�03����pqL��y$�|�$��ug�)d�bD;��q_���h�DSGD�9��ɠ�g���e�R�.��ѳ'�;e����0�WM��t#L�=��/2jod��8��cya?���i;�Zz`�"|�9}�=�rz�VZ�ԇM'h\i������(.Վ��gKW��Kan3�,�����A�
�.���n.��"��:�ҟ��?IsP{%5�X��GVL$�+j\ѥD�E闱Έ��	�"O ��H���ML��ͮI
�w�p\��d5㻁�a��n��L��:2�@�r�ƿ/���U{��wW��cT�Ӆ�/�٬�@Af�R��g7�_-_��+q)�l�lt�ߕ�z+8'΢�A�5��S�T]6O�1��*��qVb�Ro�{�ɝ����c��%Ƿ
?5�0>o7��p�C�wF�Np��r'���:����%er)�O��f?��ɴS�������|t��Nrmf�Y�9
���A����r��CWe�A2�`���6��i���-Z�C/���.9�I�+��91}�n�W2	^�|�����Ii���qt�g��n}wt�����ٓ2?�J�F($MK�i�ƿ�9�Kg����d���0��@��i���_���[,����n5�f�j�!�Y�����O?������f%���̀f�5NF�*e6�l����+�oF�ޕ���<h`r�4awQ�%r�d�m�%��\Ih*�X
� TQ��[�%�0x"��cH�e���*I_2lH���ra13:kOC�y!N����RE�:yP�`�0r��!�`��c��Ǥ�w��3Q+_��1����%�/*3G�mҺyd��}��Ԑ�3B����X�S?��|jH�-?{�ؚHw��L�/wW��?x�Υ���
dov"gm�P,����6�O����S�sf.3�Z�*>�W��eAĸLO��s����(G���>.�)��% �8�]���>�q�[tu�}�dKT��y�1T��,��pU٧w[52�U��Y�y�-
��8Ev^V�=�`�t,�VX�c��͘�(����ד���s�mQ�i���kn4Z;td:�	�N���N�R!T�L�ɩ�y���6fB|�����}��Y�8ts~}2ɯ�����Gy0E3͙[�w��j��TsC4DЊi������OKo��=۾W�kو�5�O�l�����-Z�$�R?����(F�X)�=x7ī�d�lu����m�ȧ������.)�\t}{s��va�hk���b��n��B�ۺ
b�N]�����Kkz?�j��V��w�?�o��p^�Q�TBG�!�	�����XJ���u�����Vcj��Ɔ�p�ok�X�A�vಔE�6	�-"���]��wLWN3Tm�禥dI�C�V{nZj�G�jw�C�V?V��I��ݎ�)Ih��1W��%���c#�!Dq���[,�x$�_��L�]̄�L^�Ά?v���O�
�B��׶�%i�:�'�@E�+$�)ήrW��Q�n�:���%�a�Y6�fX��G��Q��ۥ%aTyl{	�7)�����֑8�g>t<��<OlT�*��T�I,�lW��c'i͒1��$r����bc�~� (�V<�j�&ު/��8�N!U�si~���錠�>Ӕ�;-Q���I�g���M	��U���+$�6��r�k�Fߘ`�<ߩ^����]	������eH�/F�-���Ҩ]g�NC�ō\��U�cg�,!�H�$�]@�5�ʻrnYwT(��>I7�t�fW1��s�́�'5�R����<GI�9��b|�\�9�LX[0a�Pr�h4ڤ��6:�Ӎ�ċ�Q��qL7��7�\�(�t[�l�!aN�ɞ��e��Q�o�!v4ڦ��lS�Fo�a�f	ߜ���e)�Ry�s+�?�Up���y�?��S`�\�z���g������Cc6�j��FlS��1/U����R��.o���be
��%��X����(��I2<4!y�[�x�äK��&)��x�Ƣ\�e+��X����h<j��p��QY�ƃ�̒�Q��Cc1>�*s�VLO%fH��ӪF�^(�\�Lj�]�\y�D�Ͽ�Jg}�ݚQ�8�����0b$�)>�:$��N	`��LOqeH�4H
�s�!�>�Vx��g���������m�!7��s��1+�0en�w<�uK>㠇}�5uF�u{>�D[��T��|�Q��zTޘ��!�q�&֨�j�'4N����%����jJ�q`X;yx�E&	k����� Y������|��e��Ƀ���~�����z�>�6Z[�dI��yi>�i��ڄM1�����I��#;�|�Y7��^`��e�a)l9>'�*�D���������-��&Kd��9��s�4�PW�-p>��\j[�;r� ��}�r��$�t,�R�غܦ+�� a�\�a�MMYR�K]d�r���^�� �  >i��:�
��^�� M�mfiV|>��<�a1�E�>�;�'�j,���rƉ����n�f�h�]�$�f=�<j������6���D,�Fd\_��M���=@��l���&kb�-�������z�&醣��+q$`U��9�C;^f$�rN�@t2����k����!h���9�,@�(ڋT�r�k#ʈA��X�@��=jm;��N�.aKGf�TS'�}H��� �\���B�d�[k0%��]�j�UDÝ���"�Mk��&�BCr��JO��R�C��2�a�� ��0t�䵤h>G}��E��[ḡ���丧X���RlX�-�j⮉g)=l����b7@��#V{�S]`l�ץ@��]��q�.Ŋ��Q����D��+\<J���=�����"iW��D�b�W�X$��L/I�c����)�:��@�.I�04�0i���"i)��b����M�߱�7��3�V�&�V�*�ǎ+�6i�^͞���������է-�%7�X�a93�ʮ��fVT ��,�&7�,�¥-������"�dC"���,��8(պ �@��2l!��L��,�J*�Z-p��,��ͧˬ��{pO| ��a{n����!i��Fo�M�> ��0�6�-��>ɒ����2��a碇��3LY�͛��Sm|���{6�����������S5�!� ���T+2�O->@%39Q{��ȃdR6�;C��!ɷ��(�g8���]"�x��p���r,h��?->��6��� ����ijo/U{�#5I�(I�/����L���dg���*W�g�Lr<�yɂ��ahHƧj=ؐ�a�$�R�S�������d���1d�A���{+9��b�"Y��=">�Wl��u��@J��:�I%χ���-��>�8^�au�rF�n��5�����m������50=�u+�?ѕ��<�<�DM��������(&l��Ԁ�4�ˌ|��*/����0$y��W/]c�R���T�AHrL�E��kr�j�1]Mv	������0$�F(|T���RiX䣚Ć�H���� ?jK���2gն�TW��w�t�=��^O4�K�a�O�����ǃd�9�uL��!i/UHF؉��>8�xW&|���v�u��7�*��;�������
O�N��]$ź���
������.0R��m�8��8�q�G�R��3p��X�%-���G�DU- �؎����Vc�T#������C �JK�`�j#J�m:�R*x�j[��GZ��X��W�RPض��9������\\�qj�˛#_�d�
��-*N���0$�u��ؙ�M�����nJ�:A�$_]#�t��E��)c����[rx'6v�%_�a��̓���E�U�$ӏ2�h�[$_�A��{�c`�*�
b�~5&{�/r���E�����$%����6������S]D]�����S5�����.��j)U�}��_g�͢�tׇL�;Cr��D*���"i%��-$}�,��0�3�œ�����2�/E��.e�`�����.����~�3���?��������̡��h+�{���]h��W������e^�
����vqn*��(���ѱP�����Y���*-����_���L�����~8���4�"���Yf$���� :L���C_�>��K߿:���(��a)�ʪ�� ����"u��y������-      �   2   x�3�tqVpL����L�2�,I-.���2���%���b���� ,�e      �   �  x�}V�r��}��b~`\����-n.��D���T�b�; ��8N����!�&i�3U1N��b��.뢭v����U�D;�.H��v�}����Ij�S����4���U��T��M�_�%f�Lt�S4o�d�v~ڤ��N�#7�N�&�pVjV2a�2M��Ų��^�Ⱦ��Kj��%S/)/J�F��<���p�!�ᜦgJ���?��!|\�b�1n�c��5~�'����3dOД87���1�^��O�MQ�ż�QRn����ל�,�S?�C���!�y��j�`*Liѻ Q������܊9d�F�i��<��f��E���d=%�7o�WVLK����^в����Yy�R�/��������jg�����'����9��db˺�����j�I@��IQ��cSde�@���>�Y�v�ǟ��Y���OA�������ɒ�N@��l�ICU+��b�Jҳ�TÀ��Fڱ��SYt��Bǜ��,��baDT�* ��N겦� P��nk�@��3Bf6� �D�X#�����D��;3��*u����d�_��OX�-�R����k'Sv�d�;�j+��@�+/:��M��h���Z"���Ig��=ߊ��dpN���X��o�+���3=#�ϋ��H �3˙Y�d�{P�=�ٿ~�o��yM����I�b��5�I�j\�@(J.���� �x�4͒c�� a�
}05L�KS�A3�[߂���<�d��8\���,9�d���@)>Q�Z���IK���������=3�{�{
���@�B K�s���*����oH��
�=C�	(�ģhK�H'���E��K�Eu9~��v 6�f��巄��f>�=H����:Ŕ/j���WD�Lv����1p�]�6���5C734�خ������'t�d�н[���Ƿ|WR���8�Zfߕo��:�����)r����Eu�~ق���ϨIy}��E�<р�!��^�s8#O{��R'�C�kdTd)R�BC�b^6� h��受k8R`�mML�E�
���j����b�b�W�UoX�w�[����5��G+1�3X�m�j��y�F,����at�����m��!�-
�d=L�� `:�i�۬��S�Bj$�ғ$x+�O����q��#��c��H��w ��fą�A77@���	�x yH£�urfm~�8y��Jur_\�x݅�fl�v�u�=A��7h���45����%�!m�D��0t`�Ǫ�su`3�F�@p�Cp��&a���d�� x��v��r��t�X�k�1���4+h���jCe��ĕ�/p����߆/�"�'<l�b��e�A����5��ϔ�z�5F��@�y�g�����T�B���K���5TD�t�2�45�5�D�c��a����ׂ�5�9#Ό�{�:���/�,~/����"o�6�����gѧ�#��k��xڵi��O,��D`_z_-�/`�y`��a�Q��6�E3��ȡ��F9Ff41]hɕ��%�b�z�Є���y����`";� ��]l,|��C��R���o�0��vU�$li���V5��@���m��~�/��/E��퀽 �����GPz��!x�{MI{����V!J�{�M���}����T@�CX����$�<Wl0�Yrg�Ђ���菿&?~�����(     