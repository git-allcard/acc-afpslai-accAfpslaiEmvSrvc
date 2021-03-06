PGDMP     '        	            y            afpslai_emv    13.3    13.3 ?    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
    afpslai_emv          postgres    false    203   6?       f          0    33773    associate_type 
   TABLE DATA           N   COPY afpslai_emv.associate_type (id, "associateType", is_deleted) FROM stdin;
    afpslai_emv          postgres    false    205   ?       h          0    33779    branch 
   TABLE DATA           I   COPY afpslai_emv.branch (id, "branchName", code, is_deleted) FROM stdin;
    afpslai_emv          postgres    false    207   X?       j          0    33785    card 
   TABLE DATA           u   COPY afpslai_emv.card (id, member_id, "cardNo", "date_CMS", "date_CBS", date_post, time_post, is_cancel) FROM stdin;
    afpslai_emv          postgres    false    209   R?       l          0    33793    civil_status 
   TABLE DATA           J   COPY afpslai_emv.civil_status (id, "civilStatus", is_deleted) FROM stdin;
    afpslai_emv          postgres    false    211   ?       n          0    33799    country 
   TABLE DATA           K   COPY afpslai_emv.country (id, "countryName", code, is_deleted) FROM stdin;
    afpslai_emv          postgres    false    213   o?       p          0    33805    cps_card_elements 
   TABLE DATA           ?   COPY afpslai_emv.cps_card_elements (id, element, x, y, width, height, font_name, font_size, font_style, element_type, date_post, time_post, last_updated) FROM stdin;
    afpslai_emv          postgres    false    215   =?       r          0    33810    dcs_system_setting 
   TABLE DATA           ?   COPY afpslai_emv.dcs_system_setting (id, cif_length, member_type_assoc_allow_yrs, member_type_reg_allow_yrs, cardname_length, system_default_password, last_updated) FROM stdin;
    afpslai_emv          postgres    false    217   ?       t          0    33816    member 
   TABLE DATA           ?  COPY afpslai_emv.member (id, cif, last_name, first_name, middle_name, suffix, gender, date_birth, civil_status_id, membership_type_id, membership_status_id, membership_date, contact_nos, mobile_nos, emergency_contact_name, emergency_contact_nos, principal_associate_type_id, principal_cif, principal_name, cca_no, user_id, terminal_id, branch_id, online_reference_number, card_name, email, print_type_id, recard_reason_id, date_post, time_post, is_cancel) FROM stdin;
    afpslai_emv          postgres    false    219   Y?       v          0    33824    membership_status 
   TABLE DATA           T   COPY afpslai_emv.membership_status (id, "membershipStatus", is_deleted) FROM stdin;
    afpslai_emv          postgres    false    221   N?       x          0    33830    membership_type 
   TABLE DATA           P   COPY afpslai_emv.membership_type (id, "membershipType", is_deleted) FROM stdin;
    afpslai_emv          postgres    false    223   ??       z          0    33836    online_registration 
   TABLE DATA           
  COPY afpslai_emv.online_registration (id, cif, last_name, first_name, middle_name, suffix, gender, date_birth, mobile_nos, email, cca_no, reference_number, qr_code, branch, date_schedule, time_schedule, date_captured, reference_id, date_post, time_post) FROM stdin;
    afpslai_emv          postgres    false    225   ̵       |          0    33846 
   print_type 
   TABLE DATA           F   COPY afpslai_emv.print_type (id, "printType", is_deleted) FROM stdin;
    afpslai_emv          postgres    false    227   m?       ~          0    33852    recard_reason 
   TABLE DATA           L   COPY afpslai_emv.recard_reason (id, "recardReason", is_deleted) FROM stdin;
    afpslai_emv          postgres    false    229   ??       ?          0    33858 
   system_log 
   TABLE DATA           h   COPY afpslai_emv.system_log (id, system, log_desc, log_type, user_id, date_post, time_post) FROM stdin;
    afpslai_emv          postgres    false    231   ??       ?          0    33868    system_role 
   TABLE DATA           @   COPY afpslai_emv.system_role (id, role, is_deleted) FROM stdin;
    afpslai_emv          postgres    false    233   ??       ?          0    33940    system_user 
   TABLE DATA           ?   COPY afpslai_emv.system_user (id, user_name, user_pass, last_name, first_name, middle_name, suffix, role_id, status, is_default_pass, is_deleted, date_post, time_post) FROM stdin;
    afpslai_emv          postgres    false    235   ??       ?           0    0    address_serial    SEQUENCE SET     A   SELECT pg_catalog.setval('afpslai_emv.address_serial', 2, true);
          afpslai_emv          postgres    false    202            ?           0    0    api_request_log_serial    SEQUENCE SET     I   SELECT pg_catalog.setval('afpslai_emv.api_request_log_serial', 9, true);
          afpslai_emv          postgres    false    204            ?           0    0    associate_type_serial    SEQUENCE SET     H   SELECT pg_catalog.setval('afpslai_emv.associate_type_serial', 3, true);
          afpslai_emv          postgres    false    206            ?           0    0    branch_serial    SEQUENCE SET     A   SELECT pg_catalog.setval('afpslai_emv.branch_serial', 21, true);
          afpslai_emv          postgres    false    208            ?           0    0    card_serial    SEQUENCE SET     ?   SELECT pg_catalog.setval('afpslai_emv.card_serial', 10, true);
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
          afpslai_emv          postgres    false    230            ?           0    0    system_log_serial    SEQUENCE SET     F   SELECT pg_catalog.setval('afpslai_emv.system_log_serial', 348, true);
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
?$*?A?@s?T?G??lx?~?.??ݖ}???Ԫ%Jђ?(1?????      d   ?  x???M??0???+??]?H???ve?M??rQb?"{q?B)?%ɂ6>??͚y%?AX,??c??m?>??cح??g,??n?5?y???j???Q???X?=???Hإל??e????
??
 ?1?Ĺ%6?p?^? ,3(???zW?1??0???|?z?cu?ش???_????>}?r·X?T|?????=?(s?8??s?7??@?gߦyӂ4???!??.???@?q?VH	h	?????????????CF?Hf?Q????????g??~)?(%5?|b?XƧ??g(?f?CF? pM䨟??'?????!83??La??OX?F??4?u?~?I9?/eT???@?G??4????\?Op?n???gXa????Q>3??,????C8?????>i?e?m??_t?`???n?L???]??a8?i&[p???QS;??޾?x{?,0?E?>?%????? A      f   4   x?3?tI-H?KI?+?L?2?s?WH?+???K-
s:'???$c???? \?F      h   ?   x?%?Kn? ?u?s?(?????00?g?e??!??TӼn??p?̴h??????x?=t_? [r????0?ʈ?9$??k??`?3?T???f?i?A?i}"Lg????a??|??fɋ?ߏ?0?S???iJ?????,5??K????yj??a?J??????ٚX.F?ҁk??墌<|1?V+[?r?3V>)?????t?_8ʎ??)?+-?ԭ?`???LͿ]??N?L?      j   ?   x????mD!?3D??R??ALsv?_??e??K}?*i?\s?)1???#$??x?6?.? ?c??????tR??????:o???.?N??*?b?p???????[g???m?e6\"Ö??奃?Hf?X.O7?9?O???0?n??`F???.2%?8???UO?w?????y?3?"??{?no?      l   @   x?3??M,*?LM?L?2??L?/??9?S?K?<N?̲??d0ǔ383/='Ȍ???? ?4?      n   ?  x?]WM??H=??nkG?l ?u?4?z?{)???TLIj????2?;??D>?Gf??|?>?_/WU??Q?1}?Ч?8R&3??????C
K?'Uy?*-?<<??:[?`o?ǰ/?`?wM`6??*OUgo?ܱ=??=?M)t??????Z|إ???????M?¶n?*x?!g??R5??g(??&οiwT???16??Uå?*UM?p??? 8e*??6L T?B?u}?"??ā???m;F??B?@?@???Ŵ%͢????i?b?}خ?d?"?1 P?????????̖zD3[?W?4?ʁ???H?$v?ݛ??WN?lő???m?-'???z3B????igS_?'?.??Vu??jZ=	?k+m??] ???(N???>D?^p???j?#m?36.Vi?ʣ=c?<?w???ڊ??l?ԙWp??	?????;k?gO?M??K???y??????8??_;????=????ͯ?L?%>?a??.ٽa?M?i?䛇??G?VR=?????=߲?C?o?????ǳ_????-???Х=9հ'[.????o?7???WD?5?B?????ws??m?w??????V??Bs7?:?|???d?~???ߘ??/ۈ?M???eH?a4???J?^h!?h??m?Z<r?FcZ??T??"?ڟ???????h4?HՍ?7Ȝ?Q~?Lt??O?O?tGE?U?(?3??=?.?[CQ??:?)*?k??n???q???[?X?????TZQ}?O??g ڱ??!Euc??D9W?xDQs5??Ȟ?d<?????ꑭ	?? 'a<?????)?q@?:??q?ɝ????J??'>?ڢ??-~?I?k? ????W.?X?8R?????_b2b[J!?4Sܪ?⃜?a??%: 9aJ?q??'?????Եj)?q??=?w???????T?Z??kڧ??έC3\n??逑???Z??AO??l+??;-?fD?????r.???VW?J?`:?՜[?׶??70_5?B7?f?L???V??}?B?i%/????t??z?s?w}Z?N?>p???U?i?糂!=??3o卂?N?8?`L?֝????	?՛z??:?C????ֺ?+ZKu?-???????z?Ŏ?Y?O??֢^???r?ѕ?r???i?~G?i}?K?>???r?.?E?zJZNn??l??'?HZoD??`???j&?Hm???$q?M(1G?d??=e??v(v ???J??Y"?P??4?V?dߩ?OI?C????B????)U'}?2K????????r??8X???Df ??a"???i(@~???J?xh?NIVbl6ؑHZ???j???t/???@?F?
?|(p????4?H???9?????}??????~j<?'z?e,?:??>??*???4{????7?D???q?g?
/?kHvj+?7n;?&`ZbOc?D:?ҜxQ7Z@?S??-??Vcg7? J?2???b[?s??*?Q?ᆴ??P??oi?Q?獾??6Q&?6??u
???? ѿ?OqE?W?BG??F????:?<??P???)|??wM?a???*;?lv0??Ψ???N??@ ?[4Lڊ???L?t?jJeA?3??R?? Ѱ?.h{???P?ݮT?$??,g??Q?=L?>d9?ܾcu?Ĕ2??eQg?ah0??Ք-%`?of%ٶ| ?i/?o?E	?Z????-;t??>????+g?ΖB??V?	
?kkp??޹hP??n???0?A$vI???9???[???e(??WSS????????=qIw???'??/?㡤? 	?I?Ї:ws??
??õ?`e)?)·<??z{[j9*?Ǔ?i???5ht?ڳ?B???kuJ??Js????m???[TI??.?˃A?s}?]??2?????E?D??)?? ?D??^L?{4?@m????I85gH???a9?<?Y??9??9??+7?yǇ?K??Ai'????>|????      p   ?   x????J?@???o??h????QO?(X??ĺ??&-???&E<HDf/????|8]NH5#
8g??????}?V?+J+6pjL??4???/????Q??)F????e?tî?-?R???{?{??????H-l?Q?juP??????0?A???H6???0?????NC?}?u?I?CĮ{??.?l?????Ir???B??cA      r   4   x?3?44?42?44?42?Lt+?q?L?-32 ??]s R00?#?=... ?
J      t   ?   x????N?0???y?V?c?io?i?tR???&?@? \???)t-\f????/?zh????yc?5?m??b?U?s?v??#??CT?z@?(xђ?}?)?]??s k9մD??_Η??????j????????]????wc{?`?So+0?X?$@e?Z?Tm???[??2e?,??v6?GI!9??ee??(???F?iln ?k*%C??,˾8?`      v   '   x?3????q?L?2?	????9?C<?\??=... ?5-      x   7   x?3?JM/?I,?L?2?t,.?O?L,I??9???
???<?$Qd?1z\\\ ???      z   ?   x?E?M
?0??/??Rޏ?$+#??i?u#݈$`?x{[?8?b?a?/$?B??????:T?˝!2Ȁ???N????|?????RvM???h???m?e*c?v0?4?[@??????(K\?~	0{AO.?eeՐ)?>?'      |   0   x?3??K-?L?2?J-?ILN??al??BI???s?&P"F??? [??      ~   =   x?3???/.Q@?i\F?!?Ey?.?????)HƜ?y??EE??%
)?%??9??=... ن?      ?   w  x??\ے?}????w7^?9?<?e?[[??\?u??s@R?*??f????Ke?a8 H ????w?O??N?}?????????????80??O?w?g?s?UsHY??Ct?J?????gMk???.:*?!?U?@ʤ??˙?)?D?bZ??\::???xI;???????l??rΡ?A?*/?????rzf?~???PT:[\K?A!H??V?b+?@??`?&#?Z?/ʸ ?YtM?Ŧ5,(??F???B?K??ZrȆ_???Xg.??`sR?????ϧ?????oϧ?/_.?????<^ބ?!?5?{9/?+???韗/??~?p?÷@c5????o?????)(?.n????inA0??7??????JхǬ???ev???F#Zx?
?`:sa???Y?T???:}?x??W?盐????#lL???߯?ÿ??@??????~!{Y8mŷ??,??d?(?%?	ZV?j??"????? ???*iV?A?whf@?4??W?8v??u߄j?????2 ????I?q?}(?c^d?<(?+?lfD?Gmrdh?ٓ???&?E??2?!{??/?? ???E?ͤ؀M?/+ֵ?m?????ȼ?p?B$?F?a?$???#f? ?????߸? ???f??I???? ?6?????6Ĥ({ȋ?:?4????nlt2?ޤ?;(Vp?Ђ?e?&???? _????_@Z??0?J??2?*?.??9??Yq?$+BK?e*׀?"rY??R?k? ?mno ?K?Ehj?????y?T=A???n?h????$p;K??
?????P???n?$I4???eQF?R?$yI?Ɣ?K??(K??1??fCֳ$??:l?)3.I&?P?rdZ???????O/????\W??6?,Q?%'?ԗ?1??i dMKJG?աp2C
???"
Σ*s?? Z??????]?$]? ?6?La?K??T?
5̓??Lb?<x?oA[?i?ol?????׏/???8??!?׎򡁕`?? Ek`?F8͇?bʼ?Y:4????rs:?s?K?????(!R????1/?!?e]?4!??/?u??h %A???????m%??r	$???$h`?0?/?1T(?B/e??4(a??s??N??~_????ܰ??A2t4x?Z<Ć?%?P?l?(~%??7I??-?e?Ĥ3?)? :Kd?!
t,)?|e??0&?ma?$F5???iX9???Q44?AЎq?a%$
?i4???7?f9?@?????G??3?????QJT4%AZ:F???X?+b??b???DC??????hX?V?Β?Z?DC???/?%????D?ɹ??r???@??~'??Ta??У?hh?	gA?c?hX???D<͉??цg9?P???,??w?a\???Hq2!9J??k??c?hX??l??
3K??Rp??6?U%-?????q??ɒ?|?S????А??y?z?{RQK??".????;??my??}?R?#FŁ?z?{N?͖X𭽜}D??J,??rP?Eְ?6ZpH??!????ZpD????s??z?@K??a??(??P?@?ȰcZal? (1z7?Xo*$?,?k?.?7i?m??=??U?T?{?y????????m???|?v????Ґ?6???
????)տ?D???㝪EIƞf????`B??C?z??Vjp?h?W?o??M?????Sjp?"懒^)?Q?;?`&`C?ᄊ?4ɱf?&?75?L?c?p?"~KZ?s?~??ڵ?d9K?)?xgt/?	jpG?$?=????1I?B?PJU???[?SNm???zo?X???Qu?9Ը??*$??????4?Pq??^;?膐?L?K???#<?gQiȄ????l?:DAiȄ\R?o???ٝk2?.i?7%E?KC6???{?8???䄯?8Pp????i?׽??@X2??!??>K??=?-?6\??BG?Npy??́[̰?<l?,??U?`?y?z۴J?%Q????7{?Z?;??????f??!a??DH??^???????9???)~v5?<??!?%??%?)Xm??.	?ԡ%Ĥz?(C?IR?[B????3???g\k??2lCŽn???\r؆Jm?#p?e'e؆ʙ?;?85?r?a?$?67?5?2lC?c???s؆?'???8!???a*?+?o8??[r?aC?x??I?O?6?u??h.>dvؐ??_?~??Q??M?C??'??:?rq?J>??????"?7b?!?
????ÞF?-????!?K?p?)?
??????!?W??o&?,ݤu?
?? ???W??ޙŴ??
FS]?F??H?c?tp??c????0?n2Aq??[??n0Bq??㥾???Y?`?5??ݬߢ?14zo֓;p?ED?A?{<=(q?f??d??I?+??A?\x?.???R????????d???ˊ)8?0?&.??? F?ʾ?????	?od??e?kx???
-2??M^?^a?X<?????+l??????oQ@???2??@??J?~??&5.?=I??bоl޵^??A?#)?a*N6?M???@? ????2?????[?`?hr????W(p!	f-?8?^]?3?$??????T???Dc?]xt?t?ҕ865??e?a?z?????[?(?r?*?N?v???ZJ?7F?B?GÑ?D_᡼?cqjX??K?р3$`&???b?0??ۣ????_~???=???-??gv?c?ް??l???D???&87P?_?eG?I?rf?8lG??M??A?N???*[?,??aq%?"??S?????JUϡm6U?0?`?d??Q?5?s)qG????(@?[ҫb????N?1:z%?ڼN?1?VS???fuڰ?Ī??i??V????iC1!?mzi??_?ח?B??3?????????????tz???<~???????*?byɉJ!?bٱ???W?????-#?????
????/O#˨w?^?%z6?x\?ҙ???1I?|?<?|????????????>pٵ???[???I?O[P?o?@.9??۫?򚳘???>>?ktu?fe?ߠUJ;$???t?????̮cKA?g????(?"???CR??ԋ5???&iub[??ey̮???9?đ????,^?)RcE?qA5??pG5?g?!???R"????	??$????P?6C?u??m????????????????׈?&49?
??????ŷ?b??;???JjYC)?W?%?/??Z?~? ?(4??X/p?x?J?Sxr	ѯCX?Z??"?@ޙ?M!H???iM4??q?y ?aJ5??Yc???_??3??1?X?B-}??@*??Ve?=??????/?c?uH??pD????<??`Y?g????6?T{?r?IH	????~?????w?"׶???@r?e?WIE??y?dH??$Ԓ(;?4??W$a?l?$??O????CE?.)^??R}?L?PѸK???p?EH]Y?J?????I*wI?wX????????k߁????:?@??Ê??
?????%?g????C5?WI?Ȑ??6{i?Kj??J??s?Tڛ??z??0???ͷh?4%?M??\a?*@??ps?l?j??
<????!?w0ݓ??o?????z?h??5WX???	???5W0?[? ?{??[?H?gȾ??71=1Y?U8P???7?(?w???7??dͱ??????`f???!??˨????/?q
?=x?U??$???X?!ʟ;?Ꮹɀ?.??S}??D?-!??S?r??????꫍%%ߠш???K"%!?ͷ?G???y??P?S?¾B?$
r??K?WX?($??)?+???,??-?+?d%a?t?m?j???S(Mw?&׳`?_???????%"?G@??)❣???.?????
,??$G??v???D(??????\?/??8=?t???eY?8??      ?   '   x?3?tqV?/H-J,?/?L?28??f?y1z\\\ ?M	9      ?   v  x?u??n?0?5?K#?@R?kB܎?̀?	8?K???O_?v1?????sY|?:?????????I?tPOJ????V???m??J??@?????NvT?6{S*+????J?G(:?V?T????"???m??Mqփff?B?t,P]fj?I?????,Hj???z??\??G?E??;ͮy???K?x??	_??&?C96???{.??C?;?[h???5v??,=?X??}??ϲ܉'O?????#????W???@2L???:7?9!???]q?????LW&??:??z[????+A?㠚2?P?3{/?W0?a??@?讁^?8???~o?a???????'?yk?/VK|??/۶??u?     