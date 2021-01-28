BEGIN;

-- CREATE SEQUENCE "id_shortbrief_seq" -------------------------------
CREATE SEQUENCE "public"."id_shortbrief_seq"
INCREMENT 1
MINVALUE 1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
-- -------------------------------------------------------------

-- CREATE TABLE "shortbrief" -------------------------------------
CREATE TABLE "public"."shortbrief" (
    "id" Bigint DEFAULT nextval('id_shortbrief_seq'::regclass) NOT NULL,
    "detail" Text NOT NULL,
    "up_by_id" Bigint NOT NULL,
    "up_by_name" Text NOT NULL,
    "up_date" Timestamp Without Time Zone NOT NULL,
    "update_by_id" Bigint NOT NULL,
    "update_by_name" Text NOT NULL,
    "update_date" Timestamp Without Time Zone NOT NULL,
    PRIMARY KEY ( "id" ) );
 ;
 -----------------------------------------------------------

INSERT INTO "public"."shortbrief" ("id", "detail", "up_by_id", "up_by_name", "up_date", "update_by_id", "update_by_name", "update_date") VALUES
('1', '<p><span style="color: black;">MIND ID Hackathon 2020 adalah ajang hackaton pertama di Indonesia yang mengusung tema industri pertambangan.</span></p><p><span style="color: black;">Ajang ini bertujuan untuk mencari ide dan inovasi dalam mengatasi permasalahan - permasalahan yang dihadapi oleh Operasi Bisnis pertambangan MIND ID.</span></p><p><span style="color: black;">Para pemenang MIND ID Hackathon 2020 akan mendapatkan dukungan pendanaan sampai dengan Rp. 500 juta yang dapat digunakan untuk pengembangan ide atau inovasi hingga menghasilkan produk piranti lunak.</span></p>', '3', 'Akbar Sahada', '2020-07-13 11:18:00', '29', 'Out Dream', '2020-08-04 13:00:52');

COMMIT;