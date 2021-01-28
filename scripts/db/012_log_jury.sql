BEGIN;

-- CREATE SEQUENCE "id_log_jury_seq" -------------------------------
CREATE SEQUENCE "public"."id_log_jury_seq"
INCREMENT 1
MINVALUE 1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
-- -------------------------------------------------------------

-- CREATE TABLE "log_jury" -------------------------------------
CREATE TABLE "public"."log_jury" (
    "id" Bigint DEFAULT nextval('id_log_jury_seq'::regclass) NOT NULL,
    "category" Text NOT NULL,
    "keterangan" Text NOT NULL,
    "ip" Text NOT NULL,
    "date" Timestamp Without Time Zone NOT NULL,
    PRIMARY KEY ( "id" ) );
 ;
 -----------------------------------------------------------

COMMIT;