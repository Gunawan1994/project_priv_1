BEGIN;

-- CREATE SEQUENCE "id_ann_email_seq" -------------------------------
CREATE SEQUENCE "public"."id_ann_email_seq"
INCREMENT 1
MINVALUE 1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
-- -------------------------------------------------------------

-- CREATE TABLE "ann_email" -------------------------------------
CREATE TABLE "public"."ann_email" (
    "id" Bigint DEFAULT nextval('id_ann_email_seq'::regclass) NOT NULL,
    "subject" Varchar(255) NOT NULL,
    "send_to" Integer NOT NULL,
    "from_email" Varchar(255) NOT NULL,
    "isi" Text NOT NULL,
    "send_date" Timestamp Without Time Zone NOT NULL,
    "send_by_id" Bigint NOT NULL,
    "status" Integer NOT NULL,
    PRIMARY KEY ( "id" ) );
 ;
 -----------------------------------------------------------

 INSERT INTO "public"."ann_email" ("id", "subject", "send_to", "from_email", "isi", "send_date", "send_by_id", "status") VALUES
('2', 'Remainder of Hackathon MIND ID 2020', '1', 'hackathon@mind.id', '<!DOCTYPE html>
            <html>
            <head>
                <meta content=''text/html; charset=utf-8'' http-equiv=''Content-Type'' />
                <meta content=''width=device-width'' name=''viewport'' />
                <meta content=''IE=edge'' http-equiv=''X-UA-Compatible'' />
                <title></title>
                <link href=''https://fonts.googleapis.com/css?family=Montserrat'' rel=''stylesheet'' type=''text/css'' />
                <link href=''https://fonts.googleapis.com/css?family=Open+Sans'' rel=''stylesheet'' type=''text/css'' />
                <link href=''https://fonts.googleapis.com/css?family=Source+Sans+Pro'' rel=''stylesheet'' type=''text/css'' />
                <style type=''text/css''>
                    body {
                        margin: 0;
                        padding: 0;
                    }

                    table,
                    td,
                    tr {
                        vertical-align: top;
                        border-collapse: collapse;
                    }

                    * {
                        line-height: inherit;
                    }

                    a[x-apple-data-detectors=true] {
                        color: inherit !important;
                        text-decoration: none !important;
                    }
                </style>
                <style id=''media-query'' type=''text/css''>
                    @media (max-width: 750px) {

                        .block-grid,
                        .col {
                            min-width: 320px !important;
                            max-width: 100% !important;
                            display: block !important;
                        }

                        .block-grid {
                            width: 100% !important;
                        }

                        .col {
                            width: 100% !important;
                        }

                        .col>div {
                            margin: 0 auto;
                        }

                        img.fullwidth,
                        img.fullwidthOnMobile {
                            max-width: 100% !important;
                        }

                        .no-stack .col {
                            min-width: 0 !important;
                            display: table-cell !important;
                        }

                        .no-stack.two-up .col {
                            width: 50% !important;
                        }

                        .no-stack .col.num4 {
                            width: 33% !important;
                        }

                        .no-stack .col.num8 {
                            width: 66% !important;
                        }

                        .no-stack .col.num4 {
                            width: 33% !important;
                        }

                        .no-stack .col.num3 {
                            width: 25% !important;
                        }

                        .no-stack .col.num6 {
                            width: 50% !important;
                        }

                        .no-stack .col.num9 {
                            width: 75% !important;
                        }

                        .video-block {
                            max-width: none !important;
                        }

                        .mobile_hide {
                            min-height: 0px;
                            max-height: 0px;
                            max-width: 0px;
                            display: none;
                            overflow: hidden;
                            font-size: 0px;
                        }

                        .desktop_hide {
                            display: block !important;
                            max-height: none !important;
                        }
                    }
                </style>
            </head>

            <body class=''clean-body'' style=''margin: 0; padding: 0; -webkit-text-size-adjust: 100%; background-color: #f9f9f9;''>
                <table bgcolor=''#f9f9f9'' cellpadding=''0'' cellspacing=''0'' class=''nl-container'' role=''presentation''
                    style=''table-layout: fixed; vertical-align: top; min-width: 320px; Margin: 0 auto; border-spacing: 0; border-collapse: collapse; mso-table-lspace: 0pt; mso-table-rspace: 0pt; background-color: #f9f9f9; width: 100%;''
                    valign=''top'' width=''100%''>
                    <tbody>
                        <tr style=''vertical-align: top;'' valign=''top''>
                            <td style=''word-break: break-word; vertical-align: top;'' valign=''top''>
                                <div style=''background-color:transparent;''>
                                    <div class=''block-grid''
                                        style=''Margin: 0 auto; min-width: 320px; max-width: 730px; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; background-color: #ffffff;''>
                                        <div style=''border-collapse: collapse;display: table;width: 100%;background-color:#0e2650;''>
                                            <div class=''col num12''
                                                style=''min-width: 320px; max-width: 730px; display: table-cell; vertical-align: top; width: 730px;''>
                                                <div style=''width:100% !important;''>
                                                    <div
                                                        style=''border-top:0px solid transparent; border-left:0px solid transparent; border-bottom:0px solid transparent; border-right:0px solid transparent; padding-top:0px; padding-bottom:0px; padding-right: 0px; padding-left: 0px;''>
                                                        <div align=''center'' class=''img-container center autowidth''
                                                            style=''padding-right: 0px;padding-left: 0px;''>
                                                            <img
                                                                align=''center'' alt=''Alternate text'' border=''0''
                                                                class=''center autowidth''
                                                                src=''https://hackathon.mind.id/Landing/app-assets/MIND/Logo%20MIND%20ID/Gabungan.png''
                                                                style=''text-decoration: none; -ms-interpolation-mode: bicubic; height: auto; border: 0; width: 100%; max-width: 730px; display: block;''
                                                                title=''Alternate text'' width=''730'' />
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div style=''background-color:transparent;''>
                                    <div class=''block-grid''
                                        style=''Margin: 0 auto; min-width: 320px; max-width: 730px; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; background-color: #f9f9f9;''>
                                        <div style=''border-collapse: collapse;display: table;width: 100%;background-color:#f9f9f9;''>
                                            <div class=''col num12''
                                                style=''min-width: 320px; max-width: 730px; display: table-cell; vertical-align: top; width: 728px;''>
                                                <div style=''width:100% !important;''>
                                                    <div
                                                        style=''border-top:1px solid #000000; border-left:1px solid #000000; border-bottom:1px solid #000000; border-right:1px solid #000000; padding-top:5px; padding-bottom:5px; padding-right: 0px; padding-left: 0px;''>
                                                        <div
                                                            style=''color:#555555;font-family:".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif;line-height:1.8;padding-top:10px;padding-right:30px;padding-bottom:25px;padding-left:30px;''>
                                                            <div
                                                                style=''line-height: 1.8; font-size: 12px; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; color: #555555; mso-line-height-alt: 22px;''>
                                                                <p style=''font-size: 14px; line-height: 1.8; word-break: break-word; text-align: left; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; mso-line-height-alt: 25px; margin: 0;''></p>
                                                                <p style=''line-height: 1.8; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; word-break: break-word; font-size: 15px; mso-line-height-alt: 27px; margin: 0;''>
                                                                    <span style=''font-size: 20px;text-align: center;''>15 hari lagi pendaftaran peserta Hackathon MIND ID berakhir !</span><br /><br />
                                                                    <span style=''font-size: 15px;''>Buat kamu yang belum melengkapi data tim dan upload pitch deck,<br />
                                                                        yuk segera menyelesaikannnya sebelum 15 September 2020!<br />
                                                                        Agar kamu bisa berpatisipasi dalam kegiatan Hackathon yang diselenggarakan oleh MIND ID!</span></p>
                                                                <p style=''line-height: 1.8; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; word-break: break-word; mso-line-height-alt: 22px; margin: 0;''></p>
                                                                <p style=''line-height: 1.8; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; word-break: break-word; mso-line-height-alt: 22px; margin: 0;''></p>
                                                                <p style=''line-height: 1.8; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; word-break: break-word; font-size: 15px; mso-line-height-alt: 27px; margin: 0;''>
                                                                    <span style=''font-size: 15px;''>Klik link dibawah ini ya untuk melengkapi data tim mu.</span></p>
                                                            </div>
                                                        </div>
                                                        <div align=''center'' class=''button-container'' style=''padding-top:10px;padding-right:10px;padding-bottom:10px;padding-left:10px;''>
                                                            <a href=''https://hackathon.mind.id/Login'' style=''-webkit-text-size-adjust: none; text-decoration: none; display: inline-block; color: #ffffff; background-color: #0e2650; border-radius: 4px; -webkit-border-radius: 4px; -moz-border-radius: 4px; width: auto; width: auto; border-top: 1px solid #0e2650; border-right: 1px solid #0e2650; border-bottom: 1px solid #0e2650; border-left: 1px solid #0e2650; padding-top: 10px; padding-bottom: 10px; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; text-align: center; mso-border-alt: none; word-break: keep-all;'' target=''_blank''><span style=''padding-left:60px;padding-right:55px;font-size:16px;display:inline-block;''><span style=''font-size: 16px; margin: 0; line-height: 2; word-break: break-word; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; mso-line-height-alt: 32px;''>Lengkapi Data</span></span></a>
                                                        </div>
                                                        <div style=''color:#555555;font-family:".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif;line-height:1.8;padding-top:10px;padding-right:30px;padding-bottom:25px;padding-left:30px;''>
                                                            <div style=''line-height: 1.8; font-size: 12px; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; color: #555555; mso-line-height-alt: 22px;''>
                                                                <p style=''font-size: 14px; line-height: 1.8; word-break: break-word; text-align: left; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; mso-line-height-alt: 25px; margin: 0;''></p>
                                                                <p style=''line-height: 1.8; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; word-break: break-word; mso-line-height-alt: 22px; margin: 0;''></p>
                                                                <p style=''line-height: 1.8; word-break: break-word; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; font-size: 15px; mso-line-height-alt: 27px; margin: 0;''>
                                                                    <span style=''font-size: 15px;''>Untuk informasi lebih lanjut, dapat kujungi link <a href=''https://hackathon.mind.id''>https://hackathon.mind.id</a></span></p>
                                                                <p style=''line-height: 1.8; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; word-break: break-word; mso-line-height-alt: 22px; margin: 0;''></p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div style=''background-color:transparent;''>
                                    <div class=''block-grid'' style=''Margin: 0 auto; min-width: 320px; max-width: 730px; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; background-color: #0e2650;''>
                                        <div style=''border-collapse: collapse;display: table;width: 100%;background-color:#0e2650;''>
                                            <div class=''col num12'' style=''min-width: 320px; max-width: 730px; display: table-cell; vertical-align: top; width: 730px;''>
                                                <div style=''width:100% !important;''>
                                                    <div style=''border-top:0px solid transparent; border-left:0px solid transparent; border-bottom:0px solid transparent; border-right:0px solid transparent; padding-top:5px; padding-bottom:5px; padding-right: 0px; padding-left: 0px;''>
                                                        <div style=''color:#f9f9f9;font-family:".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif;line-height:1.5;padding-top:10px;padding-right:10px;padding-bottom:10px;padding-left:10px;''>
                                                            <div style=''line-height: 1.5; font-size: 12px; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; color: #f9f9f9; mso-line-height-alt: 18px;''>
                                                            <p style=''font-size: 14px; line-height: 1.5; word-break: break-word; text-align: center; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; mso-line-height-alt: 21px; margin: 0;''>© 2020 hackathon.mind.id - All Rights Reserved</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </body>

            </html>', '2020-08-31 15:54:17', '3', '1');
INSERT INTO "public"."ann_email" ("id", "subject", "send_to", "from_email", "isi", "send_date", "send_by_id", "status") VALUES
('3', 'Remainder of Hackathon MIND ID 2020', '2', 'hackathon@mind.id', '            <!DOCTYPE html>
            <html>
            <head>
                <meta content=''text/html; charset=utf-8'' http-equiv=''Content-Type'' />
                <meta content=''width=device-width'' name=''viewport'' />
                <meta content=''IE=edge'' http-equiv=''X-UA-Compatible'' />
                <title></title>
                <link href=''https://fonts.googleapis.com/css?family=Montserrat'' rel=''stylesheet'' type=''text/css'' />
                <link href=''https://fonts.googleapis.com/css?family=Open+Sans'' rel=''stylesheet'' type=''text/css'' />
                <link href=''https://fonts.googleapis.com/css?family=Source+Sans+Pro'' rel=''stylesheet'' type=''text/css'' />
                <style type=''text/css''>
                    body {
                        margin: 0;
                        padding: 0;
                    }

                    table,
                    td,
                    tr {
                        vertical-align: top;
                        border-collapse: collapse;
                    }

                    * {
                        line-height: inherit;
                    }

                    a[x-apple-data-detectors=true] {
                        color: inherit !important;
                        text-decoration: none !important;
                    }
                </style>
                <style id=''media-query'' type=''text/css''>
                    @media (max-width: 750px) {

                        .block-grid,
                        .col {
                            min-width: 320px !important;
                            max-width: 100% !important;
                            display: block !important;
                        }

                        .block-grid {
                            width: 100% !important;
                        }

                        .col {
                            width: 100% !important;
                        }

                        .col>div {
                            margin: 0 auto;
                        }

                        img.fullwidth,
                        img.fullwidthOnMobile {
                            max-width: 100% !important;
                        }

                        .no-stack .col {
                            min-width: 0 !important;
                            display: table-cell !important;
                        }

                        .no-stack.two-up .col {
                            width: 50% !important;
                        }

                        .no-stack .col.num4 {
                            width: 33% !important;
                        }

                        .no-stack .col.num8 {
                            width: 66% !important;
                        }

                        .no-stack .col.num4 {
                            width: 33% !important;
                        }

                        .no-stack .col.num3 {
                            width: 25% !important;
                        }

                        .no-stack .col.num6 {
                            width: 50% !important;
                        }

                        .no-stack .col.num9 {
                            width: 75% !important;
                        }

                        .video-block {
                            max-width: none !important;
                        }

                        .mobile_hide {
                            min-height: 0px;
                            max-height: 0px;
                            max-width: 0px;
                            display: none;
                            overflow: hidden;
                            font-size: 0px;
                        }

                        .desktop_hide {
                            display: block !important;
                            max-height: none !important;
                        }
                    }
                </style>
            </head>

            <body class=''clean-body'' style=''margin: 0; padding: 0; -webkit-text-size-adjust: 100%; background-color: #f9f9f9;''>
                <table bgcolor=''#f9f9f9'' cellpadding=''0'' cellspacing=''0'' class=''nl-container'' role=''presentation''
                    style=''table-layout: fixed; vertical-align: top; min-width: 320px; Margin: 0 auto; border-spacing: 0; border-collapse: collapse; mso-table-lspace: 0pt; mso-table-rspace: 0pt; background-color: #f9f9f9; width: 100%;''
                    valign=''top'' width=''100%''>
                    <tbody>
                        <tr style=''vertical-align: top;'' valign=''top''>
                            <td style=''word-break: break-word; vertical-align: top;'' valign=''top''>
                                <div style=''background-color:transparent;''>
                                    <div class=''block-grid''
                                        style=''Margin: 0 auto; min-width: 320px; max-width: 730px; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; background-color: #ffffff;''>
                                        <div style=''border-collapse: collapse;display: table;width: 100%;background-color:#0e2650;''>
                                            <div class=''col num12''
                                                style=''min-width: 320px; max-width: 730px; display: table-cell; vertical-align: top; width: 730px;''>
                                                <div style=''width:100% !important;''>
                                                    <div
                                                        style=''border-top:0px solid transparent; border-left:0px solid transparent; border-bottom:0px solid transparent; border-right:0px solid transparent; padding-top:0px; padding-bottom:0px; padding-right: 0px; padding-left: 0px;''>
                                                        <div align=''center'' class=''img-container center autowidth''
                                                            style=''padding-right: 0px;padding-left: 0px;''>
                                                            <img
                                                                align=''center'' alt=''Alternate text'' border=''0''
                                                                class=''center autowidth''
                                                                src=''https://hackathon.mind.id/Landing/app-assets/MIND/Logo%20MIND%20ID/Gabungan.png''
                                                                style=''text-decoration: none; -ms-interpolation-mode: bicubic; height: auto; border: 0; width: 100%; max-width: 730px; display: block;''
                                                                title=''Alternate text'' width=''730'' />
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div style=''background-color:transparent;''>
                                    <div class=''block-grid''
                                        style=''Margin: 0 auto; min-width: 320px; max-width: 730px; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; background-color: #f9f9f9;''>
                                        <div style=''border-collapse: collapse;display: table;width: 100%;background-color:#f9f9f9;''>
                                            <div class=''col num12''
                                                style=''min-width: 320px; max-width: 730px; display: table-cell; vertical-align: top; width: 728px;''>
                                                <div style=''width:100% !important;''>
                                                    <div
                                                        style=''border-top:1px solid #000000; border-left:1px solid #000000; border-bottom:1px solid #000000; border-right:1px solid #000000; padding-top:5px; padding-bottom:5px; padding-right: 0px; padding-left: 0px;''>
                                                        <div
                                                            style=''color:#555555;font-family:".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif;line-height:1.8;padding-top:10px;padding-right:30px;padding-bottom:25px;padding-left:30px;''>
                                                            <div
                                                                style=''line-height: 1.8; font-size: 12px; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; color: #555555; mso-line-height-alt: 22px;''>
                                                                <p style=''font-size: 14px; line-height: 1.8; word-break: break-word; text-align: left; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; mso-line-height-alt: 25px; margin: 0;''></p>
                                                                <p style=''line-height: 1.8; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; word-break: break-word; font-size: 15px; mso-line-height-alt: 27px; margin: 0;''>
                                                                    <span style=''font-size: 20px;text-align: center;''>10 hari lagi pendaftaran peserta Hackathon MIND ID berakhir !</span><br /><br />
                                                                    <span style=''font-size: 15px;''>Buat kamu yang belum melengkapi data tim dan upload pitch deck,<br />
                                                                        yuk segera menyelesaikannnya sebelum 15 September 2020!<br />
                                                                        Agar kamu bisa berpatisipasi dalam kegiatan Hackathon yang diselenggarakan oleh MIND ID!</span></p>
                                                                <p style=''line-height: 1.8; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; word-break: break-word; mso-line-height-alt: 22px; margin: 0;''></p>
                                                                <p style=''line-height: 1.8; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; word-break: break-word; mso-line-height-alt: 22px; margin: 0;''></p>
                                                                <p style=''line-height: 1.8; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; word-break: break-word; font-size: 15px; mso-line-height-alt: 27px; margin: 0;''>
                                                                    <span style=''font-size: 15px;''>Klik link dibawah ini ya untuk melengkapi data tim mu.</span></p>
                                                            </div>
                                                        </div>
                                                        <div align=''center'' class=''button-container'' style=''padding-top:10px;padding-right:10px;padding-bottom:10px;padding-left:10px;''>
                                                            <a href=''https://hackathon.mind.id/Login'' style=''-webkit-text-size-adjust: none; text-decoration: none; display: inline-block; color: #ffffff; background-color: #0e2650; border-radius: 4px; -webkit-border-radius: 4px; -moz-border-radius: 4px; width: auto; width: auto; border-top: 1px solid #0e2650; border-right: 1px solid #0e2650; border-bottom: 1px solid #0e2650; border-left: 1px solid #0e2650; padding-top: 10px; padding-bottom: 10px; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; text-align: center; mso-border-alt: none; word-break: keep-all;'' target=''_blank''><span style=''padding-left:60px;padding-right:55px;font-size:16px;display:inline-block;''><span style=''font-size: 16px; margin: 0; line-height: 2; word-break: break-word; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; mso-line-height-alt: 32px;''>Lengkapi Data</span></span></a>
                                                        </div>
                                                        <div style=''color:#555555;font-family:".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif;line-height:1.8;padding-top:10px;padding-right:30px;padding-bottom:25px;padding-left:30px;''>
                                                            <div style=''line-height: 1.8; font-size: 12px; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; color: #555555; mso-line-height-alt: 22px;''>
                                                                <p style=''font-size: 14px; line-height: 1.8; word-break: break-word; text-align: left; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; mso-line-height-alt: 25px; margin: 0;''></p>
                                                                <p style=''line-height: 1.8; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; word-break: break-word; mso-line-height-alt: 22px; margin: 0;''></p>
                                                                <p style=''line-height: 1.8; word-break: break-word; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; font-size: 15px; mso-line-height-alt: 27px; margin: 0;''>
                                                                    <span style=''font-size: 15px;''>Untuk informasi lebih lanjut, dapat kujungi link <a href=''https://hackathon.mind.id''>https://hackathon.mind.id</a></span></p>
                                                                <p style=''line-height: 1.8; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; word-break: break-word; mso-line-height-alt: 22px; margin: 0;''></p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div style=''background-color:transparent;''>
                                    <div class=''block-grid'' style=''Margin: 0 auto; min-width: 320px; max-width: 730px; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; background-color: #0e2650;''>
                                        <div style=''border-collapse: collapse;display: table;width: 100%;background-color:#0e2650;''>
                                            <div class=''col num12'' style=''min-width: 320px; max-width: 730px; display: table-cell; vertical-align: top; width: 730px;''>
                                                <div style=''width:100% !important;''>
                                                    <div style=''border-top:0px solid transparent; border-left:0px solid transparent; border-bottom:0px solid transparent; border-right:0px solid transparent; padding-top:5px; padding-bottom:5px; padding-right: 0px; padding-left: 0px;''>
                                                        <div style=''color:#f9f9f9;font-family:".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif;line-height:1.5;padding-top:10px;padding-right:10px;padding-bottom:10px;padding-left:10px;''>
                                                            <div style=''line-height: 1.5; font-size: 12px; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; color: #f9f9f9; mso-line-height-alt: 18px;''>
                                                            <p style=''font-size: 14px; line-height: 1.5; word-break: break-word; text-align: center; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; mso-line-height-alt: 21px; margin: 0;''>© 2020 hackathon.mind.id - All Rights Reserved</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </body>

            </html>', '2020-09-05 07:01:24', '3', '1');
INSERT INTO "public"."ann_email" ("id", "subject", "send_to", "from_email", "isi", "send_date", "send_by_id", "status") VALUES
('4', 'Remainder of Hackathon MIND ID 2020', '1', 'hackathon@mind.id', '            <!DOCTYPE html>
            <html>
            <head>
                <meta content=''text/html; charset=utf-8'' http-equiv=''Content-Type'' />
                <meta content=''width=device-width'' name=''viewport'' />
                <meta content=''IE=edge'' http-equiv=''X-UA-Compatible'' />
                <title></title>
                <link href=''https://fonts.googleapis.com/css?family=Montserrat'' rel=''stylesheet'' type=''text/css'' />
                <link href=''https://fonts.googleapis.com/css?family=Open+Sans'' rel=''stylesheet'' type=''text/css'' />
                <link href=''https://fonts.googleapis.com/css?family=Source+Sans+Pro'' rel=''stylesheet'' type=''text/css'' />
                <style type=''text/css''>
                    body {
                        margin: 0;
                        padding: 0;
                    }

                    table,
                    td,
                    tr {
                        vertical-align: top;
                        border-collapse: collapse;
                    }

                    * {
                        line-height: inherit;
                    }

                    a[x-apple-data-detectors=true] {
                        color: inherit !important;
                        text-decoration: none !important;
                    }
                </style>
                <style id=''media-query'' type=''text/css''>
                    @media (max-width: 750px) {

                        .block-grid,
                        .col {
                            min-width: 320px !important;
                            max-width: 100% !important;
                            display: block !important;
                        }

                        .block-grid {
                            width: 100% !important;
                        }

                        .col {
                            width: 100% !important;
                        }

                        .col>div {
                            margin: 0 auto;
                        }

                        img.fullwidth,
                        img.fullwidthOnMobile {
                            max-width: 100% !important;
                        }

                        .no-stack .col {
                            min-width: 0 !important;
                            display: table-cell !important;
                        }

                        .no-stack.two-up .col {
                            width: 50% !important;
                        }

                        .no-stack .col.num4 {
                            width: 33% !important;
                        }

                        .no-stack .col.num8 {
                            width: 66% !important;
                        }

                        .no-stack .col.num4 {
                            width: 33% !important;
                        }

                        .no-stack .col.num3 {
                            width: 25% !important;
                        }

                        .no-stack .col.num6 {
                            width: 50% !important;
                        }

                        .no-stack .col.num9 {
                            width: 75% !important;
                        }

                        .video-block {
                            max-width: none !important;
                        }

                        .mobile_hide {
                            min-height: 0px;
                            max-height: 0px;
                            max-width: 0px;
                            display: none;
                            overflow: hidden;
                            font-size: 0px;
                        }

                        .desktop_hide {
                            display: block !important;
                            max-height: none !important;
                        }
                    }
                </style>
            </head>

            <body class=''clean-body'' style=''margin: 0; padding: 0; -webkit-text-size-adjust: 100%; background-color: #f9f9f9;''>
                <table bgcolor=''#f9f9f9'' cellpadding=''0'' cellspacing=''0'' class=''nl-container'' role=''presentation''
                    style=''table-layout: fixed; vertical-align: top; min-width: 320px; Margin: 0 auto; border-spacing: 0; border-collapse: collapse; mso-table-lspace: 0pt; mso-table-rspace: 0pt; background-color: #f9f9f9; width: 100%;''
                    valign=''top'' width=''100%''>
                    <tbody>
                        <tr style=''vertical-align: top;'' valign=''top''>
                            <td style=''word-break: break-word; vertical-align: top;'' valign=''top''>
                                <div style=''background-color:transparent;''>
                                    <div class=''block-grid''
                                        style=''Margin: 0 auto; min-width: 320px; max-width: 730px; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; background-color: #ffffff;''>
                                        <div style=''border-collapse: collapse;display: table;width: 100%;background-color:#0e2650;''>
                                            <div class=''col num12''
                                                style=''min-width: 320px; max-width: 730px; display: table-cell; vertical-align: top; width: 730px;''>
                                                <div style=''width:100% !important;''>
                                                    <div
                                                        style=''border-top:0px solid transparent; border-left:0px solid transparent; border-bottom:0px solid transparent; border-right:0px solid transparent; padding-top:0px; padding-bottom:0px; padding-right: 0px; padding-left: 0px;''>
                                                        <div align=''center'' class=''img-container center autowidth''
                                                            style=''padding-right: 0px;padding-left: 0px;''>
                                                            <img
                                                                align=''center'' alt=''Alternate text'' border=''0''
                                                                class=''center autowidth''
                                                                src=''https://hackathon.mind.id/Landing/app-assets/MIND/Logo%20MIND%20ID/Gabungan.png''
                                                                style=''text-decoration: none; -ms-interpolation-mode: bicubic; height: auto; border: 0; width: 100%; max-width: 730px; display: block;''
                                                                title=''Alternate text'' width=''730'' />
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div style=''background-color:transparent;''>
                                    <div class=''block-grid''
                                        style=''Margin: 0 auto; min-width: 320px; max-width: 730px; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; background-color: #f9f9f9;''>
                                        <div style=''border-collapse: collapse;display: table;width: 100%;background-color:#f9f9f9;''>
                                            <div class=''col num12''
                                                style=''min-width: 320px; max-width: 730px; display: table-cell; vertical-align: top; width: 728px;''>
                                                <div style=''width:100% !important;''>
                                                    <div
                                                        style=''border-top:1px solid #000000; border-left:1px solid #000000; border-bottom:1px solid #000000; border-right:1px solid #000000; padding-top:5px; padding-bottom:5px; padding-right: 0px; padding-left: 0px;''>
                                                        <div
                                                            style=''color:#555555;font-family:".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif;line-height:1.8;padding-top:10px;padding-right:30px;padding-bottom:25px;padding-left:30px;''>
                                                            <div
                                                                style=''line-height: 1.8; font-size: 12px; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; color: #555555; mso-line-height-alt: 22px;''>
                                                                <p style=''font-size: 14px; line-height: 1.8; word-break: break-word; text-align: left; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; mso-line-height-alt: 25px; margin: 0;''></p>
                                                                <p style=''line-height: 1.8; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; word-break: break-word; font-size: 15px; mso-line-height-alt: 27px; margin: 0;''>
                                                                    <span style=''font-size: 20px;text-align: center;''>7 hari lagi pendaftaran peserta Hackathon MIND ID berakhir !</span><br /><br />
                                                                    <span style=''font-size: 15px;''>Buat kamu yang belum melengkapi data tim dan upload pitch deck,<br />
                                                                        yuk segera menyelesaikannnya sebelum 15 September 2020!<br />
                                                                        Agar kamu bisa berpatisipasi dalam kegiatan Hackathon yang diselenggarakan oleh MIND ID!</span></p>
                                                                <p style=''line-height: 1.8; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; word-break: break-word; mso-line-height-alt: 22px; margin: 0;''></p>
                                                                <p style=''line-height: 1.8; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; word-break: break-word; mso-line-height-alt: 22px; margin: 0;''></p>
                                                                <p style=''line-height: 1.8; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; word-break: break-word; font-size: 15px; mso-line-height-alt: 27px; margin: 0;''>
                                                                    <span style=''font-size: 15px;''>Klik link dibawah ini ya untuk melengkapi data tim mu.</span></p>
                                                            </div>
                                                        </div>
                                                        <div align=''center'' class=''button-container'' style=''padding-top:10px;padding-right:10px;padding-bottom:10px;padding-left:10px;''>
                                                            <a href=''https://hackathon.mind.id/Login'' style=''-webkit-text-size-adjust: none; text-decoration: none; display: inline-block; color: #ffffff; background-color: #0e2650; border-radius: 4px; -webkit-border-radius: 4px; -moz-border-radius: 4px; width: auto; width: auto; border-top: 1px solid #0e2650; border-right: 1px solid #0e2650; border-bottom: 1px solid #0e2650; border-left: 1px solid #0e2650; padding-top: 10px; padding-bottom: 10px; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; text-align: center; mso-border-alt: none; word-break: keep-all;'' target=''_blank''><span style=''padding-left:60px;padding-right:55px;font-size:16px;display:inline-block;''><span style=''font-size: 16px; margin: 0; line-height: 2; word-break: break-word; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; mso-line-height-alt: 32px;''>Lengkapi Data</span></span></a>
                                                        </div>
                                                        <div style=''color:#555555;font-family:".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif;line-height:1.8;padding-top:10px;padding-right:30px;padding-bottom:25px;padding-left:30px;''>
                                                            <div style=''line-height: 1.8; font-size: 12px; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; color: #555555; mso-line-height-alt: 22px;''>
                                                                <p style=''font-size: 14px; line-height: 1.8; word-break: break-word; text-align: left; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; mso-line-height-alt: 25px; margin: 0;''></p>
                                                                <p style=''line-height: 1.8; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; word-break: break-word; mso-line-height-alt: 22px; margin: 0;''>
                                                                    <span style=''font-size: 15px;''>Bila kamu sudah menyelesaikan dan mensubmit pitch deck dengan lengkap dapat abaikan pesan ini</span></p>
                                                                <p style=''line-height: 1.8; word-break: break-word; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; font-size: 15px; mso-line-height-alt: 27px; margin: 0;''>
                                                                    <span style=''font-size: 15px;''>Untuk informasi lebih lanjut, dapat kujungi link <a href=''https://hackathon.mind.id''>https://hackathon.mind.id</a></span></p>
                                                                <p style=''line-height: 1.8; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; word-break: break-word; mso-line-height-alt: 22px; margin: 0;''></p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div style=''background-color:transparent;''>
                                    <div class=''block-grid'' style=''Margin: 0 auto; min-width: 320px; max-width: 730px; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; background-color: #0e2650;''>
                                        <div style=''border-collapse: collapse;display: table;width: 100%;background-color:#0e2650;''>
                                            <div class=''col num12'' style=''min-width: 320px; max-width: 730px; display: table-cell; vertical-align: top; width: 730px;''>
                                                <div style=''width:100% !important;''>
                                                    <div style=''border-top:0px solid transparent; border-left:0px solid transparent; border-bottom:0px solid transparent; border-right:0px solid transparent; padding-top:5px; padding-bottom:5px; padding-right: 0px; padding-left: 0px;''>
                                                        <div style=''color:#f9f9f9;font-family:".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif;line-height:1.5;padding-top:10px;padding-right:10px;padding-bottom:10px;padding-left:10px;''>
                                                            <div style=''line-height: 1.5; font-size: 12px; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; color: #f9f9f9; mso-line-height-alt: 18px;''>
                                                            <p style=''font-size: 14px; line-height: 1.5; word-break: break-word; text-align: center; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; mso-line-height-alt: 21px; margin: 0;''>© 2020 hackathon.mind.id - All Rights Reserved</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </body>

            </html>', '2020-09-08 10:38:20', '3', '1');
INSERT INTO "public"."ann_email" ("id", "subject", "send_to", "from_email", "isi", "send_date", "send_by_id", "status") VALUES
('5', 'Remainder of Hackathon MIND ID 2020', '1', 'hackathon@mind.id', '            <!DOCTYPE html>
            <html>
            <head>
                <meta content=''text/html; charset=utf-8'' http-equiv=''Content-Type'' />
                <meta content=''width=device-width'' name=''viewport'' />
                <meta content=''IE=edge'' http-equiv=''X-UA-Compatible'' />
                <title></title>
                <link href=''https://fonts.googleapis.com/css?family=Montserrat'' rel=''stylesheet'' type=''text/css'' />
                <link href=''https://fonts.googleapis.com/css?family=Open+Sans'' rel=''stylesheet'' type=''text/css'' />
                <link href=''https://fonts.googleapis.com/css?family=Source+Sans+Pro'' rel=''stylesheet'' type=''text/css'' />
                <style type=''text/css''>
                    body {
                        margin: 0;
                        padding: 0;
                    }

                    table,
                    td,
                    tr {
                        vertical-align: top;
                        border-collapse: collapse;
                    }

                    * {
                        line-height: inherit;
                    }

                    a[x-apple-data-detectors=true] {
                        color: inherit !important;
                        text-decoration: none !important;
                    }
                </style>
                <style id=''media-query'' type=''text/css''>
                    @media (max-width: 750px) {

                        .block-grid,
                        .col {
                            min-width: 320px !important;
                            max-width: 100% !important;
                            display: block !important;
                        }

                        .block-grid {
                            width: 100% !important;
                        }

                        .col {
                            width: 100% !important;
                        }

                        .col>div {
                            margin: 0 auto;
                        }

                        img.fullwidth,
                        img.fullwidthOnMobile {
                            max-width: 100% !important;
                        }

                        .no-stack .col {
                            min-width: 0 !important;
                            display: table-cell !important;
                        }

                        .no-stack.two-up .col {
                            width: 50% !important;
                        }

                        .no-stack .col.num4 {
                            width: 33% !important;
                        }

                        .no-stack .col.num8 {
                            width: 66% !important;
                        }

                        .no-stack .col.num4 {
                            width: 33% !important;
                        }

                        .no-stack .col.num3 {
                            width: 25% !important;
                        }

                        .no-stack .col.num6 {
                            width: 50% !important;
                        }

                        .no-stack .col.num9 {
                            width: 75% !important;
                        }

                        .video-block {
                            max-width: none !important;
                        }

                        .mobile_hide {
                            min-height: 0px;
                            max-height: 0px;
                            max-width: 0px;
                            display: none;
                            overflow: hidden;
                            font-size: 0px;
                        }

                        .desktop_hide {
                            display: block !important;
                            max-height: none !important;
                        }
                    }
                </style>
            </head>

            <body class=''clean-body'' style=''margin: 0; padding: 0; -webkit-text-size-adjust: 100%; background-color: #f9f9f9;''>
                <table bgcolor=''#f9f9f9'' cellpadding=''0'' cellspacing=''0'' class=''nl-container'' role=''presentation''
                    style=''table-layout: fixed; vertical-align: top; min-width: 320px; Margin: 0 auto; border-spacing: 0; border-collapse: collapse; mso-table-lspace: 0pt; mso-table-rspace: 0pt; background-color: #f9f9f9; width: 100%;''
                    valign=''top'' width=''100%''>
                    <tbody>
                        <tr style=''vertical-align: top;'' valign=''top''>
                            <td style=''word-break: break-word; vertical-align: top;'' valign=''top''>
                                <div style=''background-color:transparent;''>
                                    <div class=''block-grid''
                                        style=''Margin: 0 auto; min-width: 320px; max-width: 730px; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; background-color: #ffffff;''>
                                        <div style=''border-collapse: collapse;display: table;width: 100%;background-color:#0e2650;''>
                                            <div class=''col num12''
                                                style=''min-width: 320px; max-width: 730px; display: table-cell; vertical-align: top; width: 730px;''>
                                                <div style=''width:100% !important;''>
                                                    <div
                                                        style=''border-top:0px solid transparent; border-left:0px solid transparent; border-bottom:0px solid transparent; border-right:0px solid transparent; padding-top:0px; padding-bottom:0px; padding-right: 0px; padding-left: 0px;''>
                                                        <div align=''center'' class=''img-container center autowidth''
                                                            style=''padding-right: 0px;padding-left: 0px;''>
                                                            <img
                                                                align=''center'' alt=''Alternate text'' border=''0''
                                                                class=''center autowidth''
                                                                src=''https://hackathon.mind.id/Landing/app-assets/MIND/Logo%20MIND%20ID/Gabungan.png''
                                                                style=''text-decoration: none; -ms-interpolation-mode: bicubic; height: auto; border: 0; width: 100%; max-width: 730px; display: block;''
                                                                title=''Alternate text'' width=''730'' />
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div style=''background-color:transparent;''>
                                    <div class=''block-grid''
                                        style=''Margin: 0 auto; min-width: 320px; max-width: 730px; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; background-color: #f9f9f9;''>
                                        <div style=''border-collapse: collapse;display: table;width: 100%;background-color:#f9f9f9;''>
                                            <div class=''col num12''
                                                style=''min-width: 320px; max-width: 730px; display: table-cell; vertical-align: top; width: 728px;''>
                                                <div style=''width:100% !important;''>
                                                    <div
                                                        style=''border-top:1px solid #000000; border-left:1px solid #000000; border-bottom:1px solid #000000; border-right:1px solid #000000; padding-top:5px; padding-bottom:5px; padding-right: 0px; padding-left: 0px;''>
                                                        <div
                                                            style=''color:#555555;font-family:".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif;line-height:1.8;padding-top:10px;padding-right:30px;padding-bottom:25px;padding-left:30px;''>
                                                            <div
                                                                style=''line-height: 1.8; font-size: 12px; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; color: #555555; mso-line-height-alt: 22px;''>
                                                                <p style=''font-size: 14px; line-height: 1.8; word-break: break-word; text-align: left; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; mso-line-height-alt: 25px; margin: 0;''></p>
                                                                <p style=''line-height: 1.8; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; word-break: break-word; font-size: 15px; mso-line-height-alt: 27px; margin: 0;''>
                                                                    <span style=''font-size: 20px;text-align: center;''>6 hari lagi pendaftaran peserta Hackathon MIND ID berakhir !</span><br /><br />
                                                                    <span style=''font-size: 15px;''>Buat kamu yang belum melengkapi data tim dan upload pitch deck,<br />
                                                                        yuk segera menyelesaikannnya sebelum 15 September 2020!<br />
                                                                        Agar kamu bisa berpatisipasi dalam kegiatan Hackathon yang diselenggarakan oleh MIND ID!</span></p>
                                                                <p style=''line-height: 1.8; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; word-break: break-word; mso-line-height-alt: 22px; margin: 0;''></p>
                                                                <p style=''line-height: 1.8; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; word-break: break-word; mso-line-height-alt: 22px; margin: 0;''></p>
                                                                <p style=''line-height: 1.8; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; word-break: break-word; font-size: 15px; mso-line-height-alt: 27px; margin: 0;''>
                                                                    <span style=''font-size: 15px;''>Klik link dibawah ini ya untuk melengkapi data tim mu.</span></p>
                                                            </div>
                                                        </div>
                                                        <div align=''center'' class=''button-container'' style=''padding-top:10px;padding-right:10px;padding-bottom:10px;padding-left:10px;''>
                                                            <a href=''https://hackathon.mind.id/Login'' style=''-webkit-text-size-adjust: none; text-decoration: none; display: inline-block; color: #ffffff; background-color: #0e2650; border-radius: 4px; -webkit-border-radius: 4px; -moz-border-radius: 4px; width: auto; width: auto; border-top: 1px solid #0e2650; border-right: 1px solid #0e2650; border-bottom: 1px solid #0e2650; border-left: 1px solid #0e2650; padding-top: 10px; padding-bottom: 10px; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; text-align: center; mso-border-alt: none; word-break: keep-all;'' target=''_blank''><span style=''padding-left:60px;padding-right:55px;font-size:16px;display:inline-block;''><span style=''font-size: 16px; margin: 0; line-height: 2; word-break: break-word; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; mso-line-height-alt: 32px;''>Lengkapi Data</span></span></a>
                                                        </div>
                                                        <div style=''color:#555555;font-family:".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif;line-height:1.8;padding-top:10px;padding-right:30px;padding-bottom:25px;padding-left:30px;''>
                                                            <div style=''line-height: 1.8; font-size: 12px; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; color: #555555; mso-line-height-alt: 22px;''>
                                                                <p style=''font-size: 14px; line-height: 1.8; word-break: break-word; text-align: left; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; mso-line-height-alt: 25px; margin: 0;''></p>
                                                                <p style=''line-height: 1.8; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; word-break: break-word; mso-line-height-alt: 22px; margin: 0;''>
                                                                    <span style=''font-size: 15px;''>Bila kamu sudah menyelesaikan dan mensubmit pitch deck dengan lengkap dapat abaikan pesan ini</span></p>
                                                                <p style=''line-height: 1.8; word-break: break-word; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; font-size: 15px; mso-line-height-alt: 27px; margin: 0;''>
                                                                    <span style=''font-size: 15px;''>Untuk informasi lebih lanjut, dapat kujungi link <a href=''https://hackathon.mind.id''>https://hackathon.mind.id</a></span></p>
                                                                <p style=''line-height: 1.8; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; word-break: break-word; mso-line-height-alt: 22px; margin: 0;''></p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div style=''background-color:transparent;''>
                                    <div class=''block-grid'' style=''Margin: 0 auto; min-width: 320px; max-width: 730px; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; background-color: #0e2650;''>
                                        <div style=''border-collapse: collapse;display: table;width: 100%;background-color:#0e2650;''>
                                            <div class=''col num12'' style=''min-width: 320px; max-width: 730px; display: table-cell; vertical-align: top; width: 730px;''>
                                                <div style=''width:100% !important;''>
                                                    <div style=''border-top:0px solid transparent; border-left:0px solid transparent; border-bottom:0px solid transparent; border-right:0px solid transparent; padding-top:5px; padding-bottom:5px; padding-right: 0px; padding-left: 0px;''>
                                                        <div style=''color:#f9f9f9;font-family:".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif;line-height:1.5;padding-top:10px;padding-right:10px;padding-bottom:10px;padding-left:10px;''>
                                                            <div style=''line-height: 1.5; font-size: 12px; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; color: #f9f9f9; mso-line-height-alt: 18px;''>
                                                            <p style=''font-size: 14px; line-height: 1.5; word-break: break-word; text-align: center; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; mso-line-height-alt: 21px; margin: 0;''>© 2020 hackathon.mind.id - All Rights Reserved</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </body>

            </html>', '2020-09-09 13:41:12', '3', '1');
INSERT INTO "public"."ann_email" ("id", "subject", "send_to", "from_email", "isi", "send_date", "send_by_id", "status") VALUES
('6', 'Reminder of Hackathon MIND ID 2020', '1', 'hackathon@mind.id', '            <!DOCTYPE html>
            <html>
            <head>
                <meta content=''text/html; charset=utf-8'' http-equiv=''Content-Type'' />
                <meta content=''width=device-width'' name=''viewport'' />
                <meta content=''IE=edge'' http-equiv=''X-UA-Compatible'' />
                <title></title>
                <link href=''https://fonts.googleapis.com/css?family=Montserrat'' rel=''stylesheet'' type=''text/css'' />
                <link href=''https://fonts.googleapis.com/css?family=Open+Sans'' rel=''stylesheet'' type=''text/css'' />
                <link href=''https://fonts.googleapis.com/css?family=Source+Sans+Pro'' rel=''stylesheet'' type=''text/css'' />
                <style type=''text/css''>
                    body {
                        margin: 0;
                        padding: 0;
                    }

                    table,
                    td,
                    tr {
                        vertical-align: top;
                        border-collapse: collapse;
                    }

                    * {
                        line-height: inherit;
                    }

                    a[x-apple-data-detectors=true] {
                        color: inherit !important;
                        text-decoration: none !important;
                    }
                </style>
                <style id=''media-query'' type=''text/css''>
                    @media (max-width: 750px) {

                        .block-grid,
                        .col {
                            min-width: 320px !important;
                            max-width: 100% !important;
                            display: block !important;
                        }

                        .block-grid {
                            width: 100% !important;
                        }

                        .col {
                            width: 100% !important;
                        }

                        .col>div {
                            margin: 0 auto;
                        }

                        img.fullwidth,
                        img.fullwidthOnMobile {
                            max-width: 100% !important;
                        }

                        .no-stack .col {
                            min-width: 0 !important;
                            display: table-cell !important;
                        }

                        .no-stack.two-up .col {
                            width: 50% !important;
                        }

                        .no-stack .col.num4 {
                            width: 33% !important;
                        }

                        .no-stack .col.num8 {
                            width: 66% !important;
                        }

                        .no-stack .col.num4 {
                            width: 33% !important;
                        }

                        .no-stack .col.num3 {
                            width: 25% !important;
                        }

                        .no-stack .col.num6 {
                            width: 50% !important;
                        }

                        .no-stack .col.num9 {
                            width: 75% !important;
                        }

                        .video-block {
                            max-width: none !important;
                        }

                        .mobile_hide {
                            min-height: 0px;
                            max-height: 0px;
                            max-width: 0px;
                            display: none;
                            overflow: hidden;
                            font-size: 0px;
                        }

                        .desktop_hide {
                            display: block !important;
                            max-height: none !important;
                        }
                    }
                </style>
            </head>

            <body class=''clean-body'' style=''margin: 0; padding: 0; -webkit-text-size-adjust: 100%; background-color: #f9f9f9;''>
                <table bgcolor=''#f9f9f9'' cellpadding=''0'' cellspacing=''0'' class=''nl-container'' role=''presentation''
                    style=''table-layout: fixed; vertical-align: top; min-width: 320px; Margin: 0 auto; border-spacing: 0; border-collapse: collapse; mso-table-lspace: 0pt; mso-table-rspace: 0pt; background-color: #f9f9f9; width: 100%;''
                    valign=''top'' width=''100%''>
                    <tbody>
                        <tr style=''vertical-align: top;'' valign=''top''>
                            <td style=''word-break: break-word; vertical-align: top;'' valign=''top''>
                                <div style=''background-color:transparent;''>
                                    <div class=''block-grid''
                                        style=''Margin: 0 auto; min-width: 320px; max-width: 730px; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; background-color: #ffffff;''>
                                        <div style=''border-collapse: collapse;display: table;width: 100%;background-color:#0e2650;''>
                                            <div class=''col num12''
                                                style=''min-width: 320px; max-width: 730px; display: table-cell; vertical-align: top; width: 730px;''>
                                                <div style=''width:100% !important;''>
                                                    <div
                                                        style=''border-top:0px solid transparent; border-left:0px solid transparent; border-bottom:0px solid transparent; border-right:0px solid transparent; padding-top:0px; padding-bottom:0px; padding-right: 0px; padding-left: 0px;''>
                                                        <div align=''center'' class=''img-container center autowidth''
                                                            style=''padding-right: 0px;padding-left: 0px;''>
                                                            <img
                                                                align=''center'' alt=''Alternate text'' border=''0''
                                                                class=''center autowidth''
                                                                src=''https://hackathon.mind.id/Landing/app-assets/MIND/Logo%20MIND%20ID/Gabungan.png''
                                                                style=''text-decoration: none; -ms-interpolation-mode: bicubic; height: auto; border: 0; width: 100%; max-width: 730px; display: block;''
                                                                title=''Alternate text'' width=''730'' />
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div style=''background-color:transparent;''>
                                    <div class=''block-grid''
                                        style=''Margin: 0 auto; min-width: 320px; max-width: 730px; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; background-color: #f9f9f9;''>
                                        <div style=''border-collapse: collapse;display: table;width: 100%;background-color:#f9f9f9;''>
                                            <div class=''col num12''
                                                style=''min-width: 320px; max-width: 730px; display: table-cell; vertical-align: top; width: 728px;''>
                                                <div style=''width:100% !important;''>
                                                    <div
                                                        style=''border-top:1px solid #000000; border-left:1px solid #000000; border-bottom:1px solid #000000; border-right:1px solid #000000; padding-top:5px; padding-bottom:5px; padding-right: 0px; padding-left: 0px;''>
                                                        <div
                                                            style=''color:#555555;font-family:".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif;line-height:1.8;padding-top:10px;padding-right:30px;padding-bottom:25px;padding-left:30px;''>
                                                            <div
                                                                style=''line-height: 1.8; font-size: 12px; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; color: #555555; mso-line-height-alt: 22px;''>
                                                                <p style=''font-size: 14px; line-height: 1.8; word-break: break-word; text-align: left; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; mso-line-height-alt: 25px; margin: 0;''></p>
                                                                <p style=''line-height: 1.8; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; word-break: break-word; font-size: 15px; mso-line-height-alt: 27px; margin: 0;''>
                                                                    <span style=''font-size: 20px;text-align: center;''>5 hari lagi pendaftaran peserta Hackathon MIND ID berakhir !</span><br /><br />
                                                                    <span style=''font-size: 15px;''>Buat kamu yang belum melengkapi data tim dan upload pitch deck,<br />
                                                                        yuk segera menyelesaikannnya sebelum 15 September 2020!<br />
                                                                        Agar kamu bisa berpatisipasi dalam kegiatan Hackathon yang diselenggarakan oleh MIND ID!</span></p>
                                                                <p style=''line-height: 1.8; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; word-break: break-word; mso-line-height-alt: 22px; margin: 0;''></p>
                                                                <p style=''line-height: 1.8; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; word-break: break-word; mso-line-height-alt: 22px; margin: 0;''></p>
                                                                <p style=''line-height: 1.8; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; word-break: break-word; font-size: 15px; mso-line-height-alt: 27px; margin: 0;''>
                                                                    <span style=''font-size: 15px;''>Klik link dibawah ini ya untuk melengkapi data tim mu.</span></p>
                                                            </div>
                                                        </div>
                                                        <div align=''center'' class=''button-container'' style=''padding-top:10px;padding-right:10px;padding-bottom:10px;padding-left:10px;''>
                                                            <a href=''https://hackathon.mind.id/Login'' style=''-webkit-text-size-adjust: none; text-decoration: none; display: inline-block; color: #ffffff; background-color: #0e2650; border-radius: 4px; -webkit-border-radius: 4px; -moz-border-radius: 4px; width: auto; width: auto; border-top: 1px solid #0e2650; border-right: 1px solid #0e2650; border-bottom: 1px solid #0e2650; border-left: 1px solid #0e2650; padding-top: 10px; padding-bottom: 10px; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; text-align: center; mso-border-alt: none; word-break: keep-all;'' target=''_blank''><span style=''padding-left:60px;padding-right:55px;font-size:16px;display:inline-block;''><span style=''font-size: 16px; margin: 0; line-height: 2; word-break: break-word; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; mso-line-height-alt: 32px;''>Lengkapi Data</span></span></a>
                                                        </div>
                                                        <div style=''color:#555555;font-family:".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif;line-height:1.8;padding-top:10px;padding-right:30px;padding-bottom:25px;padding-left:30px;''>
                                                            <div style=''line-height: 1.8; font-size: 12px; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; color: #555555; mso-line-height-alt: 22px;''>
                                                                <p style=''font-size: 14px; line-height: 1.8; word-break: break-word; text-align: left; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; mso-line-height-alt: 25px; margin: 0;''></p>
                                                                <p style=''line-height: 1.8; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; word-break: break-word; mso-line-height-alt: 22px; margin: 0;''>
                                                                    <span style=''font-size: 15px;''>Bila kamu sudah menyelesaikan dan mensubmit pitch deck dengan lengkap dapat abaikan pesan ini</span></p>
                                                                <p style=''line-height: 1.8; word-break: break-word; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; font-size: 15px; mso-line-height-alt: 27px; margin: 0;''>
                                                                    <span style=''font-size: 15px;''>Untuk informasi lebih lanjut, dapat kujungi link <a href=''https://hackathon.mind.id''>https://hackathon.mind.id</a></span></p>
                                                                <p style=''line-height: 1.8; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; word-break: break-word; mso-line-height-alt: 22px; margin: 0;''></p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div style=''background-color:transparent;''>
                                    <div class=''block-grid'' style=''Margin: 0 auto; min-width: 320px; max-width: 730px; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; background-color: #0e2650;''>
                                        <div style=''border-collapse: collapse;display: table;width: 100%;background-color:#0e2650;''>
                                            <div class=''col num12'' style=''min-width: 320px; max-width: 730px; display: table-cell; vertical-align: top; width: 730px;''>
                                                <div style=''width:100% !important;''>
                                                    <div style=''border-top:0px solid transparent; border-left:0px solid transparent; border-bottom:0px solid transparent; border-right:0px solid transparent; padding-top:5px; padding-bottom:5px; padding-right: 0px; padding-left: 0px;''>
                                                        <div style=''color:#f9f9f9;font-family:".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif;line-height:1.5;padding-top:10px;padding-right:10px;padding-bottom:10px;padding-left:10px;''>
                                                            <div style=''line-height: 1.5; font-size: 12px; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; color: #f9f9f9; mso-line-height-alt: 18px;''>
                                                            <p style=''font-size: 14px; line-height: 1.5; word-break: break-word; text-align: center; font-family: ".''Open Sans''.", ".''Helvetica Neue''.", Helvetica, Arial, sans-serif; mso-line-height-alt: 21px; margin: 0;''>© 2020 hackathon.mind.id - All Rights Reserved</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </body>

            </html>', '2020-09-10 11:54:57', '3', '1');

COMMIT;