BEGIN;

-- CREATE SEQUENCE "id_dokumentasi_seq" -------------------------------
CREATE SEQUENCE "public"."id_dokumentasi_seq"
INCREMENT 1
MINVALUE 1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
-- -------------------------------------------------------------

-- CREATE TABLE "dokumentasi" -------------------------------------
CREATE TABLE "public"."dokumentasi" (
    "id" Bigint DEFAULT nextval('id_dokumentasi_seq'::regclass) NOT NULL,
    "name" Text NOT NULL,
    "detail" Text NOT NULL,
    "photo" Text NOT NULL,
    "up_by_id" Bigint NOT NULL,
    "up_date" Timestamp Without Time Zone NOT NULL,
    "update_by_id" Bigint NOT NULL,
    "update_date" Timestamp Without Time Zone NOT NULL,
    PRIMARY KEY ( "id" ) );
 ;
 -----------------------------------------------------------

INSERT INTO "public"."dokumentasi" ("id", "name", "detail", "photo", "up_by_id", "up_date", "update_by_id", "update_date") VALUES
('2', 'MMII Award 2019', 'Pemenang MMII Award 2019', '15947954597.png', '3', '2020-07-13 20:48:54', '34', '2020-07-15 13:44:19');
INSERT INTO "public"."dokumentasi" ("id", "name", "detail", "photo", "up_by_id", "up_date", "update_by_id", "update_date") VALUES
('3', 'MMII Award 2019', 'Kemeriahan MMII Award 2019', '15947955031.png', '34', '2020-07-15 12:03:42', '34', '2020-07-15 13:45:03');
INSERT INTO "public"."dokumentasi" ("id", "name", "detail", "photo", "up_by_id", "up_date", "update_by_id", "update_date") VALUES
('5', 'MMII Award 2019', 'Pembukaan acara MMII Award 2019', '15947955319.png', '34', '2020-07-15 12:06:04', '34', '2020-07-15 13:45:31');
INSERT INTO "public"."dokumentasi" ("id", "name", "detail", "photo", "up_by_id", "up_date", "update_by_id", "update_date") VALUES
('8', 'MMII Award 2019', 'Pemenang MMII Award 2019', '15947955576.png', '34', '2020-07-15 12:07:53', '34', '2020-07-15 13:45:57'),
('10', 'MMII Award 2019 ', 'Kemeriahan MMII Award 2019 ', '15947955828.png', '34', '2020-07-15 12:10:56', '34', '2020-07-15 13:46:22'),
('12', 'MMII Award 2019', 'Sambutan dari Wakil Mentri BUMN, Budi Gunadi Sadikin', '15947956884.png', '34', '2020-07-15 12:14:38', '34', '2020-07-15 13:48:08'),
('14', 'MMII Award 2019', 'Pemotengan tumpeng oleh Direktur Utama MIND ID, Orias Petrus Moedak', '15947957695.png', '34', '2020-07-15 12:17:28', '34', '2020-07-15 13:49:29'),
('17', 'MMII Award 2019', 'Kemeriahan MMII Award 2019', '15947958142.png', '34', '2020-07-15 12:31:35', '34', '2020-07-15 13:50:14'),
('19', 'MMII Award 2019', 'Sambutan Direktur Utama MIND ID, Orias Petrus Moedak', '15947958433.png', '34', '2020-07-15 12:32:32', '34', '2020-07-15 13:50:43');

COMMIT;