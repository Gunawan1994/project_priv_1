BEGIN;

-- CREATE SEQUENCE "id_s_page_seq" -------------------------------
CREATE SEQUENCE "public"."id_s_page_seq"
INCREMENT 1
MINVALUE 1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
-- -------------------------------------------------------------

-- CREATE TABLE "s_page" -------------------------------------
CREATE TABLE "public"."s_page" (
    "id" Bigint DEFAULT nextval('id_s_page_seq'::regclass) NOT NULL,
    "lvl_page" Bigint NOT NULL,
    "s_page" Integer NOT NULL,
    "last_change" Timestamp Without Time Zone NOT NULL,
    "by_id" Bigint NOT NULL,
    PRIMARY KEY ( "id" ) );
 ;
 -----------------------------------------------------------

INSERT INTO "public"."s_page" ("id", "lvl_page", "s_page", "last_change", "by_id") VALUES
('1', '2', '1', '2020-08-13 12:38:08', '3');
INSERT INTO "public"."s_page" ("id", "lvl_page", "s_page", "last_change", "by_id") VALUES
('2', '3', '1', '2020-07-29 12:40:14', '3');

COMMIT;