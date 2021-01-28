BEGIN;

-- CREATE SEQUENCE "id_pitch_deck_seq" -------------------------------
CREATE SEQUENCE "public"."id_pitch_deck_seq"
INCREMENT 1
MINVALUE 1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
-- -------------------------------------------------------------

-- CREATE TABLE "pitch_deck" -------------------------------------
CREATE TABLE "public"."pitch_deck" (
    "id" Bigint DEFAULT nextval('id_pitch_deck_seq'::regclass) NOT NULL,
    "leader_id" Bigint NOT NULL,
    "team_id" Bigint NOT NULL,
    "sk" Integer NOT NULL,
    "mulai_produk" Text NOT NULL,
    "target_user" Text NOT NULL,
    "rencana" Text NOT NULL,
    "tema" Text NOT NULL,
    "sub_tema" Text NOT NULL,
    "other_sub" Text NOT NULL,
    "pitchdeck_file" Text NOT NULL,
    "date" Timestamp Without Time Zone NOT NULL,
    PRIMARY KEY ( "id" ) );
 ;
 -----------------------------------------------------------

INSERT INTO "public"."pitch_deck" ("id", "leader_id", "team_id", "sk", "mulai_produk", "target_user", "rencana", "tema", "sub_tema", "other_sub", "pitchdeck_file", "date") VALUES
('5', '86', '11', '1', 'Mining Operational Safety Technology (MOST) adalah sebuah sebuah sistem terintegrasi yang terdiri dari berbagai unsur Kesehatan dan keselamatan kerja dengan berbagai fungsi sistem otomasi dalam dunia industri pertambangan. Strategi dalam mewujudkan dan mengembangkan Mining Operational Safety Technology (MOST) sebagai berikut :
•	Melakukan riset tentang dunia pertambangan bersama perguruan tinggi dan perusahaan pertambangan.
•	Melakukan kerja sama dengan perusahaan dibidang teknologi dalam penggunaan software dan hardware yang berteknologi canggih.
•	Menciptakan sistem teknologi yang terintegrasi antara integrasi otomasi dengan komunikasi data berupa machine learning yang menghasilkan informasi dan kendali safety dalam dunia pertambangan.
•	Melakukan standarisasi sistem teknologi yang terintegrasi yaitu MOST dengan badan standarisasi.

	MOST adalah jawaban dari sebuah sistem teknologi yang terintegrasi dalam memberikan perubahaan di dunia industri pertambangan dibidang safety. Sehingga diharapkan mampu mewujudkan sebuah lingkungan kerja yang memiliki tingkat safety yang sangat baik. sesuai dengan visi MOST mewujudkan zero accident dalam dunia pertambangan.', 'Mining Operational Safety Technology (MOST) adalah sebuah sistem terintegrasi yang terdiri dari berbagai unsur Kesehatan dan keselamatan kerja dengan berbagai fungsi sistem otomasi dalam dunia industri pertambangan. MOST memiliki visi untuk mewujudkan zero accident dalam dunia pertambangan. Oleh karena itu, target user dari penggunaan sistem terintegrasi MOST adalah perusahaan pertambangan yang meliputi perusahaan pertambangan batu bara, timah, emas, batu kapur, dan besi.', 'Mining Operational Safety Technology (MOST) adalah sebuah sistem terintegrasi yang terdiri dari berbagai unsur Kesehatan dan keselamatan kerja dengan berbagai fungsi sistem otomasi dalam dunia industri pertambangan. MOST akan dijadikan produk komersil dengan target user perusahaan pertambangan yang meliputi perusahaan pertambangan batubara, timah, emas, batu kapur, dan besi. Serta MOST memiliki tekat menjadi sistem teknologi yang terintegrasi pertama karya anak bangsa.', 'Safety Technology', 'Digitalisasi', '', '5f379125f2e201597477157.pdf', '2020-08-15 14:39:18');
INSERT INTO "public"."pitch_deck" ("id", "leader_id", "team_id", "sk", "mulai_produk", "target_user", "rencana", "tema", "sub_tema", "other_sub", "pitchdeck_file", "date") VALUES
('6', '163', '28', '1', 'MAPID menemukan bahwa data merupakan sumber daya yang sangat penting bagi setiap bisnis dan industri. Tetapi masih banyak bisnis atau industri yang masih kesulitan dalam menggunakan data yang ada. Sehingga MAPID mencoba menjawab kesulitan tersebut. 
MAPID membuat dan juga mengembangkan ekosistem data, dan seiring berkembangnya ekosistem pengumpulan data terus dilakukan, tidak hanya melalui human tetapi juga melalui sensor. Data yang ada kemudian diolah dan secara otomatis divisualisasikan dalam bentuk peta. Sehingga penggunaan data akan lebih mudah dan analisis data dapat dilakukan secara lebih mendalam. 
Dengan menggunakan MAPID, pembuatan keputusan strategis akan lebih mudah dilakukan. 
', 'Berbagai sektor dapat menggunakan MAPID. Contohnya adalah sektor pertambangan. Perusahaan pertambangan dapat menggunakan FORM MAPID dan IoT MAPID untuk mengambil data dari sites. Kemudian GEO MAPID dapat digunakan untuk memonitor data yang telah diperoleh dari sites. 
MIND.ID juga dapat berkolaborasi dengan perusahaan tambang lain atau perusahaan dari sektor lain untuk mengembangkan usahanya. Hal ini karena dalam platform MAPID terdapat fitur untuk berkolaborasi, sehingga setiap bisnis dapat saling diuntungkan. ', 'Iya, platform MAPID memungkinkan bagi setiap bisnis untuk berkolaborasi. Semakin banyak kolaborasi yang ada di dalam ekosistem MAPID, semakin berkembang pula ekosistemnya. Tidak hanya digunakan oleh pembisnis atau organisasi, MAPID juga digunakan oleh berbagai kalangan, seperti freelance atau pelajar. Sehingga MAPID bisa membantu lebih banyak lagi bisnis dalam mengembangkan usahanya dan juga membantu menyediakan location intelligence bagi semua orang. 
', 'Sustainable Mining Development', 'Sistem Pelaporan Environmental Monitoring Pertambangan ', '', '5f4effc5a7fc91599012805.pdf', '2020-09-02 09:13:25');
INSERT INTO "public"."pitch_deck" ("id", "leader_id", "team_id", "sk", "mulai_produk", "target_user", "rencana", "tema", "sub_tema", "other_sub", "pitchdeck_file", "date") VALUES
('7', '125', '20', '1', 'Berdasarkan pengalaman langsung pada saat kami menjadi General Superintendent divisi Geoengineering di PT Freeport Indonesia. Berdasarkan pengamatan langsung, proses drilling membutuhkan biaya yang sangat besar dan sangat bergantung pada ketersediaan manpower terutama  geologist. Kami melihat bahwa aplikasi GeoLogging dapat memberikan value added yang besar kepada user melalui penggunaan Artificial Intelligence sebagai media predictive analisis sehingga dapat memotong proses bisnis manual aktivitas eksplorasi pertambangan  ', '80% dari seluruh pemegang IUP OP masih secara aktif melakukan aktivitas eksplorasi. Saat ini ada lebih dari 2.500 perusahaan tambang pemegang IUP OP yang menjadi target market potensial aplikasi GeoLogging ', 'Tujuan akhir pengembangan aplikasi GeoLogging adalah memberikan value added ke sebanyak mungkin perusahaan tambang sehingga dapat memberikan benefit, baik kepada perusahaan tambang maupun Safepedia sebagai pengembang ', 'Exploration', 'Efisiensi Proses Bisnis Exploration Drilling ', '', '5f58a669b73151599645289.pdf', '2020-09-09 16:54:49');
INSERT INTO "public"."pitch_deck" ("id", "leader_id", "team_id", "sk", "mulai_produk", "target_user", "rencana", "tema", "sub_tema", "other_sub", "pitchdeck_file", "date") VALUES
('8', '106', '16', '1', 'Dalam pembuatan produk ini, tim kami menggunakan pendekatan 4D (Define, Design, Develop dan Disseminate). Adapun tahapannya dapat kami jelaskan sebagai berikut ;
1.Define ; Pada tahap define, tim kami mempelajari dokument dan menganalisa alur kerja dari proses hazard report (pelaporan bahaya di tempat kerja) dengan survei lapangan serta ditunjang dengan berbagai studi literatur. Dari survei lapangan dan studi literatur tersebut maka kami mendapatkan fakta lapangan sebagai identifikasi masalah yang akan diselesaikan. Selanjutnya analisa kebutuhan untuk perangkat keras (hardware), perangkat lunak (software) dan user atau pengguna yang akan menggunakan aplikasi Hazard Report Monitoring Application (HRMA).

2.Setelah selesai pada tahapan define dan analisa yang dibutuhkan, selanjutnya masuk ke tahap design. Pada tahapan ini kami membuat storyboard, bagan struktur pengembangan aplikasi HRMA dan desain antar muka sistem. 

3.Kemudian di tahapan berikutnya, tahap develop yaitu pembuatan aplikasi. Dalam pembuatan aplikasi terbagi menjadi dua yaitu berbasis web base dan mobile. Web base menggunakan bahasa pemograman HTML 5, PHP dan database MySQL, Indexing & Elastic for (temporary saving) serta web service API (Application Programming Interface), TypeScript. Untuk berbasis mobile dibuat dengan Integrated Development Environment (IDE) Android Studio. Pada fase develop inilah di lakukan uji coba, validasi oleh pengguna apakah aplikasi HRMA yang dibuat sudah mewakili kebutuhan pekerjaan lapangan dari pengguna, dalam hal ini Health, Safety, Environmen (HSE) yang akan menggunakan aplikasi HRMA, kemudian analisa serta evaluasi sebagai penyempurnaan sistem.

4.	Tahapan terakhir adalah Disseminate, yaitu sosialisasi penggunaan aplikasi HRMA, baik ke user pengguna mapun ke perusahaan yang akan mengimplentasikan aplikasi. 

', 'Target user yang menjadi penestrasi pasar kami adalah perusahaan yang mengimplementasikan sistem management keselamatan tambang dan tidak menutup kemungkinan, selain perusahaan tambang juga dapat menjadi target, asalkan memiliki sistem management keselamatan untuk para pekerja. Kami hanya melakukan analisa proses bisnis perushaan dan develop sistem ulang sesuai dengan kebutuhan user.', 'Apakah Anda berencana untuk menjadikan produk ini komersil?
Sejauh ini kami belum memikirkan rencana komersial dari produk yang akan kami buat. Akan tetapi apabila level maturity (tingkat kematangan) produk ini sudah sesuai dengan proses yang dibutuhkan user maka sepenuhnya kami serahkan kepada MIND ID untuk meng-komersilkannya.
', 'Safety Technology', 'Digitalisasi Visual Management System Hazard Report', '', '5f5af355db1761599796053.pdf', '2020-09-11 10:47:33');

COMMIT;