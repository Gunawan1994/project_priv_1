BEGIN;

-- CREATE SEQUENCE "id_team_seq" -------------------------------
CREATE SEQUENCE "public"."id_team_seq"
INCREMENT 1
MINVALUE 1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
-- -------------------------------------------------------------

-- CREATE TABLE "team" -------------------------------------
CREATE TABLE "public"."team" (
    "id" Bigint DEFAULT nextval('id_team_seq'::regclass) NOT NULL,
    "team_name" Varchar(255) NOT NULL,
    "add_date" Timestamp Without Time Zone NOT NULL,
    "team_lead" Bigint NOT NULL,
    "abouttim" Integer NOT NULL,
    "jenis_industry" Text NOT NULL,
    "facebook" Text NOT NULL,
    "linkedin" Text NOT NULL,
    "instagram" Text NOT NULL,
    "website" Text NOT NULL,
    "badan_hukum" Varchar(100) NOT NULL,
    "nama_perusahaan" Text NOT NULL,
    "alamat_perusahaan" Text NOT NULL,
    "bentuk_usaha" Varchar(100) NOT NULL,
    "tahun_mulai" Varchar(100) NOT NULL,
    "akta_notaris" Text NOT NULL,
    "sk_kemenkumham" Text NOT NULL,
    "tdp" Text NOT NULL,
    PRIMARY KEY ( "id" ) );
 ;
 -----------------------------------------------------------

