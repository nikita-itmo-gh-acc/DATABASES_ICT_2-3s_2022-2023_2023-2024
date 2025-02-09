PGDMP  *                	    {           Bus_station    16.0    16.0 b    5           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            6           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            7           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            8           1262    16398    Bus_station    DATABASE     �   CREATE DATABASE "Bus_station" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "Bus_station";
                postgres    false                        2615    16399    Bus_station    SCHEMA        CREATE SCHEMA "Bus_station";
    DROP SCHEMA "Bus_station";
                postgres    false            �            1259    16517    adding_crew    TABLE     �   CREATE TABLE "Bus_station".adding_crew (
    med_data text,
    adding_id bigint NOT NULL,
    driver_id bigint NOT NULL,
    trip_id bigint NOT NULL
);
 &   DROP TABLE "Bus_station".adding_crew;
       Bus_station         heap    postgres    false    6            �            1259    16559    adding_crew_adding_id_seq    SEQUENCE     �   CREATE SEQUENCE "Bus_station".adding_crew_adding_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE "Bus_station".adding_crew_adding_id_seq;
       Bus_station          postgres    false    6    225            9           0    0    adding_crew_adding_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE "Bus_station".adding_crew_adding_id_seq OWNED BY "Bus_station".adding_crew.adding_id;
          Bus_station          postgres    false    227            �            1259    16428 	   bus_model    TABLE     i  CREATE TABLE "Bus_station".bus_model (
    release_date date DEFAULT '1970-01-01'::date,
    seat_count integer NOT NULL,
    producer character varying(128) NOT NULL,
    model_name character varying(128) NOT NULL,
    country character varying(128) NOT NULL,
    model_id bigint NOT NULL,
    CONSTRAINT bus_model_seat_count_check CHECK ((seat_count > 2))
);
 $   DROP TABLE "Bus_station".bus_model;
       Bus_station         heap    postgres    false    6            �            1259    16569    bus_model_model_id_seq    SEQUENCE     �   CREATE SEQUENCE "Bus_station".bus_model_model_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE "Bus_station".bus_model_model_id_seq;
       Bus_station          postgres    false    218    6            :           0    0    bus_model_model_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE "Bus_station".bus_model_model_id_seq OWNED BY "Bus_station".bus_model.model_id;
          Bus_station          postgres    false    228            �            1259    16447 	   bus_stops    TABLE     �   CREATE TABLE "Bus_station".bus_stops (
    stop_time interval NOT NULL,
    settlement text,
    stop_id bigint NOT NULL,
    CONSTRAINT bus_stops_stop_time_check CHECK ((stop_time < '01:00:00'::interval))
);
 $   DROP TABLE "Bus_station".bus_stops;
       Bus_station         heap    postgres    false    6            �            1259    16596    bus_stops_stop_id_seq    SEQUENCE     �   CREATE SEQUENCE "Bus_station".bus_stops_stop_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE "Bus_station".bus_stops_stop_id_seq;
       Bus_station          postgres    false    6    220            ;           0    0    bus_stops_stop_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE "Bus_station".bus_stops_stop_id_seq OWNED BY "Bus_station".bus_stops.stop_id;
          Bus_station          postgres    false    230            �            1259    16455    buses    TABLE     �   CREATE TABLE "Bus_station".buses (
    status text NOT NULL,
    bus_number character(6) NOT NULL,
    model_id bigint NOT NULL,
    bus_id bigint NOT NULL
);
     DROP TABLE "Bus_station".buses;
       Bus_station         heap    postgres    false    6            �            1259    16582    buses_bus_id_seq    SEQUENCE     �   CREATE SEQUENCE "Bus_station".buses_bus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE "Bus_station".buses_bus_id_seq;
       Bus_station          postgres    false    221    6            <           0    0    buses_bus_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE "Bus_station".buses_bus_id_seq OWNED BY "Bus_station".buses.bus_id;
          Bus_station          postgres    false    229            �            1259    16413    drivers    TABLE     �   CREATE TABLE "Bus_station".drivers (
    email text,
    license_id bigint NOT NULL,
    passport_number character(10) NOT NULL,
    full_name character varying(128) NOT NULL,
    driver_id bigint NOT NULL
);
 "   DROP TABLE "Bus_station".drivers;
       Bus_station         heap    postgres    false    6            �            1259    16668    drivers_driver_id_seq    SEQUENCE     �   CREATE SEQUENCE "Bus_station".drivers_driver_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE "Bus_station".drivers_driver_id_seq;
       Bus_station          postgres    false    6    217            =           0    0    drivers_driver_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE "Bus_station".drivers_driver_id_seq OWNED BY "Bus_station".drivers.driver_id;
          Bus_station          postgres    false    235            �            1259    16400 
   passengers    TABLE     �   CREATE TABLE "Bus_station".passengers (
    email text,
    passport_number character(10) NOT NULL,
    full_name character varying(128) NOT NULL,
    passenger_id bigint NOT NULL
);
 %   DROP TABLE "Bus_station".passengers;
       Bus_station         heap    postgres    false    6            �            1259    16648    passengers_passenger_id_seq    SEQUENCE     �   CREATE SEQUENCE "Bus_station".passengers_passenger_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE "Bus_station".passengers_passenger_id_seq;
       Bus_station          postgres    false    6    216            >           0    0    passengers_passenger_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE "Bus_station".passengers_passenger_id_seq OWNED BY "Bus_station".passengers.passenger_id;
          Bus_station          postgres    false    234            �            1259    16534    route_stops    TABLE     �   CREATE TABLE "Bus_station".route_stops (
    arrival_time time without time zone DEFAULT '00:00:00'::time without time zone NOT NULL,
    stop_id bigint NOT NULL,
    route_id bigint NOT NULL,
    route_stop_id bigint NOT NULL
);
 &   DROP TABLE "Bus_station".route_stops;
       Bus_station         heap    postgres    false    6            �            1259    16704    route_stops_route_stop_id_seq    SEQUENCE     �   CREATE SEQUENCE "Bus_station".route_stops_route_stop_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE "Bus_station".route_stops_route_stop_id_seq;
       Bus_station          postgres    false    6    226            ?           0    0    route_stops_route_stop_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE "Bus_station".route_stops_route_stop_id_seq OWNED BY "Bus_station".route_stops.route_stop_id;
          Bus_station          postgres    false    237            �            1259    16439    schedule    TABLE     �   CREATE TABLE "Bus_station".schedule (
    path_length bigint DEFAULT 0 NOT NULL,
    departure_point text NOT NULL,
    destination_point text NOT NULL,
    route_type character varying(128),
    route_id bigint NOT NULL
);
 #   DROP TABLE "Bus_station".schedule;
       Bus_station         heap    postgres    false    6            �            1259    16610    schedule_route_id_seq    SEQUENCE     �   CREATE SEQUENCE "Bus_station".schedule_route_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE "Bus_station".schedule_route_id_seq;
       Bus_station          postgres    false    6    219            @           0    0    schedule_route_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE "Bus_station".schedule_route_id_seq OWNED BY "Bus_station".schedule.route_id;
          Bus_station          postgres    false    231            �            1259    16501    tickets    TABLE     �   CREATE TABLE "Bus_station".tickets (
    "price " bigint DEFAULT 0 NOT NULL,
    ticket_id bigint NOT NULL,
    passenger_id bigint NOT NULL,
    trip_id bigint NOT NULL
);
 "   DROP TABLE "Bus_station".tickets;
       Bus_station         heap    postgres    false    6            �            1259    16634    tickets_ticket_id_seq    SEQUENCE     �   CREATE SEQUENCE "Bus_station".tickets_ticket_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE "Bus_station".tickets_ticket_id_seq;
       Bus_station          postgres    false    6    224            A           0    0    tickets_ticket_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE "Bus_station".tickets_ticket_id_seq OWNED BY "Bus_station".tickets.ticket_id;
          Bus_station          postgres    false    232            �            1259    16482    trips    TABLE     �  CREATE TABLE "Bus_station".trips (
    actual_departure_time timestamp without time zone DEFAULT '1970-01-01 00:00:00'::timestamp without time zone,
    actual_destination_time timestamp without time zone DEFAULT '1970-01-01 00:00:00'::timestamp without time zone,
    status character varying(128) NOT NULL,
    bus_id bigint NOT NULL,
    route_id bigint NOT NULL,
    trip_id bigint NOT NULL
);
     DROP TABLE "Bus_station".trips;
       Bus_station         heap    postgres    false    6            �            1259    16687    trips_trip_id_seq    SEQUENCE     �   CREATE SEQUENCE "Bus_station".trips_trip_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE "Bus_station".trips_trip_id_seq;
       Bus_station          postgres    false    223    6            B           0    0    trips_trip_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE "Bus_station".trips_trip_id_seq OWNED BY "Bus_station".trips.trip_id;
          Bus_station          postgres    false    236            �            1259    16470    work_timesheet    TABLE     $  CREATE TABLE "Bus_station".work_timesheet (
    work_date date NOT NULL,
    work_hours interval DEFAULT '00:00:00'::interval NOT NULL,
    record_id bigint NOT NULL,
    driver_id bigint NOT NULL,
    CONSTRAINT work_timesheet_work_hours_check CHECK ((work_hours < '12:00:00'::interval))
);
 )   DROP TABLE "Bus_station".work_timesheet;
       Bus_station         heap    postgres    false    6            �            1259    16641    work_timesheet_record_id_seq    SEQUENCE     �   CREATE SEQUENCE "Bus_station".work_timesheet_record_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE "Bus_station".work_timesheet_record_id_seq;
       Bus_station          postgres    false    6    222            C           0    0    work_timesheet_record_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE "Bus_station".work_timesheet_record_id_seq OWNED BY "Bus_station".work_timesheet.record_id;
          Bus_station          postgres    false    233            \           2604    16560    adding_crew adding_id    DEFAULT     �   ALTER TABLE ONLY "Bus_station".adding_crew ALTER COLUMN adding_id SET DEFAULT nextval('"Bus_station".adding_crew_adding_id_seq'::regclass);
 K   ALTER TABLE "Bus_station".adding_crew ALTER COLUMN adding_id DROP DEFAULT;
       Bus_station          postgres    false    227    225            P           2604    16570    bus_model model_id    DEFAULT     �   ALTER TABLE ONLY "Bus_station".bus_model ALTER COLUMN model_id SET DEFAULT nextval('"Bus_station".bus_model_model_id_seq'::regclass);
 H   ALTER TABLE "Bus_station".bus_model ALTER COLUMN model_id DROP DEFAULT;
       Bus_station          postgres    false    228    218            S           2604    16597    bus_stops stop_id    DEFAULT     �   ALTER TABLE ONLY "Bus_station".bus_stops ALTER COLUMN stop_id SET DEFAULT nextval('"Bus_station".bus_stops_stop_id_seq'::regclass);
 G   ALTER TABLE "Bus_station".bus_stops ALTER COLUMN stop_id DROP DEFAULT;
       Bus_station          postgres    false    230    220            T           2604    16583    buses bus_id    DEFAULT     z   ALTER TABLE ONLY "Bus_station".buses ALTER COLUMN bus_id SET DEFAULT nextval('"Bus_station".buses_bus_id_seq'::regclass);
 B   ALTER TABLE "Bus_station".buses ALTER COLUMN bus_id DROP DEFAULT;
       Bus_station          postgres    false    229    221            N           2604    16669    drivers driver_id    DEFAULT     �   ALTER TABLE ONLY "Bus_station".drivers ALTER COLUMN driver_id SET DEFAULT nextval('"Bus_station".drivers_driver_id_seq'::regclass);
 G   ALTER TABLE "Bus_station".drivers ALTER COLUMN driver_id DROP DEFAULT;
       Bus_station          postgres    false    235    217            M           2604    16649    passengers passenger_id    DEFAULT     �   ALTER TABLE ONLY "Bus_station".passengers ALTER COLUMN passenger_id SET DEFAULT nextval('"Bus_station".passengers_passenger_id_seq'::regclass);
 M   ALTER TABLE "Bus_station".passengers ALTER COLUMN passenger_id DROP DEFAULT;
       Bus_station          postgres    false    234    216            ^           2604    16705    route_stops route_stop_id    DEFAULT     �   ALTER TABLE ONLY "Bus_station".route_stops ALTER COLUMN route_stop_id SET DEFAULT nextval('"Bus_station".route_stops_route_stop_id_seq'::regclass);
 O   ALTER TABLE "Bus_station".route_stops ALTER COLUMN route_stop_id DROP DEFAULT;
       Bus_station          postgres    false    237    226            R           2604    16611    schedule route_id    DEFAULT     �   ALTER TABLE ONLY "Bus_station".schedule ALTER COLUMN route_id SET DEFAULT nextval('"Bus_station".schedule_route_id_seq'::regclass);
 G   ALTER TABLE "Bus_station".schedule ALTER COLUMN route_id DROP DEFAULT;
       Bus_station          postgres    false    231    219            [           2604    16635    tickets ticket_id    DEFAULT     �   ALTER TABLE ONLY "Bus_station".tickets ALTER COLUMN ticket_id SET DEFAULT nextval('"Bus_station".tickets_ticket_id_seq'::regclass);
 G   ALTER TABLE "Bus_station".tickets ALTER COLUMN ticket_id DROP DEFAULT;
       Bus_station          postgres    false    232    224            Y           2604    16688    trips trip_id    DEFAULT     |   ALTER TABLE ONLY "Bus_station".trips ALTER COLUMN trip_id SET DEFAULT nextval('"Bus_station".trips_trip_id_seq'::regclass);
 C   ALTER TABLE "Bus_station".trips ALTER COLUMN trip_id DROP DEFAULT;
       Bus_station          postgres    false    236    223            V           2604    16642    work_timesheet record_id    DEFAULT     �   ALTER TABLE ONLY "Bus_station".work_timesheet ALTER COLUMN record_id SET DEFAULT nextval('"Bus_station".work_timesheet_record_id_seq'::regclass);
 N   ALTER TABLE "Bus_station".work_timesheet ALTER COLUMN record_id DROP DEFAULT;
       Bus_station          postgres    false    233    222            &          0    16517    adding_crew 
   TABLE DATA           U   COPY "Bus_station".adding_crew (med_data, adding_id, driver_id, trip_id) FROM stdin;
    Bus_station          postgres    false    225   d|                 0    16428 	   bus_model 
   TABLE DATA           m   COPY "Bus_station".bus_model (release_date, seat_count, producer, model_name, country, model_id) FROM stdin;
    Bus_station          postgres    false    218   �|       !          0    16447 	   bus_stops 
   TABLE DATA           J   COPY "Bus_station".bus_stops (stop_time, settlement, stop_id) FROM stdin;
    Bus_station          postgres    false    220   �}       "          0    16455    buses 
   TABLE DATA           L   COPY "Bus_station".buses (status, bus_number, model_id, bus_id) FROM stdin;
    Bus_station          postgres    false    221   ~                 0    16413    drivers 
   TABLE DATA           b   COPY "Bus_station".drivers (email, license_id, passport_number, full_name, driver_id) FROM stdin;
    Bus_station          postgres    false    217   �~                 0    16400 
   passengers 
   TABLE DATA           \   COPY "Bus_station".passengers (email, passport_number, full_name, passenger_id) FROM stdin;
    Bus_station          postgres    false    216    �       '          0    16534    route_stops 
   TABLE DATA           \   COPY "Bus_station".route_stops (arrival_time, stop_id, route_id, route_stop_id) FROM stdin;
    Bus_station          postgres    false    226   �                  0    16439    schedule 
   TABLE DATA           p   COPY "Bus_station".schedule (path_length, departure_point, destination_point, route_type, route_id) FROM stdin;
    Bus_station          postgres    false    219   �       %          0    16501    tickets 
   TABLE DATA           T   COPY "Bus_station".tickets ("price ", ticket_id, passenger_id, trip_id) FROM stdin;
    Bus_station          postgres    false    224    �       $          0    16482    trips 
   TABLE DATA           y   COPY "Bus_station".trips (actual_departure_time, actual_destination_time, status, bus_id, route_id, trip_id) FROM stdin;
    Bus_station          postgres    false    223   �       #          0    16470    work_timesheet 
   TABLE DATA           \   COPY "Bus_station".work_timesheet (work_date, work_hours, record_id, driver_id) FROM stdin;
    Bus_station          postgres    false    222   ��       D           0    0    adding_crew_adding_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('"Bus_station".adding_crew_adding_id_seq', 1, false);
          Bus_station          postgres    false    227            E           0    0    bus_model_model_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('"Bus_station".bus_model_model_id_seq', 10, true);
          Bus_station          postgres    false    228            F           0    0    bus_stops_stop_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('"Bus_station".bus_stops_stop_id_seq', 10, true);
          Bus_station          postgres    false    230            G           0    0    buses_bus_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('"Bus_station".buses_bus_id_seq', 20, true);
          Bus_station          postgres    false    229            H           0    0    drivers_driver_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('"Bus_station".drivers_driver_id_seq', 20, true);
          Bus_station          postgres    false    235            I           0    0    passengers_passenger_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('"Bus_station".passengers_passenger_id_seq', 208, true);
          Bus_station          postgres    false    234            J           0    0    route_stops_route_stop_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('"Bus_station".route_stops_route_stop_id_seq', 1, false);
          Bus_station          postgres    false    237            K           0    0    schedule_route_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('"Bus_station".schedule_route_id_seq', 30, true);
          Bus_station          postgres    false    231            L           0    0    tickets_ticket_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('"Bus_station".tickets_ticket_id_seq', 1, false);
          Bus_station          postgres    false    232            M           0    0    trips_trip_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('"Bus_station".trips_trip_id_seq', 3, true);
          Bus_station          postgres    false    236            N           0    0    work_timesheet_record_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('"Bus_station".work_timesheet_record_id_seq', 1, false);
          Bus_station          postgres    false    233            �           2606    16567    adding_crew adding_crew_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY "Bus_station".adding_crew
    ADD CONSTRAINT adding_crew_pkey PRIMARY KEY (adding_id);
 M   ALTER TABLE ONLY "Bus_station".adding_crew DROP CONSTRAINT adding_crew_pkey;
       Bus_station            postgres    false    225            q           2606    16500 "   bus_model bus_model_model_name_key 
   CONSTRAINT     j   ALTER TABLE ONLY "Bus_station".bus_model
    ADD CONSTRAINT bus_model_model_name_key UNIQUE (model_name);
 S   ALTER TABLE ONLY "Bus_station".bus_model DROP CONSTRAINT bus_model_model_name_key;
       Bus_station            postgres    false    218            s           2606    16576    bus_model bus_model_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY "Bus_station".bus_model
    ADD CONSTRAINT bus_model_pkey PRIMARY KEY (model_id);
 I   ALTER TABLE ONLY "Bus_station".bus_model DROP CONSTRAINT bus_model_pkey;
       Bus_station            postgres    false    218            w           2606    16604    bus_stops bus_stops_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY "Bus_station".bus_stops
    ADD CONSTRAINT bus_stops_pkey PRIMARY KEY (stop_id);
 I   ALTER TABLE ONLY "Bus_station".bus_stops DROP CONSTRAINT bus_stops_pkey;
       Bus_station            postgres    false    220            y           2606    16590    buses buses_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY "Bus_station".buses
    ADD CONSTRAINT buses_pkey PRIMARY KEY (bus_id);
 A   ALTER TABLE ONLY "Bus_station".buses DROP CONSTRAINT buses_pkey;
       Bus_station            postgres    false    221            i           2606    16719    drivers drivers_email_key 
   CONSTRAINT     \   ALTER TABLE ONLY "Bus_station".drivers
    ADD CONSTRAINT drivers_email_key UNIQUE (email);
 J   ALTER TABLE ONLY "Bus_station".drivers DROP CONSTRAINT drivers_email_key;
       Bus_station            postgres    false    217            k           2606    16717    drivers drivers_license_id_key 
   CONSTRAINT     f   ALTER TABLE ONLY "Bus_station".drivers
    ADD CONSTRAINT drivers_license_id_key UNIQUE (license_id);
 O   ALTER TABLE ONLY "Bus_station".drivers DROP CONSTRAINT drivers_license_id_key;
       Bus_station            postgres    false    217            m           2606    16721 #   drivers drivers_passport_number_key 
   CONSTRAINT     p   ALTER TABLE ONLY "Bus_station".drivers
    ADD CONSTRAINT drivers_passport_number_key UNIQUE (passport_number);
 T   ALTER TABLE ONLY "Bus_station".drivers DROP CONSTRAINT drivers_passport_number_key;
       Bus_station            postgres    false    217            o           2606    16676    drivers drivers_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY "Bus_station".drivers
    ADD CONSTRAINT drivers_pkey PRIMARY KEY (driver_id);
 E   ALTER TABLE ONLY "Bus_station".drivers DROP CONSTRAINT drivers_pkey;
       Bus_station            postgres    false    217            c           2606    16715    passengers passengers_email_key 
   CONSTRAINT     b   ALTER TABLE ONLY "Bus_station".passengers
    ADD CONSTRAINT passengers_email_key UNIQUE (email);
 P   ALTER TABLE ONLY "Bus_station".passengers DROP CONSTRAINT passengers_email_key;
       Bus_station            postgres    false    216            e           2606    16713 )   passengers passengers_passport_number_key 
   CONSTRAINT     v   ALTER TABLE ONLY "Bus_station".passengers
    ADD CONSTRAINT passengers_passport_number_key UNIQUE (passport_number);
 Z   ALTER TABLE ONLY "Bus_station".passengers DROP CONSTRAINT passengers_passport_number_key;
       Bus_station            postgres    false    216            g           2606    16656    passengers passengers_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY "Bus_station".passengers
    ADD CONSTRAINT passengers_pkey PRIMARY KEY (passenger_id);
 K   ALTER TABLE ONLY "Bus_station".passengers DROP CONSTRAINT passengers_pkey;
       Bus_station            postgres    false    216            �           2606    16710    route_stops route_stops_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY "Bus_station".route_stops
    ADD CONSTRAINT route_stops_pkey PRIMARY KEY (route_stop_id);
 M   ALTER TABLE ONLY "Bus_station".route_stops DROP CONSTRAINT route_stops_pkey;
       Bus_station            postgres    false    226            u           2606    16618    schedule schedule_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY "Bus_station".schedule
    ADD CONSTRAINT schedule_pkey PRIMARY KEY (route_id);
 G   ALTER TABLE ONLY "Bus_station".schedule DROP CONSTRAINT schedule_pkey;
       Bus_station            postgres    false    219                       2606    16640    tickets tickets_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY "Bus_station".tickets
    ADD CONSTRAINT tickets_pkey PRIMARY KEY (ticket_id);
 E   ALTER TABLE ONLY "Bus_station".tickets DROP CONSTRAINT tickets_pkey;
       Bus_station            postgres    false    224            }           2606    16693    trips trips_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY "Bus_station".trips
    ADD CONSTRAINT trips_pkey PRIMARY KEY (trip_id);
 A   ALTER TABLE ONLY "Bus_station".trips DROP CONSTRAINT trips_pkey;
       Bus_station            postgres    false    223            {           2606    16647 "   work_timesheet work_timesheet_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY "Bus_station".work_timesheet
    ADD CONSTRAINT work_timesheet_pkey PRIMARY KEY (record_id);
 S   ALTER TABLE ONLY "Bus_station".work_timesheet DROP CONSTRAINT work_timesheet_pkey;
       Bus_station            postgres    false    222            �           2606    16677 &   adding_crew adding_crew_driver_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Bus_station".adding_crew
    ADD CONSTRAINT adding_crew_driver_id_fkey FOREIGN KEY (driver_id) REFERENCES "Bus_station".drivers(driver_id) NOT VALID;
 W   ALTER TABLE ONLY "Bus_station".adding_crew DROP CONSTRAINT adding_crew_driver_id_fkey;
       Bus_station          postgres    false    217    225    4719            �           2606    16699 $   adding_crew adding_crew_trip_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Bus_station".adding_crew
    ADD CONSTRAINT adding_crew_trip_id_fkey FOREIGN KEY (trip_id) REFERENCES "Bus_station".trips(trip_id) NOT VALID;
 U   ALTER TABLE ONLY "Bus_station".adding_crew DROP CONSTRAINT adding_crew_trip_id_fkey;
       Bus_station          postgres    false    4733    223    225            �           2606    16577    buses buses_model_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Bus_station".buses
    ADD CONSTRAINT buses_model_id_fkey FOREIGN KEY (model_id) REFERENCES "Bus_station".bus_model(model_id) NOT VALID;
 J   ALTER TABLE ONLY "Bus_station".buses DROP CONSTRAINT buses_model_id_fkey;
       Bus_station          postgres    false    221    218    4723            �           2606    16624 %   route_stops route_stops_route_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Bus_station".route_stops
    ADD CONSTRAINT route_stops_route_id_fkey FOREIGN KEY (route_id) REFERENCES "Bus_station".schedule(route_id) NOT VALID;
 V   ALTER TABLE ONLY "Bus_station".route_stops DROP CONSTRAINT route_stops_route_id_fkey;
       Bus_station          postgres    false    219    4725    226            �           2606    16619 $   route_stops route_stops_stop_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Bus_station".route_stops
    ADD CONSTRAINT route_stops_stop_id_fkey FOREIGN KEY (stop_id) REFERENCES "Bus_station".bus_stops(stop_id) NOT VALID;
 U   ALTER TABLE ONLY "Bus_station".route_stops DROP CONSTRAINT route_stops_stop_id_fkey;
       Bus_station          postgres    false    220    226    4727            �           2606    16658 !   tickets tickets_passenger_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Bus_station".tickets
    ADD CONSTRAINT tickets_passenger_id_fkey FOREIGN KEY (passenger_id) REFERENCES "Bus_station".passengers(passenger_id) NOT VALID;
 R   ALTER TABLE ONLY "Bus_station".tickets DROP CONSTRAINT tickets_passenger_id_fkey;
       Bus_station          postgres    false    224    4711    216            �           2606    16694    tickets tickets_trip_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Bus_station".tickets
    ADD CONSTRAINT tickets_trip_id_fkey FOREIGN KEY (trip_id) REFERENCES "Bus_station".trips(trip_id) NOT VALID;
 M   ALTER TABLE ONLY "Bus_station".tickets DROP CONSTRAINT tickets_trip_id_fkey;
       Bus_station          postgres    false    4733    224    223            �           2606    16591    trips trips_bus_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Bus_station".trips
    ADD CONSTRAINT trips_bus_id_fkey FOREIGN KEY (bus_id) REFERENCES "Bus_station".buses(bus_id) NOT VALID;
 H   ALTER TABLE ONLY "Bus_station".trips DROP CONSTRAINT trips_bus_id_fkey;
       Bus_station          postgres    false    223    4729    221            �           2606    16629    trips trips_route_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Bus_station".trips
    ADD CONSTRAINT trips_route_id_fkey FOREIGN KEY (route_id) REFERENCES "Bus_station".schedule(route_id) NOT VALID;
 J   ALTER TABLE ONLY "Bus_station".trips DROP CONSTRAINT trips_route_id_fkey;
       Bus_station          postgres    false    219    4725    223            �           2606    16682 ,   work_timesheet work_timesheet_driver_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Bus_station".work_timesheet
    ADD CONSTRAINT work_timesheet_driver_id_fkey FOREIGN KEY (driver_id) REFERENCES "Bus_station".drivers(driver_id) NOT VALID;
 ]   ALTER TABLE ONLY "Bus_station".work_timesheet DROP CONSTRAINT work_timesheet_driver_id_fkey;
       Bus_station          postgres    false    4719    222    217            &      x������ � �           x�U��N�0�����j:�����"�EI�?��"$�+l6ķ��Bb��3_��qD�����������f��n �c�82�@�:�v��
