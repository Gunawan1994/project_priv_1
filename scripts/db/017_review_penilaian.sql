BEGIN;

-- CREATE SEQUENCE "id_review_penilaian_seq" -------------------------------
CREATE SEQUENCE "public"."id_review_penilaian_seq"
INCREMENT 1
MINVALUE 1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
-- -------------------------------------------------------------

-- CREATE TABLE "review_penilaian" -------------------------------------
CREATE TABLE "public"."review_penilaian" (
    "id" Bigint DEFAULT nextval('id_review_penilaian_seq'::regclass) NOT NULL,
    "id_jury" Bigint NOT NULL,
    "problem_satu" varchar(100) NOT NULL,
    "problem_dua" varchar(100) NOT NULL,
    "stso_satu" varchar(100) NOT NULL,
    "stso_dua" varchar(100) NOT NULL,
    "product_satu" varchar(100) NOT NULL,
    "product_dua" varchar(100) NOT NULL,
    "product_tiga" varchar(100) NOT NULL,
    "product_empat" varchar(100) NOT NULL,
    "nilai_akhir" varchar(100) NOT NULL,
    "date" Timestamp Without Time Zone NOT NULL,
    PRIMARY KEY ( "id" ) );
 ;
 -----------------------------------------------------------

COMMIT;