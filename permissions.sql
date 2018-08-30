
--gis_viewer role has select privileges only
--use to connect to view only layers to avoid accidental edits
create role gis_viewer;
--assign select privileges to gis_viewer here
grant usage on schema gc_workshop to gis_viewer; 
grant select on all tables in schema gc_workshop to gis_viewer;

create user workshop1 password 'fHfxCs5C6QTZCKRX';
grant gis_viewer to workshop1;

create user workshop2 password 'fHfxCs5C6QTZCKRX';
grant gis_viewer to workshop2;

create user workshop3 password 'fHfxCs5C6QTZCKRX';
grant gis_viewer to workshop3;

create user workshop4 password 'fHfxCs5C6QTZCKRX';
create user workshop5 password 'fHfxCs5C6QTZCKRX';
create user workshop6 password 'fHfxCs5C6QTZCKRX';
create user workshop7 password 'fHfxCs5C6QTZCKRX';
create user workshop8 password 'fHfxCs5C6QTZCKRX';
create user workshop9 password 'fHfxCs5C6QTZCKRX';
create user workshop10 password 'fHfxCs5C6QTZCKRX';
create user workshop11 password 'fHfxCs5C6QTZCKRX';
create user workshop12 password 'fHfxCs5C6QTZCKRX';
create user workshop13 password 'fHfxCs5C6QTZCKRX';
create user workshop14 password 'fHfxCs5C6QTZCKRX';
create user workshop15 password 'fHfxCs5C6QTZCKRX';
create user workshop16 password 'fHfxCs5C6QTZCKRX';
create user workshop17 password 'fHfxCs5C6QTZCKRX';
create user workshop18 password 'fHfxCs5C6QTZCKRX';
create user workshop19 password 'fHfxCs5C6QTZCKRX';
create user workshop20 password 'fHfxCs5C6QTZCKRX';

create schema working1;
revoke create on schema public from workshop1;
ALTER DEFAULT PRIVILEGES IN SCHEMA working1 GRANT ALL PRIVILEGES ON TABLES TO workshop1;
GRANT all privileges on schema working1 to workshop1;
ALTER DEFAULT PRIVILEGES IN SCHEMA working1 GRANT USAGE ON SEQUENCES TO workshop1;

create schema working2;
revoke create on schema public from workshop2;
ALTER DEFAULT PRIVILEGES IN SCHEMA working2 GRANT ALL PRIVILEGES ON TABLES TO workshop2;
GRANT all privileges on schema working2 to workshop2;
ALTER DEFAULT PRIVILEGES IN SCHEMA working2 GRANT USAGE ON SEQUENCES TO workshop2;

create schema working3;
revoke create on schema public from workshop3;
ALTER DEFAULT PRIVILEGES IN SCHEMA working3 GRANT ALL PRIVILEGES ON TABLES TO workshop3;
GRANT all privileges on schema working3 to workshop3;
ALTER DEFAULT PRIVILEGES IN SCHEMA working3 GRANT USAGE ON SEQUENCES TO workshop3;

create schema working4;
grant gis_viewer to workshop4;
revoke create on schema public from workshop4;
ALTER DEFAULT PRIVILEGES IN SCHEMA working4 GRANT ALL PRIVILEGES ON TABLES TO workshop4;
GRANT all privileges on schema working4 to workshop4;
ALTER DEFAULT PRIVILEGES IN SCHEMA working4 GRANT USAGE ON SEQUENCES TO workshop4;

create schema working5;
grant gis_viewer to workshop5;
revoke create on schema public from workshop5;
ALTER DEFAULT PRIVILEGES IN SCHEMA working5 GRANT ALL PRIVILEGES ON TABLES TO workshop5;
GRANT all privileges on schema working5 to workshop5;
ALTER DEFAULT PRIVILEGES IN SCHEMA working5 GRANT USAGE ON SEQUENCES TO workshop5;

create schema working6;
grant gis_viewer to workshop6;
revoke create on schema public from workshop6;
ALTER DEFAULT PRIVILEGES IN SCHEMA working6 GRANT ALL PRIVILEGES ON TABLES TO workshop6;
GRANT all privileges on schema working6 to workshop6;
ALTER DEFAULT PRIVILEGES IN SCHEMA working6 GRANT USAGE ON SEQUENCES TO workshop6;

create schema working7;
grant gis_viewer to workshop7;
revoke create on schema public from workshop7;
ALTER DEFAULT PRIVILEGES IN SCHEMA working7 GRANT ALL PRIVILEGES ON TABLES TO workshop7;
GRANT all privileges on schema working7 to workshop7;
ALTER DEFAULT PRIVILEGES IN SCHEMA working7 GRANT USAGE ON SEQUENCES TO workshop7;

create schema working8;
grant gis_viewer to workshop8;
revoke create on schema public from workshop8;
ALTER DEFAULT PRIVILEGES IN SCHEMA working8 GRANT ALL PRIVILEGES ON TABLES TO workshop8;
GRANT all privileges on schema working8 to workshop8;
ALTER DEFAULT PRIVILEGES IN SCHEMA working8 GRANT USAGE ON SEQUENCES TO workshop8;

