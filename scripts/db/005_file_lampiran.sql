BEGIN;

-- CREATE SEQUENCE "id_file_lampiran_seq" -------------------------------
CREATE SEQUENCE "public"."id_file_lampiran_seq"
INCREMENT 1
MINVALUE 1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
-- -------------------------------------------------------------

-- CREATE TABLE "faq" -------------------------------------
CREATE TABLE "public"."file_lampiran" (
    "id" Bigint DEFAULT nextval('id_file_lampiran_seq'::regclass) NOT NULL,
    "tabel" Text NOT NULL,
    "field_id" Bigint NOT NULL,
    "nama_file" Text NOT NULL,
    "date" Timestamp Without Time Zone NOT NULL,
    PRIMARY KEY ( "id" ) );
 ;
 -----------------------------------------------------------

INSERT INTO "public"."file_lampiran" ("id", "tabel", "field_id", "nama_file", "date") VALUES
('6', 'infopage', '1', 'info_hackathon1596527270.pptx', '2020-08-04 14:47:50');

COMMIT;