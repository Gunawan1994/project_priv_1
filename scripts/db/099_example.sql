BEGIN;

-- CREATE SEQUENCE "id_example_seq" -------------------------------
CREATE SEQUENCE "public"."id_example_seq"
INCREMENT 1
MINVALUE 1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
-- -------------------------------------------------------------

-- CREATE TABLE "example" -------------------------------------
CREATE TABLE "public"."example" (
    "id_example" Bigint DEFAULT nextval('id_example_seq'::regclass) NOT NULL,
    "nama" Character Varying( 255 ) NOT NULL,
    "umur" SmallInt NOT NULL,
    "posisi" Character Varying( 255 ) NOT NULL,
    "created_time" Timestamp Without Time Zone DEFAULT now() NOT NULL,
    "created_by" Bigint DEFAULT 1 NOT NULL,
    "updated_time" Timestamp Without Time Zone,
    "updated_by" Bigint,
    "deleted" Boolean DEFAULT FALSE NOT NULL, 
    "deleted_time" Timestamp Without Time Zone,
    "deleted_by" Bigint,
    PRIMARY KEY ( "id_example" ) );
 ;
 -----------------------------------------------------------

INSERT INTO "public"."example" ("nama", "umur", "posisi") VALUES
('Riyan', 22, 'Software Engineer');
INSERT INTO "public"."example" ("nama", "umur", "posisi") VALUES
('Amaydio', 50, 'Front End Developer');
INSERT INTO "public"."example" ("nama", "umur", "posisi") VALUES
('Gunawan', 55, 'Back End Developer');
INSERT INTO "public"."example" ("nama", "umur", "posisi") VALUES
('Rizqi', 10, 'UI / UX');
INSERT INTO "public"."example" ("nama", "umur", "posisi") VALUES
('Essa', 20, 'Leader');

COMMIT;