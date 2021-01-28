BEGIN;

-- CREATE SEQUENCE "id_kontak_res_seq" -------------------------------
CREATE SEQUENCE "public"."id_kontak_res_seq"
INCREMENT 1
MINVALUE 1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
-- -------------------------------------------------------------

-- CREATE TABLE "kontak_res" -------------------------------------
CREATE TABLE "public"."kontak_res" (
    "id" Bigint DEFAULT nextval('id_kontak_res_seq'::regclass) NOT NULL,
    "name" Text NOT NULL,
    "email" Varchar(100) NOT NULL,
    "company" Text NOT NULL,
    "message" Text NOT NULL,
    "ip_address" Text NOT NULL,
    "date" Timestamp Without Time Zone NOT NULL,
    PRIMARY KEY ( "id" ) );
 ;
 -----------------------------------------------------------

INSERT INTO "public"."kontak_res" ("id", "name", "email", "company", "message", "ip_address", "date") VALUES
('1', 'ahwyd ad', 'pertambangan.dunia@gmail.com', 'agywd awdhjkwa', 'ahvwdyiuawkjbdlawd awdjawd', '::123', '2020-07-14 11:11:00');
INSERT INTO "public"."kontak_res" ("id", "name", "email", "company", "message", "ip_address", "date") VALUES
('2', 'agwdi awd', 'awudgiauwd@gmail.com', 'awhdoaiwhd', 'auwd aihdawugdiha daiwhdkao wdiawdia wdoawud aukjd aowdilh aw;iuqghekan fuawolih caowmd', '::122', '2020-07-14 11:13:50');
INSERT INTO "public"."kontak_res" ("id", "name", "email", "company", "message", "ip_address", "date") VALUES
('3', 'awydgj awd', 'awad@gm.com', 'auwdkabw awd', 'auwdiawjbdlnawd ', '::111', '2020-07-14 11:17:17');
INSERT INTO "public"."kontak_res" ("id", "name", "email", "company", "message", "ip_address", "date") VALUES
('4', 'awd awgd', 'awbdadn@ml.com', 'kawgdakw', 'ajwdg awduawgdiakwbd', '::100', '2020-07-14 11:18:38'),
('5', 'akwydi awdu', 'awhbd@gmail.com', 'jwabdawl auwdb', 'awbdiawknd awudawdga d awd owad', '::12', '2020-07-14 11:20:05'),
('6', 'uwagd wadahw', 'jialuwgd@mgik.com', 'aywduaw dawd', 'a;igwd awdjliawdg awildiawdkjwa', '::1', '2020-07-14 11:25:14'),
('7', 'Satyogroho Dhian Amertho', 'satyogroho@pttimah.co.id', 'PT Timah Tbk', 'Mohon konfirmasi penutupan pendaftaran, serta pendaftaran mekanisme seperti apa. Terima kasih', '36.77.162.184', '2020-08-06 22:03:00'),
('8', 'Rio Andika ', 'Jalan.Lingga Raya No.185 Tanjung Enim', 'PT.Satria Bahana Sarana ', 'Suatu Perusahaan untuk mengetahui apakah target Perusahaan tersebut telah tercapai atau tidak diperlukan adanya suatu ukuran kinerja. Dengan adanya pengukuran terhadap kinerja maka target suatu Perusahaan dapat diukur baik kualitas maupun kuantitasnya, sehingga setiap karyawan memiliki arahan yang jelas untuk apa yang hendak dicapai. Penelitian ini bertujuan untuk menganalisa kinerja mine operation berdasarkan analisa key performance indicator dan menggunakan analisa balanced scorecard serta membandingkan kedua analisa kinerja tersebut dalam mengukur kinerja mine operation. Penelitian ini dilaksanakan di PT Vale Indonesia khususnya di Mine Operation Departement. Pengumpulan data dilakukan dengan analisis data primer berupa penyebaran kuisioner dan data sekunder berupa data historikal laporan Perusahaan. Penelitian menggunakan analisis deskriptif dengan menggunakan pendekatan kualitatif untuk mengukur kinerja di Mining Operation Department berdasarkan pendekatan Balanced Scorecard. Kinerja mine operation dengan analisis key performance indicator pada tahun 2016 mengalami kenaikan dengan nilai 113.81 dibandingkan dengan tahun 2015 sebesar 97.82. jika menggunakan analisis balanced scorecard kinerja mine operation tahun 2016 menurun dengan nilai 81.89 dibandingkan dengan tahun 2015 sebesar 90.54. Perbedaan nilai kinerja mine operation dengan kedua analis ini terdapat pada berbedanya indikator kinerja yang digunakan untuk pengkuran. Analisa kinerja mine operation menggunakan key performance indicator dan balanced scorecard memiliki perbedaan pada tingkatan indikator kinerja keuangan. Dimana pada analisa key performance indicator, indikator finansial yang di gunakan pada tingkatan korporat sedangkan pada analisa balanced scorecard penulis mencoba untuk mengukur kinerja keuangan pada tingkatan departement. Disamping itu pula analisa balanced scorecard telah memasukkan perspektif pembelajaran dan pertumbuhan dalam indikator pengukuran kinerjanya. &nbsp;', '36.90.47.2', '2020-08-10 14:26:48'),
('9', 'Rio Andika ', 'rioandika647@gmail.com', 'PT.Satria Bahana Sarana ', 'Suatu Perusahaan untuk mengetahui apakah target Perusahaan tersebut telah tercapai atau tidak diperlukan adanya suatu ukuran kinerja. Dengan adanya pengukuran terhadap kinerja maka target suatu Perusahaan dapat diukur baik kualitas maupun kuantitasnya, sehingga setiap karyawan memiliki arahan yang jelas untuk apa yang hendak dicapai. Penelitian ini bertujuan untuk menganalisa kinerja mine operation berdasarkan analisa key performance indicator dan menggunakan analisa balanced scorecard serta membandingkan kedua analisa kinerja tersebut dalam mengukur kinerja mine operation. Penelitian ini dilaksanakan di PT Vale Indonesia khususnya di Mine Operation Departement. Pengumpulan data dilakukan dengan analisis data primer berupa penyebaran kuisioner dan data sekunder berupa data historikal laporan Perusahaan. Penelitian menggunakan analisis deskriptif dengan menggunakan pendekatan kualitatif untuk mengukur kinerja di Mining Operation Department berdasarkan pendekatan Balanced Scorecard. Kinerja mine operation dengan analisis key performance indicator pada tahun 2016 mengalami kenaikan dengan nilai 113.81 dibandingkan dengan tahun 2015 sebesar 97.82. jika menggunakan analisis balanced scorecard kinerja mine operation tahun 2016 menurun dengan nilai 81.89 dibandingkan dengan tahun 2015 sebesar 90.54. Perbedaan nilai kinerja mine operation dengan kedua analis ini terdapat pada berbedanya indikator kinerja yang digunakan untuk pengkuran. Analisa kinerja mine operation menggunakan key performance indicator dan balanced scorecard memiliki perbedaan pada tingkatan indikator kinerja keuangan. Dimana pada analisa key performance indicator, indikator finansial yang di gunakan pada tingkatan korporat sedangkan pada analisa balanced scorecard penulis mencoba untuk mengukur kinerja keuangan pada tingkatan departement. Disamping itu pula analisa balanced scorecard telah memasukkan perspektif pembelajaran dan pertumbuhan dalam indikator pengukuran kinerjanya. &nbsp;', '182.1.231.24', '2020-08-10 14:29:54'),
('10', 'Saurina Tua Sagala ', 'rinasatriasagala@gmail.com', 'Institut Teknologi Nasional Yogyakarta ', 'Bagaimana cara mendaftarnya, dan apakah mahasiswa boleh terlibat? ', '182.253.163.108', '2020-08-10 22:41:09'),
('11', 'Gitra', 'gitra.putra@antam.com', 'ANTAM', 'sy berminat ikut. dokumen apa sj yg mesti d submit?', '114.124.175.194', '2020-08-11 06:48:22'),
('12', 'Muhammad Ilham Kalami', 'muhammad.kalami@antam.com', 'PT. ANTAM Tbk.', 'Dear panitia Hackathon Mind.ID,

Apakah untuk inovasi harus sesuai dengan sub-kategori yang sudah disediakan atau boleh menggunakan ide sendiri, yang masih berkaitan dengan Kategori Utama?

Terima kasih.', '125.161.91.10', '2020-08-11 09:44:23'),
('13', 'Syahrul Ajidan', 'syahrulajidan12@gmail.com', 'Eksplorasi', 'Webinar eksplorasi', '36.85.223.169', '2020-08-12 15:15:23'),
('14', 'Sunarko b Suyetno', 'sunarko.suyetno@pttimah.co.id', 'Staf K3 UPTP', 'Memahami Tentang Pekerjaan di perusahaan yang bergerak di bidang K2 produksi Timah Primer.', '182.1.229.30', '2020-08-13 13:40:30'),
('15', 'Joko Santoso', 'pasangtipiapik@gmail.com', '-', 'Selamat malam panitia,
Apakah ada informasi mengenai pembagian hadiah 500 juta itu dalam bentuk apa dan dibagikan ke berapa juara? Terima kasih', '103.47.133.153', '2020-08-13 21:37:43'),
('16', 'IRWAN SARDIN', 'irwansardin@gmail.com', 'Ditjen Minerba', 'Semoga dapat menambah pengetahuan', '125.162.213.232', '2020-08-14 07:24:09'),
('17', 'Paulus Wendi Saputra', 'pwsaputra@bukitasam.co.id', 'PT. Bukit Asam Tbk', 'daftar webinar via zoom', '36.92.52.228', '2020-08-14 09:35:31'),
('18', 'Indrajaya', 'wwedi752@gmail.com', 'PT Bukit Makmur Mandiri Utama', 'Tetap semangat dan memberi iptek lewat webinar', '114.125.182.49', '2020-09-01 15:16:25'),
('19', 'Hendrisusanto', 'wwkikihendri889@gmail.com', 'Perusahaan pertambangan ', 'Biar orang lain tau dunia tambang', '182.1.24.255', '2020-09-02 07:20:56'),
('20', 'YASIN S UMAR', 'achink10@gmail.com', 'bintang8', 'makasih sebelumnya', '182.1.191.129', '2020-09-02 10:42:43'),
('21', 'Zadli Amrih', 'zadliz@yahoo.co.id', 'Pt. Sulawesi sukses jaya', 'Ok', '182.0.200.240', '2020-09-02 16:14:24'),
('22', 'Anggiyanto', 'Anggiyanto041@gmail.com', 'Teaching factori SMK Muhammadiyah 02 paleran', 'Saya ingin menjadi programer ', '36.81.113.111', '2020-09-02 21:54:03'),
('23', 'ALNORIS MEREK', 'alnorismerek04@gmail.com', 'PT Halmahera jaya Fero nikel (Harita Group) 2 Positions', 'Kepada yang terhormat Bpk/ ibu pemimpin pt halmahera jaya fero nilkel di tempat, dalam hal ini saya Atas nama Alnoris merek, ingin mengajukan permohonan pekerjaan kiranya BPk /Ibu  pimpinan perusahan bisa merespon akan permohonan saya untuk melamar di pt halmahera jaya fero nikel, saya berharap dengan sebesar besarnya Bpk/Ibu pimpinan bisa menerima saya untuk bekerja di perusahaan yang Bapak/Ibu pimpin atas perhatian dan kerjasamanya saya ucapkan banyak banyak trimakasih', '103.10.64.14', '2020-09-03 05:43:10'),
('24', 'M. irfan', 'bosirfan17@gmail.com', 'Pt natura prima beuty', 'Leader', '180.242.214.184', '2020-09-03 12:30:01'),
('25', 'Pite deanda', 'pitedeanda@gmail.com', 'PT. Satria Bahana Sarana', 'Saya sangat tertarik untuk mengetahui informasi lebih lanjut di session webbinar', '125.162.120.87', '2020-09-03 18:06:49'),
('26', 'Jodi Kurniawan', 'jodikurniawan131@gmail.com', 'Mining', 'Saya akan bisa seperti anda', '114.4.216.172', '2020-09-04 09:18:52'),
('27', 'SHINTIA UL JANNAH', 'shintiauljnnh@gmail.com', 'Sma', 'extraordinary', '202.67.42.8', '2020-09-04 09:38:42'),
('28', 'Febby Mellianti', 'febbymellianti88@gmail.com', 'Politeknik Negeri Ketapang', 'Mahasiswa', '202.67.34.10', '2020-09-04 10:09:29'),
('29', 'Agussalim', 'agus.salim@pttimah.co.id', 'Balai Karya DAK Kundur Kepri dan Riau', 'Semoga bermanfaat dan senantiasa jadi pembelajaran bagi semua karyawan', '114.125.4.90', '2020-09-11 10:11:56');

COMMIT;