BEGIN;

-- CREATE SEQUENCE "id_ketpen_seq" -------------------------------
CREATE SEQUENCE "public"."id_ketpen_seq"
INCREMENT 1
MINVALUE 1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
-- -------------------------------------------------------------

-- CREATE TABLE "ketpen" -------------------------------------
CREATE TABLE "public"."ketpen" (
    "id" Bigint DEFAULT nextval('id_ketpen_seq'::regclass) NOT NULL,
    "name" Text NOT NULL,
    "detail" Text NOT NULL,
    "logo_name" Text NOT NULL,
    "up_by_id" Bigint NOT NULL,
    "up_date" Timestamp Without Time Zone NOT NULL,
    "update_by_id" Bigint NOT NULL,
    "update_date" Timestamp Without Time Zone NOT NULL,
    PRIMARY KEY ( "id" ) );
 ;
 -----------------------------------------------------------

INSERT INTO "public"."ketpen" ("id", "name", "detail", "logo_name", "up_date", "up_by_id", "update_date", "update_by_id") VALUES
('5', 'Sustainable Mining Development', '<p class="ql-align-justify">Sustainable Mining Development memperhatikan aspek sosial, lingkungan, dan kepemerintahan untuk keberlangsungan siklus hidup suatu tambang. Secara sosial adanya penambangan mengubah pola kehidupan sosial pada sekitar wilayah operasional perusahaan, diperlukan penyesuaian lebih lajut oleh masyarakat. Hal ini berhubungan dengan lingkungan yang juga mengalami perubahan. Maka dari itu, dari segi pemerintahan perusahaa diberi kewajiban untuk melakukan CSR (Corporate Social Responsibility) demi keberlangsungan (sustainable) pertambangan.</p><p><br></p>', '1596607216sustainable_new-2.png', '2020-07-15 09:47:07', '34', '2020-08-05 13:00:16', '29');
INSERT INTO "public"."ketpen" ("id", "name", "detail", "logo_name", "up_date", "up_by_id", "update_date", "update_by_id") VALUES
('6', 'Safety Technology', '<p class="ql-align-justify">Mine safety merupakan praktis untuk kontrol dan manajemen <em>hazard</em> di tambang yang berasosiasi dengan siklus pertambangan. Salah satu penerapan Mine Safety dapat dilakukan melalui Safety Technology. Safety technology di pertambangan diterapkan guna menghindari potensi kecelakaan kerja dan menjamin keselamatan jiwa para pekerja. Safety technology juga meliputi penggunaan teknologi ventilasi, pendeteksian gas metan, heat-exposure, etc.</p><p><br></p>', '1596607177safety.png', '2020-07-15 09:49:34', '34', '2020-08-05 12:59:37', '29');
INSERT INTO "public"."ketpen" ("id", "name", "detail", "logo_name", "up_date", "up_by_id", "update_date", "update_by_id") VALUES
('7', 'Asset Management', '<p class="ql-align-justify">Asset Management merupakan instrumen manajemen dan finansial yang digunakan untuk memaksimalkan penggunaan aset-aset perusahaan. Manajemen aset-aset perusahaan pertambangan baik itu produktif ataupun non-produktif. Selain aset yang digunakan operasional, asset management juga meliputi manajemen aset-aset finansial yang dapat digunakan untuk diinvestasikan kembali.</p>', '1596607129asset_management.png', '2020-07-15 09:51:04', '34', '2020-08-05 13:08:09', '29');
INSERT INTO "public"."ketpen" ("id", "name", "detail", "logo_name", "up_date", "up_by_id", "update_date", "update_by_id") VALUES
('8', 'Plant and Processing', '<p class="ql-align-justify">Merupakan pemrosesan bahan galian tambang menjadi sebuah produk atau bahan dasar yang bisa dipakai untuk pembuatan produk siap pakai. Proses ini meliputi proses metalurgi untuk mengubah bahan baku tambang menjadi produk tambang. Selain itu, proses ini juga meliputi proses mekanik berupa crushing, grinding, dan washing untuk memisahkan bijih mineral dengan waste material (material yang tidak terpakai).</p><p><br></p>', '1596607102plant_and_processing.png', '2020-07-15 09:53:56', '34', '2020-08-05 12:58:22', '29'),
('9', 'Mine Operation', '<p class="ql-align-justify">Operasi tambang merupakan proses pengelolaan kegiatan pertambangan dalam jangka waktu yang panjang di dalam kompleks penambangan dan disekitarnya untuk memfasilitasi produksi dari produk tambang. Operasi ini juga meliputi proses ekstraksi mineral dari bawah tanah atau cebakan alaminya. Operasi ini juga tidak terbatas pada penambangan terbuka maupun penambangan bawah tanah.</p><p><br></p>', '1596607071Mining_Optimization.png', '2020-07-15 09:58:26', '34', '2020-08-05 12:57:51', '29'),
('10', 'Exploration', '<p class="ql-align-justify">Eksplorasi tambang bertujuan untuk menemukan (discover) deposit dari mineral ataupun batuan yang digunakan bagi komunitas kita. Selain <em>discovery</em>, eksplorasi juga meliputi<span style="color: rgb(34, 34, 34);"> pencarian suatu prospek mineral yang baru sampai berupa pencarian penambahan mineral untuk sumber daya dan mineral suatu tambang. Eksplorasi tambang digunakan sebagai dasar dari operasi pertambangan yang meliputi pengumpulan data dan interpretasi data. Tahap pre-eksplorasi juga meliputi kegiatan peninjauan lapangan dengan menggunakan penginderaan jauh dan studi literatur laporan eksplorasi terdahulu.</span></p><p><br></p>', '1596607029exp.png', '2020-08-05 11:50:39', '29', '2020-08-05 13:06:50', '29');

COMMIT;