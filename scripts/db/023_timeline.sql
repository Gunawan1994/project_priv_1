BEGIN;

-- CREATE SEQUENCE "id_timeline_seq" -------------------------------
CREATE SEQUENCE "public"."id_timeline_seq"
INCREMENT 1
MINVALUE 1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
-- -------------------------------------------------------------

-- CREATE TABLE "timeline" -------------------------------------
CREATE TABLE "public"."timeline" (
    "id" Bigint DEFAULT nextval('id_timeline_seq'::regclass) NOT NULL,
    "name" Text NOT NULL,
    "event_date" Timestamp Without Time Zone NOT NULL,
    "detail" Text NOT NULL,
    "up_by_id" Bigint NOT NULL,
    "up_date" Timestamp Without Time Zone NOT NULL,
    "update_by_id" Bigint NOT NULL,
    "update_date" Timestamp Without Time Zone NOT NULL,
    PRIMARY KEY ( "id" ) );
 ;
 -----------------------------------------------------------

INSERT INTO "public"."timeline" ("id", "name", "event_date", "detail", "up_by_id", "up_date", "update_by_id", "update_date") VALUES
('6', 'Registrasi Peserta', '2020-08-10 00:00:00', 'Tahap seleksi pertama para peserta berupa seleksi administrasi dari dokumen-dokumen yang dibutuhkan.', '34', '2020-07-15 10:03:20', '29', '2020-08-05 12:30:32');
INSERT INTO "public"."timeline" ("id", "name", "event_date", "detail", "up_by_id", "up_date", "update_by_id", "update_date") VALUES
('8', 'Penutupan Registrasi', '2020-09-15 00:00:00', 'Penutupan registrasi dari tahap seleksi administrasi.', '34', '2020-07-15 10:06:22', '0', '0001-01-01 00:00:00');
INSERT INTO "public"."timeline" ("id", "name", "event_date", "detail", "up_by_id", "up_date", "update_by_id", "update_date") VALUES
('10', 'Pengumuman Lolos Registrasi', '2020-10-13 00:00:00', 'Pengumuman kelulusan para peserta ke tahap kedua seleksi.', '34', '2020-07-15 10:10:06', '0', '0001-01-01 00:00:00');
INSERT INTO "public"."timeline" ("id", "name", "event_date", "detail", "up_by_id", "up_date", "update_by_id", "update_date") VALUES
('12', 'Tahap Kedua Seleksi Pitch Deck', '2020-10-14 00:00:00', 'Tahap seleksi pitch deck untuk penilaian kedua dari MIND ID Hackathon 2020 ', '34', '2020-07-15 10:17:35', '0', '0001-01-01 00:00:00'),
('13', 'Penutupan Tahap Kedua Seleksi', '2020-10-25 00:00:00', 'Penutupan seleksi kedua MIND ID Hackathon 2020.', '34', '2020-07-15 10:19:19', '0', '0001-01-01 00:00:00'),
('15', 'Pengumuman Lolos ke Tahap Presentasi', '2020-11-11 00:00:00', 'Pengumuman lolos ke tahap presentasi di saat hari H acara MIND ID Hackathon 2020', '34', '2020-07-15 10:21:36', '0', '0001-01-01 00:00:00'),
('17', 'Hari H MIND ID Hackathon 2020', '2020-11-24 00:00:00', 'Acara puncak MIND ID Hackathon 2020 selama empat hari (24-27 November 2020)', '34', '2020-07-15 10:22:47', '0', '0001-01-01 00:00:00');

COMMIT;