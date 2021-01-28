BEGIN;

-- DROP TABLE "users" -------------------------------------------
DROP TABLE IF EXISTS "public"."users" CASCADE;
-- -------------------------------------------------------------

-- DROP TABLE "ann_email" -------------------------------------------
DROP TABLE IF EXISTS "public"."ann_email" CASCADE;
-- -------------------------------------------------------------

-- DROP TABLE "dokumentasi" -------------------------------------------
DROP TABLE IF EXISTS "public"."dokumentasi" CASCADE;
-- -------------------------------------------------------------

-- DROP TABLE "faq" -------------------------------------------
DROP TABLE IF EXISTS "public"."faq" CASCADE;
-- -------------------------------------------------------------

-- DROP TABLE "file_lampiran" -------------------------------------------
DROP TABLE IF EXISTS "public"."file_lampiran" CASCADE;
-- -------------------------------------------------------------

-- DROP TABLE "infopage" -------------------------------------------
DROP TABLE IF EXISTS "public"."infopage" CASCADE;
-- -------------------------------------------------------------

-- DROP TABLE "juri" -------------------------------------------
DROP TABLE IF EXISTS "public"."juri" CASCADE;
-- -------------------------------------------------------------

-- DROP TABLE "ketpen" -------------------------------------------
DROP TABLE IF EXISTS "public"."ketpen" CASCADE;
-- -------------------------------------------------------------

-- DROP TABLE "kontak" -------------------------------------------
DROP TABLE IF EXISTS "public"."kontak" CASCADE;
-- -------------------------------------------------------------

-- DROP TABLE "kontak_res" -------------------------------------------
DROP TABLE IF EXISTS "public"."kontak_res" CASCADE;
-- -------------------------------------------------------------

-- DROP TABLE "log" -------------------------------------------
DROP TABLE IF EXISTS "public"."log" CASCADE;
-- -------------------------------------------------------------

-- DROP TABLE "log_jury" -------------------------------------------
DROP TABLE IF EXISTS "public"."log_jury" CASCADE;
-- -------------------------------------------------------------

-- DROP TABLE "log_users" -------------------------------------------
DROP TABLE IF EXISTS "public"."log_users" CASCADE;
-- -------------------------------------------------------------

-- DROP TABLE "peran" -------------------------------------------
DROP TABLE IF EXISTS "public"."peran" CASCADE;
-- -------------------------------------------------------------

-- DROP TABLE "pitch_deck" -------------------------------------------
DROP TABLE IF EXISTS "public"."pitch_deck" CASCADE;
-- -------------------------------------------------------------

-- DROP TABLE "review_pd" -------------------------------------------
DROP TABLE IF EXISTS "public"."review_pd" CASCADE;
-- -------------------------------------------------------------

-- DROP TABLE "review_penilaian" -------------------------------------------
DROP TABLE IF EXISTS "public"."review_penilaian" CASCADE;
-- -------------------------------------------------------------

-- DROP TABLE "shortbrief" -------------------------------------------
DROP TABLE IF EXISTS "public"."shortbrief" CASCADE;
-- -------------------------------------------------------------

-- DROP TABLE "sub_ketpen" -------------------------------------------
DROP TABLE IF EXISTS "public"."sub_ketpen" CASCADE;
-- -------------------------------------------------------------

-- DROP TABLE "s_page" -------------------------------------------
DROP TABLE IF EXISTS "public"."s_page" CASCADE;
-- -------------------------------------------------------------

-- DROP TABLE "team" -------------------------------------------
DROP TABLE IF EXISTS "public"."team" CASCADE;
-- -------------------------------------------------------------

-- DROP TABLE "team_player" -------------------------------------------
DROP TABLE IF EXISTS "public"."team_player" CASCADE;
-- -------------------------------------------------------------

-- DROP TABLE "timeline" -------------------------------------------
DROP TABLE IF EXISTS "public"."timeline" CASCADE;
-- -------------------------------------------------------------

-- DROP TABLE "video" -------------------------------------------
DROP TABLE IF EXISTS "public"."video" CASCADE;
-- -------------------------------------------------------------

-- DROP TABLE "webinar" -------------------------------------------
DROP TABLE IF EXISTS "public"."webinar" CASCADE;
-- -------------------------------------------------------------

-- DROP TABLE "webinar_ann" -------------------------------------------
DROP TABLE IF EXISTS "public"."webinar_ann" CASCADE;
-- -------------------------------------------------------------

-- DROP TABLE "webinar_peserta" -------------------------------------------
DROP TABLE IF EXISTS "public"."webinar_peserta" CASCADE;
-- -------------------------------------------------------------

-- DROP TABLE "example" -------------------------------------------
DROP TABLE IF EXISTS "public"."example" CASCADE;
-- -------------------------------------------------------------

-- DROP SEQUENCE "id_users_seq" -------------------------------------------
DROP SEQUENCE IF EXISTS "public"."id_users_seq" CASCADE;
-- -------------------------------------------------------------

-- DROP SEQUENCE "id_ann_email_seq" -------------------------------------------
DROP SEQUENCE IF EXISTS "public"."id_ann_email_seq" CASCADE;
-- -------------------------------------------------------------

-- DROP SEQUENCE "id_dokumentasi_seq" -------------------------------------------
DROP SEQUENCE IF EXISTS "public"."id_dokumentasi_seq" CASCADE;
-- -------------------------------------------------------------

