BEGIN;

-- CREATE SEQUENCE "id_webinar_seq" -------------------------------
CREATE SEQUENCE "public"."id_webinar_seq"
INCREMENT 1
MINVALUE 1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
-- -------------------------------------------------------------

-- CREATE TABLE "webinar" -------------------------------------
CREATE TABLE "public"."webinar" (
    "id" Bigint DEFAULT nextval('id_webinar_seq'::regclass) NOT NULL,
    "name" Text NOT NULL,
    "detail" Text NOT NULL,
    "start_date" Timestamp Without Time Zone NOT NULL,
    "end_date" Timestamp Without Time Zone NOT NULL,
    "banner" Text NOT NULL,
    "open" Integer NOT NULL,
    PRIMARY KEY ( "id" ) );
 ;
 -----------------------------------------------------------

INSERT INTO "public"."webinar" ("id", "name", "detail", "start_date", "end_date", "banner", "open") VALUES
('4', 'Transformasi Digital Pertambangan MIND ID Hackathon 2020', 'Bertujuan untuk mengetahui lebih jauh mengenai digitalisasi pertambangan dan juga sosialiasi lebih lanjut mengenai MIND ID Hackathon 2020.', '2020-08-11', '2020-08-14', '1597139827flyer_webinar_mind_id.jpeg', '0');
INSERT INTO "public"."webinar" ("id", "name", "detail", "start_date", "end_date", "banner", "open") VALUES
('5', 'Pengembangan IPTEK Pertambangan Melalui MIND ID Hackathon 2020', 'Bertujuan untuk mengetahui lebih jauh apa manfaat adanya event hackathon bagi pengembangan IPTEK di Indonesia.', '2020-09-01', '2020-09-04', '1599027423flyer_webinar_mind_id.png', '0');
INSERT INTO "public"."webinar" ("id", "name", "detail", "start_date", "end_date", "banner", "open") VALUES
('6', 'Efisiensi Bisnis Pertambangan Melalui Teknologi Digital', 'Bertujuan untuk mengetahui lebih jauh mengenai digitalisasi pertambangan dan juga sosialiasi lebih lanjut mengenai MIND ID Hackathon 2020.', '2020-09-14', '2020-09-17', '1599541738Flyer_Webinar_2.png', '0');

COMMIT;