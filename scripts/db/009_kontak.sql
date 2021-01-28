BEGIN;

-- CREATE SEQUENCE "id_kontak_seq" -------------------------------
CREATE SEQUENCE "public"."id_kontak_seq"
INCREMENT 1
MINVALUE 1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
-- -------------------------------------------------------------

-- CREATE TABLE "kontak" -------------------------------------
CREATE TABLE "public"."kontak" (
    "id" Bigint DEFAULT nextval('id_kontak_seq'::regclass) NOT NULL,
    "address" Text NOT NULL,
    "telp" Text NOT NULL,
    "hp" Text NOT NULL,
    "email" Text NOT NULL,
    "up_by_id" Bigint NOT NULL,
    "up_by_name" Text NOT NULL,
    "up_date" Timestamp Without Time Zone NOT NULL,
    "update_by_id" Bigint NOT NULL,
    "update_by_name" Text NOT NULL,
    "update_date" Timestamp Without Time Zone NOT NULL,
    PRIMARY KEY ( "id" ) );
 ;
 -----------------------------------------------------------

INSERT INTO "public"."kontak" ("id", "address", "telp", "hp", "email", "up_by_id", "up_by_name", "up_date", "update_by_id", "update_by_name", "update_date") VALUES
('1', 'Kantor MIND ID,

Gedung Energy Lt. 16 SCBD,

Jl. Jenderal Sudirman Kav. 52-53 Jakarta 12190.
P.O. BOX 6917 Jakarta Selatan, Indonesia', '(+6221) 27938750', '+62 819 3237 1243', 'hackathon@mind.id', '3', 'Akbar Sahada', '2020-07-13 00:00:00', '29', 'Out Dream', '2020-08-06 13:02:13');

COMMIT;