create schema working9;
grant gis_viewer to workshop9;
revoke create on schema public from workshop9;
ALTER DEFAULT PRIVILEGES IN SCHEMA working9 GRANT ALL PRIVILEGES ON TABLES TO workshop9;
GRANT all privileges on schema working9 to workshop9;
ALTER DEFAULT PRIVILEGES IN SCHEMA working9 GRANT USAGE ON SEQUENCES TO workshop9;

create schema working10;
grant gis_viewer to workshop10;
revoke create on schema public from workshop10;
ALTER DEFAULT PRIVILEGES IN SCHEMA working10 GRANT ALL PRIVILEGES ON TABLES TO workshop10;
GRANT all privileges on schema working10 to workshop10;
ALTER DEFAULT PRIVILEGES IN SCHEMA working10 GRANT USAGE ON SEQUENCES TO workshop10;

create schema working11;
grant gis_viewer to workshop11;
revoke create on schema public from workshop11;
ALTER DEFAULT PRIVILEGES IN SCHEMA working11 GRANT ALL PRIVILEGES ON TABLES TO workshop11;
GRANT all privileges on schema working11 to workshop11;
ALTER DEFAULT PRIVILEGES IN SCHEMA working11 GRANT USAGE ON SEQUENCES TO workshop11;

create schema working12;
grant gis_viewer to workshop12;
revoke create on schema public from workshop12;
ALTER DEFAULT PRIVILEGES IN SCHEMA working12 GRANT ALL PRIVILEGES ON TABLES TO workshop12;
GRANT all privileges on schema working12 to workshop12;
ALTER DEFAULT PRIVILEGES IN SCHEMA working12 GRANT USAGE ON SEQUENCES TO workshop12;

create schema working13;
grant gis_viewer to workshop13;
revoke create on schema public from workshop13;
ALTER DEFAULT PRIVILEGES IN SCHEMA working13 GRANT ALL PRIVILEGES ON TABLES TO workshop13;
GRANT all privileges on schema working13 to workshop13;
ALTER DEFAULT PRIVILEGES IN SCHEMA working13 GRANT USAGE ON SEQUENCES TO workshop13;

create schema working14;
grant gis_viewer to workshop14;
revoke create on schema public from workshop14;
ALTER DEFAULT PRIVILEGES IN SCHEMA working14 GRANT ALL PRIVILEGES ON TABLES TO workshop14;
GRANT all privileges on schema working14 to workshop14;
ALTER DEFAULT PRIVILEGES IN SCHEMA working14 GRANT USAGE ON SEQUENCES TO workshop14;

create schema working15;
grant gis_viewer to workshop15;
revoke create on schema public from workshop15;
ALTER DEFAULT PRIVILEGES IN SCHEMA working15 GRANT ALL PRIVILEGES ON TABLES TO workshop15;
GRANT all privileges on schema working15 to workshop15;
ALTER DEFAULT PRIVILEGES IN SCHEMA working15 GRANT USAGE ON SEQUENCES TO workshop15;

create schema working16;
grant gis_viewer to workshop16;
revoke create on schema public from workshop16;
ALTER DEFAULT PRIVILEGES IN SCHEMA working16 GRANT ALL PRIVILEGES ON TABLES TO workshop16;
GRANT all privileges on schema working16 to workshop16;
ALTER DEFAULT PRIVILEGES IN SCHEMA working16 GRANT USAGE ON SEQUENCES TO workshop16;

create schema working17;
grant gis_viewer to workshop17;
revoke create on schema public from workshop17;
ALTER DEFAULT PRIVILEGES IN SCHEMA working17 GRANT ALL PRIVILEGES ON TABLES TO workshop17;
GRANT all privileges on schema working17 to workshop17;
ALTER DEFAULT PRIVILEGES IN SCHEMA working17 GRANT USAGE ON SEQUENCES TO workshop17;

create schema working18;
grant gis_viewer to workshop18;
revoke create on schema public from workshop18;
ALTER DEFAULT PRIVILEGES IN SCHEMA working18 GRANT ALL PRIVILEGES ON TABLES TO workshop18;
GRANT all privileges on schema working18 to workshop18;
ALTER DEFAULT PRIVILEGES IN SCHEMA working18 GRANT USAGE ON SEQUENCES TO workshop18;

create schema working19;
grant gis_viewer to workshop19;
revoke create on schema public from workshop19;
ALTER DEFAULT PRIVILEGES IN SCHEMA working19 GRANT ALL PRIVILEGES ON TABLES TO workshop19;
GRANT all privileges on schema working19 to workshop19;
ALTER DEFAULT PRIVILEGES IN SCHEMA working19 GRANT USAGE ON SEQUENCES TO workshop19;

create schema working20;
grant gis_viewer to workshop20;
revoke create on schema public from workshop20;
ALTER DEFAULT PRIVILEGES IN SCHEMA working20 GRANT ALL PRIVILEGES ON TABLES TO workshop20;
GRANT all privileges on schema working20 to workshop20;
ALTER DEFAULT PRIVILEGES IN SCHEMA working20 GRANT USAGE ON SEQUENCES TO workshop20;

