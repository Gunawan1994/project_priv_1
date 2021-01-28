BEGIN;

-- CREATE SEQUENCE "id_webinar_ann_seq" -------------------------------
CREATE SEQUENCE "public"."id_webinar_ann_seq"
INCREMENT 1
MINVALUE 1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
-- -------------------------------------------------------------

-- CREATE TABLE "webinar_ann" -------------------------------------
CREATE TABLE "public"."webinar_ann" (
    "id" Bigint DEFAULT nextval('id_webinar_ann_seq'::regclass) NOT NULL,
    "id_webinar" Bigint NOT NULL,
    "send_to" Integer NOT NULL,
    "detail" Text NOT NULL,
    "status" Integer NOT NULL,
    "create_date" Timestamp Without Time Zone NOT NULL,
    PRIMARY KEY ( "id" ) );
 ;
 -----------------------------------------------------------

INSERT INTO "public"."webinar_ann" ("id", "id_webinar", "send_to", "detail", "status", "create_date") VALUES
('3', '4', '0', '<!DOCTYPE html>
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
							<div style=''border-collapse: collapse;display: table;width: 100%;background-color:#ffffff;''>
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
													src=''https://duniatambang.co.id/assets/img/headerhtml/headmindid.png''
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
												style=''color:#555555;font-family:"Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif;line-height:1.8;padding-top:10px;padding-right:30px;padding-bottom:25px;padding-left:30px;''>
												<div
													style=''line-height: 1.8; font-size: 12px; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; color: #555555; mso-line-height-alt: 22px;''>
													<p
														style=''font-size: 14px; line-height: 1.8; word-break: break-word; text-align: left; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; mso-line-height-alt: 25px; margin: 0;''>
														 </p>
													<p
														style=''line-height: 1.8; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; word-break: break-word; font-size: 15px; mso-line-height-alt: 27px; margin: 0;''>
														<span style=''font-size: 15px;''>MIND ID Hackathon 2020 adalah
															ajang hackathon pertama yang mengusung tema industri
															pertambangan di Indonesia.</span><br /><span
															style=''font-size: 15px;''>Terima kasih telah mendaftar
															sebagai salah satu perserta webinar kami yang berjudul
															''Webinar Series: Transformasi Digital Pertambangan MIND ID
															Hackathon''. Webinar ini bertujuan mengetahui apa itu
															digitalisasi pertambangan dan peran Hackathon MIND ID 2020
															dalam mengembangan digitalisasi pertambangan.</span></p>
													<p
														style=''line-height: 1.8; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; word-break: break-word; mso-line-height-alt: 22px; margin: 0;''>
														 </p>
													<p
														style=''line-height: 1.8; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; word-break: break-word; font-size: 15px; mso-line-height-alt: 27px; margin: 0;''>
														<span style=''font-size: 15px;''>Webinar ini dilaksanakan pada
															tanggal 14 Agustus 2020 pada pukul 10.30-11.45 WIB.</span>
													</p>
													<p
														style=''line-height: 1.8; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; word-break: break-word; mso-line-height-alt: 22px; margin: 0;''>
														 </p>
													<p
														style=''line-height: 1.8; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; word-break: break-word; font-size: 15px; mso-line-height-alt: 27px; margin: 0;''>
														<span style=''font-size: 15px;''>Berikut link webinar yang dapat dinikmati via zoom</span></p>
													<p
														style=''line-height: 1.8; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; word-break: break-word; font-size: 15px; mso-line-height-alt: 27px; margin: 0;''>
														<span style=''font-size: 15px;''><a href="https://mind-id.zoom.us/j/94964886170?pwd=c29tSVFndVRPTGtCWDFhUnp6YmhiUT09">https://mind-id.zoom.us/j/94964886170?pwd=c29tSVFndVRPTGtCWDFhUnp6YmhiUT09</a></span>
													</p>
												</div>
											</div>
											<div align=''center'' class=''button-container''
												style=''padding-top:10px;padding-right:10px;padding-bottom:10px;padding-left:10px;''>
												<a
													href=''https://mind-id.zoom.us/j/94964886170?pwd=c29tSVFndVRPTGtCWDFhUnp6YmhiUT09''
													style=''-webkit-text-size-adjust: none; text-decoration: none; display: inline-block; color: #ffffff; background-color: #0e2650; border-radius: 4px; -webkit-border-radius: 4px; -moz-border-radius: 4px; width: auto; width: auto; border-top: 1px solid #0e2650; border-right: 1px solid #0e2650; border-bottom: 1px solid #0e2650; border-left: 1px solid #0e2650; padding-top: 10px; padding-bottom: 10px; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; text-align: center; mso-border-alt: none; word-break: keep-all;''
													target=''_blank''><span
														style=''padding-left:60px;padding-right:55px;font-size:16px;display:inline-block;''><span
															style=''font-size: 16px; margin: 0; line-height: 2; word-break: break-word; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; mso-line-height-alt: 32px;''>Link
															Webinar</span></span></a>
											</div>
											<div
												style=''color:#555555;font-family:"Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif;line-height:1.8;padding-top:10px;padding-right:30px;padding-bottom:25px;padding-left:30px;''>
												<div
													style=''line-height: 1.8; font-size: 12px; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; color: #555555; mso-line-height-alt: 22px;''>
													<p
														style=''font-size: 14px; line-height: 1.8; word-break: break-word; text-align: left; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; mso-line-height-alt: 25px; margin: 0;''>
														 </p>
													<p
														style=''line-height: 1.8; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; word-break: break-word; mso-line-height-alt: 22px; margin: 0;''>
														 <span style=''font-size: 15px;''>Passcode: 688608</span></p>
													<p
														style=''line-height: 1.8; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; word-break: break-word; mso-line-height-alt: 22px; margin: 0;''>
														 </p>
													<p
														style=''line-height: 1.8; word-break: break-word; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; font-size: 15px; mso-line-height-alt: 27px; margin: 0;''>
														<span style=''font-size: 15px;''>Untuk informasi lebih lanjut, dapat kujungi link <a href=''https://hackathon.mind.id''>https://hackathon.mind.id</a></span></p>
													<p
														style=''line-height: 1.8; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; word-break: break-word; mso-line-height-alt: 22px; margin: 0;''>
														 </p>
													<p
														style=''line-height: 1.8; word-break: break-word; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; font-size: 15px; mso-line-height-alt: 27px; margin: 0;''>
														<span style=''font-size: 15px;''>Sampai berjumpa</span></p>
													
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div style=''background-color:transparent;''>
						<div class=''block-grid''
							style=''Margin: 0 auto; min-width: 320px; max-width: 730px; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; background-color: #0e2650;''>
							<div style=''border-collapse: collapse;display: table;width: 100%;background-color:#0e2650;''>
								<div class=''col num12''
									style=''min-width: 320px; max-width: 730px; display: table-cell; vertical-align: top; width: 730px;''>
									<div style=''width:100% !important;''>
										<div
											style=''border-top:0px solid transparent; border-left:0px solid transparent; border-bottom:0px solid transparent; border-right:0px solid transparent; padding-top:5px; padding-bottom:5px; padding-right: 0px; padding-left: 0px;''>
											
											<div
												style=''color:#f9f9f9;font-family:"Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif;line-height:1.5;padding-top:10px;padding-right:10px;padding-bottom:10px;padding-left:10px;''>
												<div
													style=''line-height: 1.5; font-size: 12px; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; color: #f9f9f9; mso-line-height-alt: 18px;''>
													<p
														style=''font-size: 14px; line-height: 1.5; word-break: break-word; text-align: center; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; mso-line-height-alt: 21px; margin: 0;''>
														© 2020 hackathon.mind.id - All Rights Reserved</p>
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

</html>', '1', '2020-08-13 19:26:23');
INSERT INTO "public"."webinar_ann" ("id", "id_webinar", "send_to", "detail", "status", "create_date") VALUES
('4', '4', '0', '<!DOCTYPE html>
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
							<div style=''border-collapse: collapse;display: table;width: 100%;background-color:#ffffff;''>
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
													src=''https://duniatambang.co.id/assets/img/headerhtml/headmindid.png''
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
												style=''color:#555555;font-family:"Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif;line-height:1.8;padding-top:10px;padding-right:30px;padding-bottom:25px;padding-left:30px;''>
												<div
													style=''line-height: 1.8; font-size: 12px; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; color: #555555; mso-line-height-alt: 22px;''>
			
													<p
														style=''line-height: 1.8; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; word-break: break-word; font-size: 15px; mso-line-height-alt: 27px; margin: 0;margin-top:20px;''>
														<span style=''font-size: 15px;''>MIND ID Hackathon 2020 adalah
															ajang hackathon pertama yang mengusung tema industri
															pertambangan di Indonesia.</span><br /><span
															style=''font-size: 15px;''>Terima kasih telah mendaftar
															sebagai salah satu perserta webinar kami yang berjudul
															''Webinar Series: Transformasi Digital Pertambangan MIND ID
															Hackathon''. Webinar ini bertujuan mengetahui apa itu
															digitalisasi pertambangan dan peran Hackathon MIND ID 2020
															dalam mengembangan digitalisasi pertambangan.</span></p>
													
													<p
														style=''line-height: 1.8; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; word-break: break-word; font-size: 15px; mso-line-height-alt: 27px; margin: 0;margin-top:20px;''>
														<span style=''font-size: 15px;''>Webinar ini dilaksanakan pada
															tanggal 14 Agustus 2020 pada pukul 10.30-11.45 WIB.</span>
													</p>
													
													<p
														style=''line-height: 1.8; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; word-break: break-word; font-size: 15px; mso-line-height-alt: 27px; margin: 0;margin-top:20px;''>
														<span style=''font-size: 15px;''>Berikut link webinar yang dapat dinikmati via zoom</span></p>
													<p
														style=''line-height: 1.8; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; word-break: break-word; font-size: 15px; mso-line-height-alt: 27px; margin: 0;''>
														<span style=''font-size: 15px;''><a href="https://mind-id.zoom.us/j/94964886170?pwd=c29tSVFndVRPTGtCWDFhUnp6YmhiUT09">https://mind-id.zoom.us/j/94964886170?pwd=c29tSVFndVRPTGtCWDFhUnp6YmhiUT09</a></span>
													</p>
												</div>
											</div>
											<div align=''center'' class=''button-container''
												style=''padding-top:10px;padding-right:10px;padding-bottom:10px;padding-left:10px;''>
												<a
													href=''https://mind-id.zoom.us/j/94964886170?pwd=c29tSVFndVRPTGtCWDFhUnp6YmhiUT09''
													style=''-webkit-text-size-adjust: none; text-decoration: none; display: inline-block; color: #ffffff; background-color: #0e2650; border-radius: 4px; -webkit-border-radius: 4px; -moz-border-radius: 4px; width: auto; width: auto; border-top: 1px solid #0e2650; border-right: 1px solid #0e2650; border-bottom: 1px solid #0e2650; border-left: 1px solid #0e2650; padding-top: 10px; padding-bottom: 10px; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; text-align: center; mso-border-alt: none; word-break: keep-all;''
													target=''_blank''><span
														style=''padding-left:60px;padding-right:55px;font-size:16px;display:inline-block;''><span
															style=''font-size: 16px; margin: 0; line-height: 2; word-break: break-word; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; mso-line-height-alt: 32px;''>Link
															Webinar</span></span></a>
											</div>
											<div
												style=''color:#555555;font-family:"Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif;line-height:1.8;padding-top:10px;padding-right:30px;padding-bottom:25px;padding-left:30px;''>
												<div
													style=''line-height: 1.8; font-size: 12px; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; color: #555555; mso-line-height-alt: 22px;''>
													
													<p
														style=''line-height: 1.8; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; word-break: break-word; mso-line-height-alt: 22px; margin: 0;margin-top:20px;''>
														 <span style=''font-size: 15px;''>Passcode: 688608</span></p>
													
													<p
														style=''line-height: 1.8; word-break: break-word; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; font-size: 15px; mso-line-height-alt: 27px; margin: 0;margin-top:20px;''>
														<span style=''font-size: 15px;''>Untuk informasi lebih lanjut, dapat kujungi link <a href=''https://hackathon.mind.id''>https://hackathon.mind.id</a></span></p>
													
													<p
														style=''line-height: 1.8; word-break: break-word; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; font-size: 15px; mso-line-height-alt: 27px; margin: 0;margin-top:20px;''>
														<span style=''font-size: 15px;''>Sampai berjumpa</span></p>
													
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div style=''background-color:transparent;''>
						<div class=''block-grid''
							style=''Margin: 0 auto; min-width: 320px; max-width: 730px; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; background-color: #0e2650;''>
							<div style=''border-collapse: collapse;display: table;width: 100%;background-color:#0e2650;''>
								<div class=''col num12''
									style=''min-width: 320px; max-width: 730px; display: table-cell; vertical-align: top; width: 730px;''>
									<div style=''width:100% !important;''>
										<div
											style=''border-top:0px solid transparent; border-left:0px solid transparent; border-bottom:0px solid transparent; border-right:0px solid transparent; padding-top:5px; padding-bottom:5px; padding-right: 0px; padding-left: 0px;''>
											
											<div
												style=''color:#f9f9f9;font-family:"Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif;line-height:1.5;padding-top:10px;padding-right:10px;padding-bottom:10px;padding-left:10px;''>
												<div
													style=''line-height: 1.5; font-size: 12px; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; color: #f9f9f9; mso-line-height-alt: 18px;''>
													<p
														style=''font-size: 14px; line-height: 1.5; word-break: break-word; text-align: center; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; mso-line-height-alt: 21px; margin: 0;''>
														© 2020 hackathon.mind.id - All Rights Reserved</p>
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

</html>', '1', '2020-08-14 09:49:56');
INSERT INTO "public"."webinar_ann" ("id", "id_webinar", "send_to", "detail", "status", "create_date") VALUES
('5', '4', '0', '<!DOCTYPE html>
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
							<div style=''border-collapse: collapse;display: table;width: 100%;background-color:#ffffff;''>
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
													src=''https://duniatambang.co.id/assets/img/headerhtml/headmindid.png''
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
												style=''color:#555555;font-family:"Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif;line-height:1.8;padding-top:10px;padding-right:30px;padding-bottom:25px;padding-left:30px;''>
												<div
													style=''line-height: 1.8; font-size: 12px; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; color: #555555; mso-line-height-alt: 22px;''>
			
													<p
														style=''line-height: 1.8; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; word-break: break-word; font-size: 15px; mso-line-height-alt: 27px; margin: 0;margin-top:20px;''>
														<span style=''font-size: 15px;''>Terima kasih telah bergabung pada webinar kami, kami tunggu di webinar-webinar kami selanjutnya.</span>
													</p>
													<p
														style=''line-height: 1.8; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; word-break: break-word; font-size: 15px; mso-line-height-alt: 27px; margin: 0;margin-top:20px;''>
														<span style=''font-size: 15px;''>Berikut kami lampirkan materi presentasi dari webinar pada hari ini. <a href=''https://duniatambang.co.id/Materi/readumum/25/Materi-Webinar-Transformasi-Digital-Pertambangan-MIND-ID-Hackathon-2020''>https://duniatambang.co.id/Materi/readumum/25/Materi-Webinar-Transformasi-Digital-Pertambangan-MIND-ID-Hackathon-2020</a></span>
													</p>
													<p
														style=''line-height: 1.8; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; word-break: break-word; font-size: 15px; mso-line-height-alt: 27px; margin: 0;margin-top:20px;''>
														<span style=''font-size: 15px;''>Untuk info lebih lanjut mengenai kompetisi ini silahkan dapat kunjungi <a href=''https://hackathon.mind.id''>https://hackathon.mind.id</a></span>
													</p>
												</div>
											</div>
											
											
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div style=''background-color:transparent;''>
						<div class=''block-grid''
							style=''Margin: 0 auto; min-width: 320px; max-width: 730px; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; background-color: #0e2650;''>
							<div style=''border-collapse: collapse;display: table;width: 100%;background-color:#0e2650;''>
								<div class=''col num12''
									style=''min-width: 320px; max-width: 730px; display: table-cell; vertical-align: top; width: 730px;''>
									<div style=''width:100% !important;''>
										<div
											style=''border-top:0px solid transparent; border-left:0px solid transparent; border-bottom:0px solid transparent; border-right:0px solid transparent; padding-top:5px; padding-bottom:5px; padding-right: 0px; padding-left: 0px;''>
											
											<div
												style=''color:#f9f9f9;font-family:"Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif;line-height:1.5;padding-top:10px;padding-right:10px;padding-bottom:10px;padding-left:10px;''>
												<div
													style=''line-height: 1.5; font-size: 12px; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; color: #f9f9f9; mso-line-height-alt: 18px;''>
													<p
														style=''font-size: 14px; line-height: 1.5; word-break: break-word; text-align: center; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; mso-line-height-alt: 21px; margin: 0;''>
														© 2020 hackathon.mind.id - All Rights Reserved</p>
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

</html>', '1', '2020-08-19 17:55:40');
INSERT INTO "public"."webinar_ann" ("id", "id_webinar", "send_to", "detail", "status", "create_date") VALUES
('6', '5', '0', '<!DOCTYPE html>
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
							<div style=''border-collapse: collapse;display: table;width: 100%;background-color:#ffffff;''>
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
													src=''https://duniatambang.co.id/assets/img/headerhtml/headhackathonweb2.png''
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
											<div style=''color:#555555;font-family:"Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif;line-height:1.8;padding-top:10px;padding-right:30px;padding-bottom:25px;padding-left:30px;''>
												<div style=''line-height: 1.8; font-size: 12px; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; color: #555555; mso-line-height-alt: 22px;''>
													<p style=''line-height: 1.8; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; word-break: break-word; font-size: 15px; mso-line-height-alt: 27px; margin: 0;margin-top:20px;''>
														<span style=''font-size: 15px;''>MIND ID Hackathon 2020 adalah ajang hackathon pertama yang mengusung tema industri pertambangan di Indonesia.</span><br />
													</p>
													<p style=''line-height: 1.8; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; word-break: break-word; font-size: 15px; mso-line-height-alt: 27px; margin: 0;margin-top:20px;''>
														<span style=''font-size: 15px;''>Terima kasih telah mendaftar sebagai salah satu perserta webinar kami yang berjudul ''Webinar Series: Pengembangan IPTEK Pertambangan Melalui MIND ID Hackathon 2020''. 
															Webinar ini bertujuan mengetahui apa itu digitalisasi pertambangan dan peran Hackathon MIND ID 2020 dalam mengembangan digitalisasi pertambangan.</span>
													</p>
													<p style=''line-height: 1.8; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; word-break: break-word; font-size: 15px; mso-line-height-alt: 27px; margin: 0;margin-top:20px;''>
														<span style=''font-size: 15px;''>Webinar ini dilaksanakan pada Jum''at 4 September 2020 pada pukul 10.00-11.30 WIB.</span>
													</p>
													
													<p
														style=''line-height: 1.8; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; word-break: break-word; font-size: 15px; mso-line-height-alt: 27px; margin: 0;margin-top:20px;''>
														<span style=''font-size: 15px;''>Berikut link webinar yang dapat dinikmati via zoom</span></p>
													<p
														style=''line-height: 1.8; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; word-break: break-word; font-size: 15px; mso-line-height-alt: 27px; margin: 0;''>
														<span style=''font-size: 15px;''><a href="https://mind-id.zoom.us/j/93936460993?pwd=aWhUZXF2YzFmQ29HTnJBY24xUlhIQT09">https://mind-id.zoom.us/j/93936460993?pwd=aWhUZXF2YzFmQ29HTnJBY24xUlhIQT09</a></span>
													</p>
												</div>
											</div>
											<div align=''center'' class=''button-container''
												style=''padding-top:10px;padding-right:10px;padding-bottom:10px;padding-left:10px;''>
												<a
													href=''https://mind-id.zoom.us/j/93936460993?pwd=aWhUZXF2YzFmQ29HTnJBY24xUlhIQT09''
													style=''-webkit-text-size-adjust: none; text-decoration: none; display: inline-block; color: #ffffff; background-color: #0e2650; border-radius: 4px; -webkit-border-radius: 4px; -moz-border-radius: 4px; width: auto; width: auto; border-top: 1px solid #0e2650; border-right: 1px solid #0e2650; border-bottom: 1px solid #0e2650; border-left: 1px solid #0e2650; padding-top: 10px; padding-bottom: 10px; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; text-align: center; mso-border-alt: none; word-break: keep-all;''
													target=''_blank''><span
														style=''padding-left:60px;padding-right:55px;font-size:16px;display:inline-block;''><span
															style=''font-size: 16px; margin: 0; line-height: 2; word-break: break-word; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; mso-line-height-alt: 32px;''>Link
															Webinar</span></span></a>
											</div>
											<div
												style=''color:#555555;font-family:"Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif;line-height:1.8;padding-top:10px;padding-right:30px;padding-bottom:25px;padding-left:30px;''>
												<div
													style=''line-height: 1.8; font-size: 12px; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; color: #555555; mso-line-height-alt: 22px;''>
													
													<p
														style=''line-height: 1.8; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; word-break: break-word; mso-line-height-alt: 22px; margin: 0;margin-top:20px;''>
														 <span style=''font-size: 15px;''>Meeting ID: 939 3646 0993</span></p>
													<p
														style=''line-height: 1.8; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; word-break: break-word; mso-line-height-alt: 22px; margin: 0;margin-top:20px;''>
														 <span style=''font-size: 15px;''>Passcode: hack2020</span></p>
													<p
														style=''line-height: 1.8; word-break: break-word; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; font-size: 15px; mso-line-height-alt: 27px; margin: 0;margin-top:20px;''>
														<span style=''font-size: 15px;''>Untuk informasi lebih lanjut, dapat kunjungi link <a href=''https://hackathon.mind.id''>https://hackathon.mind.id</a></span></p>
													
													<p
														style=''line-height: 1.8; word-break: break-word; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; font-size: 15px; mso-line-height-alt: 27px; margin: 0;margin-top:20px;''>
														<span style=''font-size: 15px;''>Sampai berjumpa.</span></p>
													
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div style=''background-color:transparent;''>
						<div class=''block-grid''
							style=''Margin: 0 auto; min-width: 320px; max-width: 730px; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; background-color: #0e2650;''>
							<div style=''border-collapse: collapse;display: table;width: 100%;background-color:#0e2650;''>
								<div class=''col num12''
									style=''min-width: 320px; max-width: 730px; display: table-cell; vertical-align: top; width: 730px;''>
									<div style=''width:100% !important;''>
										<div style=''border-top:0px solid transparent; border-left:0px solid transparent; border-bottom:0px solid transparent; border-right:0px solid transparent; padding-top:5px; padding-bottom:5px; padding-right: 0px; padding-left: 0px;''>
											<div style=''color:#f9f9f9;font-family:"Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif;line-height:1.5;padding-top:10px;padding-right:10px;padding-bottom:10px;padding-left:10px;''>
												<p style=''font-size: 14px; line-height: 1.5; word-break: break-word; text-align: center; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; mso-line-height-alt: 21px; margin: 0;''>© 2020 hackathon.mind.id - All Rights Reserved</p>
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

</html>', '1', '2020-09-03 14:45:18'),
('7', '5', '0', '<!DOCTYPE html>
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
							<div style=''border-collapse: collapse;display: table;width: 100%;background-color:#ffffff;''>
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
													src=''https://duniatambang.co.id/assets/img/headerhtml/headhackathonweb2.png''
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
											<div style=''color:#555555;font-family:"Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif;line-height:1.8;padding-top:10px;padding-right:30px;padding-bottom:25px;padding-left:30px;''>
												<div style=''line-height: 1.8; font-size: 12px; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; color: #555555; mso-line-height-alt: 22px;''>
													<p style=''line-height: 1.8; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; word-break: break-word; font-size: 15px; mso-line-height-alt: 27px; margin: 0;margin-top:20px;''>
														<span style=''font-size: 15px;''>MIND ID Hackathon 2020 adalah ajang hackathon pertama yang mengusung tema industri pertambangan di Indonesia.</span><br />
													</p>
													<p style=''line-height: 1.8; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; word-break: break-word; font-size: 15px; mso-line-height-alt: 27px; margin: 0;margin-top:20px;''>
														<span style=''font-size: 15px;''>Terima kasih telah mendaftar sebagai salah satu perserta webinar kami yang berjudul ''Webinar Series: Pengembangan IPTEK Pertambangan Melalui MIND ID Hackathon 2020''. 
															Webinar ini bertujuan mengetahui apa itu digitalisasi pertambangan dan peran Hackathon MIND ID 2020 dalam mengembangan digitalisasi pertambangan.</span>
													</p>
													<p style=''line-height: 1.8; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; word-break: break-word; font-size: 15px; mso-line-height-alt: 27px; margin: 0;margin-top:20px;''>
														<span style=''font-size: 15px;''>Webinar ini dilaksanakan pada Jum''at 4 September 2020 pada pukul 10.00-11.30 WIB.</span>
													</p>
													
													<p
														style=''line-height: 1.8; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; word-break: break-word; font-size: 15px; mso-line-height-alt: 27px; margin: 0;margin-top:20px;''>
														<span style=''font-size: 15px;''>Berikut link webinar yang dapat dinikmati via zoom</span></p>
													<p
														style=''line-height: 1.8; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; word-break: break-word; font-size: 15px; mso-line-height-alt: 27px; margin: 0;''>
														<span style=''font-size: 15px;''><a href="https://mind-id.zoom.us/j/93936460993?pwd=aWhUZXF2YzFmQ29HTnJBY24xUlhIQT09">https://mind-id.zoom.us/j/93936460993?pwd=aWhUZXF2YzFmQ29HTnJBY24xUlhIQT09</a></span>
													</p>
												</div>
											</div>
											<div align=''center'' class=''button-container''
												style=''padding-top:10px;padding-right:10px;padding-bottom:10px;padding-left:10px;''>
												<a
													href=''https://mind-id.zoom.us/j/93936460993?pwd=aWhUZXF2YzFmQ29HTnJBY24xUlhIQT09''
													style=''-webkit-text-size-adjust: none; text-decoration: none; display: inline-block; color: #ffffff; background-color: #0e2650; border-radius: 4px; -webkit-border-radius: 4px; -moz-border-radius: 4px; width: auto; width: auto; border-top: 1px solid #0e2650; border-right: 1px solid #0e2650; border-bottom: 1px solid #0e2650; border-left: 1px solid #0e2650; padding-top: 10px; padding-bottom: 10px; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; text-align: center; mso-border-alt: none; word-break: keep-all;''
													target=''_blank''><span
														style=''padding-left:60px;padding-right:55px;font-size:16px;display:inline-block;''><span
															style=''font-size: 16px; margin: 0; line-height: 2; word-break: break-word; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; mso-line-height-alt: 32px;''>Link
															Webinar</span></span></a>
											</div>
											<div
												style=''color:#555555;font-family:"Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif;line-height:1.8;padding-top:10px;padding-right:30px;padding-bottom:25px;padding-left:30px;''>
												<div
													style=''line-height: 1.8; font-size: 12px; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; color: #555555; mso-line-height-alt: 22px;''>
													
													<p
														style=''line-height: 1.8; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; word-break: break-word; mso-line-height-alt: 22px; margin: 0;margin-top:20px;''>
														 <span style=''font-size: 15px;''>Meeting ID: 939 3646 0993</span></p>
													<p
														style=''line-height: 1.8; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; word-break: break-word; mso-line-height-alt: 22px; margin: 0;margin-top:20px;''>
														 <span style=''font-size: 15px;''>Passcode: hack2020</span></p>
													<p
														style=''line-height: 1.8; word-break: break-word; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; font-size: 15px; mso-line-height-alt: 27px; margin: 0;margin-top:20px;''>
														<span style=''font-size: 15px;''>Untuk informasi lebih lanjut, dapat kunjungi link <a href=''https://hackathon.mind.id''>https://hackathon.mind.id</a></span></p>
													
													<p
														style=''line-height: 1.8; word-break: break-word; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; font-size: 15px; mso-line-height-alt: 27px; margin: 0;margin-top:20px;''>
														<span style=''font-size: 15px;''>Sampai berjumpa.</span></p>
													
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div style=''background-color:transparent;''>
						<div class=''block-grid''
							style=''Margin: 0 auto; min-width: 320px; max-width: 730px; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; background-color: #0e2650;''>
							<div style=''border-collapse: collapse;display: table;width: 100%;background-color:#0e2650;''>
								<div class=''col num12''
									style=''min-width: 320px; max-width: 730px; display: table-cell; vertical-align: top; width: 730px;''>
									<div style=''width:100% !important;''>
										<div style=''border-top:0px solid transparent; border-left:0px solid transparent; border-bottom:0px solid transparent; border-right:0px solid transparent; padding-top:5px; padding-bottom:5px; padding-right: 0px; padding-left: 0px;''>
											<div style=''color:#f9f9f9;font-family:"Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif;line-height:1.5;padding-top:10px;padding-right:10px;padding-bottom:10px;padding-left:10px;''>
												<p style=''font-size: 14px; line-height: 1.5; word-break: break-word; text-align: center; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; mso-line-height-alt: 21px; margin: 0;''>© 2020 hackathon.mind.id - All Rights Reserved</p>
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

</html>', '1', '2020-09-04 08:06:59'),
('8', '4', '0', '<!DOCTYPE html>
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
							<div style=''border-collapse: collapse;display: table;width: 100%;background-color:#ffffff;''>
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
													src=''https://duniatambang.co.id/assets/img/headerhtml/headmindid.png''
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
								<div style=''width:100% !important;''>
									<div
										style=''border-top:1px solid #000000; border-left:1px solid #000000; border-bottom:1px solid #000000; border-right:1px solid #000000; padding-top:5px; padding-bottom:5px; padding-right: 0px; padding-left: 0px;''>
										<div
											style=''color:#555555;font-family:"Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif;line-height:1.8;padding-top:10px;padding-right:30px;padding-bottom:25px;padding-left:30px;''>
											<div
												style=''line-height: 1.8; font-size: 12px; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; color: #555555; mso-line-height-alt: 22px;''>
		
												<p
													style=''line-height: 1.8; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; word-break: break-word; font-size: 15px; mso-line-height-alt: 27px; margin: 0;margin-top:20px;''>
													<span style=''font-size: 15px;''>Terima kasih telah mengikuti Webinar Series kami, Pantangi website dan sosial media untuk webinar selanjutnya.</span>
												</p>
												<p
													style=''line-height: 1.8; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; word-break: break-word; font-size: 15px; mso-line-height-alt: 27px; margin: 0;margin-top:20px;''>
													<span style=''font-size: 15px;''>Berikut kami lampirkan link materi dari webinar-webinar kami. <a href=''https://duniatambang.co.id/Materi/umum''>https://duniatambang.co.id/Materi/umum</a></span>
												</p>
												<p
													style=''line-height: 1.8; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; word-break: break-word; font-size: 15px; mso-line-height-alt: 27px; margin: 0;margin-top:20px;''>
													<span style=''font-size: 15px;''>Jangan lupa untuk mengunduh e-sertifikat pada link dibawah ini. <a href=''https://duniatambang.co.id/Sertifikatwebinar''>https://duniatambang.co.id/Sertifikatwebinar</a></span>
												</p>
												<p
													style=''line-height: 1.8; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; word-break: break-word; font-size: 15px; mso-line-height-alt: 27px; margin: 0;margin-top:20px;''>
													<span style=''font-size: 15px;''>Untuk info lebih lanjut mengenai kompetisi ini silahkan dapat kunjungi <a href=''https://hackathon.mind.id''>https://hackathon.mind.id</a></span>
												</p>
											</div>
										</div>	
									</div>
								</div>
							</div>
						</div>
					</div>
					<div style=''background-color:transparent;''>
						<div class=''block-grid'' style=''Margin: 0 auto; min-width: 320px; max-width: 730px; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; background-color: #0e2650;''>
							<div style=''width:100% !important;''>
								<div style=''color:#f9f9f9;font-family:"Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif;line-height:1.5;padding-top:10px;padding-right:10px;padding-bottom:10px;padding-left:10px;''>
									<p style=''font-size: 14px; line-height: 1.5; word-break: break-word; text-align: center; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; mso-line-height-alt: 21px; margin: 0;''>Copyright © 2020 hackathon.mind.id - All Rights Reserved</p>
								</div>
							</div>	
						</div>
					</div>
				</td>
			</tr>
		</tbody>
	</table>
</body>

</html>', '1', '2020-09-08 17:11:32'),
('9', '5', '0', '<!DOCTYPE html>
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
							<div style=''border-collapse: collapse;display: table;width: 100%;background-color:#ffffff;''>
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
													src=''https://duniatambang.co.id/assets/img/headerhtml/headhackathonweb2.png''
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
								<div style=''width:100% !important;''>
									<div
										style=''border-top:1px solid #000000; border-left:1px solid #000000; border-bottom:1px solid #000000; border-right:1px solid #000000; padding-top:5px; padding-bottom:5px; padding-right: 0px; padding-left: 0px;''>
										<div
											style=''color:#555555;font-family:"Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif;line-height:1.8;padding-top:10px;padding-right:30px;padding-bottom:25px;padding-left:30px;''>
											<div
												style=''line-height: 1.8; font-size: 12px; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; color: #555555; mso-line-height-alt: 22px;''>
		
												<p
													style=''line-height: 1.8; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; word-break: break-word; font-size: 15px; mso-line-height-alt: 27px; margin: 0;margin-top:20px;''>
													<span style=''font-size: 15px;''>Terima kasih telah mengikuti Webinar Series kami, Pantangi website dan sosial media untuk webinar selanjutnya.</span>
												</p>
												<p
													style=''line-height: 1.8; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; word-break: break-word; font-size: 15px; mso-line-height-alt: 27px; margin: 0;margin-top:20px;''>
													<span style=''font-size: 15px;''>Berikut kami lampirkan link materi dari webinar-webinar kami. <a href=''https://duniatambang.co.id/Materi/umum''>https://duniatambang.co.id/Materi/umum</a></span>
												</p>
												<p
													style=''line-height: 1.8; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; word-break: break-word; font-size: 15px; mso-line-height-alt: 27px; margin: 0;margin-top:20px;''>
													<span style=''font-size: 15px;''>Jangan lupa untuk mengunduh e-sertifikat pada link dibawah ini. <a href=''https://duniatambang.co.id/Sertifikatwebinar''>https://duniatambang.co.id/Sertifikatwebinar</a></span>
												</p>
												<p
													style=''line-height: 1.8; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; word-break: break-word; font-size: 15px; mso-line-height-alt: 27px; margin: 0;margin-top:20px;''>
													<span style=''font-size: 15px;''>Untuk info lebih lanjut mengenai kompetisi ini silahkan dapat kunjungi <a href=''https://hackathon.mind.id''>https://hackathon.mind.id</a></span>
												</p>
											</div>
										</div>	
									</div>
								</div>
							</div>
						</div>
					</div>
					<div style=''background-color:transparent;''>
						<div class=''block-grid'' style=''Margin: 0 auto; min-width: 320px; max-width: 730px; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; background-color: #0e2650;''>
							<div style=''width:100% !important;''>
								<div style=''color:#f9f9f9;font-family:"Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif;line-height:1.5;padding-top:10px;padding-right:10px;padding-bottom:10px;padding-left:10px;''>
									<p style=''font-size: 14px; line-height: 1.5; word-break: break-word; text-align: center; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; mso-line-height-alt: 21px; margin: 0;''>Copyright © 2020 hackathon.mind.id - All Rights Reserved</p>
								</div>
							</div>	
						</div>
					</div>
				</td>
			</tr>
		</tbody>
	</table>
</body>

</html>', '1', '2020-09-09 11:02:25');

COMMIT;