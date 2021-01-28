BEGIN;

-- CREATE SEQUENCE "id_peran_seq" -------------------------------
CREATE SEQUENCE "public"."id_peran_seq"
INCREMENT 1
MINVALUE 1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
-- -------------------------------------------------------------

-- CREATE TABLE "peran" -------------------------------------
CREATE TABLE "public"."peran" (
    "id" Bigint DEFAULT nextval('id_peran_seq'::regclass) NOT NULL,
    "nama_peran" Varchar(255) NOT NULL,
    "add_date" Timestamp Without Time Zone NOT NULL,
    "add_by_id" Bigint NOT NULL,
    PRIMARY KEY ( "id" ) );
 ;
 -----------------------------------------------------------

COMMIT;