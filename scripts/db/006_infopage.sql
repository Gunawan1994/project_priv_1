BEGIN;

-- CREATE SEQUENCE "id_infopage_seq" -------------------------------
CREATE SEQUENCE "public"."id_infopage_seq"
INCREMENT 1
MINVALUE 1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
-- -------------------------------------------------------------

-- CREATE TABLE "infopage" -------------------------------------
CREATE TABLE "public"."infopage" (
    "id" Bigint DEFAULT nextval('id_infopage_seq'::regclass) NOT NULL,
    "judul" Varchar(100) NOT NULL,
    "detail" Text NOT NULL,
    "date" Timestamp Without Time Zone NOT NULL,
    "lastedit_date" Timestamp Without Time Zone NOT NULL,
    PRIMARY KEY ( "id" ) );
 ;
 -----------------------------------------------------------

INSERT INTO "public"."infopage" ("id", "judul", "detail", "date", "lastedit_date") VALUES
('1', 'Info Page', '<p><strong class="ql-size-huge">Syarat dan Ketentuan Peserta</strong></p><ol><li>Seluruh anggota tim dapat berasal dari berbagai latar Pendidikan</li><li>Peserta dapat terdiri dari kelompok, komunitas, start-up, perusahaan dll.</li><li>Jumlah anggota tim minimal 3 (tiga) orang, maksimal 5 (lima) orang</li><li>Seluruh anggota tim wajib mengunggah dokumen diri (KTP/Paspor) untuk registrasi dan administrasi pada laman yang sudah tersedia</li><li>Tim terdiri dari Hustler (Konseptor), Hipster (Desainer), dan Hacker (Programmer)</li><li>Setiap Peserta dapat mengajukan lebih dari 1 (satu) ide pada tahap administrasi dan registrasi.</li><li>Ide yang dikembangkan masih bersifat orisinil dan bukan merupakan suatu produk yang sudah komersil</li><li>Hak Kekayaan Intelektual yang timbul dari Implementasi Hackathon akan menjadi milik bersama antara MIND ID dan Pemenang terpilih.</li></ol><p><br></p><p><strong class="ql-size-huge">Komposisi Tim</strong></p><p><strong>Hustler </strong>	Orang – orang yang punya passion untuk menjual dan memperkenalkan produk tim.</p><p><strong>Hipster </strong>	Desainer yang mengedepankan user interface dan user experience yang bagus dalam tampilan web dan/atau aplikasi.</p><p><strong>Hacker </strong>	Developer yang punya skill mendasar mengenai pemrograman atau coding aplikasi .</p>', '2020-08-03 00:00:00', '2020-08-14 11:13:31');

COMMIT;