INSERT INTO "public"."team" ("id", "team_name", "add_date", "team_lead", "abouttim", "jenis_industry", "facebook", "linkedin", "instagram", "website", "badan_hukum", "nama_perusahaan", "alamat_perusahaan", "bentuk_usaha", "tahun_mulai", "akta_notaris", "sk_kemenkumham", "tdp") VALUES
('6', 'Geo Innovation ', '2020-08-10 11:03:37', '50', '0', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO "public"."team" ("id", "team_name", "add_date", "team_lead", "abouttim", "jenis_industry", "facebook", "linkedin", "instagram", "website", "badan_hukum", "nama_perusahaan", "alamat_perusahaan", "bentuk_usaha", "tahun_mulai", "akta_notaris", "sk_kemenkumham", "tdp") VALUES
('8', 'A', '2020-08-10 21:49:11', '60', '0', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO "public"."team" ("id", "team_name", "add_date", "team_lead", "abouttim", "jenis_industry", "facebook", "linkedin", "instagram", "website", "badan_hukum", "nama_perusahaan", "alamat_perusahaan", "bentuk_usaha", "tahun_mulai", "akta_notaris", "sk_kemenkumham", "tdp") VALUES
('9', 'CGS FeNi', '2020-08-11 07:33:00', '75', '1', 'Kelompok Ilmiah', '', '', '', '', 'Tidak', '', '', '', '', '', '', '');
INSERT INTO "public"."team" ("id", "team_name", "add_date", "team_lead", "abouttim", "jenis_industry", "facebook", "linkedin", "instagram", "website", "badan_hukum", "nama_perusahaan", "alamat_perusahaan", "bentuk_usaha", "tahun_mulai", "akta_notaris", "sk_kemenkumham", "tdp") VALUES
('10', 'Tungsten', '2020-08-11 14:54:06', '84', '0', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('11', 'Wolfram', '2020-08-11 15:08:52', '86', '1', 'Kelompok Mahasiswa', '', '', '', '', 'Tidak', '', '', '', '', '', '', ''),
('12', 'Binggo', '2020-08-11 19:04:41', '81', '0', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('13', 'Emcorp Studio', '2020-08-11 21:29:05', '93', '0', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('14', 'Hannah Gold', '2020-08-12 12:03:35', '96', '0', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('15', 'Nickel Smelter 4.0', '2020-08-12 12:40:52', '95', '1', 'Perusahaan Petambangan', '', '', '', '', 'Tidak', '', '', '', '', '', '', ''),
('16', 'TIM Satria Bahana', '2020-08-13 14:24:19', '106', '1', 'Mining Industri', '', '', '', '', 'Ya', 'PT. Satria Bahana Sarana', 'Jl. Jurang Parigi Dalam No. 5 Tanjung Enim. Kab. Muara Enim. Sumatera Selatan', 'PT', '2004', '17', 'C26621HT.01.01.TH.2004', '8120210291734'),
('17', 'Hukum Online', '2020-08-13 15:20:04', '108', '0', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('18', 'Intelegent Terdepan', '2020-08-14 00:26:18', '118', '0', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('19', 'CISEA TIM', '2020-08-14 11:21:18', '123', '1', 'INDUSTRI PERTAMBANGAN', '', '', '', '', 'Tidak', '', '', '', '', '', '', ''),
('20', 'Safepedia-2', '2020-08-14 11:31:20', '125', '1', 'Start-up', '', '', '', '', 'Ya', 'PT Safepedia Global Teknologi', 'Jl. Sircon F15 Permata Hijau Kebayoran Lama Jakarta Selatan', 'PT', '2018', 'NO. 3 08 Agustus 2018 Silvia Ninawaty ', 'AHU-0039781.AH.01.01.tahun 2018', 'TDP 30.08.1.62.13084'),
('21', 'LeanUp', '2020-08-15 10:39:36', '54', '0', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('22', 'LineUP', '2020-08-15 11:18:42', '55', '1', 'Akademis', '', '', '', '', 'Tidak', '', '', '', '', '', '', ''),
('23', 'MEGANA', '2020-08-16 21:08:46', '140', '0', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('24', 'Service Solution', '2020-08-18 15:07:48', '138', '0', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('25', 'AMDE', '2020-08-19 09:30:39', '154', '1', 'Konsultan', '', '', '', '', 'Ya', 'Amde Eterno Tama', 'Jalan Sei Bahbolon No. 34A Medan
Sumatera Utara, INDONESIA 20154', 'PT', '2020', 'Muhammad Dodi Budiantoro, SH Nomor 90', 'No : C : 1356.HT.03.01-Th-2002', '0220103821747'),
('26', 'Aldaka', '2020-08-19 09:40:18', '49', '0', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('27', 'VXDev', '2020-08-21 06:43:20', '132', '1', 'Start-up', '', '', '', '', 'Tidak', '', '', '', '', '', '', ''),
('28', 'MAPID', '2020-08-21 15:36:13', '163', '1', 'Start-up', '', '', '', '', 'Ya', 'PT Multi Areal Planning Indonesia (MAPID)', 'Jalan Cicukang No. II B/7 RT 001 / RW 003
Kampung Malayu, Kec. Margaasih
Kab. Bandung, Jawa Barat', 'PT', '2015', '19', 'AHU-025.AH.02.02-Tahun 2012', '10.24.1.46.00221'),
('29', 'Spatial Frenzy', '2020-08-23 21:26:39', '165', '1', 'Kelompok Ilmiah', '', '', '', '', 'Tidak', '', '', '', '', '', '', ''),
('30', 'MIPANZUZUU', '2020-08-23 21:58:01', '166', '0', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('31', 'Minerva', '2020-08-23 22:20:29', '70', '0', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('32', 'GeoSoftware Community', '2020-08-24 15:02:39', '168', '0', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('34', 'TELIM', '2020-08-25 00:32:46', '162', '1', 'Akademis', '', '', '', '', 'Tidak', '', '', '', '', '', '', ''),
('35', 'Honai', '2020-08-25 12:30:19', '175', '1', 'Start-up', '', '', '', '', 'Tidak', '', '', '', '', '', '', ''),
('36', 'RINDA', '2020-08-25 15:43:35', '178', '0', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('37', 'RINDA ANTAM', '2020-08-25 16:32:29', '179', '1', 'Tambang', '', '', '', '', 'Tidak', '', '', '', '', '', '', ''),
('38', '35utech', '2020-08-25 23:27:03', '180', '1', 'Perusahaan Teknologi', '', '', '', '', 'Tidak', '', '', '', '', '', '', ''),
('39', 'Lingkungan', '2020-08-26 07:56:38', '182', '1', 'Pertambangan Mineral dan Batubara', '', '', '', '', 'Tidak', '', '', '', '', '', '', ''),
('40', 'Safeway', '2020-08-28 12:13:31', '186', '0', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('41', 'GGWP', '2020-08-29 17:14:14', '188', '1', 'Kelompok Ilmiah', '', '', '', '', 'Tidak', '', '', '', '', '', '', ''),
('42', 'Freeport GeoEng Tim', '2020-08-31 06:39:24', '191', '1', 'Mining / Pertambangan Mineral', '', '', '', '', 'Tidak', '', '', '', '', '', '', ''),
('44', 'INFIDEA', '2020-08-31 22:03:56', '181', '1', 'Perusahaan Teknologi', '', '', '', '', 'Tidak', '', '', '', '', '', '', ''),
('45', 'ABC (AB Creative)', '2020-09-01 14:19:50', '183', '0', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('46', 'ABC (Andrey Bayu Creative)', '2020-09-01 14:27:31', '183', '0', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('47', 'Bunga', '2020-09-01 16:10:52', '196', '1', 'Kelompok Ilmiah', '', '', '', '', 'Tidak', '', '', '', '', '', '', ''),
('48', 'KABARESI', '2020-09-01 16:26:18', '197', '0', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('49', 'Banyu Bening', '2020-09-01 16:40:06', '199', '1', 'Kelompok Ilmiah', '', '', '', '', 'Tidak', '', '', '', '', '', '', ''),
('50', 'Plant', '2020-09-01 21:14:38', '202', '0', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('51', 'ATHENA FORCE', '2020-09-02 11:21:50', '209', '1', 'Kelompok Ilmiah', '', '', '', '', 'Tidak', '', '', '', '', '', '', ''),
('52', 'The MIND', '2020-09-02 15:42:24', '170', '1', 'Kelompok Ilmiah', '', '', '', '', 'Tidak', '', '', '', '', '', '', ''),
('53', 'A-Team', '2020-09-02 20:22:46', '213', '0', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('54', 'Dalle', '2020-09-03 01:21:30', '216', '0', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('55', 'GMine', '2020-09-03 20:23:08', '198', '1', 'Akademis', '', '', '', '', 'Tidak', '', '', '', '', '', '', ''),
('56', 'Spider Web', '2020-09-04 08:59:51', '51', '1', 'Start-up', '', '', '', '', 'Tidak', '', '', '', '', '', '', ''),
('57', 'CeriX', '2020-09-04 12:03:51', '234', '0', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('58', 'MiningID', '2020-09-04 14:33:04', '208', '1', 'Start-up', '', '', '', '', 'Tidak', '', '', '', '', '', '', ''),
('59', 'Cobloodity', '2020-09-05 08:55:32', '100', '0', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO "public"."team" ("id", "team_name", "add_date", "team_lead", "abouttim", "jenis_industry", "facebook", "linkedin", "instagram", "website", "badan_hukum", "nama_perusahaan", "alamat_perusahaan", "bentuk_usaha", "tahun_mulai", "akta_notaris", "sk_kemenkumham", "tdp") VALUES
('60', 'Stargazing', '2020-09-06 17:13:30', '242', '1', 'Kelompok Ilmiah', '', '', '', '', 'Tidak', '', '', '', '', '', '', ''),
('61', 'Elixir', '2020-09-06 17:29:00', '243', '0', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('62', 'Garuda', '2020-09-07 08:03:21', '245', '0', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('63', 'BARA', '2020-09-07 20:00:25', '246', '1', 'Kelompok Ilmiah', '', '', '', '', 'Tidak', '', '', '', '', '', '', ''),
('64', 'Stannite', '2020-09-07 21:17:09', '83', '1', 'Peneliti', '', '', '', '', 'Tidak', '', '', '', '', '', '', ''),
('65', 'VIP', '2020-09-08 13:03:10', '257', '1', 'Konsultan', '', '', '', '', 'Ya', 'CV. Victory Indotech Persada', 'Centennial Tower Level 29, Unit D – F, Jl. Gatot Subroto Kav 24 – 25, Karet Semanggi, Setiabudi, Jakarta Selatan, Kota DKI Jakarta. (12930)', 'CV', '2020', 'No.05, Tanggal 9 Juni 2020, STEFANUS VIRDY S.H., M.Kn, NOMOR:AHU-00068.AH.02.01 TAHUN 2019', 'AHU-0030038-AH.01.14 TAHUN 2020', '0220106622367'),
('66', 'C-Vision', '2020-09-08 13:56:56', '258', '0', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('67', 'Vi-Work', '2020-09-08 22:17:07', '244', '1', 'Start-up', '', '', '', '', 'Tidak', '', '', '', '', '', '', ''),
('68', 'PURBAKA', '2020-09-08 22:56:01', '142', '0', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('69', 'REE 911', '2020-09-09 08:50:45', '206', '0', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('70', 'MCM', '2020-09-09 11:23:46', '265', '1', 'Konsultan', '', '', '', '', 'Tidak', '', '', '', '', '', '', ''),
('71', 'MineTech', '2020-09-09 15:29:15', '53', '0', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('72', 'Indigo', '2020-09-09 16:06:32', '266', '0', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('73', 'Safepedia', '2020-09-09 17:18:21', '269', '1', 'Start-up', '', '', '', '', 'Tidak', '', '', '', '', '', '', ''),
('74', 'Mokkuappu', '2020-09-09 19:45:19', '274', '1', 'Start-up', '', '', '', '', 'Tidak', '', '', '', '', '', '', ''),
('75', 'SmartEye.id', '2020-09-10 10:15:52', '194', '0', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('76', 'IDN', '2020-09-10 13:30:23', '286', '0', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('77', 'DWKProgrammer', '2020-09-10 21:17:23', '215', '0', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('78', 'PIONEER', '2020-09-11 07:17:32', '152', '1', 'Pertambangan', '', '', '', '', 'Tidak', '', '', '', '', '', '', ''),
('79', 'TINSpedia', '2020-09-11 08:44:08', '292', '0', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('80', 'Pemburu Timah', '2020-09-11 09:37:37', '297', '1', 'Tin Mining Industry', '', '', '', '', 'Tidak', '', '', '', '', '', '', ''),
('81', 'SiagaID', '2020-09-11 11:28:09', '91', '1', 'Start-up', '', '', '', '', 'Tidak', '', '', '', '', '', '', '');

COMMIT;