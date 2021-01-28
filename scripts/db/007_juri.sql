BEGIN;

-- CREATE SEQUENCE "id_juri_seq" -------------------------------
CREATE SEQUENCE "public"."id_juri_seq"
INCREMENT 1
MINVALUE 1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
-- -------------------------------------------------------------

-- CREATE TABLE "juri" -------------------------------------
CREATE TABLE "public"."juri" (
    "id" Bigint DEFAULT nextval('id_juri_seq'::regclass) NOT NULL,
    "name" Text NOT NULL,
    "jabatan" Text NOT NULL,
    "detail" Text NOT NULL,
    "photo" Text NOT NULL,
    "up_by_id" Bigint NOT NULL,
    "up_date" Timestamp Without Time Zone NOT NULL,
    "update_by_id" Bigint NOT NULL,
    "update_date" Timestamp Without Time Zone NOT NULL,
    PRIMARY KEY ( "id" ) );
 ;
 -----------------------------------------------------------

INSERT INTO "public"."juri" ("id", "name", "jabatan", "detail", "photo", "up_by_id", "up_date", "update_by_id", "update_date") VALUES
('2', 'Agus Tjahajana W.', 'Komisaris Utama MIND ID', 'Meraih gelar Sarjana di Bidang Teknik Mesin dari Institut Teknologi Bandung pada tahun 1979, Sarjana Ekonomi dari Universitas Indonesia pada tahun 1988 dan gelar Master of Science di Bidang Industrial System Engineering dari University of Florida, Amerika Serikat pada tahun 1991.

', '1594787025Agus-Tjahajana.png', '3', '2020-07-13 20:21:57', '29', '2020-08-05 13:18:45');
INSERT INTO "public"."juri" ("id", "name", "jabatan", "detail", "photo", "up_by_id", "up_date", "update_by_id", "update_date") VALUES
('3', 'Suryo Eko H.', 'Direktur Transformasi Bisnis MIND ID', 'Meraih gelar Sarjana Matematika dari Universitas Gadjah Mada pada tahun 1990 dan gelar Manajemen Operasi Produksi pada tahun 2014 dari Universitas Mercu Buana. Dalam karier profesionalnya, ia pernah menjabat sebagai Direktur Utama PT Bukit Asam Bangko (2012-2013), lalu di PT Internasional Prima Coal menjabat sebagai Komisaris (2009 - 2013) dan Direktur Utama (2013 - 2016). Selanjutnya ia pernah menjabat Komisaris untuk PT Bukit Pembangkit Inovatif (2018 - 2019). Lalu kembali ke PT Bukit Asam Tbk sebagai Direktur SDM & Umum (2016 - 2017), Direktur Pengembangan Usaha (2017), dan Direktur Operasi dan Produksi (2017 - 2019)

', '1594787347Suryo-Eko.png', '3', '2020-07-14 14:13:58', '34', '2020-07-15 11:29:07');
INSERT INTO "public"."juri" ("id", "name", "jabatan", "detail", "photo", "up_by_id", "up_date", "update_by_id", "update_date") VALUES
('4', 'Prof. Ridho Wattimena', 'Dekan FTTM ITB', 'Meraih gelar sarjana (1991) dan magister (1996) pada jurusan Teknik Pertambangan di Institut Teknologi Bandung. Prof Ridho melanjutkan pendidikan S3 nya dan meraih gelah PhD di University of Queensland pada tahun 2003. Semenjak 1993, Prof Ridho berkarir sebagai pendidik dan sekarang menjabat sebagai Guru Besar di Fakultas Teknik Pertambangan dan Perminyakan ITB pada kelompok keahlian KK Teknik Pertambangan.
', '1594788812ridho.png', '34', '2020-07-15 10:23:50', '29', '2020-08-11 09:26:04');
INSERT INTO "public"."juri" ("id", "name", "jabatan", "detail", "photo", "up_by_id", "up_date", "update_by_id", "update_date") VALUES
('5', 'Sri Raharjo', 'Profesional', 'Meraih gelar magister pada subjek Computer Science and Engineering di University of New South Wales pada tahun 1992. Semenjak tahun 2009, beliau telah berkarir di Direktorat Jendral Mineral dan Batubara  dan dipercaya menjadi Direktur Teknik dan Lingkungan di Direktorat Jendral Mineral dan Batubara pada tahun 2015.
', '1594786191SRI.png', '34', '2020-07-15 10:26:57', '29', '2020-08-04 15:45:27'),
('6', 'Wahyu Sunyoto', 'IAGI', 'Meraih gelar magister pada subjek Economic Geology di James Cook University pada tahun 1999. Pada tahun 2007, beliau menitih karir di PT Freeport Indonesia dan diamanahkan menjadi Senior Vice President pada Divisi Geoscience sampai tahun 2018. Semenjak tahun 2018, beliau berkarir menjadi Head of Exploration Division pada Mining Industry Holding INALUM (Persero).
', '1597037410wahyu_sun.jpg', '34', '2020-07-15 10:49:15', '29', '2020-09-03 14:51:17'),
('7', 'Lufi Rachmad', 'PERHAPI', 'Lufi Rachmad berkarir pada sector pertambangan sejak tahun 1995. Meraih gelar Magister pada pertambangan di Colorado Mining School pada tahun 1997. Semenjak tahun 2007, beliau berkarir sebagai Principal Consultant di Geomine Consultant. Semenjak tahun 1996, beliau merupaja anggota aktif dari Perhimpunan Ahli Pertambangan Indonesia (PERHAPI). Beliau juga merupakan Perwakilan dari Indonesia pada CRIRSCO (Committee for Mineral Reserves International Reporting Standards).', '1594786788luf.png', '34', '2020-07-15 10:50:38', '34', '2020-07-15 11:19:48');

COMMIT;