-- DROP SEQUENCE "id_faq_seq" -------------------------------------------
DROP SEQUENCE IF EXISTS "public"."id_faq_seq" CASCADE;
-- -------------------------------------------------------------

-- DROP SEQUENCE "id_file_lampiran_seq" -------------------------------------------
DROP SEQUENCE IF EXISTS "public"."id_file_lampiran_seq" CASCADE;
-- -------------------------------------------------------------

-- DROP SEQUENCE "id_infopage_seq" -------------------------------------------
DROP SEQUENCE IF EXISTS "public"."id_infopage_seq" CASCADE;
-- -------------------------------------------------------------

-- DROP SEQUENCE "id_juri_seq" -------------------------------------------
DROP SEQUENCE IF EXISTS "public"."id_juri_seq" CASCADE;
-- -------------------------------------------------------------

-- DROP SEQUENCE "id_ketpen_seq" -------------------------------------------
DROP SEQUENCE IF EXISTS "public"."id_ketpen_seq" CASCADE;
-- -------------------------------------------------------------

-- DROP SEQUENCE "id_kontak_seq" -------------------------------------------
DROP SEQUENCE IF EXISTS "public"."id_kontak_seq" CASCADE;
-- -------------------------------------------------------------

-- DROP SEQUENCE "id_kontak_res_seq" -------------------------------------------
DROP SEQUENCE IF EXISTS "public"."id_kontak_res_seq" CASCADE;
-- -------------------------------------------------------------

-- DROP SEQUENCE "id_log_seq" -------------------------------------------
DROP SEQUENCE IF EXISTS "public"."id_log_seq" CASCADE;
-- -------------------------------------------------------------

-- DROP SEQUENCE "id_log_jury_seq" -------------------------------------------
DROP SEQUENCE IF EXISTS "public"."id_log_jury_seq" CASCADE;
-- -------------------------------------------------------------

-- DROP SEQUENCE "id_log_users_seq" -------------------------------------------
DROP SEQUENCE IF EXISTS "public"."id_log_users_seq" CASCADE;
-- -------------------------------------------------------------

-- DROP SEQUENCE "id_peran_seq" -------------------------------------------
DROP SEQUENCE IF EXISTS "public"."id_peran_seq" CASCADE;
-- -------------------------------------------------------------

-- DROP SEQUENCE "id_pitch_deck_seq" -------------------------------------------
DROP SEQUENCE IF EXISTS "public"."id_pitch_deck_seq" CASCADE;
-- -------------------------------------------------------------

-- DROP SEQUENCE "id_review_pd_seq" -------------------------------------------
DROP SEQUENCE IF EXISTS "public"."id_review_pd_seq" CASCADE;
-- -------------------------------------------------------------

-- DROP SEQUENCE "id_review_penilaian_seq" -------------------------------------------
DROP SEQUENCE IF EXISTS "public"."id_review_penilaian_seq" CASCADE;
-- -------------------------------------------------------------

-- DROP SEQUENCE "id_shortbrief_seq" -------------------------------------------
DROP SEQUENCE IF EXISTS "public"."id_shortbrief_seq" CASCADE;
-- -------------------------------------------------------------

-- DROP SEQUENCE "id_sub_ketpen_seq" -------------------------------------------
DROP SEQUENCE IF EXISTS "public"."id_sub_ketpen_seq" CASCADE;
-- -------------------------------------------------------------

-- DROP SEQUENCE "id_s_page_seq" -------------------------------------------
DROP SEQUENCE IF EXISTS "public"."id_s_page_seq" CASCADE;
-- -------------------------------------------------------------

-- DROP SEQUENCE "id_team_seq" -------------------------------------------
DROP SEQUENCE IF EXISTS "public"."id_team_seq" CASCADE;
-- -------------------------------------------------------------

-- DROP SEQUENCE "id_team_player_seq" -------------------------------------------
DROP SEQUENCE IF EXISTS "public"."id_team_player_seq" CASCADE;
-- -------------------------------------------------------------

-- DROP SEQUENCE "id_timeline_seq" -------------------------------------------
DROP SEQUENCE IF EXISTS "public"."id_timeline_seq" CASCADE;
-- -------------------------------------------------------------

-- DROP SEQUENCE "id_video_seq" -------------------------------------------
DROP SEQUENCE IF EXISTS "public"."id_video_seq" CASCADE;
-- -------------------------------------------------------------

-- DROP SEQUENCE "id_webinar_seq" -------------------------------------------
DROP SEQUENCE IF EXISTS "public"."id_webinar_seq" CASCADE;
-- -------------------------------------------------------------

-- DROP SEQUENCE "id_webinar_ann_seq" -------------------------------------------
DROP SEQUENCE IF EXISTS "public"."id_webinar_ann_seq" CASCADE;
-- -------------------------------------------------------------

-- DROP SEQUENCE "id_webinar_peserta_seq" -------------------------------------------
DROP SEQUENCE IF EXISTS "public"."id_webinar_peserta_seq" CASCADE;
-- -------------------------------------------------------------

-- DROP SEQUENCE "id_example_seq" -------------------------------------------
DROP SEQUENCE IF EXISTS "public"."id_example_seq" CASCADE;
-- -------------------------------------------------------------

COMMIT;
