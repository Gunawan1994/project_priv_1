BEGIN;

-- CREATE SEQUENCE "id_video_seq" -------------------------------
CREATE SEQUENCE "public"."id_video_seq"
INCREMENT 1
MINVALUE 1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
-- -------------------------------------------------------------

-- CREATE TABLE "video" -------------------------------------
CREATE TABLE "public"."video" (
    "id" Bigint DEFAULT nextval('id_video_seq'::regclass) NOT NULL,
    "video_name" Text NOT NULL,
    "video_keterangan" Text NOT NULL,
    "video_file_name" Text NOT NULL,
    "video_file_cover" Text NOT NULL,
    "up_by_id" Bigint NOT NULL,
    "up_date" Timestamp Without Time Zone NOT NULL,
    "edit_by_id" Bigint NOT NULL,
    "edit_date" Timestamp Without Time Zone NOT NULL,
    PRIMARY KEY ( "id" ) );
 ;
 -----------------------------------------------------------

INSERT INTO "public"."video" ("id", "video_name", "video_keterangan", "video_file_name", "video_file_cover", "up_by_id", "up_date", "edit_by_id", "edit_date") VALUES
('6', 'test', 'tawdawdaw', '1596606791Teaser_MIND_ID_Kapital_kecil_(1).webm', '1596606791thumbnail_MIND_ID.png', '3', '2020-07-16 17:52:07', '29', '2020-08-05 12:53:11');

COMMIT;