����wc��@��� e�X��_�� �e�>sCr�sU����l%C�����x����!�'%�vEB�~c%��)�v\��!���p�S�X��6}l�I�Kv:{�*o���|�߯��k q�	#F!ط���
��㔟_0B�uaܮ�U�|���o ^�� �3Od      !   Y   x�Uͻ�0���<:;�sJf���Q"����lrX$��	rh���C��Q$���y�!�L��QP�����Ĥ�/��C)�!"{�&�      "   �   x�U�1
�0��c�F��/�	�����]��6b8�����s|ߢ�CM��5M5G�"�����]G#����"�f�OG+��!����$�H܀-�pzι{��K04�[��3o��.�j��ף��-ea*         ]  x�e��n�0E���T���w},ZEJ7��M7N�7<$�M�l&���B���9:{5n���X=��v�0�>��aa ��l�A�V(�$H�(Q�j�[�[p� ��A�O�uV�J1�$��A��a�^L��H��Qx��sɏ���`"�J�/���J5�5��I�}ɯ��@ ���K���[=�9S)
VT��}]�+��J��#�ԙo=�(�9�}�+��3?:��Gj?ą�Θ��CŇ8����=�v��'05�1��`/�Tx�(�wQ0�*1�"V73T���C\�H��꽳��S��#���h�^_x�H݇�0��f|6���C��y���e�BM�         �  x�}W]kG|��/1�������C�0+i�[t�3{w���S3�+�P��U����ꚞK=_�L糱��i���_�W��k��_���1�r_W1������_�l%����T�t��?F&Ʃ����#�i�_ԻS��q� c4bݬs=:�hI6T��O냣�eiH!����F+2P��0]����&�4Z6T�~����#)�O���.!0����Q��zL,a�d� &��X�{�y^Rn����(�E�:-����է���'˺j�D����w����AЬ�P/uLH�HAs���Pi�VK�@��4�5[�mP���hF��1��zsX�saYZ'-�7�z<����2P�z}7=F�hAF�z�O��04S�[��'C������5�+�e� ڑk�%){��ἧ�HN���jX�yT����Vg����M��0�{��K�ݴJ��0�0���X&6�9h h�Kϊ�01^o͢I{��Q<�J���1��H�탣,���,��NSIz-�yG��7��}P�!tfm�VR�����܋�����=��2s,�e�AmM�ka��	 A+��"�6n�t+Z7���
��0��>�&��-��v���1��`n�|?��y0�9A�^���-��V
blG=/�1q!��k����4��];��o�P�
O7��N!J�Dݵ��&BڴMwzR�7�q����w�So�yZ�����^�=ͦ���xd����!������lY'c����F3'���G3aP1��������l2cܧ#�mb�i�6�Q`�t�^�d۵9�h�"���Nw��_�=����L���3�ФBo�d�TR�\�u7��FSjJ2�1�	m�5��&�1HE�9�^N���F�����#݄R�}�ͦ/��ZRޖ��[�P�6R�6��h�\���i�Aae���0D(��"˨��ѳ�d���rf���])�� ��q����Ő��ޘ�{`�.�i1�f�=
.���
��i{�3���-o~U�z[���z��<\��B�Pp ɫ���q��^X�l0�axnaq��=��1�����CZ��t{�FXA����!8��猅)�".W\�lV���JQO7u�$2�@�H$�X�Ts�RA3}�AK��նO¡~��"
�{Qi�yQ��~,�l�6xԎ���0^6�e����q+�cU�n/���IWR��S�]�D%gm�:m�Fy��۲���R�_�R�      '      x������ � �          �   x�m�;n1D��"��x����i 0�뇫�����D�I�����ј}���}_������idP�C�ǹ4��6���hf�!5�� ��B�;Z�8�,SW7�s��%�8�E�!P	)����ʺ��*�z�}>������-��nMj�O�I�ɪLQl��a�(�qk� W7���=G��Q%��G�9��)���r�y�����|��a���N�N,�� �&��T      %      x������ � �      $   [   x�M�1
�0D�z��@df��Yl��/Qд��E%�T�0-soǵ�F��hQ�R�y1���ϐKrMok�o�L�M�~���      #      x������ � �     