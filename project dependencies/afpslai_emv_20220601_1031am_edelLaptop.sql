PGDMP     .        
            z            afpslai_emv    13.3    13.3 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
                postgres    false            �            1259    34181    address    TABLE     �  CREATE TABLE afpslai_emv.address (
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
       afpslai_emv         heap    postgres    false    4            �            1259    34190    address_serial    SEQUENCE     �   CREATE SEQUENCE afpslai_emv.address_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE afpslai_emv.address_serial;
       afpslai_emv          postgres    false    4    201            �           0    0    address_serial    SEQUENCE OWNED BY     K   ALTER SEQUENCE afpslai_emv.address_serial OWNED BY afpslai_emv.address.id;
          afpslai_emv          postgres    false    202            �            1259    34192    api_request_log    TABLE     �  CREATE TABLE afpslai_emv.api_request_log (
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
       afpslai_emv         heap    postgres    false    4            �            1259    34201    api_request_log_serial    SEQUENCE     �   CREATE SEQUENCE afpslai_emv.api_request_log_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE afpslai_emv.api_request_log_serial;
       afpslai_emv          postgres    false    203    4            �           0    0    api_request_log_serial    SEQUENCE OWNED BY     [   ALTER SEQUENCE afpslai_emv.api_request_log_serial OWNED BY afpslai_emv.api_request_log.id;
          afpslai_emv          postgres    false    204            �            1259    34203    associate_type    TABLE     �   CREATE TABLE afpslai_emv.associate_type (
    id integer NOT NULL,
    "associateType" character varying(20),
    is_deleted boolean DEFAULT false,
    "cbsCode" character varying(6)
);
 '   DROP TABLE afpslai_emv.associate_type;
       afpslai_emv         heap    postgres    false    4            �            1259    34207    associate_type_serial    SEQUENCE     �   CREATE SEQUENCE afpslai_emv.associate_type_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE afpslai_emv.associate_type_serial;
       afpslai_emv          postgres    false    205    4            �           0    0    associate_type_serial    SEQUENCE OWNED BY     Y   ALTER SEQUENCE afpslai_emv.associate_type_serial OWNED BY afpslai_emv.associate_type.id;
          afpslai_emv          postgres    false    206            �            1259    34209    branch    TABLE     �   CREATE TABLE afpslai_emv.branch (
    id integer NOT NULL,
    "branchName" character varying(100),
    code character varying(10),
    is_deleted boolean DEFAULT false
);
    DROP TABLE afpslai_emv.branch;
       afpslai_emv         heap    postgres    false    4            �            1259    34213    branch_serial    SEQUENCE     �   CREATE SEQUENCE afpslai_emv.branch_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE afpslai_emv.branch_serial;
       afpslai_emv          postgres    false    207    4            �           0    0    branch_serial    SEQUENCE OWNED BY     I   ALTER SEQUENCE afpslai_emv.branch_serial OWNED BY afpslai_emv.branch.id;
          afpslai_emv          postgres    false    208            �            1259    34215    card    TABLE     W  CREATE TABLE afpslai_emv.card (
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
       afpslai_emv         heap    postgres    false    4            �            1259    34221    card_serial    SEQUENCE     �   CREATE SEQUENCE afpslai_emv.card_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE afpslai_emv.card_serial;
       afpslai_emv          postgres    false    209    4            �           0    0    card_serial    SEQUENCE OWNED BY     E   ALTER SEQUENCE afpslai_emv.card_serial OWNED BY afpslai_emv.card.id;
          afpslai_emv          postgres    false    210            �            1259    34223    civil_status    TABLE     �   CREATE TABLE afpslai_emv.civil_status (
    id integer NOT NULL,
    "civilStatus" character varying(20),
    is_deleted boolean DEFAULT false,
    "cbsCode" character varying(6)
);
 %   DROP TABLE afpslai_emv.civil_status;
       afpslai_emv         heap    postgres    false    4            �            1259    34227    civil_status_serial    SEQUENCE     �   CREATE SEQUENCE afpslai_emv.civil_status_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE afpslai_emv.civil_status_serial;
       afpslai_emv          postgres    false    211    4            �           0    0    civil_status_serial    SEQUENCE OWNED BY     U   ALTER SEQUENCE afpslai_emv.civil_status_serial OWNED BY afpslai_emv.civil_status.id;
          afpslai_emv          postgres    false    212            �            1259    34229    country    TABLE     �   CREATE TABLE afpslai_emv.country (
    id integer NOT NULL,
    "countryName" character varying(100),
    code character varying(10),
    is_deleted boolean DEFAULT false
);
     DROP TABLE afpslai_emv.country;
       afpslai_emv         heap    postgres    false    4            �            1259    34233    country_serial    SEQUENCE     �   CREATE SEQUENCE afpslai_emv.country_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE afpslai_emv.country_serial;
       afpslai_emv          postgres    false    213    4            �           0    0    country_serial    SEQUENCE OWNED BY     K   ALTER SEQUENCE afpslai_emv.country_serial OWNED BY afpslai_emv.country.id;
          afpslai_emv          postgres    false    214            �            1259    34235    cps_card_elements    TABLE     �  CREATE TABLE afpslai_emv.cps_card_elements (
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
       afpslai_emv         heap    postgres    false    4            �            1259    34238    cps_card_elements_serial    SEQUENCE     �   CREATE SEQUENCE afpslai_emv.cps_card_elements_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE afpslai_emv.cps_card_elements_serial;
       afpslai_emv          postgres    false    215    4            �           0    0    cps_card_elements_serial    SEQUENCE OWNED BY     _   ALTER SEQUENCE afpslai_emv.cps_card_elements_serial OWNED BY afpslai_emv.cps_card_elements.id;
          afpslai_emv          postgres    false    216            �            1259    34240    dcs_system_setting    TABLE     E  CREATE TABLE afpslai_emv.dcs_system_setting (
    id integer NOT NULL,
    cif_length integer,
    member_type_assoc_allow_yrs integer,
    member_type_reg_allow_yrs integer,
    cardname_length integer,
    system_default_password character varying(100),
    last_updated timestamp without time zone DEFAULT CURRENT_DATE
);
 +   DROP TABLE afpslai_emv.dcs_system_setting;
       afpslai_emv         heap    postgres    false    4            �            1259    34244    dcs_system_setting_serial    SEQUENCE     �   CREATE SEQUENCE afpslai_emv.dcs_system_setting_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE afpslai_emv.dcs_system_setting_serial;
       afpslai_emv          postgres    false    4    217            �           0    0    dcs_system_setting_serial    SEQUENCE OWNED BY     a   ALTER SEQUENCE afpslai_emv.dcs_system_setting_serial OWNED BY afpslai_emv.dcs_system_setting.id;
          afpslai_emv          postgres    false    218            �            1259    34246    member    TABLE     G  CREATE TABLE afpslai_emv.member (
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
       afpslai_emv         heap    postgres    false    4            �            1259    34252    member_serial    SEQUENCE     �   CREATE SEQUENCE afpslai_emv.member_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE afpslai_emv.member_serial;
       afpslai_emv          postgres    false    4    219            �           0    0    member_serial    SEQUENCE OWNED BY     I   ALTER SEQUENCE afpslai_emv.member_serial OWNED BY afpslai_emv.member.id;
          afpslai_emv          postgres    false    220            �            1259    34254    membership_status    TABLE     �   CREATE TABLE afpslai_emv.membership_status (
    id integer NOT NULL,
    "membershipStatus" character varying(20),
    is_deleted boolean DEFAULT false,
    "cbsCode" character varying(6)
);
 *   DROP TABLE afpslai_emv.membership_status;
       afpslai_emv         heap    postgres    false    4            �            1259    34258    membership_status_serial    SEQUENCE     �   CREATE SEQUENCE afpslai_emv.membership_status_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE afpslai_emv.membership_status_serial;
       afpslai_emv          postgres    false    221    4            �           0    0    membership_status_serial    SEQUENCE OWNED BY     _   ALTER SEQUENCE afpslai_emv.membership_status_serial OWNED BY afpslai_emv.membership_status.id;
          afpslai_emv          postgres    false    222            �            1259    34260    membership_type    TABLE     �   CREATE TABLE afpslai_emv.membership_type (
    id integer NOT NULL,
    "membershipType" character varying(20),
    is_deleted boolean DEFAULT false,
    "cbsCode" character varying(6)
);
 (   DROP TABLE afpslai_emv.membership_type;
       afpslai_emv         heap    postgres    false    4            �            1259    34264    membership_type_serial    SEQUENCE     �   CREATE SEQUENCE afpslai_emv.membership_type_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE afpslai_emv.membership_type_serial;
       afpslai_emv          postgres    false    223    4            �           0    0    membership_type_serial    SEQUENCE OWNED BY     [   ALTER SEQUENCE afpslai_emv.membership_type_serial OWNED BY afpslai_emv.membership_type.id;
          afpslai_emv          postgres    false    224            �            1259    34266    online_registration    TABLE     �  CREATE TABLE afpslai_emv.online_registration (
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
       afpslai_emv         heap    postgres    false    4            �            1259    34274    online_registration_serial    SEQUENCE     �   CREATE SEQUENCE afpslai_emv.online_registration_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE afpslai_emv.online_registration_serial;
       afpslai_emv          postgres    false    225    4            �           0    0    online_registration_serial    SEQUENCE OWNED BY     c   ALTER SEQUENCE afpslai_emv.online_registration_serial OWNED BY afpslai_emv.online_registration.id;
          afpslai_emv          postgres    false    226            �            1259    34276 
   print_type    TABLE     �   CREATE TABLE afpslai_emv.print_type (
    id integer NOT NULL,
    "printType" character varying(20),
    is_deleted boolean DEFAULT false
);
 #   DROP TABLE afpslai_emv.print_type;
       afpslai_emv         heap    postgres    false    4            �            1259    34280    print_type_serial    SEQUENCE     �   CREATE SEQUENCE afpslai_emv.print_type_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE afpslai_emv.print_type_serial;
       afpslai_emv          postgres    false    227    4            �           0    0    print_type_serial    SEQUENCE OWNED BY     Q   ALTER SEQUENCE afpslai_emv.print_type_serial OWNED BY afpslai_emv.print_type.id;
          afpslai_emv          postgres    false    228            �            1259    34282    recard_reason    TABLE     �   CREATE TABLE afpslai_emv.recard_reason (
    id integer NOT NULL,
    "recardReason" character varying(50),
    is_deleted boolean DEFAULT false
);
 &   DROP TABLE afpslai_emv.recard_reason;
       afpslai_emv         heap    postgres    false    4            �            1259    34286    recard_reason_serial    SEQUENCE     �   CREATE SEQUENCE afpslai_emv.recard_reason_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE afpslai_emv.recard_reason_serial;
       afpslai_emv          postgres    false    4    229            �           0    0    recard_reason_serial    SEQUENCE OWNED BY     W   ALTER SEQUENCE afpslai_emv.recard_reason_serial OWNED BY afpslai_emv.recard_reason.id;
          afpslai_emv          postgres    false    230            �            1259    34288 
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
       afpslai_emv         heap    postgres    false    4            �            1259    34296    system_log_serial    SEQUENCE     �   CREATE SEQUENCE afpslai_emv.system_log_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE afpslai_emv.system_log_serial;
       afpslai_emv          postgres    false    4    231            �           0    0    system_log_serial    SEQUENCE OWNED BY     Q   ALTER SEQUENCE afpslai_emv.system_log_serial OWNED BY afpslai_emv.system_log.id;
          afpslai_emv          postgres    false    232            �            1259    34298    system_role    TABLE     �   CREATE TABLE afpslai_emv.system_role (
    id integer NOT NULL,
    role character varying(20),
    is_deleted boolean DEFAULT false
);
 $   DROP TABLE afpslai_emv.system_role;
       afpslai_emv         heap    postgres    false    4            �            1259    34302    system_role_serial    SEQUENCE     �   CREATE SEQUENCE afpslai_emv.system_role_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE afpslai_emv.system_role_serial;
       afpslai_emv          postgres    false    233    4            �           0    0    system_role_serial    SEQUENCE OWNED BY     S   ALTER SEQUENCE afpslai_emv.system_role_serial OWNED BY afpslai_emv.system_role.id;
          afpslai_emv          postgres    false    234            �            1259    34304    system_user    TABLE       CREATE TABLE afpslai_emv.system_user (
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
    is_default_pass boolean,
    login_attmpt_ctr smallint
);
 $   DROP TABLE afpslai_emv.system_user;
       afpslai_emv         heap    postgres    false    4            �            1259    34313    system_user_serial    SEQUENCE     �   CREATE SEQUENCE afpslai_emv.system_user_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE afpslai_emv.system_user_serial;
       afpslai_emv          postgres    false    235    4            �           0    0    system_user_serial    SEQUENCE OWNED BY     S   ALTER SEQUENCE afpslai_emv.system_user_serial OWNED BY afpslai_emv.system_user.id;
          afpslai_emv          postgres    false    236            �            1259    34375    userlogon_serial    SEQUENCE     �   CREATE SEQUENCE afpslai_emv.userlogon_serial
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 ,   DROP SEQUENCE afpslai_emv.userlogon_serial;
       afpslai_emv          postgres    false    4            �            1259    34377 	   userlogon    TABLE     �  CREATE TABLE afpslai_emv.userlogon (
    id integer DEFAULT nextval('afpslai_emv.userlogon_serial'::regclass) NOT NULL,
    user_name character varying(50),
    login_date date DEFAULT CURRENT_DATE,
    login_time time without time zone DEFAULT CURRENT_TIME,
    logout_date date DEFAULT CURRENT_DATE,
    logout_time time without time zone DEFAULT CURRENT_TIME,
    system character varying(10)
);
 "   DROP TABLE afpslai_emv.userlogon;
       afpslai_emv         heap    postgres    false    237    4            �           2604    34315 
   address id    DEFAULT     r   ALTER TABLE ONLY afpslai_emv.address ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.address_serial'::regclass);
 >   ALTER TABLE afpslai_emv.address ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    202    201            �           2604    34316    api_request_log id    DEFAULT     �   ALTER TABLE ONLY afpslai_emv.api_request_log ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.api_request_log_serial'::regclass);
 F   ALTER TABLE afpslai_emv.api_request_log ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    204    203            �           2604    34317    associate_type id    DEFAULT     �   ALTER TABLE ONLY afpslai_emv.associate_type ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.associate_type_serial'::regclass);
 E   ALTER TABLE afpslai_emv.associate_type ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    206    205            �           2604    34318 	   branch id    DEFAULT     p   ALTER TABLE ONLY afpslai_emv.branch ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.branch_serial'::regclass);
 =   ALTER TABLE afpslai_emv.branch ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    208    207            �           2604    34319    card id    DEFAULT     l   ALTER TABLE ONLY afpslai_emv.card ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.card_serial'::regclass);
 ;   ALTER TABLE afpslai_emv.card ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    210    209            �           2604    34320    civil_status id    DEFAULT     |   ALTER TABLE ONLY afpslai_emv.civil_status ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.civil_status_serial'::regclass);
 C   ALTER TABLE afpslai_emv.civil_status ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    212    211            �           2604    34321 
   country id    DEFAULT     r   ALTER TABLE ONLY afpslai_emv.country ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.country_serial'::regclass);
 >   ALTER TABLE afpslai_emv.country ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    214    213            �           2604    34322    cps_card_elements id    DEFAULT     �   ALTER TABLE ONLY afpslai_emv.cps_card_elements ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.cps_card_elements_serial'::regclass);
 H   ALTER TABLE afpslai_emv.cps_card_elements ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    216    215            �           2604    34323    dcs_system_setting id    DEFAULT     �   ALTER TABLE ONLY afpslai_emv.dcs_system_setting ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.dcs_system_setting_serial'::regclass);
 I   ALTER TABLE afpslai_emv.dcs_system_setting ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    218    217            �           2604    34324 	   member id    DEFAULT     p   ALTER TABLE ONLY afpslai_emv.member ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.member_serial'::regclass);
 =   ALTER TABLE afpslai_emv.member ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    220    219            �           2604    34325    membership_status id    DEFAULT     �   ALTER TABLE ONLY afpslai_emv.membership_status ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.membership_status_serial'::regclass);
 H   ALTER TABLE afpslai_emv.membership_status ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    222    221            �           2604    34326    membership_type id    DEFAULT     �   ALTER TABLE ONLY afpslai_emv.membership_type ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.membership_type_serial'::regclass);
 F   ALTER TABLE afpslai_emv.membership_type ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    224    223            �           2604    34327    online_registration id    DEFAULT     �   ALTER TABLE ONLY afpslai_emv.online_registration ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.online_registration_serial'::regclass);
 J   ALTER TABLE afpslai_emv.online_registration ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    226    225            �           2604    34328    print_type id    DEFAULT     x   ALTER TABLE ONLY afpslai_emv.print_type ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.print_type_serial'::regclass);
 A   ALTER TABLE afpslai_emv.print_type ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    228    227            �           2604    34329    recard_reason id    DEFAULT     ~   ALTER TABLE ONLY afpslai_emv.recard_reason ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.recard_reason_serial'::regclass);
 D   ALTER TABLE afpslai_emv.recard_reason ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    230    229            �           2604    34330    system_log id    DEFAULT     x   ALTER TABLE ONLY afpslai_emv.system_log ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.system_log_serial'::regclass);
 A   ALTER TABLE afpslai_emv.system_log ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    232    231            �           2604    34331    system_role id    DEFAULT     z   ALTER TABLE ONLY afpslai_emv.system_role ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.system_role_serial'::regclass);
 B   ALTER TABLE afpslai_emv.system_role ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    234    233            �           2604    34332    system_user id    DEFAULT     z   ALTER TABLE ONLY afpslai_emv.system_user ALTER COLUMN id SET DEFAULT nextval('afpslai_emv.system_user_serial'::regclass);
 B   ALTER TABLE afpslai_emv.system_user ALTER COLUMN id DROP DEFAULT;
       afpslai_emv          postgres    false    236    235            n          0    34181    address 
   TABLE DATA           �   COPY afpslai_emv.address (id, member_id, address1, address2, address3, city, province, country_id, zipcode, date_post, time_post, is_cancel) FROM stdin;
    afpslai_emv          postgres    false    201   Y�       p          0    34192    api_request_log 
   TABLE DATA           �   COPY afpslai_emv.api_request_log (id, api_owner, api_name, member_id, card_id, request, response, is_success, date_post, time_post) FROM stdin;
    afpslai_emv          postgres    false    203   ��       r          0    34203    associate_type 
   TABLE DATA           Y   COPY afpslai_emv.associate_type (id, "associateType", is_deleted, "cbsCode") FROM stdin;
    afpslai_emv          postgres    false    205   ��       t          0    34209    branch 
   TABLE DATA           I   COPY afpslai_emv.branch (id, "branchName", code, is_deleted) FROM stdin;
    afpslai_emv          postgres    false    207   �       v          0    34215    card 
   TABLE DATA           u   COPY afpslai_emv.card (id, member_id, "cardNo", "date_CMS", "date_CBS", date_post, time_post, is_cancel) FROM stdin;
    afpslai_emv          postgres    false    209   /�       x          0    34223    civil_status 
   TABLE DATA           U   COPY afpslai_emv.civil_status (id, "civilStatus", is_deleted, "cbsCode") FROM stdin;
    afpslai_emv          postgres    false    211   J�       z          0    34229    country 
   TABLE DATA           K   COPY afpslai_emv.country (id, "countryName", code, is_deleted) FROM stdin;
    afpslai_emv          postgres    false    213   ��       |          0    34235    cps_card_elements 
   TABLE DATA           �   COPY afpslai_emv.cps_card_elements (id, element, x, y, width, height, font_name, font_size, font_style, element_type, date_post, time_post, last_updated) FROM stdin;
    afpslai_emv          postgres    false    215   ��       ~          0    34240    dcs_system_setting 
   TABLE DATA           �   COPY afpslai_emv.dcs_system_setting (id, cif_length, member_type_assoc_allow_yrs, member_type_reg_allow_yrs, cardname_length, system_default_password, last_updated) FROM stdin;
    afpslai_emv          postgres    false    217   g�       �          0    34246    member 
   TABLE DATA           �  COPY afpslai_emv.member (id, cif, last_name, first_name, middle_name, suffix, gender, date_birth, civil_status_id, membership_type_id, membership_status_id, membership_date, contact_nos, mobile_nos, emergency_contact_name, emergency_contact_nos, principal_associate_type_id, principal_cif, principal_name, cca_no, user_id, terminal_id, branch_id, online_reference_number, card_name, email, print_type_id, recard_reason_id, date_post, time_post, is_cancel) FROM stdin;
    afpslai_emv          postgres    false    219   ��       �          0    34254    membership_status 
   TABLE DATA           _   COPY afpslai_emv.membership_status (id, "membershipStatus", is_deleted, "cbsCode") FROM stdin;
    afpslai_emv          postgres    false    221   �       �          0    34260    membership_type 
   TABLE DATA           [   COPY afpslai_emv.membership_type (id, "membershipType", is_deleted, "cbsCode") FROM stdin;
    afpslai_emv          postgres    false    223   o�       �          0    34266    online_registration 
   TABLE DATA           
  COPY afpslai_emv.online_registration (id, cif, last_name, first_name, middle_name, suffix, gender, date_birth, mobile_nos, email, cca_no, reference_number, qr_code, branch, date_schedule, time_schedule, date_captured, reference_id, date_post, time_post) FROM stdin;
    afpslai_emv          postgres    false    225   ��       �          0    34276 
   print_type 
   TABLE DATA           F   COPY afpslai_emv.print_type (id, "printType", is_deleted) FROM stdin;
    afpslai_emv          postgres    false    227   9�       �          0    34282    recard_reason 
   TABLE DATA           L   COPY afpslai_emv.recard_reason (id, "recardReason", is_deleted) FROM stdin;
    afpslai_emv          postgres    false    229   ��       �          0    34288 
   system_log 
   TABLE DATA           h   COPY afpslai_emv.system_log (id, system, log_desc, log_type, user_id, date_post, time_post) FROM stdin;
    afpslai_emv          postgres    false    231   ��       �          0    34298    system_role 
   TABLE DATA           @   COPY afpslai_emv.system_role (id, role, is_deleted) FROM stdin;
    afpslai_emv          postgres    false    233   %      �          0    34304    system_user 
   TABLE DATA           �   COPY afpslai_emv.system_user (id, user_name, user_pass, last_name, first_name, middle_name, suffix, role_id, status, is_deleted, date_post, time_post, is_default_pass, login_attmpt_ctr) FROM stdin;
    afpslai_emv          postgres    false    235   g      �          0    34377 	   userlogon 
   TABLE DATA           q   COPY afpslai_emv.userlogon (id, user_name, login_date, login_time, logout_date, logout_time, system) FROM stdin;
    afpslai_emv          postgres    false    238   �%      �           0    0    address_serial    SEQUENCE SET     B   SELECT pg_catalog.setval('afpslai_emv.address_serial', 29, true);
          afpslai_emv          postgres    false    202            �           0    0    api_request_log_serial    SEQUENCE SET     K   SELECT pg_catalog.setval('afpslai_emv.api_request_log_serial', 119, true);
          afpslai_emv          postgres    false    204            �           0    0    associate_type_serial    SEQUENCE SET     H   SELECT pg_catalog.setval('afpslai_emv.associate_type_serial', 6, true);
          afpslai_emv          postgres    false    206            �           0    0    branch_serial    SEQUENCE SET     A   SELECT pg_catalog.setval('afpslai_emv.branch_serial', 24, true);
          afpslai_emv          postgres    false    208            �           0    0    card_serial    SEQUENCE SET     ?   SELECT pg_catalog.setval('afpslai_emv.card_serial', 98, true);
          afpslai_emv          postgres    false    210            �           0    0    civil_status_serial    SEQUENCE SET     F   SELECT pg_catalog.setval('afpslai_emv.civil_status_serial', 7, true);
          afpslai_emv          postgres    false    212            �           0    0    country_serial    SEQUENCE SET     C   SELECT pg_catalog.setval('afpslai_emv.country_serial', 173, true);
          afpslai_emv          postgres    false    214            �           0    0    cps_card_elements_serial    SEQUENCE SET     K   SELECT pg_catalog.setval('afpslai_emv.cps_card_elements_serial', 5, true);
          afpslai_emv          postgres    false    216            �           0    0    dcs_system_setting_serial    SEQUENCE SET     L   SELECT pg_catalog.setval('afpslai_emv.dcs_system_setting_serial', 1, true);
          afpslai_emv          postgres    false    218            �           0    0    member_serial    SEQUENCE SET     A   SELECT pg_catalog.setval('afpslai_emv.member_serial', 29, true);
          afpslai_emv          postgres    false    220            �           0    0    membership_status_serial    SEQUENCE SET     K   SELECT pg_catalog.setval('afpslai_emv.membership_status_serial', 5, true);
          afpslai_emv          postgres    false    222            �           0    0    membership_type_serial    SEQUENCE SET     I   SELECT pg_catalog.setval('afpslai_emv.membership_type_serial', 5, true);
          afpslai_emv          postgres    false    224            �           0    0    online_registration_serial    SEQUENCE SET     N   SELECT pg_catalog.setval('afpslai_emv.online_registration_serial', 10, true);
          afpslai_emv          postgres    false    226            �           0    0    print_type_serial    SEQUENCE SET     D   SELECT pg_catalog.setval('afpslai_emv.print_type_serial', 4, true);
          afpslai_emv          postgres    false    228            �           0    0    recard_reason_serial    SEQUENCE SET     G   SELECT pg_catalog.setval('afpslai_emv.recard_reason_serial', 5, true);
          afpslai_emv          postgres    false    230            �           0    0    system_log_serial    SEQUENCE SET     G   SELECT pg_catalog.setval('afpslai_emv.system_log_serial', 1136, true);
          afpslai_emv          postgres    false    232            �           0    0    system_role_serial    SEQUENCE SET     E   SELECT pg_catalog.setval('afpslai_emv.system_role_serial', 3, true);
          afpslai_emv          postgres    false    234            �           0    0    system_user_serial    SEQUENCE SET     F   SELECT pg_catalog.setval('afpslai_emv.system_user_serial', 16, true);
          afpslai_emv          postgres    false    236            �           0    0    userlogon_serial    SEQUENCE SET     D   SELECT pg_catalog.setval('afpslai_emv.userlogon_serial', 90, true);
          afpslai_emv          postgres    false    237            �           2606    34334    address address_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY afpslai_emv.address
    ADD CONSTRAINT address_pkey PRIMARY KEY (id);
 C   ALTER TABLE ONLY afpslai_emv.address DROP CONSTRAINT address_pkey;
       afpslai_emv            postgres    false    201            �           2606    34336 $   api_request_log api_request_log_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY afpslai_emv.api_request_log
    ADD CONSTRAINT api_request_log_pkey PRIMARY KEY (id);
 S   ALTER TABLE ONLY afpslai_emv.api_request_log DROP CONSTRAINT api_request_log_pkey;
       afpslai_emv            postgres    false    203            �           2606    34338 "   associate_type associate_type_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY afpslai_emv.associate_type
    ADD CONSTRAINT associate_type_pkey PRIMARY KEY (id);
 Q   ALTER TABLE ONLY afpslai_emv.associate_type DROP CONSTRAINT associate_type_pkey;
       afpslai_emv            postgres    false    205            �           2606    34340    branch branch_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY afpslai_emv.branch
    ADD CONSTRAINT branch_pkey PRIMARY KEY (id);
 A   ALTER TABLE ONLY afpslai_emv.branch DROP CONSTRAINT branch_pkey;
       afpslai_emv            postgres    false    207            �           2606    34342    card card_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY afpslai_emv.card
    ADD CONSTRAINT card_pkey PRIMARY KEY (id);
 =   ALTER TABLE ONLY afpslai_emv.card DROP CONSTRAINT card_pkey;
       afpslai_emv            postgres    false    209            �           2606    34344    civil_status civil_status_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY afpslai_emv.civil_status
    ADD CONSTRAINT civil_status_pkey PRIMARY KEY (id);
 M   ALTER TABLE ONLY afpslai_emv.civil_status DROP CONSTRAINT civil_status_pkey;
       afpslai_emv            postgres    false    211            �           2606    34346    country country_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY afpslai_emv.country
    ADD CONSTRAINT country_pkey PRIMARY KEY (id);
 C   ALTER TABLE ONLY afpslai_emv.country DROP CONSTRAINT country_pkey;
       afpslai_emv            postgres    false    213            �           2606    34348 (   cps_card_elements cps_card_elements_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY afpslai_emv.cps_card_elements
    ADD CONSTRAINT cps_card_elements_pkey PRIMARY KEY (id);
 W   ALTER TABLE ONLY afpslai_emv.cps_card_elements DROP CONSTRAINT cps_card_elements_pkey;
       afpslai_emv            postgres    false    215            �           2606    34350 *   dcs_system_setting dcs_system_setting_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY afpslai_emv.dcs_system_setting
    ADD CONSTRAINT dcs_system_setting_pkey PRIMARY KEY (id);
 Y   ALTER TABLE ONLY afpslai_emv.dcs_system_setting DROP CONSTRAINT dcs_system_setting_pkey;
       afpslai_emv            postgres    false    217            �           2606    34352    member member_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY afpslai_emv.member
    ADD CONSTRAINT member_pkey PRIMARY KEY (id);
 A   ALTER TABLE ONLY afpslai_emv.member DROP CONSTRAINT member_pkey;
       afpslai_emv            postgres    false    219            �           2606    34354 (   membership_status membership_status_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY afpslai_emv.membership_status
    ADD CONSTRAINT membership_status_pkey PRIMARY KEY (id);
 W   ALTER TABLE ONLY afpslai_emv.membership_status DROP CONSTRAINT membership_status_pkey;
       afpslai_emv            postgres    false    221            �           2606    34356 $   membership_type membership_type_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY afpslai_emv.membership_type
    ADD CONSTRAINT membership_type_pkey PRIMARY KEY (id);
 S   ALTER TABLE ONLY afpslai_emv.membership_type DROP CONSTRAINT membership_type_pkey;
       afpslai_emv            postgres    false    223            �           2606    34358 ,   online_registration online_registration_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY afpslai_emv.online_registration
    ADD CONSTRAINT online_registration_pkey PRIMARY KEY (id);
 [   ALTER TABLE ONLY afpslai_emv.online_registration DROP CONSTRAINT online_registration_pkey;
       afpslai_emv            postgres    false    225            �           2606    34360    print_type print_type_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY afpslai_emv.print_type
    ADD CONSTRAINT print_type_pkey PRIMARY KEY (id);
 I   ALTER TABLE ONLY afpslai_emv.print_type DROP CONSTRAINT print_type_pkey;
       afpslai_emv            postgres    false    227            �           2606    34362     recard_reason recard_reason_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY afpslai_emv.recard_reason
    ADD CONSTRAINT recard_reason_pkey PRIMARY KEY (id);
 O   ALTER TABLE ONLY afpslai_emv.recard_reason DROP CONSTRAINT recard_reason_pkey;
       afpslai_emv            postgres    false    229            �           2606    34364    system_log system_log_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY afpslai_emv.system_log
    ADD CONSTRAINT system_log_pkey PRIMARY KEY (id);
 I   ALTER TABLE ONLY afpslai_emv.system_log DROP CONSTRAINT system_log_pkey;
       afpslai_emv            postgres    false    231            �           2606    34366    system_role system_role_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY afpslai_emv.system_role
    ADD CONSTRAINT system_role_pkey PRIMARY KEY (id);
 K   ALTER TABLE ONLY afpslai_emv.system_role DROP CONSTRAINT system_role_pkey;
       afpslai_emv            postgres    false    233            �           2606    34368    system_user system_user_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY afpslai_emv.system_user
    ADD CONSTRAINT system_user_pkey PRIMARY KEY (id);
 K   ALTER TABLE ONLY afpslai_emv.system_user DROP CONSTRAINT system_user_pkey;
       afpslai_emv            postgres    false    235            �           2606    34386    userlogon userlogon_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY afpslai_emv.userlogon
    ADD CONSTRAINT userlogon_pkey PRIMARY KEY (id);
 G   ALTER TABLE ONLY afpslai_emv.userlogon DROP CONSTRAINT userlogon_pkey;
       afpslai_emv            postgres    false    238            n   �  x����n�F���O1PO���ߍ��PW�wmg	
.��IQ$ۧ/GَW袀�R�#yxH� ����7#�'��Ǽm����0Q ������D6�b��:C�*
"ߝ#�� 6�N�)�F&���`+��OW����x| ��M0��0�yWϻ�3p�.%��z���יv@���b�7͇������IcB�,zІ)N�*�('L�9��|(Y�W�u��_!8Bp2s��dIc�U��3�
�����6�P�t &D+a&�� �hb@G�&��c3���Tڌ�a*O}A��[9h%q��rݭŦ���H�#	G�����sMGR��StR��I�[*��,�sG�d�*֪��d��(��{Y�������/'$D�s����LU�q'���a�d�ٽ���Ҿ��e��2��@n�O��Z$�
����g 'f�ý0	"g�@Gc�TxF�{q�'*�'�Sm�GJs�q����s�H�!��uEr����$� ���;�O���Uu��g�����t��3q�;x�&����-�Z�K��/?@ ����rnX�K�z�G�{[��ߗ���:����b�"���b?Al/��\�wy-��,y�W�fwK�M�;qv[�nK��������\c��Y�Pֱ%:ob'�d��I �ͫE��������ot��m�B���z����E^^������P&��j �WC�,�K+�EF_�啷0�5ʏ�[�������(�#�D�>Wg�qXI��/o�f�,V�ݪY�޴�P����tG����������$ڇo�}8g��ù2��_��z��tQ,r�|��~^nrw}�g}�Egy���J���������0��<<����}H���i{[SyS�����l�/g���      p      x���S��ǟg���<o&R�~��C�٤r�S�T��ʋ��� ��{�[��o��ôf6����!cZj��Ւt���E����t������I�u�_�ϫ���|q\��_�?
P�_+���jjdlm�GkJH7d������:��.�������v�fdtm���J�jk�?�ۤ�Bm�vޕvgM��zC��.�$4ݦ��#p���s�O�E���-Tl	�#���tж[~Tn�55��F�*c����>Y�6;?ޟ��W���.��Wի��ٷ����Q��m�3~���^�d����j�������9����S
��^ǛG���f���C*�@��F�����|rڼ뫣���l~>��M�O|[Lο�,�}��/��{�~�y��lJ�:�ټAx��fR鑥��ϳW���_�'�N��%#�|?��f��������E5�9��8�ke
2�`C���%�xBO؎'>9O)i�O�-����+�=Z<}�O��<��'���G�#��i��jo"�D�&��y�<я4lœZ�P#D���8�m�x�ۍw�t�ݭ��ї�j�0���K��Na�6"O��ӽ��l�yBBり��PE��T%��^�Ɗ@e����6�I��@B�Q9\�u�I��np���Ec�6�N����?|�Wo>�U��_��Iyz�v�(�::�)��^�h�x�O�1�m�V=C�>���!L1�1�sL,�-P��Q�R���
c/А�)��A���;h���`��H^�<��ip��������j�ޫ�1puQ���19��aH]:�R"��B	��	�'k���y�O6ȵZr�N��oƸ���5L�($YH�5���V�$e��G0nG0��!�|_��<km���R��e��<��Kmg0�S�V��,f����bZ��j�dr^}8|<�G���Md�l��dvQ�oWMNɗ����jr>�<!+|�����M�f�Bő�)_ר��ȲҢFrH]"�?h�5����g�vz:��W���gb�+���
Mz$��u�E��u�~�d
��Y� ӟ�����>L���:��_�&��������ٰ�^N~�yE��f��99�8�Kn'(c�� )*f.F��7�y_e��E��g���h�&�F��
	yl���M�~�}�"����?YЧ���_�����#n�Y��A�/�#G�|���#���%�
��eo����ү�Mz�3�ALg˯BS��'�\�$��׃8�nD-k�]3h��K� V��L�ӿ���e�������������G�n8��M��L��[���)�Xz)�Q���V�����]~S�E��ES͂�yC.�IVs?�~ܵ��я���؏�SPH����P����⪄d��u�mrF6��2�Zy��P�$��b�D2DW��%��W܍!�UUڕ(e
(dG1~Bv�
 3B�� r(!��2�iD�+�a�O�k���.M�]�k�]�i?��r���L P���G��	���smR��| �s���k�`ޗXs.�xs�j ���DB ��V��5�f@��t�n�}��?8:*.�R6\���,�l)��@9Ӆm��L�V�s�Ox�5ey.]�{�����t1��4���Y�d]�Z�U�׺���&�@�%J� ����,��{eY �[�l����Z�ф*&
� r8) Nf�??���� �k�l��E�KW�$���r,���z�)�.O�{z`��1F0XQ����ѺiQ6]Ѻ��z��D�ô�N�&�GOA� �L91���X�E;o�F[Q�ba��o�'�t�wVON$�ړ��[��M�-��-�;5xG��M�b�]�D:ўe�D�lؖ��+Kh_+o��҈��,!V�i��e�D��-a2\aF��r�F%̲F0�5j�Ԛ��1G^e�����7��+�*%̲*0�UiVo~~��v�W��רM4�W���JW��tM�3ö�5��0S{cN�S��O�v�4��0f8ݞ��ZR��׈>Z]��(5���l'JS�0C�N�R�wnz��:���򴅑��mc��ߨЛL�7*��M�y� ЏX���z�n��t��8������5h���Ҡ����}o7��6�v^q��(�����k/r?�Tzw��I��>�<fC�c,mb	��2��Ha���)R�ۡ-R��Nf���lx7��5I�K�X�K�v�%�gٌ��6
�
�)ޮ.�����*������.�ciˠ6w�n��ʔ�:dtv;R�(
�J+*L_XYa���ێuO�(�)\���5��[w$g����ϫ���{]���E�lW^t]p�������\��+���+���9�{
��nu�m�Sc�_�����$����wl���S�5$��v��d�LiE�I�e�)�郞���2	���Z��&��A����X��S`�!?sX�6�a��K�3Y��[+� \�D��'K�6k�!=3X��Cbmw�Vo��D?�҉R���RT��!E3��C2��Dw�J�5FQ�+��T���T�J5�O9ݐ�c�����j�A���;^�#���z�C'��xqbW�/mų:�0�����%�JU'*�6/z��z�R_�#�|X���.�N�õ�҃�W��y�P�
�3���*�1�҃[%6��>���$��O�$�
�]���`����.h����!�#�j�B3���|�DJ�?�fq[�h(�E!�����)	i���,�K>�Kz�昘���ܪ7:1M�4��_u�.v��]���KjH��n��[m��r*}���	�6��rI�Шբ�F��Z�|�;�����Ү��2)Ay9MP�}��(A^��}�V������yM�<�˪[��2N��É,c��~]\N�h����5�Mvf�5�d!��a���G`	�N�X/��R[m��~�:s��/h��b��|�x������&6e�J#������ mͭ�0�2���3�i9{��ct�6}G��M�;�=)$ː�Nb�ǜ6�PS��Ɩ!q؊�襸��}\���F�r���U����yj�4�1��#��I�M��r��\Ua������ ���N�	�7^���	ܾ��n�W��L�\o�z�y���_��y�z�wލEs���`�|�4w rJ�g�t���P�����M�.U���yw��ΡC�}jNt��	k֗A��PH�Ĭ7�K�]G��� �[���
���괯$h�n]��tFc �:��9@���!�^/�NH���t"��������-O�Y�p� �>� .�˗�(�ߕ���k�wD���nX�m{P��
��~
��H�(.��G��W��W�\�V�0D�ލ!bsP���R�t���h�����3�C�ٮw�X�h��,�>a�QݒVo�]G@͑E[�A���6Q6
N9PƔ� ����k�T�nT}>���~�i\������w{�?���Z�3�O�����÷ջO_�o����֞����bm�2�����H�����X���cS��o#����1��H2���n��zɯ�����ݼ�R��
��X���z�ޝ�&&�#��PF12����ޅ�[����$N��/{y��8�>���=}�w���ۃ�6�����y��<1������B���ŪC���z�o1�(�n%3y+���89�e̼�% ր����6��>�7��;,f&%���d&��U�{n�zr�vx_��S[�ڒ<Q���3�r&��=��V��&�+��\`�yS2A�$��w�b��H�Ř���p+C��[�7ak��hNDXZ�d�rBD �J��0/��az	�,�x",e�������/!�� LzNݓp�BV�FC���b&,&2$­DF&a���\7 �o_�C����|q����� �r/0E����� ��h]�6�숰�`� 'ڄC+���SX�����`-]̴Fl��c�����fݘfk}y��6�m�*X��i�<!W`��
� ƣ3r�u &n��7�S�mr���r��ɯ���V��a�W�Z� �3AB�\Q**�� �  ��W1��8���?c>���p�ʞP=!WW�����6q��S3��D�R���Uܿ���cF�6j�犗݃/��%��n��%��q���7�ޢ
� ޣ���9�\|�>Nξ����*��|�J����ڪ��^�,b�Fʺxϔ�_վCSk9No��PY�
��&���^Jg�S��chpq�^_u�mgF@^%ΙX#u�c����gM�Rx�E��i��� �S6���G�"#N��gW���VG���_@��[Ѧ��cXk���Q1����CC�4�����K.�����4�F�������X������e	JIi���k�Z��Qi�Lg��i2����(!�j�:�޼�������쥷�(��]}|�[�mS�l�SE���M^f��,��;��W���TX��@pu��Z�e�M��T      r   U   x�3�tI-H�KI�+�L�400�2�s�s��9�SRK|�"�\&0� ��	�)T��9,b�e��wv�q��qqq ƅ{      t     x�%�Mn� ��/��	�!?��P���(!�f�m{����!޳���䏐(�R������ 9T9����n�3a��{BNU�xP�/J�s��23T�)����Հl����4�a]�bc�Dt�^� �`B ��K�	��́��ĈB6f�˗�,C1��]�/��̩	��H�iܤ/��AOOJ����e��`�Oby�4�Kn���Jޡ[Nf�\�P�N�s��.P7��0����l�����uU�ʉ�VjDF��ߺ��9�W�      v     x��WK�;\W�� @P�x'��'���%U=��d{"z�P�>$	���É:1N=~�W?!�7�7҃�iv�76�n��G?ƌ��N�S�u�A	�v���OL���`:��]�f|���Ǉ��L���?�O��F3��ߏqČ���:;���� .\�c:x��Ϟ_��z0.@����S�)���.�P��W���H]���;��F�q��m�����^(5���K�~�^�т)�_�.:��ĝ�B�fn���$)
��:�;�(KZ��z��O�����P��W��Y�Ӳ%;�]�.�Sw�
X;�ױ�eq��u��*Ǫr�_�?��#�u�.�%Q���X�i{�C��d���X�����<hP�����^�T {�H���A�*t#�yE�u'b�r���"��7�7���]@��{PF Ǌ\x#"�ȓ�J��%PV������fT�����+3Jɧ���)��;�E��c�̹�?�ٽY2�#�.ѷY���#����U����Gv-�Z�÷@�p󔰋���,�-w㒳���ĵb|�jVC�0+}���}���G����"g��y�y�7-2*]��Z������}�&�\�
c쌹i�㫘�f��������-M�1�7�(���(��Rݨ[�����6T-|3e\^�B���fm�2N�ɗe�>�"|�0�����E�]��%�B;����;|wr���[}�&*5�5�ਦ_��?���YFp���y�(11!�f��W5XJ>l�)����r߾3��1v���vF�eg�e���奚W�St��\!1G�ߥȪ�c	Q3R��,�f[d�~=��,$��N����)�^�$�2�H�9��{�jT�!/���5G��c�T�)m�>U1VC[��r��(��c��j޾��?�">$  �� 罨T�#]e�Ky��
PT�R�/����v�׽�����ҢEh	c�ug���wƱ3�Θc��jܝ(v'��D��!oe�7��%�DuӘO<���=�^TS��B�+�s�pM'�׈��ЕYpZ���2�dʫ�cl��%�7�z\r�� q�q�����+5O�B�B���W��8�8e�{�7�x���N��s��zD�3ݟ�Y�RÍ_=�J�I5x9ω�L�'2��vMDy��%=�T�g_0^�D��b�DKjo/c Wj�/�-���颐��)>.�~	�Fx����		I9!�)
�9E��*�O@�x8�x�zs��*3�6>1���.^�4�1.f���u������O~�K�K�4*�?�������      x   `   x�3�q�L���2�,I-.���9�S�KRS�\&�.�e�E�`�#�)gpf^zN*��e����_��Z�sr�&e�U�r��qqq y��      z   �  x�]WM��H=��nkG�l �u�4�z�{)��TLIj����2�;��D>�Gf��|�>�_/WU��Q�1}�Ч�8R&3������C
K�'Uy�*-�<<��:[�`o�ǰ/�`�wM`6��*OUgo�ܱ=�=�M)t������Z|إ������M�¶n�*x�!g��R5��g(��&οiwT���16��Uå�*UM�p��� 8e*��6L T�B�u}�"��ā���m;F��B�@�@���Ŵ%͢���i�b�}خ�d�"�1 P��������̖zD3[�W�4�ʁ���H�$v�ݛ��WN�lő��m�-'���z3B���igS_�'�.��Vu��jZ=	�k+m��] ���(N���>D�^p���j�#m�36.Vi�ʣ=c�<�w���ڊ�l�ԙWp��	����;k�gO�M��K���y����8��_;����=���ͯ�L�%>�a��.ٽa�M�i�䛇��G�VR=�����=߲�C�o��?��ǳ_���-���Х=9հ'[.���o�7���WD�5�B�����ws��m�w������V��Bs7�:�|��d�~���ߘ��/ۈ�M���eH�a4���J�^h!�h��m�Z<r�FcZ��T��"�ڟ������h4�HՍ�7Ȝ�Q~�Lt��O�O�tGE�U�(�3��=�.�[CQ��:�)*�k��n���q���[�X�����TZQ}�O��g ڱ��!Euc��D9W�xDQs5��Ȟ�d<�����ꑭ	�� 'a<�����)�q@�:��q�ɝ����J��'>�ڢ��-~�I�k� ���W.�X�8R���_b2b[J!�4Sܪ�⃜?a��%: 9aJ?q�'�����Եj)�q��=�w�������T�Z��kڧ��έC3\n��逑���Z��AO��l+�;-�fD�����r.��VW�J�`:�՜[�׶��70_5�B7�f�L���V��}�B�i%/���?t��z�s�w}Z�N�>p���U�i�糂!=��3o卂�N�8�`L�֝����	�՛z��:�C����ֺ�+ZKu�-�������z�Ŏ�Y�O��֢^���r�ѕ�r���i�~G�i}�K�>���r�.�E�zJZNn��l��'�HZoD��`���j&�Hm���$q�M(1G�d��=e��v(v ���J��Y"�P��4�V�dߩ�OI�C����B��?�)U'}�2K������r��8X���Df ��a"���i(@~�?�J�xh�NIVbl6ؑHZ���j���t/���@�F�
�|(p����4�H���9�����}������~j<�'z�e,�:��>��*���4{����7�D���q�g�
/�kHvj+�7n;�&`ZbOc�D:�ҜxQ7Z@�S��-��Vcg7� J�2���b[�s��*�Q�ᆴ��P��oi�Q�獾��6Q&�6��u
��� ѿ�OqE�W�BG��F����:�<��P���)|��wM�a���*;�lv0��Ψ���N��@ �[4Lڊ���L�t�jJeA�3��R�� Ѱ�.h{���P�ݮT�$�,g�Q�=L�>d9�ܾcu�Ĕ2��eQg�ah0��Ք-%`�of%ٶ| �i/�o�E	�Z����-;t�>���+g�ΖB��V�	
�kkp��޹hP�n��0�A$vI���9���[���e(��WSS�������=qIw���'��/�㡤� 	�I�Ї:ws��
�õ�`e)�)·<��z{[j9*�Ǔ�i���5ht�ڳ�B���kuJ��Js��m���[TI��.�˃A�s}?]��2�����E�D��)� �D�^L�{4�@m����I85gH���a9�<�Y��9��9��+7�yǇ�K��Ai'����>|����      |   �   x����n�@�g�S��>ߝ��N,T*�,)�B$����{D�P��[�>�߇��)
F*Eخ����}.#�
SEH�F��^�e�J���ذ4��z5b����#��n�e 	 )M�K�^�@����yILj6#����������a����"�����	m�!�|�������]l.������Wl�öh���B�n[;�� �c	      ~   4   x�3�44�42�44�42�Lt+�q�L�-32 ��]s R00�#�=... �
J      �   b  x�՘�n۸��٧�D���H�NIܮ��}��)Z,���Ƌ�^8	ݧ?C*�����A�J,5���73��,�U����/n>��xq�X��B�_�֫� ��,.�Fh���Ҽ�p�1��҃Ӆ���us��{e�;��x��O4� �^�/��a����Ek�`I�B����^�^(%�U�T���+�|�0����w�䅄ް��f6�X�����b�����}�=m�����Xh��@VE��B9]"�N��h�w�n�qqW����M����0@&� �3=�a֛��tt����	ZgM-":�| (���� b� �]�ʎ��"W�D�2�(��eOW2�˞��hw�C=�y��`u�^���z=X�.+�+-s�o��&�����mGm�|-�n�|�=�eL�g��͟�"jg��e��"���y4���R6��:��d@HY��H[���GqQ]�v��7�C��A�����V`,�,�X&�c:%?����ͫa4
� ]r�H�!S��+�W�^qx� 5Hc`���)���|E��N��n���6�O����G�wv�Ӝ
sW�h�t	�!N�#��8%�����W���10)Ң�
9��������k�G��fHYJYTr+�Q!�}BI�$I@�\�������dL��tf�b�	ቄW�����[�f�s��G��o)4dJ"�B@2�W��"Z��Hj�" -�EtJ����[�f7�Cv�= ���t�1
S�b��ں@
	�#RG��H���3�1�@]ֿ��H�ɑ:���#ܔ#����	�>2Gh��:���ʭ-������<���|�)�T���=������Q��%zf�9�M�͢i>���� ��Pbb��nkK0�ma%A2F<$~(R����UO�H���Qu� dB|�;ힷ1��T��[Bck�M����E ,�@J
��@J
��n(��hC)Y�$���7�iBKJh�>	���.��k8��e�.b6����c��`/�]���}?��/y0���F�`����[�t�(�'z���!�n��g�d(@����JQ�UTp\e�Nqf�	|��S��+*��C>5��O�l��#��AQ�(�%����IQ˨�eT�2�{M����k	�D��	�Vڠ*����?l����������'�3�E��"/�P�ۤ_R����SQ~��ԬE>�~|4U���� ���qC]�q��
�;�������Nz��?��կ�&�а�s�qUaso��	J&eGwNНt�-x�gz�� �ʊ��uF{�磲�'�Y�bam�.��a�T�f+i�����q^UI���h*8�
^�~�9�D��ʍ��1X1Ld-g��G����6q�aYI����R�i�4�q��8�l�=��F4͆8MC�`ňQͥh��#Ք$K[FUI�;��n �N(�,�Ӵ�S�q�(5c���gj�bD�g(����q�Lm��C���S�JZ#M��It5���zu��	�f��Ir+F|����ߏ��?v]�D��p���Z�P���%(ٞ���f]��_�b���\o�}ݬ��h�8��*����s"�s�Z�U�oN���&|���r�,�=_� ��T	}��컫���\/�7�k���e�"ˊخĚԺ���X�i��y�}��?v��c������11f�1*�wƺ�o�6���
�����rs����b]��P�*���{��{8��a����9���4[m�q�k��26~�"4G��]|�uF�������a�Z���F\��e����"�>�a��5/��z�e#�����[���U���
�s�]�Zb��^~��Y�*�k2
[��b�3Ξ1�]���x��G�i?i�i5�Ki��~�߽{�_�V�      �   B   x�3�,I-.��K/�,���2�!lCN�4N.#ΐ _?;�˘��9�3��q����� }�E      �   O   x�3�,I-.��K/�,���2�JM/�I,�L��2�t,.�O�L,I���9��
�|�:g.$qd.\1z\\\ �      �   [  x��ԽN�0 ��y���#��I�	�D%%ίSJԥbA�*@Yx{�c�`��t��dK�����W��{�Q��Ѿ�
��Q�HL)&Ie,�r���iz{?]}�)|��_�*���Ʀ�N�CQ��F���=�L �RB�^��vk��VQ�K9I�IBx$��6\�YY��Uf�RY�C��L��H�la,�q��;����)�z4� ��	�- �������� N@bF��Q��@�,- ����xS�� ��	��@�P�����`	 K �p� ]�x��v~O @:���
�����7^ J.s��/���Z㻼�^�}�'�J9�      �   =   x�3��K-�L�2�J-�ILN�M8KR�K2�ҋ9K��a
@�
%�
.���@�=... =OB      �   N   x�3���/.Q@�i\F�!�Ey�.����)H&�!��%@�)g	����dsz�%��&�(���$f�Ec���� a��      �      x��}M����Z�W�]�TH|0bjO�,��11r�l&��&�Lz$R�����sN�n����ui�,�xu( ��D~��޿{����_>~z��������/_��.~'A���~�w����&�j�T����2���C��ꛐ�h�����!��雬�h����߾����7�MQ[r(��$�	eJ%J)���y	=�Cہl�r-Y}.�	}J�J��v �ܧ^co��EE�DpLi��F��*q�")`D7�4����J���i �o4N�S�|����&ǩ�X��b��B㱈l�5�Ct���6e��8.ƙ���4�T5�Ctq��MJ�Z��r�`�}9��w �#uʹԠq	�W'1��m��Iqq�ĩ��Ep���930�I8V�
����h�Vldǈ^�@�)� 5�z�����Sm��~/���S���C���w/O/��_�yzy����?�<}|y�����?}|~���7�a�ׁ��0r�9�~H^f0u��"Ψ�f���ݪԜi3�4���C��LZy'�vj��f��K������n^F2a��f,�W
�(01O,���"/�(Si�aE�"��L�)�˲��k"o%��CvsM4��=�)���k ��z���>d7�$�i��]�Q�qsM��@��M���q]�Ib
��5v�A5S�D�!���L]�F�}l��o�w1�Ꟙ)t�C�����#��WK;hp�J&�Δz��J�o/�_���so߿�*�h�&
 =D���ۗ�������ۗ�?=?z���y�N'���]��K�8gq������% ���#$�Vz��o~z����o���tC����{U�@�&B1M�(��A�jP*3�����~����ק����3�$')SY+V�{9�Q���Ia��O����D�R�P\�7�;p�i*��Cq��(�����S(� V*
�`�C�S�����O�U�y �C��1,�O�5*�B���7��RUi-S�J���\�e�k� �W)����ۏ?�<�����2����>~y����/�O�>���g��ʔ��^}�6p8�	:i���w[6S�m�c/����-��S)�r�>	wB����ٚ��ީ��*�%�����Z;�PyzQ�^^#��b� ;T�]�f5_:-K�u�*_^>������"��&F*��T���o$=S����6sֻw?�����o?��/�����M�7��cݾ<�cdF����˄
�D�X�xh�	�>�|��y������~�����|����j���Q`�t������ u ߓ��X�������f`�J�k��68��NNp`�@��K˒���.՘y}�P�4%��C��af�ъK;ګ����_751#��2)�!=,�@gc�sh���5F�O��p��UNJ��ˮy��:��G:Y�(�mI��a�t�}�Lu�f�b�c�Y-A����>�����c���k-��+�����9��} ����)ts������B��}�D�WZ�sY�tn��?Qp�b7���\bhB�>ep 7
�c�1"��ݯ/����˟�����ӻ��;�־ǘ8SɎUnԼ0��~�P��1^Aۧ~d�9$>q��p�.�(AA[����1��`
��cb7瑹�1e�+n�wF�4�/FR�-����=4uX���_O)����X>�t���	t�^+��ŀ�ĸk"��f
�1�>˨���T��c�7�c��a��߷�vR/���
�	��d{��y��*�>d:����1Hԡ`��(�ގ���ҕK0��m���㱀7��
�$4�R��}sij�K?]�#͑��@g���1����5pEg�7,J�{�/�Q䄁��L��R� �.n�kH���+�OV3~3�0���'�(zF~c�����g �,h��:�_� c:�x׉ۄ+��cL	�.����f��dJ*������Mׯ�^����8;Xx��~W� i���8�.G$}�
��l��<<�F�������g�d��N�9]1�8�uҸ��V��r��yOC�z� ]�h�mP��	��e�T4R�E�55��ݒ��T�'�֯��t�r
��o|��O_>��>�hmb���Y����P���������A��� 
;�x��5��F{2�q�f�Е�~����$N��9�tNn�W�=z�@,_y��N*�	�<�������-��/�o_>�<�Ie{F(T�fG�����BKg����dH��C��������]hP4�n�ל��Eu��4{�"�E�����������*�y�����Jk��*�O6���R���7��ە�eK�<R��di��"�=��R�k	c=w*�G�X
� $Q��[|�=ha��T_�@ʛ S+�0��ǰ�L��Bgft����B� |g	�RE�:<T� �0r���!����$/�����3������6���n*�W��E��y�<L���ީ��43B�ŋ�1���h�� �Z~�`14����22���ӻ|NS)m|���G��'�M1�@���6����?>����������\�1>��X:DL��� #�\LHd���#C�Bg����(�8�]�3��.o��i����PU�Z��A�58`�W�U��n�LFƃgM�u�Z�6����q����.yH`��>H�T�`��/�wm���J�e\W��[�m&�l0��knn�p���'|p[�>\@/��ҡ
Pm��n��+����D�d/�w�ayō#@W���!��*Ⱦ��H!M�DCs�-OO�q��?��`�h�(�������×߾��H殶����k�����6#���O�P�a�����6LO����b�=���x��U���ѷ!^����.��c#�%����o��"�])����y1�	��n������
l�NZ[�����shz��j?�VR�1�������n6�8��aHp2�}j%��J��b���j�d����12-ic@{�`��T��Vl��8�ҕE�1l�Չh�rFuJ��c`�4�� ��<7*E%�2��s�RnT�vw]��G�9,<ɒ��18��-�jL��+ѡ/H�k�yQ\cf�S*���}��!s`� _B�cf/�3��ĥ3�I��@��=����?�ҫ�|J\�daNY��M���� ��ԙ}\�����e�B�Ƙ0_qD=/H�g���Q�5�y< �U�W4�NZG���|�8����3D�M��T��Xٮ�N�%�!�0$�R���b c�x� V/[�&K8L53�F�lǑm�r�8��G*���(@�DS�sZb�b�0�|�)[nJ�'�d1���d��;����M#nL�B=ߙ�\Dg�v%@� �+��+C�x1*ݒ�<4j�	
\� M�͹���cgY��:�Ə�l	�Zc�̕ss�EG�2IW�s@��(�q*#�{y�H<������d�,�Dq��l|��kM�+��\4m�Ĵ���tsQf"b�Ւ �8���,6W#t��8�[����)����ݒH�&�W�d�[v�#mSjh�)��:t�C,��q�E,�^*s9��W�
�4�TP�WTz|>ݯ�/T��,\&~����TS�
da�6��u�Q%L�_�-��pyC2��e
��E}�X,At�7C��D��ѐ|0�Py�G��H��.��P;Hy�jt��Q�ƅ���o@�n\�t�p�3�Ge?7�@�,��j[|�XL`��ԜI���$�wJ���	�D��䣶�Bie����Z,������Jq����0b��S|��@Z�N	�����@*i@
T� AZ}JZa^�:�ު>%͐c�1m�w�VڬÔ�A��Q���g�0��Nk�>����V(��*�����V��Q�1!����Xc�$��AcE.�Y���~g>%�8��zx�Y��4��{/lq�1d��_�3����|9�e�R�ԃ���~��h��z�>�6B[�ɒ��yi��S�Qk�(U������Gv���>p|�t����ˇ������YQ�4q��n���gE��@���]�g!�S�� w�\>    �9�6Y���] #t�7.�Q�J�r�ΌG��h)��F��KXn#S���/���Jɪ�t�i�lE�m��� �0�<%|>���H�ΜE�!}�;cE��@�iz؝���Z�%��f����pI��~r�"�j��.���2�L)� ����mff{hV���l�[�f�[,6[7;Z�{���C5��-d=��Z������3 9���fd
]���R���h�ޠ�9��賢(/rm,	侯MQ�ғƂr: ��Y��d���1],�e�-�R�R�d~��Q�����B@�XhF�e�A��L��B��>Y�5ܹ�.����t*=�l��Xh �[���2+5�xhF&�kG�:@-H�%E�s���0#�]봙���⡁y��T�4;v�2qO�gv=<p[�Rc�(�`�����Xӂ6���4;(�\k2�N��b�m�JDX�+Sr���>u��y�縘���%�)6�3��fz�"�͎�J��)G��`d��bF����H�9.f�=9�c�$�Hc��{�����i�J�V;��[�5c�3���m1#�V_j�<��<D�ݙ�v��)�Y��0B�+Y�n�g.ma�r�9-f��Y|��X�8(բ���@j�[P��L>�Ō�T�r�%��}>�v�t�������@�^������=�1�@�'��6Ŧ���F)L�ͤY�#���d~�7�04�f�L���D�R���f�k�U~σf�6#��t�ٹ&��0��6;*P�"��I�ǐRY�$Y�GC�91� �3�>�H��2�<�p/C��D�x����/C��Аd�i�d���N Y&�LKV{�Z1��!%P�H�/��D1�s6����R��5q�|B͐��rd�g�㡁,�O��`��!C�ʕ�[�P�yfd�����XȀ��{+�`[��aFV˵��G��9��(�H�6[G�@&���i��Y_�w/�*2�0@N!��#z���0z3�����5��)�y,�G�������S}@�_��Ѹ����",�	��s5�8V���kb�x���L��u���\���T\�@rL�D�F5��j�1]M�r	�룬��s5$�
�
д�=�y!������� #�R˓�֔�j�1�V���ei�=�a�W2L����a#���⚺��H�9�t��ǎi�*Davbg���w�]��C���kwIǁ��`S����}�8b���*<-�;]���g|+��o@F\�u����m��#�'�>iv<rVԊ����_���H�&`�����ȴ['�}VT�� �+ώ�WV"d;�3Ϯ�oZm��c��<��a�#r���g��c��xx('�R}|��B��\\�� &��M����}�1�B�~��'��h�l�;�z�/��Y,���HV]���^ ��g��)c���w]g��0'6F�e��aF2�`j%�G�}�����LP4�[d��At��`��\�}��p?��������L���Bm	JJ��}�kj)�j�N״�uJZ���k2Z����v����*�>�w_+�͢i�	�>n��ˑ��n&R��}93�\%fH[ }Y��h45*�ų/GB�Qϖ��;�~�u��_!�'K�g�����LO��~��L�?�'6s�%�ڊ��������~'�w��J�C��9�����w�5��$���\�n��'IlP�g����S�C��	�ҭ�؏Sn|��T�5�=���xgt(#����G�:z}=~C���ͩ��~��5�N����ZP�^h���	�Y,H4��B��n�H�ʰ��a�Ĝ4 ���{5�2 Oi�^����TʔF���w��T�Bl��8���d�Z�V2lA�y����U����B�yͺ@�ߚ����a�$��qcd��D�H�R�ͻc�2̨�ؼ`K����2�}*�����5���`�lyoh�)3,������5X��Bd��C3�\��9������@Z0��)h��~G>���|uS����C7�;����#������~g*֙(Q���;�|&��|p��ۃ�5ۋ��^�FV�g�:��S��ޞ
���L��ه�5�]����[�9hV%̳�����_�pu*���j*��P��������Y��a���L�~�T�!+=����c5��X�����_��o��I�i,���B9\�RL9Tq�T�驗S����l*{st��ۦqv;�Wd�)�E��Ut��R�
�������Vo����^'��L�b�H2;��TRŖ�ag靽�~�kW7>]�f��$�zl*�5�]l�����Go��%���嚑z2z�/D�:�}�8+d@��\7EAۻ�Э[�ۏ�uf�d�/�<7�a��̚���WHe���X�]�'_�!h�����Ȭ]rs*����M��xD�9n�C��绌���
�_Je����uDZ7iX&	rHG2���,yO�-V���
0HH���������B��]{	�&g��G+g�<�����2�`���8�8��Ȕ,����m^O�*hw�z-�I?��b�~��o��R2�%s{��Z�ꙍ3s{��Z��	�ƅ�i������lۺ������%'�r���ǩ�R�0l[�V��]�~]Xd�:�E�m����煖�N%ޛJ,SK��֥�偅�{������l�Tּ��W����T��k��L��`OWfүZ��L,�<'	��=1G�hp�5��]�q��c_��������ZQ��1~�v��xJJzc(fެ�x�L���iy���}*%3�Tvܴ�Z�b-~��Y�a�_�A�׸���"�
3���<��W,`�t�؏�[���7������� 7%��8�,�ULe�aԑ��Y�H��qAZ�͐͹����9js���6�'�����)tT���"�x�����(x(t=�i�Ў��~�Ú�]�9�q���
ߦY-Tv��@2�	�A��M����=\2?�@nJ�q�U���4�OG��&�::{`�^��gOF���]�NE�M�����J�p�����a���R SzBP��hI���H��i������a\��Ϸ�.����$��p1�k���T�|0��ĳ�n}�aa��q����]�ʭ1�8eX�| �m���\�[b����;,q������S��zoO��lX�S��f�A�
4q_��҃ ���Z�ʖ�Fw8e�� Ȩyxg*�
`�-_��͖�3a|�͙X�p��7(�-Ǎ��g���E�jt> �l�\�Q���VS�x �ѵ��TFKWX���sRY�MX@�G�\�LA������(3���^��2�HG��@f��a2vf	sM�U�,\̶v��yD�!KcGv���z\H�r����!���✑�ó(.M ]��D*��X�,iH��Ӹ��W5�W!�G�o���S�i�7`&d��hbyT������z�S5��)�BºHb���SvA&�O�����1P�-����S�+<�(2��T�.��q�d��0
�%��c��4��jx�c�(ZQV]�~����>8�\WĬE_��@2@j+�n�s7�Xp����C��e z�B ����X�E'g����� Gi)ȐBM�� oA2;g¡f�}U71��Ĺ�lk������K̴���Cb�J��&7�����X�l.v�l�>��W�,�y ����Ȝh��4�H�Fɴ��2g[k��SK&���}�[�=L������*��?��?��~�j6��;�(� 
@D�[���=z$�,^\j��-�3��+s!Y,Y�}p�Rn�\}A���q�q��)v�O�͖L������*��R��"=��yZ䭐��YLH�d3$�}6I�qOb�@vKW��)���X%��[��V�d�Q6���H�d��\�P��zF��Xb�H����vH(�O-� ��U`���n _N��K����Ci.H�T��P@�������B��xȒ󃅤k���Bi��Ӊod;G�w �APA!����P�3K"���Aг���Ҝb��6���#�{iO75��Mq�P>6}mX ��]�D���B�%Re����    	�x�C���9<($�z%8p�
�����U���T6�	NG�+���
i�r.��(���~����^O�ߜ
��T�1���HSٵT��^�j�	կ��G�?�/.�ө\f���op �՗����\�to(#kb�W_�֣�����ө\{B[������گ�n_Le�B@�\yB�G�V�;@2A������w<�S�Ü�JzJT��r��|9��q�ɰ���,G�\u9�G/�g�z}!����V~�r��|9��qGXZ
q��\8���,���N��W�k��G6�)�{�%,�/L�t�x{���Ra\��%,����N�Zt�2�$S�!Ć�l	���:�ZD�2:[K��J�p�D$�Z�P��ۮx*�s�D&kOE�#R����%�/ѭrӾ�����*���z��7�w��§�΍�48"�]�ֱ�[�.V݌��qF��M����g�� r��g}��?��xn�JL9�(;H�upCZG�S�׌��j�I�@v"�<U�H�*�O���u}���KQ��>�/�<K�='���8��抉�����K�Qi���+���j�"��&�E)�2�
��{��7�Ҫ�Dq%nð�I�Ȕ��n�d�eh�k��)��3W6��rm݆a�F�ub�G�F��ϐ#39�z�8|N��@���[���TT�Vf�[;�^X��x**���A�難|Df���
��_����l�\X��x**/H�s��2�b=�WH��W~��9$���{����ly�\�L�f=j���r�Kxa?�tFS�
���e	u�P0[,�!��`��$ŊG�0�+�	�2�8=�#�*��e�#��ɡQ�)23���<e�������	JyW~�O4;�Z�{hDMN�`��@'�r�^���XAJ&�_R��l��R����@
�)��3V{���z�A3���2�kj}
*)��Y^�2�0ٹ�]fyM��_����2�k*:	n���x�cO�pq����`�U�|>/��ѐC�Ě\�t0��h�\�v���`<V�o$J+X��rzl�[��S�RN�uXY-��O��#2��Ų�KQ�w�Z�nVr�+|�Y>�R�RiN ���̝-���j�Xl�vJ��D�Rꉶ&�ҘJf���6��RK���J�ތ�/��Zؚ%�B�u%2����W6̎���ǯo�ll�y.��X�`��� �|pR~��~����� l` ���_l~0�)]��@Z�*�]�F�u�,��j�8m��/�~���o��+t/4�Z��d���5�F?���}�eB�ti������z���H3jB5��Y���P��X�6X�/_���g�6K˗d~}�����0�?�}y����/�P�n�I������A�=�3��fMkÄ�'&�1�j��T���9؊�TX�	���nvCR���`�W�̸�OV��@>��G�4d��.)\��,n��i�����w�7Ul|1�T���˿ͱ��*9)����os�+4g����E�w��u��=&ʵ�8��]�PXY<���d�Q����Ϟiǋ'O�V����	d�h�Q�<g3����kC�Qniq������~ݜJ�� Iy���uW������a�B.VЌk<+jZ�uvB�WyV�j�0�A+�Wy2��?#!��ڣ���B̠�{2�؃[K��W�0I^�gG<E���$�9��zLe��|�f21�+X����B��j�^=�1�H%lL�ИWdTc����5�,���=m2WH\'�E��>W�CJ��#
E/�Ǣ�oN�B��HH���[ٹ3]
�	�[���p���Z�Z+g�`���V���#h���_��8q�.�������!��L���#WX�:ƿ�Z��<�
1;��T�MCf�z#�0O�B��L�ޛJ��Q�>�͕����b�W3�7/v��]bO�(���5��S�P��vP8�V��HD��:(���,G��T�vPX�a����*;;(�R�PX-����s9e-N>.Vq�Ɂ��h	TK�Mc��aeK�|æ::��H�R+�K��HÛ�����i%��uNiyZ�����|��,x�D*s^ޑ��4�e�����	v�T�B�%��U�fw�&��ZJ��pؽ"��%53ӯ���h�t`���L6x����[�Aʏ4�9��_/����f4gdrɉ|��5�9�R42��:JQ/H��2*��\���b�;��%@���5��f!�������T2J�l�Y=Ud.VB(c��D��oF�|(&����l��߂L�:��Շ1��WdGj�mq8�f�Zv�9�S��[���{��%�C���H�A�W���T��a]�ES��VW�l�"v��(7��U��#e7+�|��c� �r4X� �㪣C**s4(�u�����X�>9��.�l	�)���5���D걉R�R	���苺 �`��3�qG_����&�ײ�2��]���^���9��y��Um�;ʙXY�~��,]���S�S�0Gr�($�m��#u��zGH-��|,iHm+˘k�l}Vgd�{�me_��(��
l#uQ�΢:J�.HM枏�����3�2G�+5t��͓j�c\��'MG!���i.cs'�i�dj5�l`���(��>��~�"E�5��X!�<�-2Iȭ C2'۬T�J��_S7sWHv��t
D�O���R�,�gbCn�!`�g��ۢg�C����<��ACl���j�"�
�L�f.�٬#|{���\#;ob��L��� �%��������Z!��@ѲG��%��H+f2
�[Ͻ���B2�03B=P3��f�B�l}c�<���L��2�������e���u�k���!��-dvfj�Ь����l�1΋��9<����S$h)l�W7}Y+�����BI���㡁��������'��%��Yެ��-�����j�-��P���囕��|R��%_��2bNJ�cb�R3\{g�ѶY�򈌣\(] ����M�y3Xc��v��~"�L��$Ni �(�lh�]�Ԭ�i�ۓ�L��Ќ�#� -/VB�ds}�F��ɼUγW�ۏ0��f�ς�Z��;���6�k���iY��@ƭ�dyY���|���/�L��.0����杩��>ؓ������D~�ү�S����t���^�	m��3�ғP<���u��;3ٵl�~o�%$g���v�i�hTFYX ���52������7�L����G<�g���l��Y�w�^�b����.�m�q�5��½�Rl|Nơ��~7�
��l�+���WJ`'���� �&a}�[�^��!�,3P�Ŝ������Tʯ~����6�7�������-HQ�î��d��70D�Ss��
�3���Mo�@��=b��5��i_��)nTh���#��z�N�3�(5\l�Y�-��\� aMt.Ӟ̅*"�	-խ����F)s�P�5iVw�Uܐ�S�{GE�5iS��4�;��e���|D��G�[�{�.�ޛ
{W��
�-�Tv-D>�Ʋ=����bi-o�����;qQ��t*�`�&�Ք7U@Oy���۽�!�z�46=lkd㳪vX�\�M���rn��>���v9�
o�,��޲���k	�y;�����b�%�)�i��j{��țr�O#1�Z��G`�x��G� K�)�<%i.F�Ʌ��T�լo���2��kt6�#�8��K���|s*�2�"l�L�)�Z6�߼W��)kL	W��\�H���6×��^\�KӞ};+sLǓ݂�#��v>9l:CO���R��֋Ks����7j�i��Tr�8�Z�:��S��|����+�6l���G�h7��ۦ�vAֹ�3u!���Yk��.�E5��ο~�'�����7KXb*[��9߬NG���uN����]N+[Wv�< 5�%�~e*�A�S�C�6�l��4����zC�չqØx6��Y_{��*��;{���?�˜�9Le	Ƞٷ���������mvOﷀV�*ۻ�>�ֻ,�5�\s�!5{��X@+*�*Nۡ�ͣ�y�kXs�������7����Txk��#��o|���Y��=� "  ���r�H+�5̍H�7�V�Fl�M�Y)w��t���j��6��+$ql��z�m�9~�d����Vt�8��
����V�z)�&��v��᱐�ҽ�~�����fc*�����|����B�QMEY��y��x *8�Alvy]#-1s����m�b��YtB��@�/C2JD�W��m_�V����[s���cs1遛Ү�]|������{�I>�����(�ǩW���T|�������0��y��Gd�l�Ҭ,z��HeC�	r�/��\��\i|MSh�w諸��u�o���p�	�`����ںF��}��͠m������ҟ�	�Q�������	X��N�V���n&�,�s�*p��rא|�e��n��s���g���jyA���/��p�#rT�
�h���	X��v%��螀��xjs�,��=@�ٲ2����}�悌�
�N�Bĩ�Έ���~��*�rugD@���d�(����C�� � L;��wy��΀o�S��Vk����r2}��m4�&��S����d��4��~��aJT9��Պ��sˮ} ���q�;��IsA�:�z�.���f'Ͷ#+��#X]��g7�be�gƁ��ٜ�Q���<�w=�5�(U:J��g.uaC�Ė�=^+���w�Q���j��2?���H'����sj��QAc歾�}G�ċ�0�s��:N�LX��,n�M���:�S�g y�,:�]����>�_�]�SJ����.�X�>	A�.ʜ�>G�{f诱Fj��>�<�̰�[�r�瘂��kZ�.`����VdX���M搃=�k*4�L�SyW�7@�v��}�5�+��~��-ӵ�h�y���ޟ��1�SaNb��>�oMeGs�kS��=�c*�yà��C63TWHvwK,�C]��b�U��|���9��1�Q&��Kś��j�XX H�=3#��of�cH��[{���$���h$����I�
��S�d�l��7Ϯ��JʄR;�u���%��]��v�B�t*�M�Rl*��Ы�ʱ\��T�7�bO�׮���0�����B�Q臾Yw -ޙ���}`���Ҹk$e
jgFu?q�_]8�ޫw�q�ګ�^���J�< ��������B�@U!ouJ4d�s~{��0F��*Ʒ +*�AȰ4 l�Vų����ܽ9ۭb|���VN*5��@6?RF�ˮt��
^!������/o����[d����\̢�Q*���bbή[��N�T�[/Tl7�p�H�Եv3��4\�J�e��"�>���6tt���B�W��ń �kWZrz�]��f6��Uuw���Cr⻌�s��1G�0.zζ���@�;��^����s�7��"8w�;�H-
��5�圇�ia[M;�`�7�����H1�M����&u�:YH�h t���YIw��Q����q˰n-zIJ�1Ϲ��"m˖_��U�B̐&ra�q��R ��׹�0�;�T!�k8��-���s�z���xsa�R:>�����RK��i�D�I_�ى����?��Ul����fa�W�~�7zmVk��{b����,i0�@e�����A��{��9NJ��;���A!N,1KV�á�K�5fz=�w�?
���0�=*�@��.(��p )����vn2ݛ.��q���@�ާ���e�娦D��J��$�.���aU��79qG�e�d���R1(��"o��'/P�,"�V�O<^[�b��j����H�N�c����F��% ?}�W����>���2��4�������k�����^�c�z���q�-HsB��bQ�p���X]Q)v�y|y�RN���cr���"�9�׿��>{��9�#:�V�\�k$;+��=g�����ڡ��١�)o2w����d5	>�n��{�L[K���.�#t��N�n@��ڽ��'V� ���(z+Z�Xʆ�K��V8����G3�Tc�=�.˸�,�\��B�@��]�����~Z�5AH�aP���h\'؜��b���	�p#�[�-���5W*3�����l=0�P�w����=?a�p��|���q�h��EǓ��bl����7�#Ԣ�&�<����|�c�X�q�6��j�
e��֮A����'�&�	�� ޚP�Q�[.b���wA�@�0��%�.�U��0b�j�]���lT��9Y�Ȕm�<)�G�D��0'[�f�;��G�T�P�G��^��"��'���{I���l�v����>�7��{I��A�� �Ż2-���6K��#���Vz�N��>�h���B��X�؈��I���[>��I�gY��������w�~��?���1=��;RZZ�MO����]����>���,�E �L�\�~�	|&�d�(�j�Cjg{�
��Ih[����_��?�����~����>���?뷯_?Z}����w��ɮ�J�j�q�چ+wM��9B�	D��md��̽UV�_����J`w�j6�6`z.���l�$2G�J6�Ҙ#	ݣD�Rc�w�ߓ˸@��ORؖD�s��Q�ռ�a�QYA��6���jeoD[��y��[{���yl/ʘޅ��K*��=�zG(��2U����j���6%ӣ��PѼ���G+��'[o�Z�(\8|,��O���[J���Pqv�uhH&V7˗��i4�bܜmϹ|�7l��II��%L�Pa�(�QDn�Eӻ�ڋ�5��,b�B�ᔘ�w����QYU�o�����`(�����&/J����$��B���>x
U�o��^�;l�.l���f��*o��ݗ"�����������I%�f�S(�S�Œg�"������"�z���Q;_	���Q��Q�ƞ�i�5{0ڬC���æ��(�J��8=�n��u˔ri&�=�H�ELt��Xw��^qQ����gl=��<I�����4��x�H��1��Z�R�7a�I�sm>���A�:��"O�ڰ�2A�!"d䓺�އ�-���;_�a�ܩj�g����z���	�ʄ��7�S�t�v}�5��)�Nw�-Vl9��P��r�b%�q�����r����Ȑz&�;�K��MC��b�5������O�����ܤB�+���<N�3(�4n��˱N�[���qs,��{
���E	ӻ�Z
6���<`w�+f2E���E�ҽAS�{I0��7��3����> <�L+(�-��r��$���/�j0��C����].�4��Y��S�t���[V(�a�<��v����18<���<��
��f۠lK��0WP���0�Pυ�`ٖ`�L{���r�`�o.`��λ�rL|w�_;���D��*��wq�EP��6�ֲz�_�����;�E Ø�T8c��Q4�)��%�<�ѣK(�o�sw0�m� c{`�^���>h��f�W(�.�<"ɺ����ۃq7�-P��Tܣ�C`)'a6���u����lI��i�E����6pD���N9X�@=�O+,��]����]�2�a#R���3�̎�T;���\�ٺY�*�P���`��:�.B�I�jseF1�����+�F�A�C��Yw�V>�G9���H�I^	8��$5�*�/Ձ�UcIr�?��p��B���      �   2   x�3�tqVpL����L�2�,I-.���2���%���b���� ,�e      �   	  x�uW�v�����b^ Y�*���*,�T��Qp��Qy��1�i�xVMde��mb�z[��i�-�p6E��&U��r-��G��rr��F/���X�o�F��Yք�Z�8�c��d���<�
�l6�!7��J��W���܎/U;ot��Q�%%��wE�ELy�H�M�7
k�(��|
צ)�&���O�S���U���_��Wgͫ�̚Y��}����Aߡ����t4vȽCl{�����7L-�����a�X�<.:�\=7[NC����F�&��4�#�_�M�%K1� .}츸��{�坢��0��YMcG{>�2h��-�r�mt�Mm3�l-^N����{M���������0|?��k��,_��ޑ��cD�����(�3L��A���P��}S�2z"�X�z��|�o@��z�lu�ѹ���h!�OD�	ڒX�	A��jeS]k�"�Fғ����f�#7��w/G-���&N�>�.���C�JO�����2e��d�R.7k�������xLH��9��3
�����	���;��f��v�d,g�"����ԋq�M����Q�|���]x��^��� 
[���m��`3����=��IIv�<ߎ��r�O���>��'�< >v���L8O���+> �c{0���8�j����� �F.��,n�=����M�2���5J~��f�'��'�a'L�R����3O���M.ՑKF��O������R&�T7�{����~6I���Do�L1�)����:D�l���W �_ny���	x������(8g�n/P�$�ǎ��:N�����8_��v5��B,�w�������I��{�����\��ڋT�m�(Sc=�i	��P�YO�R�����B7�J�r�S�WA����7��7��(��p��\��q�Թw�x��>�`p~�G�Ơ��y��6XH1�D���^rZ����k6��G֖��c�d������z3�U�h��`nF#��x \�G��͍�TrYɀ�����'�	����A�,�ad\��-�`B��u�����ht���ɀ?L��`�+]��^�2��&[RNu����6{��E��H�mZo��3O�YvM8�Zнx�9$�Ka  u���Xc.Ä��0t3!B^N�F	� $�
�{�0ݲ?�Pm^>� ��).�@Q@��c�B&�����T��Je&�a�����&Q�.~��(��I��y��J�g�����:��7Z< �C̼���8�;p��� Ԧ��D�S�����$$�71�R4Ѐ���>Ytρ�,���n��ܞ	�=&.���j�ֲh���� �Fn��¤�i���F�f���7�� ���6��m�,ڣ�6�.�Aqݒ5�Xnp�6�Iü�Q'��"�BК�$T:Z�\~���Z�xߐ;B��E���>^������Bd��9�hDC.�o��//���
�R���Hh���G���($�&z�	�'�l���:��s��F�{qlw"��ԭ6)e2>���@!9���Ld- VE��C��K{U��92P�21�GH54�sIZ,7��7K����;D�(�o�
�؁`$xV�#`[f�oOė d"ƍ��I�b^P�<��tV��KȚ�[�f���)۔r-�F<�E,}�Z���j�M��.3@j������5�Ѐ�AoAI�ռ��l�`�Ѣ�}X��B}����������EC�ȧ1�3��jsQ�6��Gz�ծΛ�ǔ�/�0z�/V|Ep�z��%h����B�/�C?�)'ã!l�S��$�"�)�:$&�$HJ�s%&��ĤT��]@����:�Bo4���������0�C��ܱ�	b��~��4a&��K���ЈQ�=���S��p��z��+�6A��Qe렬�� 5+31�'ݠoÜ�A�
��Éɬ�mCc��1�G� �S��Ӧl9t@�f�1`��@�,�OE�ˌ�_:#�c2�����'��z"��d���IN��w'�ٿ1���9��8M����XN��E�,i��|��&F��Ýr���)���=	
���!����.'�@@X���� Uv� �ּ���l��������-	� Eit?��=����������i'�����U܎hڦ8%���7;6�)}K�v;���Tn�/�B�+��A���&%�k`+���Д#/o���:���O4̉B��	@R�_ ܃����w���hl��� �#zN���}��?�      �   {  x�mVKn%7\?�����s��3�,&��)u7<����+����EU�����Ͽ^B"����/����1��4���`�����z������؟����9������aD�Om�$C3Dn
o)���9�d��Y�aS8���ǿo5�q�S�6H��Vbl'Ť�q�M��	9������a�$���XIh��W��`!�x���S�CtH�$��A��8z&�=C�C�]v��ʠ�3��P02=�d�\6��D5�pj)D�$�g������������rJ�Sy8�@�;q9*	F'����6��jGx�(���`=T���2 6�g����9�J}�� �Aq]�w�%@fH}:�Y Bk+�C.�N>g��^�ءZYLP�]H�aAfDD�m�MC�'C'�3�0-�2|�����W��as�J�;f�rD��S�e���1�1�2 	�T���蔩˕0H�s�"�u��^+aDې���6(���X/�]�<_�4�H����C� �]&�t�C Y;���!�G�=)��T����9ٞ
�5�B�ń�8[%Kd>!�*i�]G���s�1?!�+���:������p]3�A���%�,�l��︵��n�E�_�S�]�,귵|��|�6)W!)-1�,�v
�5�Χ���R/_ .���Х��'��'��W���0�O��P�=�I��D,W�CXv���E��;n�q�x0�{�赉8��6�;��Qw`w!�8�殏^���h�_]��^���Vd�^OKZ��\��^��������	9t+yY��\����ʹ�ZwJi��6���W�sĮ��$�VT�͏8�R�;��D��t�iu���c�=��ko��E�}����c�f�     