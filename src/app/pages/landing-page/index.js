import React from "react";
import { Redirect, Switch } from "react-router-dom";
import { ContentRoute } from "../../../_metronic/layout";
import { Video } from "./Video";
import { VideoCreate } from "./VideoCreate";
import { PenjelasanSingkat } from "./PenjelasanSingkat";
import { KategoriPenelitian } from "./KategoriPenelitian";
import { KategoriPenelitianCreate } from "./KategoriPenelitianCreate";
import { SubKategoriPenelitian } from "./SubKategoriPenelitian";
import { SubKategoriPenelitianCreate } from "./SubKategoriPenelitianCreate";
import { Dokumentasi } from "./Dokumentasi";
import { DokumentasiCreate } from "./DokumentasiCreate";
import { Kontak } from "./Kontak";
import { KontakRespon } from "./KontakRespon";
import { Juri } from "./Juri";
import { JuriCreate } from "./JuriCreate";
import Timeline from "./Timeline";

export default function index() {
  return (
    <Switch>
      <Redirect
        exact={true}
        from="/landing-page"
        to="/landing-page/video"
      />
      <ContentRoute
        path="/landing-page/video" 
        component={Video} 
      />
      <ContentRoute
        path="/landing-page/video-create" 
        component={VideoCreate} 
      />
      <ContentRoute
        path="/landing-page/penjelasan-singkat" 
        component={PenjelasanSingkat} 
      />
      <ContentRoute
        path="/landing-page/kategori-penelitian" 
        component={KategoriPenelitian} 
      />
      <ContentRoute
        path="/landing-page/kategori-penelitian-create" 
        component={KategoriPenelitianCreate} 
      />
      <ContentRoute
        path="/landing-page/sub-kategori-penelitian" 
        component={SubKategoriPenelitian} 
      />
      <ContentRoute
        path="/landing-page/sub-kategori-penelitian-create" 
        component={SubKategoriPenelitianCreate} 
      />
      <ContentRoute
        path="/landing-page/dokumentasi" 
        component={Dokumentasi} 
      />
      <ContentRoute
        path="/landing-page/dokumentasi-create" 
        component={DokumentasiCreate} 
      />
      <ContentRoute
        path="/landing-page/kontak" 
        component={Kontak} 
      />
      <ContentRoute
        path="/landing-page/kontak-respon" 
        component={KontakRespon} 
      />
      <ContentRoute
        path="/landing-page/timeline" 
        component={Timeline} 
      />
      <ContentRoute
        path="/landing-page/juri" 
        component={Juri} 
      />
      <ContentRoute
        path="/landing-page/juri-create" 
        component={JuriCreate} 
      />
    </Switch>
  );
}
