PGDMP          8                y            afpslai_emv    13.3    13.3 ?    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    24576    afpslai_emv    DATABASE     o   CREATE DATABASE afpslai_emv WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE afpslai_emv;
                postgres    false                        2615    33750    afpslai_emv    SCHEMA        CREATE SCHEMA afpslai_emv;
    DROP SCHEMA afpslai_emv;
                postgres    false            ?            1259    33751    address    TABLE     ?  CREATE TABLE afpslai_emv.address (
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
       afpslai_emv         heap    postgres    false    6            ?            1259    33760    address_serial    SEQUENCE     ?   CREATE SEQUENCE afpslai_emv.address_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE afpslai_emv.address_serial;
       afpslai_emv          postgres    false    6    201            ?           0    0    address_serial    SEQUENCE OWNED BY     K   ALTER SEQUENCE afpslai_emv.address_serial OWNED BY afpslai_emv.address.id;
          afpslai_emv          postgres    false    202            ?            1259    33762    api_request_log    TABLE     ?  CREATE TABLE afpslai_emv.api_request_log (
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
       afpslai_emv         heap    postgres    false    6            ?            1259    33771    api_request_log_serial    SEQUENCE     ?   CREATE SEQUENCE afpslai_emv.api_request_log_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE afpslai_emv.api_request_log_serial;
       afpslai_emv          postgres    false    6    203            ?           0    0    api_request_log_serial    SEQUENCE OWNED BY     [   ALTER SEQUENCE afpslai_emv.api_request_log_serial OWNED BY afpslai_emv.api_request_log.id;
          afpslai_emv          postgres    false    204            ?            1259    33773    associate_type    TABLE     ?   CREATE TABLE afpslai_emv.associate_type (
    id integer NOT NULL,
    "associateType" character varying(20),
    is_deleted boolean DEFAULT false
);
 '   DROP TABLE afpslai_emv.associate_type;
       afpslai_emv         heap    postgres    false    6            ?            1259    33777    associate_type_serial    SEQUENCE     ?   CREATE SEQUENCE afpslai_emv.associate_type_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE afpslai_emv.associate_type_serial;
       afpslai_emv          postgres    false    6    205            ?           0    0    associate_type_serial    SEQUENCE OWNED BY     Y   ALTER SEQUENCE afpslai_emv.associate_type_serial OWNED BY afpslai_emv.associate_type.id;
          afpslai_emv          postgres    false    206            ?            1259    33779    branch    TABLE     ?   CREATE TABLE afpslai_emv.branch (
    id integer NOT NULL,
    "branchName" character varying(100),
    code character varying(10),
    is_deleted boolean DEFAULT false
);
    DROP TABLE afpslai_emv.branch;
       afpslai_emv         heap    postgres    false    6            ?            1259    33783    branch_serial    SEQUENCE     ?   CREATE SEQUENCE afpslai_emv.branch_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE afpslai_emv.branch_serial;
       afpslai_emv          postgres    false    207    6            ?           0    0    branch_serial    SEQUENCE OWNED BY     I   ALTER SEQUENCE afpslai_emv.branch_serial OWNED BY afpslai_emv.branch.id;
          afpslai_emv          postgres    false    208            ?            1259    33785    card    TABLE     W  CREATE TABLE afpslai_emv.card (
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
       afpslai_emv         heap    postgres    false    6            ?            1259    33791    card_serial    SEQUENCE     ?   CREATE SEQUENCE afpslai_emv.card_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE afpslai_emv.card_serial;
       afpslai_emv          postgres    false    209    6            ?           0    0    card_serial    SEQUENCE OWNED BY     E   ALTER SEQUENCE afpslai_emv.card_serial OWNED BY afpslai_emv.card.id;
          afpslai_emv          postgres    false    210            ?            1259    33793    civil_status    TABLE     ?   CREATE TABLE afpslai_emv.civil_status (
    id integer NOT NULL,
    "civilStatus" character varying(20),
    is_deleted boolean DEFAULT false
);
 %   DROP TABLE afpslai_emv.civil_status;
       afpslai_emv         heap    postgres    false    6            ?            1259    33797    civil_status_serial    SEQUENCE     ?   CREATE SEQUENCE afpslai_emv.civil_status_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE afpslai_emv.civil_status_serial;
       afpslai_emv          postgres    false    211    6            ?           0    0    civil_status_serial    SEQUENCE OWNED BY     U   ALTER SEQUENCE afpslai_emv.civil_status_serial OWNED BY afpslai_emv.civil_status.id;
          afpslai_emv          postgres    false    212            ?            1259    33799    country    TABLE     ?   CREATE TABLE afpslai_emv.country (
    id integer NOT NULL,
    "countryName" character varying(100),
    code character varying(10),
    is_deleted boolean DEFAULT false
);
     DROP TABLE afpslai_emv.country;
       afpslai_emv         heap    postgres    false    6            ?            1259    33803    country_serial    SEQUENCE     ?   CREATE SEQUENCE afpslai_emv.country_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE afpslai_emv.country_serial;
       afpslai_emv          postgres    false    213    6            ?           0    0    country_serial    SEQUENCE OWNED BY     K   ALTER SEQUENCE afpslai_emv.country_serial OWNED BY afpslai_emv.country.id;
          afpslai_emv          postgres    false    214            ?            1259    33805    cps_card_elements    TABLE     ?  CREATE TABLE afpslai_emv.cps_card_elements (
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
       afpslai_emv         heap    postgres    false    6            ?            1259    33808    cps_card_elements_serial    SEQUENCE     ?   CREATE SEQUENCE afpslai_emv.cps_card_elements_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE afpslai_emv.cps_card_elements_serial;
       afpslai_emv          postgres    false    6    215            ?           0    0    cps_card_elements_serial    SEQUENCE OWNED BY     _   ALTER SEQUENCE afpslai_emv.cps_card_elements_serial OWNED BY afpslai_emv.cps_card_elements.id;
          afpslai_emv          postgres    false    216            ?            1259    33810    dcs_system_setting    TABLE     E  CREATE TABLE afpslai_emv.dcs_system_setting (
    id integer NOT NULL,
    cif_length integer,
    member_type_assoc_allow_yrs integer,
    member_type_reg_allow_yrs integer,
    cardname_length integer,
    system_default_password character varying(100),
    last_updated timestamp without time zone DEFAULT CURRENT_DATE
);
 +   DROP TABLE afpslai_emv.dcs_system_setting;
       afpslai_emv         heap    postgres    false    6            ?            1259    33814    dcs_system_setting_serial    SEQUENCE     ?   CREATE SEQUENCE afpslai_emv.dcs_system_setting_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE afpslai_emv.dcs_system_setting_serial;
       afpslai_emv          postgres    false    217    6            ?           0    0    dcs_system_setting_serial    SEQUENCE OWNED BY     a   ALTER SEQUENCE afpslai_emv.dcs_system_setting_serial OWNED BY afpslai_emv.dcs_system_setting.id;
          afpslai_emv          postgres    false    218            ?            1259    33816    member    TABLE     G  CREATE TABLE afpslai_emv.member (
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
       afpslai_emv         heap    postgres    false    6            ?            1259    33822    member_serial    SEQUENCE     ?   CREATE SEQUENCE afpslai_emv.member_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE afpslai_emv.member_serial;
       afpslai_emv          postgres    false    6    219            ?           0    0    member_serial    SEQUENCE OWNED BY     I   ALTER SEQUENCE afpslai_emv.member_serial OWNED BY afpslai_emv.member.id;
          afpslai_emv          postgres    false    220            ?            1259    33824    membership_status    TABLE     ?   CREATE TABLE afpslai_emv.membership_status (
    id integer NOT NULL,
    "membershipStatus" character varying(20),
    is_deleted boolean DEFAULT false
);
 *   DROP TABLE afpslai_emv.membership_status;
       afpslai_emv         heap    postgres    false    6            ?            1259    33828    membership_status_serial    SEQUENCE     ?   CREATE SEQUENCE afpslai_emv.membership_status_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE afpslai_emv.membership_status_serial;
       afpslai_emv          postgres    false    6    221            ?           0    0    membership_status_serial    SEQUENCE OWNED BY     _   ALTER SEQUENCE afpslai_emv.membership_status_serial OWNED BY afpslai_emv.membership_status.id;
          afpslai_emv          postgres    false    222            ?            1259    33830    membership_type    TABLE     ?   CREATE TABLE afpslai_emv.membership_type (
    id integer NOT NULL,
    "membershipType" character varying(20),
    is_deleted boolean DEFAULT false
);
 (   DROP TABLE afpslai_emv.membership_type;
       afpslai_emv         heap    postgres    false    6            ?            1259    33834    membership_type_serial    SEQUENCE     ?   CREATE SEQUENCE afpslai_emv.membership_type_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE afpslai_emv.membership_type_serial;
       afpslai_emv          postgres    false    6    223            ?           0    0    membership_type_serial    SEQUENCE OWNED BY     [   ALTER SEQUENCE afpslai_emv.membership_type_serial OWNED BY afpslai_emv.membership_type.id;
          afpslai_emv          postgres    false    224            ?            1259    33836    online_registration    TABLE     ?  CREATE TABLE afpslai_emv.online_registration (
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
       afpslai_emv         heap    postgres    false    6            ?            1259    33844    online_registration_serial    SEQUENCE     ?   CREATE SEQUENCE afpslai_emv.online_registration_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE afpslai_emv.online_registration_serial;
       afpslai_emv          postgres    false    225    6            ?           0    0    online_registration_serial    SEQUENCE OWNED BY     c   ALTER SEQUENCE afpslai_emv.online_registration_serial OWNED BY afpslai_emv.online_registration.id;
          afpslai_emv          postgres    false    226            ?            1259    33846 
   print_type    TABLE     ?   CREATE TABLE afpslai_emv.print_type (
    id integer NOT NULL,
    "printType" character varying(20),
    is_deleted boolean DEFAULT false
);
 #   DROP TABLE afpslai_emv.print_type;
       afpslai_emv         heap    postgres    false    6            ?            1259    33850    print_type_serial    SEQUENCE     ?   CREATE SEQUENCE afpslai_emv.print_type_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE afpslai_emv.print_type_serial;
       afpslai_emv          postgres    false    6    227            ?           0    0    print_type_serial    SEQUENCE OWNED BY     Q   ALTER SEQUENCE afpslai_emv.print_type_serial OWNED BY afpslai_emv.print_type.id;
          afpslai_emv          postgres    false    228            ?            1259    33852    recard_reason    TABLE     ?   CREATE TABLE afpslai_emv.recard_reason (
    id integer NOT NULL,
    "recardReason" character varying(50),
    is_deleted boolean DEFAULT false
);
 &   DROP TABLE afpslai_emv.recard_reason;
       afpslai_emv         heap    postgres    false    6            ?            1259    33856    recard_reason_serial    SEQUENCE     ?   CREATE SEQUENCE afpslai_emv.recard_reason_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE afpslai_emv.recard_reason_serial;
       afpslai_emv          postgres    false    6    229            ?           0    0    recard_reason_serial    SEQUENCE OWNED BY     W   ALTER SEQUENCE afpslai_emv.recard_reason_serial OWNED BY afpslai_emv.recard_reason.id;
          afpslai_emv          postgres    false    230            ?            1259    33858 
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
       afpslai_emv         heap    postgres    false    6            ?            1259    33866    system_log_serial    SEQUENCE     ?   CREATE SEQUENCE afpslai_emv.system_log_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE afpslai_emv.system_log_serial;
       afpslai_emv          postgres    false    6    231            ?           0    0    system_log_serial    SEQUENCE OWNED BY     Q   ALTER SEQUENCE afpslai_emv.system_log_serial OWNED BY afpslai_emv.system_log.id;
          afpslai_emv          postgres    false    232            ?            1259    33868    system_role    TABLE     ?   CREATE TABLE afpslai_emv.system_role (
    id integer NOT NULL,
    role character varying(20),
    is_deleted boolean DEFAULT false
);
 $   DROP TABLE afpslai_emv.system_role;
       afpslai_emv         heap    postgres    false    6            ?            1259    33872    system_role_serial    SEQUENCE     ?   CREATE SEQUENCE afpslai_emv.system_role_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE afpslai_emv.system_role_serial;
       afpslai_emv          postgres    false    233    6            ?           0    0    system_role_serial    SEQUENCE OWNED BY     S   ALTER SEQUENCE afpslai_emv.system_role_serial OWNED BY afpslai_emv.system_role.id;
          afpslai_emv          postgres    false    234            ?            1259    33940    system_user    TABLE       CREATE TABLE afpslai_emv.system_user (
    id integer NOT NULL,
    user_name character varying(50),
    user_pass character varying(500),
    last_name character varying(50),
    first_name character varying(50),
    middle_name character varying(50),
    suffix character varying(10),
    role_id integer,
    status character varying(20),
    is_default_pass boolean DEFAULT true,
    is_deleted boolean DEFAULT false,
    date_post date DEFAULT CURRENT_DATE,
    time_post time without time zone DEFAULT CURRENT_TIME
);
 $   DROP TABLE afpslai_emv.system_user;
       afpslai_emv         heap    postgres    false    6            ?            1259    33952    system_user_serial    SEQUENCE     ?   CREATE SEQUENCE afpslai_emv.system_user_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE afpslai_emv.system_user_serial;
       afpslai_emv          postgres    false    6    235            ?           0    0    system_user_serial    SEQUENCE OWNED BY     S   ALTER SEQUENCE afpslai_emv.system_user_serial OWNED BY afpslai_emv.system_user.id;
          afpslai_emv          postgres    false    236            ?           2604    33885 
   address id    DEFAULT     r   ALTER TABLE ONLY afpslai_emv.address ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.address_serial'::regclass);
 >   ALTER TABLE afpslai_emv.address ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    202    201            ?           2604    33886    api_request_log id    DEFAULT     ?   ALTER TABLE ONLY afpslai_emv.api_request_log ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.api_request_log_serial'::regclass);
 F   ALTER TABLE afpslai_emv.api_request_log ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    204    203            ?           2604    33887    associate_type id    DEFAULT     ?   ALTER TABLE ONLY afpslai_emv.associate_type ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.associate_type_serial'::regclass);
 E   ALTER TABLE afpslai_emv.associate_type ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    206    205            ?           2604    33888 	   branch id    DEFAULT     p   ALTER TABLE ONLY afpslai_emv.branch ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.branch_serial'::regclass);
 =   ALTER TABLE afpslai_emv.branch ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    208    207            ?           2604    33889    card id    DEFAULT     l   ALTER TABLE ONLY afpslai_emv.card ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.card_serial'::regclass);
 ;   ALTER TABLE afpslai_emv.card ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    210    209            ?           2604    33890    civil_status id    DEFAULT     |   ALTER TABLE ONLY afpslai_emv.civil_status ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.civil_status_serial'::regclass);
 C   ALTER TABLE afpslai_emv.civil_status ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    212    211            ?           2604    33891 
   country id    DEFAULT     r   ALTER TABLE ONLY afpslai_emv.country ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.country_serial'::regclass);
 >   ALTER TABLE afpslai_emv.country ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    214    213            ?           2604    33892    cps_card_elements id    DEFAULT     ?   ALTER TABLE ONLY afpslai_emv.cps_card_elements ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.cps_card_elements_serial'::regclass);
 H   ALTER TABLE afpslai_emv.cps_card_elements ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    216    215            ?           2604    33893    dcs_system_setting id    DEFAULT     ?   ALTER TABLE ONLY afpslai_emv.dcs_system_setting ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.dcs_system_setting_serial'::regclass);
 I   ALTER TABLE afpslai_emv.dcs_system_setting ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    218    217            ?           2604    33894 	   member id    DEFAULT     p   ALTER TABLE ONLY afpslai_emv.member ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.member_serial'::regclass);
 =   ALTER TABLE afpslai_emv.member ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    220    219            ?           2604    33895    membership_status id    DEFAULT     ?   ALTER TABLE ONLY afpslai_emv.membership_status ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.membership_status_serial'::regclass);
 H   ALTER TABLE afpslai_emv.membership_status ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    222    221            ?           2604    33896    membership_type id    DEFAULT     ?   ALTER TABLE ONLY afpslai_emv.membership_type ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.membership_type_serial'::regclass);
 F   ALTER TABLE afpslai_emv.membership_type ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    224    223            ?           2604    33897    online_registration id    DEFAULT     ?   ALTER TABLE ONLY afpslai_emv.online_registration ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.online_registration_serial'::regclass);
 J   ALTER TABLE afpslai_emv.online_registration ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    226    225            ?           2604    33898    print_type id    DEFAULT     x   ALTER TABLE ONLY afpslai_emv.print_type ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.print_type_serial'::regclass);
 A   ALTER TABLE afpslai_emv.print_type ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    228    227            ?           2604    33899    recard_reason id    DEFAULT     ~   ALTER TABLE ONLY afpslai_emv.recard_reason ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.recard_reason_serial'::regclass);
 D   ALTER TABLE afpslai_emv.recard_reason ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    230    229            ?           2604    33900    system_log id    DEFAULT     x   ALTER TABLE ONLY afpslai_emv.system_log ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.system_log_serial'::regclass);
 A   ALTER TABLE afpslai_emv.system_log ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    232    231            ?           2604    33901    system_role id    DEFAULT     z   ALTER TABLE ONLY afpslai_emv.system_role ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.system_role_serial'::regclass);
 B   ALTER TABLE afpslai_emv.system_role ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    234    233            ?           2604    33954    system_user id    DEFAULT     z   ALTER TABLE ONLY afpslai_emv.system_user ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.system_user_serial'::regclass);
 B   ALTER TABLE afpslai_emv.system_user ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    236    235            b          0    33751    address 
   TABLE DATA           ?   COPY afpslai_emv.address (id, member_id, address1, address2, address3, city, province, country_id, zipcode, date_post, time_post, is_cancel) FROM stdin;
    afpslai_emv          postgres    false    201   ??       d          0    33762    api_request_log 
   TABLE DATA           ?   COPY afpslai_emv.api_request_log (id, api_owner, api_name, member_id, card_id, request, response, is_success, date_post, time_post) FROM stdin;
    afpslai_emv          postgres    false    203   7?       f          0    33773    associate_type 
   TABLE DATA           N   COPY afpslai_emv.associate_type (id, "associateType", is_deleted) FROM stdin;
    afpslai_emv          postgres    false    205   ??       h          0    33779    branch 
   TABLE DATA           I   COPY afpslai_emv.branch (id, "branchName", code, is_deleted) FROM stdin;
    afpslai_emv          postgres    false    207   >?       j          0    33785    card 
   TABLE DATA           u   COPY afpslai_emv.card (id, member_id, "cardNo", "date_CMS", "date_CBS", date_post, time_post, is_cancel) FROM stdin;
    afpslai_emv          postgres    false    209   8?       l          0    33793    civil_status 
   TABLE DATA           J   COPY afpslai_emv.civil_status (id, "civilStatus", is_deleted) FROM stdin;
    afpslai_emv          postgres    false    211   ?       n          0    33799    country 
   TABLE DATA           K   COPY afpslai_emv.country (id, "countryName", code, is_deleted) FROM stdin;
    afpslai_emv          postgres    false    213   h?       p          0    33805    cps_card_elements 
   TABLE DATA           ?   COPY afpslai_emv.cps_card_elements (id, element, x, y, width, height, font_name, font_size, font_style, element_type, date_post, time_post, last_updated) FROM stdin;
    afpslai_emv          postgres    false    215   6?       r          0    33810    dcs_system_setting 
   TABLE DATA           ?   COPY afpslai_emv.dcs_system_setting (id, cif_length, member_type_assoc_allow_yrs, member_type_reg_allow_yrs, cardname_length, system_default_password, last_updated) FROM stdin;
    afpslai_emv          postgres    false    217   ?       t          0    33816    member 
   TABLE DATA           ?  COPY afpslai_emv.member (id, cif, last_name, first_name, middle_name, suffix, gender, date_birth, civil_status_id, membership_type_id, membership_status_id, membership_date, contact_nos, mobile_nos, emergency_contact_name, emergency_contact_nos, principal_associate_type_id, principal_cif, principal_name, cca_no, user_id, terminal_id, branch_id, online_reference_number, card_name, email, print_type_id, recard_reason_id, date_post, time_post, is_cancel) FROM stdin;
    afpslai_emv          postgres    false    219   U?       v          0    33824    membership_status 
   TABLE DATA           T   COPY afpslai_emv.membership_status (id, "membershipStatus", is_deleted) FROM stdin;
    afpslai_emv          postgres    false    221   O?       x          0    33830    membership_type 
   TABLE DATA           P   COPY afpslai_emv.membership_type (id, "membershipType", is_deleted) FROM stdin;
    afpslai_emv          postgres    false    223   ??       z          0    33836    online_registration 
   TABLE DATA           
  COPY afpslai_emv.online_registration (id, cif, last_name, first_name, middle_name, suffix, gender, date_birth, mobile_nos, email, cca_no, reference_number, qr_code, branch, date_schedule, time_schedule, date_captured, reference_id, date_post, time_post) FROM stdin;
    afpslai_emv          postgres    false    225   Ͷ       |          0    33846 
   print_type 
   TABLE DATA           F   COPY afpslai_emv.print_type (id, "printType", is_deleted) FROM stdin;
    afpslai_emv          postgres    false    227   n?       ~          0    33852    recard_reason 
   TABLE DATA           L   COPY afpslai_emv.recard_reason (id, "recardReason", is_deleted) FROM stdin;
    afpslai_emv          postgres    false    229   ??       ?          0    33858 
   system_log 
   TABLE DATA           h   COPY afpslai_emv.system_log (id, system, log_desc, log_type, user_id, date_post, time_post) FROM stdin;
    afpslai_emv          postgres    false    231   ??       ?          0    33868    system_role 
   TABLE DATA           @   COPY afpslai_emv.system_role (id, role, is_deleted) FROM stdin;
    afpslai_emv          postgres    false    233    ?       ?          0    33940    system_user 
   TABLE DATA           ?   COPY afpslai_emv.system_user (id, user_name, user_pass, last_name, first_name, middle_name, suffix, role_id, status, is_default_pass, is_deleted, date_post, time_post) FROM stdin;
    afpslai_emv          postgres    false    235   W?       ?           0    0    address_serial    SEQUENCE SET     A   SELECT pg_catalog.setval('afpslai_emv.address_serial', 2, true);
          afpslai_emv          postgres    false    202            ?           0    0    api_request_log_serial    SEQUENCE SET     J   SELECT pg_catalog.setval('afpslai_emv.api_request_log_serial', 16, true);
          afpslai_emv          postgres    false    204            ?           0    0    associate_type_serial    SEQUENCE SET     H   SELECT pg_catalog.setval('afpslai_emv.associate_type_serial', 3, true);
          afpslai_emv          postgres    false    206            ?           0    0    branch_serial    SEQUENCE SET     A   SELECT pg_catalog.setval('afpslai_emv.branch_serial', 21, true);
          afpslai_emv          postgres    false    208            ?           0    0    card_serial    SEQUENCE SET     ?   SELECT pg_catalog.setval('afpslai_emv.card_serial', 11, true);
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
          afpslai_emv          postgres    false    230            ?           0    0    system_log_serial    SEQUENCE SET     F   SELECT pg_catalog.setval('afpslai_emv.system_log_serial', 509, true);
          afpslai_emv          postgres    false    232            ?           0    0    system_role_serial    SEQUENCE SET     E   SELECT pg_catalog.setval('afpslai_emv.system_role_serial', 2, true);
          afpslai_emv          postgres    false    234            ?           0    0    system_user_serial    SEQUENCE SET     E   SELECT pg_catalog.setval('afpslai_emv.system_user_serial', 2, true);
          afpslai_emv          postgres    false    236            ?           2606    33904    address address_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY afpslai_emv.address
    ADD CONSTRAINT address_pkey PRIMARY KEY (id);
 C   ALTER TABLE ONLY afpslai_emv.address DROP CONSTRAINT address_pkey;
       afpslai_emv            postgres    false    201            ?           2606    33906 $   api_request_log api_request_log_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY afpslai_emv.api_request_log
    ADD CONSTRAINT api_request_log_pkey PRIMARY KEY (id);
 S   ALTER TABLE ONLY afpslai_emv.api_request_log DROP CONSTRAINT api_request_log_pkey;
       afpslai_emv            postgres    false    203            ?           2606    33908 "   associate_type associate_type_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY afpslai_emv.associate_type
    ADD CONSTRAINT associate_type_pkey PRIMARY KEY (id);
 Q   ALTER TABLE ONLY afpslai_emv.associate_type DROP CONSTRAINT associate_type_pkey;
       afpslai_emv            postgres    false    205            ?           2606    33910    branch branch_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY afpslai_emv.branch
    ADD CONSTRAINT branch_pkey PRIMARY KEY (id);
 A   ALTER TABLE ONLY afpslai_emv.branch DROP CONSTRAINT branch_pkey;
       afpslai_emv            postgres    false    207            ?           2606    33912    card card_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY afpslai_emv.card
    ADD CONSTRAINT card_pkey PRIMARY KEY (id);
 =   ALTER TABLE ONLY afpslai_emv.card DROP CONSTRAINT card_pkey;
       afpslai_emv            postgres    false    209            ?           2606    33914    civil_status civil_status_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY afpslai_emv.civil_status
    ADD CONSTRAINT civil_status_pkey PRIMARY KEY (id);
 M   ALTER TABLE ONLY afpslai_emv.civil_status DROP CONSTRAINT civil_status_pkey;
       afpslai_emv            postgres    false    211            ?           2606    33916    country country_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY afpslai_emv.country
    ADD CONSTRAINT country_pkey PRIMARY KEY (id);
 C   ALTER TABLE ONLY afpslai_emv.country DROP CONSTRAINT country_pkey;
       afpslai_emv            postgres    false    213            ?           2606    33918 (   cps_card_elements cps_card_elements_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY afpslai_emv.cps_card_elements
    ADD CONSTRAINT cps_card_elements_pkey PRIMARY KEY (id);
 W   ALTER TABLE ONLY afpslai_emv.cps_card_elements DROP CONSTRAINT cps_card_elements_pkey;
       afpslai_emv            postgres    false    215            ?           2606    33920 *   dcs_system_setting dcs_system_setting_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY afpslai_emv.dcs_system_setting
    ADD CONSTRAINT dcs_system_setting_pkey PRIMARY KEY (id);
 Y   ALTER TABLE ONLY afpslai_emv.dcs_system_setting DROP CONSTRAINT dcs_system_setting_pkey;
       afpslai_emv            postgres    false    217            ?           2606    33922    member member_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY afpslai_emv.member
    ADD CONSTRAINT member_pkey PRIMARY KEY (id);
 A   ALTER TABLE ONLY afpslai_emv.member DROP CONSTRAINT member_pkey;
       afpslai_emv            postgres    false    219            ?           2606    33924 (   membership_status membership_status_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY afpslai_emv.membership_status
    ADD CONSTRAINT membership_status_pkey PRIMARY KEY (id);
 W   ALTER TABLE ONLY afpslai_emv.membership_status DROP CONSTRAINT membership_status_pkey;
       afpslai_emv            postgres    false    221            ?           2606    33926 $   membership_type membership_type_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY afpslai_emv.membership_type
    ADD CONSTRAINT membership_type_pkey PRIMARY KEY (id);
 S   ALTER TABLE ONLY afpslai_emv.membership_type DROP CONSTRAINT membership_type_pkey;
       afpslai_emv            postgres    false    223            ?           2606    33928 ,   online_registration online_registration_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY afpslai_emv.online_registration
    ADD CONSTRAINT online_registration_pkey PRIMARY KEY (id);
 [   ALTER TABLE ONLY afpslai_emv.online_registration DROP CONSTRAINT online_registration_pkey;
       afpslai_emv            postgres    false    225            ?           2606    33930    print_type print_type_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY afpslai_emv.print_type
    ADD CONSTRAINT print_type_pkey PRIMARY KEY (id);
 I   ALTER TABLE ONLY afpslai_emv.print_type DROP CONSTRAINT print_type_pkey;
       afpslai_emv            postgres    false    227            ?           2606    33932     recard_reason recard_reason_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY afpslai_emv.recard_reason
    ADD CONSTRAINT recard_reason_pkey PRIMARY KEY (id);
 O   ALTER TABLE ONLY afpslai_emv.recard_reason DROP CONSTRAINT recard_reason_pkey;
       afpslai_emv            postgres    false    229            ?           2606    33934    system_log system_log_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY afpslai_emv.system_log
    ADD CONSTRAINT system_log_pkey PRIMARY KEY (id);
 I   ALTER TABLE ONLY afpslai_emv.system_log DROP CONSTRAINT system_log_pkey;
       afpslai_emv            postgres    false    231            ?           2606    33936    system_role system_role_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY afpslai_emv.system_role
    ADD CONSTRAINT system_role_pkey PRIMARY KEY (id);
 K   ALTER TABLE ONLY afpslai_emv.system_role DROP CONSTRAINT system_role_pkey;
       afpslai_emv            postgres    false    233            ?           2606    33951    system_user system_user_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY afpslai_emv.system_user
    ADD CONSTRAINT system_user_pkey PRIMARY KEY (id);
 K   ALTER TABLE ONLY afpslai_emv.system_user DROP CONSTRAINT system_user_pkey;
       afpslai_emv            postgres    false    235            b   m   x?]?A
?0???]??LH?.?P
????????-????=?h?ħ??[?׾b_??
?$*?A?@s?T?G??lx?~?.??ݖ}???Ԫ%Jђ?(1?????      d   ?  x???Oo?0 ?s?)??????;??evA??m?EjR?vH??yɦ6)??*??R??I~??lLf?*?e??yQ?O???2?	&_?꫊?Q??Ӽ>??R.?ݗ5??ܔ??s???Q??d??[僳 
?m?r9-?]#??^i???~??eQe??????l],?IV???:?f7w??W?g?????m|Q?U~j?ݱT?$rL?O5??7??????j??nȋ?s?(??u?4>w$U???Aa??d?O??????!?j'???h????????~~j????B
???(??t?O?????١?|
6ŝ???6F?H?L????3??????J????O˟?F?l??{?~65fW???!?V?E?\??????O?vʾ??Ġچ?|??????????l??L??????X???y???l??O	?g?r}C????zY?uUA;(?? ?S???i?g?T?L){??&?Ы?a?FX?'V?+??F'nY?.?nq׮)?1y??)aӜW???3?'gB#-H??3???fdQ???񄟾8??w?????߾43????0??????s?z???:???;????hQ4?? F2??8???J9?k?9??(9?=?9{?	?????t?d?}4?"??????Y?~d??Z????)h?*E???ɣ??}X%??t???nf?R??5?ތ]	??w\O??      f   4   x?3?tI-H?KI?+?L?2?s?WH?+???K-
s:'???$c???? \?F      h   ?   x?%?Kn? ?u?s?(?????00?g?e??!??TӼn??p?̴h??????x?=t_? [r????0?ʈ?9$??k??`?3?T???f?i?A?i}"Lg????a??|??fɋ?ߏ?0?S???iJ?????,5??K????yj??a?J??????ٚX.F?ҁk??墌<|1?V+[?r?3V>)?????t?_8ʎ??)?+-?ԭ?`???LͿ]??N?L?      j   ?   x??ѹm1?X?????*?????r?C,?HА Ƒn ??"????????f	????2>'>s\Ź?-????~^?Jb#k'???X!?7?vz:?u?%K?M??=vV???õ??.n?P?@??vq?????Qi,????J?U?e;<?s??퀨NBy)?Y????m????7??T??O???o?ž?Dr??Zs?/??w      l   @   x?3??M,*?LM?L?2??L?/??9?S?K?<N?̲??d0ǔ383/='Ȍ???? ?4?      n   ?  x?]WM??H=??nkG?l ?u?4?z?{)???TLIj????2?;??D>?Gf??|?>?_/WU??Q?1}?Ч?8R&3??????C
K?'Uy?*-?<<??:[?`o?ǰ/?`?wM`6??*OUgo?ܱ=??=?M)t??????Z|إ???????M?¶n?*x?!g??R5??g(??&οiwT???16??Uå?*UM?p??? 8e*??6L T?B?u}?"??ā???m;F??B?@?@???Ŵ%͢????i?b?}خ?d?"?1 P?????????̖zD3[?W?4?ʁ???H?$v?ݛ??WN?lő???m?-'???z3B????igS_?'?.??Vu??jZ=	?k+m??] ???(N???>D?^p???j?#m?36.Vi?ʣ=c?<?w???ڊ??l?ԙWp??	?????;k?gO?M??K???y??????8??_;????=????ͯ?L?%>?a??.ٽa?M?i?䛇??G?VR=?????=߲?C?o?????ǳ_????-???Х=9հ'[.????o?7???WD?5?B?????ws??m?w??????V??Bs7?:?|???d?~???ߘ??/ۈ?M???eH?a4???J?^h!?h??m?Z<r?FcZ??T??"?ڟ???????h4?HՍ?7Ȝ?Q~?Lt??O?O?tGE?U?(?3??=?.?[CQ??:?)*?k??n???q???[?X?????TZQ}?O??g ڱ??!Euc??D9W?xDQs5??Ȟ?d<?????ꑭ	?? 'a<?????)?q@?:??q?ɝ????J??'>?ڢ??-~?I?k? ????W.?X?8R?????_b2b[J!?4Sܪ?⃜?a??%: 9aJ?q??'?????Եj)?q??=?w???????T?Z??kڧ??έC3\n??逑???Z??AO??l+??;-?fD?????r.???VW?J?`:?՜[?׶??70_5?B7?f?L???V??}?B?i%/????t??z?s?w}Z?N?>p???U?i?糂!=??3o卂?N?8?`L?֝????	?՛z??:?C????ֺ?+ZKu?-???????z?Ŏ?Y?O??֢^???r?ѕ?r???i?~G?i}?K?>???r?.?E?zJZNn??l??'?HZoD??`???j&?Hm???$q?M(1G?d??=e??v(v ???J??Y"?P??4?V?dߩ?OI?C????B????)U'}?2K????????r??8X???Df ??a"???i(@~???J?xh?NIVbl6ؑHZ???j???t/???@?F?
?|(p????4?H???9?????}??????~j<?'z?e,?:??>??*???4{????7?D???q?g?
/?kHvj+?7n;?&`ZbOc?D:?ҜxQ7Z@?S??-??Vcg7? J?2???b[?s??*?Q?ᆴ??P??oi?Q?獾??6Q&?6??u
???? ѿ?OqE?W?BG??F????:?<??P???)|??wM?a???*;?lv0??Ψ???N??@ ?[4Lڊ???L?t?jJeA?3??R?? Ѱ?.h{???P?ݮT?$??,g??Q?=L?>d9?ܾcu?Ĕ2??eQg?ah0??Ք-%`?of%ٶ| ?i/?o?E	?Z????-;t??>????+g?ΖB??V?	
?kkp??޹hP??n???0?A$vI???9???[???e(??WSS????????=qIw???'??/?㡤? 	?I?Ї:ws??
??õ?`e)?)·<??z{[j9*?Ǔ?i???5ht?ڳ?B???kuJ??Js????m???[TI??.?˃A?s}?]??2?????E?D??)?? ?D??^L?{4?@m????I85gH???a9?<?Y??9??9??+7?yǇ?K??Ai'????>|????      p   ?   x??αN?@??????>;??H??K(G?IQTx~?U'?@????????????a?B???u??~W?IxE?b{?ґ6?c?F??7?:ɝi?9? ??R??0mX?~???x?t֧y?v?%???bI6w??????????????+R?lA1?c??:?G<U<.??W<?vx??I??????՜s?4!?/A?c?      r   4   x?3?44?42?44?42?Lt+?q?L?-32 ??]s R00?#?=... ?
J      t   ?   x?e??j?0???~?I?'7/K?#K!mz??C;l?????6??B???G@?AU?|a(?z??k????w??@??m??`????p?rU?9+?????fH2S?rN J?gX"?v??????N?A??xSm?ݶ??7?????>x;??R?S??D-U2*Vne?????@?2`]????(R??;Qf?,2?L?˹}&??????&?{?Kv*9?`?̒$?*?_&      v   '   x?3????q?L?2?	????9?C<?\??=... ?5-      x   7   x?3?JM/?I,?L?2?t,.?O?L,I??9???
???<?$Qd?1z\\\ ???      z   ?   x?E?M
?0??/??Rޏ?$+#??i?u#݈$`?x{[?8?b?a?/$?B??????:T?˝!2Ȁ???N????|?????RvM???h???m?e*c?v0?4?[@??????(K\?~	0{AO.?eeՐ)?>?'      |   0   x?3??K-?L?2?J-?ILN??al??BI???s?&P"F??? [??      ~   =   x?3???/.Q@?i\F?!?Ey?.?????)HƜ?y??EE??%
)?%??9??=... ن?      ?      x??]?v7?]+???^?D?Q????Y?F-?ϱ$QO??Ͻ@V5?fȌD?}?cZq	???????ˇ??_??>?????????????ˇ?A?ğB?)ꇨG?cЃ?PjZ?K"?!??Z^??z?r?)???z??1???C?*Q??Y:?z??Z.K?ҕc?G?C?Y?:;
?3H??T?]??A??,?ç߼tz?~Z
m??O??h??J
??'?vLv??pK/a?,?j5E<1?	%??`?e??܄)?٢??l???????PO?NB?3?(Ұ9????ۏo?O?>>?????????/??~~z|?T?+u???|y??ϧ??x???i??[?????????|?????K?}??enA`?,?????????????>P????4[????p??4?4??????????ǯ???oBVJD(*	/a?c><????-??H????*??"e?)^?o 6`[??? ~@??/?M?e??\pH!????????@????6`?E???'?8?b??????9G??.?ƟvH5Z?S?6?????H.?zJcι.iKx6Pv?-iC`6@??Ԧ??6]??x59/??7??J/r?????R?n???l?h??ؔ??rĺ??d(~p?dY?m????bL?:-???{s?"V? ???fl?qQ?(?c???$????S?6?????撤(0{??????Lccw66??7E?k?5??fٟ?˭??-?_??×[? ??O?6G?YG?5GD??b??]??QSFk).???? ??(m??s???A?۲?? 8??|?4 klI?</Gp??=)?[??Q`?
d;???(M?K????'??v??1@Jʆ??]u?$p ????RE??&JNK????????Ƚ$j?m?2?R????5K\??????o_<?<?ϓs???	6?f%+)}?T"????$k?i????Rn??
?\?Rgb? mXP???D?l???X??NE?ꔏ(S??R]2?Ub?????RXb?r?>oA[???ol?????_>??>???? ??v?<?V???&??? ?3??<S??Ί???k??jw?r?do
??n???'?h?K?M ??U]ڴ@?/?v?1@,???'<????}??_NAZڭB0?`a?_?ۄ?C%h??M?@?ZaV
??̜Np??~]?=?W?0?q?0?h??=)x?4?X)??YiXQx%????%[Q?.yx3???i9V`?(+??,
??D`?J?W6++??B^???$g5f???L҈JH|ƭ20?,?T?v??G!kZL?1??? i&L????&?%??#'?|?U$:?F???x?H,??x?"1`,?Y?(?u???OB?Bg?????@??
|?H,(b???S뀙???RB/???Dbـ*??U&?ՈX0?m21?Jd?)ʴL??QamdV&J3??J??2?????IL?
?@7??6?Xu]ٴ`?fV0:JC<?_?W?)-%r?-(?쥓??:???&??j???e<?D??A?X	?-?Қ???N}?Ա?5?}ӥ???U\?s???l?ﺦ?o9??nSn|?t?)+?????!???\3ڷ??vt?[????s???J?,؈z?0?u(d?-a؀1?0?! (9??%??6?rL?j?X7i?????^*j???k?y?G?=hk?e?k:??'d?4??>?g\??p???џar?2???w?????ZS?s? 2?Zq??????#????qK3]k?x?Ӓ1(Y3?3?@E??!??dAi?P??A?+?????Zj??ݾJ?-iW?%??#?ʵe;??(??2zM??5P?????k"?G?(H??~???mb??"???-???? b?
??nw?[???F={-?-.??`?[?;Hb??P\,?R
??a?^Tq?РT0??ڛ(bq?)?u?X?f?T???B+??g??y3V\<D??Z>??!x*???u+?	8?? ?ũ??C?!lUЪK???%)0s??Ns??.?a?F?Pus??+??????g??????wt?pR????ͽ?ikUV???ͽ?>?p?x????{??L??KJS<?`?hA?K????j?:?m.HJIoZ?M?aFsi?A???}5vϸ5 (q????? ?lnjԺ!!\??#???Z/??????47??@w?qj?r57???cΣ?y??F?YY????FG??z4Ks?P??????R??S_?T?9v????Ǧ???2??!?_ͼQ???$Т%???r?&?pQv=??z????FL?]`5??H?S?????
U?????/???hB:?(˿%?d?]JW/?a???P?z???Y??R\?h???(X? ?!?m0??@?b
m??W???Aq???%???Bq???R???b??ffw5?k?"??B??|?
?s9Ր?{2?(q?f??d??N???!A?ȴD??3+?U??x??c?ؐ??G??l??pz??_n?????r???????t???l?@?gh???X%7???z??'L?}????>y?P?v???K?ש!a???A?????]???v?>?RS!"?o&?=?Z?9?\w?X??????o???Iav߷^?@??u?z??ku??TKU?G????y??_&??mwo??%??5??eu`?j??S?o5?n?T?GqkW芙y????h𶅾????d??&?Œ2?f??FbH?L:/+????On?z??y?]?{???5?Q3?6NXq]?4???9?G?:87P*?????W?&v9=?᫰???F??}??V5????jJ??]???@??UX4ч?YWe???']?^3ǥ????뢀3?$??????Qz??ޘ??cͰM??^?С22eM??????33???f?c`Ŗ???,?? om???珁b)??5?q/??ԮPs??cl????<?௿<}yxy?????//?/??????Ul-"??m?*2#aE$Fg??ۖ?Goe냔????_<?????????Y?SZ9J?Or?>??)<??????????|????o??*OE*]e???ŁR???`'$DR??ŝ)U?&?t??z???v?]? ? V????7 ?*O??	??p?VB???vP&??@sX?Je?<(????ՠ??}????[??U?L???u??FM;(3F-u?S?O?F?u???j;(+?7-C??Ac???+W@rd????\????@?}|y????Ǉ?_?????dQބ???`&$j?_c?6???e}??D??ZK?oa~	}???Ѣw	?_c??p??i2???+?M-𲡥y Vy`S"?2H?y ?Nk?}H?l???K7?m??%??Ȭ???|ڱ}=?ʋ??S`ͧۇ??8E?v??l????9??Ɖ?J??,?y?AYz]Q??L!???#?',?<?бd?*j/?1???)?gJ??Dl?*(]qV
=?*?)-??G)???Ai2tR??g??+ebKesZ
??J?lᑀ=ʠt]?)?????\	蕒??f??%?&??????1b??@W??5????8??֕?k6h?l?t??ϔF?P9?-??????+?
6ǹ???ML?]80??-m?ьÞ
?&?w.? *@?߼s?b?jC?
44yz_C?;??$Q?j???M?r?d??V??X?d??Lc9`v7??F?Q8?#??`{???[??????@˩q?nc?U??k??L?f??;J?pA??ɫ???>.!V_?lP?????8:u?>??H?H!?}? ???[?r?>????Z?G?k"[)??ͭn?ע?I???J+???m?8?ڱ8TEa>??P??T?B???T?,????}????Iw?վ@)?
?Iw?f??2G???toJ?+~IM?;x??&??? ??L?U?	?C9cxs?̲ISJ??9.??L???٨?ݔ?ȉ?E??N??w??u5??8?oI?i?߁Q??t?lO6i?/??6??M??K?K+PO?׎_????????W(??Ym?I?`??<٤??B?b?X?kp?2??yj;?
? ;??R   ??~??qs=??%???8?'i;g????H??D?Z? ???D?|=???N?\? 	??7s?u?Q???Z????|J򽧯?L)lXg9
y??Wu??>ͽdIP ???AY??ܔ(?"O_ՙ?qBt?^???C?p??/&?<C?B?5???Y?|???R?L0?kNL??g??(?*Z/O?(??1k߷?ǐeȐ4???c??5dOZp?S???wp8????8?6???r?^??9y?eFC?{??Jn?~s???+??HO?(?ͥ7*?&Z??uu&l?8di~???uu?Lu???x??N???ԨqxsRw*??1VB??M*]????6U?t?߄???-T??i=?h;??.AX#?K^O׉Ҍ?QP??F?`p??????A?z?+(kk??4p?)?????"J7;2kH?	???"x?ΔF?V?RO׉?t? 0	J??nl??j?y?\)A??>+C>8?0?vϕx??LdWQ?L?3_??Ԕ{8U?|??ʭ?[?|??ZG?Y?????????I?ԟb??9Y??K??Wʞ??ԓ?9???5,Փ?t?U?ѹN?-?I??(???jp+ԓ?9??E?pB???\ΉR????kt??A??![	??s?S??*?????+?b?NL?V????b??{????
&Z??????
E?@??n??D9?b??8?5%?"E(9s*;??????YH??????K?d?;?? ??h??:Lߧ?6?$?&L7????b????q?ф(n?hk2???U??F??,رaNƓ[????WA?$?LWOnePJ???r<?J??VΔ?[?V?ThOn?D?O??ɻoP??#)]LI?lJy??V:!???݅??4?&??7EF?8F=?BgJV?t'???\4(??h?f?|?.??R6??????^?? ?$R+??~?˓9Qr???֖!?z2 '???s?LB???A???y?T: ?ȉ?_[H}?[?yz2 g?????g?yHX?ɏ???~???C?j??N˃??C?dŲ7??Ws????A4Pv?3??????U??t?P?`k*??Ts?Pb??1?(?ؑz?cΔ??d?lAЫ???3ee}be??Rs?P??3????x??O^+?Y???????A????8?|<?)9;?[2_?b??ηb??%-Δb?z?N???A??glN??3??LYXĎ?j??C????OЇO??><?>??????7????t????򗇟B???_??~???o>??o???M??%s????*?8?}????ͧ??D9?B???wJ????B??n^?3??|??7???;?@&??2}??,???-??yXL??????T???c??zF?B??vC???[b8M??1@?S???M?n7\>?ˎ?q??檱??t?H?W8xk???;?ّt?h-*g???H?+,??Oo??ۀI??ͺ5{n?SJ?2q9???f?E?WU?//?2B/HL????*:V??v??Iwm?????(2?????ɠ???R$??˞?ug???????3??L??l4??X?gb݉2?<`?=??L?;Q2?J?^x5??Xw?TF??b??+e???\Y?????JY????ӗ??̖?u?Bf?U?fy??8?7C?Um?,)?B+???ڦJ
?????X?[Rx	?B`c???%?W(?߁?v0dcn??+?	焊?i˭?瞞?????
!~ãH???_CY}?>???[Ki?
??5?R~????Ijl???V????h?$Z?dM?ZFX?@?*???j?"???/{Àg??Y_v??WY???,?????g      ?   '   x?3?tqV?/H-J,?/?L?28??f?y1z\\\ ?M	9      ?     x?Տ?n?0D??_?l?G`ז?:????![?L?U?B???n???bf?? pR]c@u?~??xİ????F?)?^Ӗ?3#7U??Ҹ??B???׬%???#6䙢?????t???M??1???M?o????L$:???wX?[?V?????|?PL?x?U???2Q?_9???#??i??M??a????m????#???S?7?
|L?!F?/p ??N????aϵ0??K??7~2!< ?8^??Q`?Z?\?h[?u?Ԡ?     