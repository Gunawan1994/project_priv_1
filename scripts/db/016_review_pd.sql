BEGIN;

-- CREATE SEQUENCE "id_review_pd_seq" -------------------------------
CREATE SEQUENCE "public"."id_review_pd_seq"
INCREMENT 1
MINVALUE 1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
-- -------------------------------------------------------------

-- CREATE TABLE "review_pd" -------------------------------------
CREATE TABLE "public"."review_pd" (
    "id" Bigint DEFAULT nextval('id_review_pd_seq'::regclass) NOT NULL,
    "id_pitchdeck" Bigint NOT NULL,
    "id_jury" Bigint NOT NULL,
    "id_penilaian" Bigint NOT NULL,
    "date" Timestamp Without Time Zone NOT NULL,
    PRIMARY KEY ( "id" ) );
 ;
 -----------------------------------------------------------

COMMIT;