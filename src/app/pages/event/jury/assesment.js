import React, { useState } from 'react';
import {
  Card,
  CardBody,
  CardHeader,
  CardHeaderToolbar
} from "../../../../_metronic/_partials/controls";
import { makeStyles, Button } from '@material-ui/core';
import { toAbsoluteUrl } from "../../../../_metronic/_helpers";
import SVG from "react-inlinesvg";
import { Accordion } from 'react-bootstrap';
import {DataTable} from '../../../../_metronic/layout/components/table/datatable';


const useStyles = makeStyles(() => ({
  fullSize: {
    display: 'block',
    zIndex: '9999',
    position: 'fixed',
    width: '100% !important',
    height: '100% !important',
    top: 0,
    right: 0,
    left: 0,
    bottom: 0,
    overflow: 'auto',
  }
}))

const products = [{
  idPenilaian: "1",
  idPitchDeck: "1",
  teamName: "Sapu Jagat",
  nilaiPitch: "80",
  juryName: "Handoko",
  tanggal: "12/12/2020",
}, {
  idPenilaian: "2",
  idPitchDeck:"2",
  teamName: "Sapu Ijuk",
  nilaiPitch: "80",
  juryName: "Handoko",
  tanggal: "12/12/2020"
}]

const products2 = [{
  idPitchDeck: "1",
  teamName: "Sapu Jagat",
  nilaiRata: "80",
}, {
  idPitchDeck:"2",
  teamName: "Sapu Ijuk",
  nilaiRata: "80",
}]

export function Assesment() {

  const [screen, setScreen] = useState(false);
  const [screen2, setScreen2] = useState(false);
  const handleScreen = () => {
    setScreen(!screen)
  };
  const handleScreen2 = () => {
    setScreen2(!screen2)
  };
  const classes = useStyles();

  const columns = [{
    data: 'idPenilaian',
    title: 'ID penilaian',
    sortable: true
  }, {
    data: 'idPitchDeck',
    title: 'ID Pitch Deck',
    sortable: true
  }, {
    data: 'teamName',
    title: 'Nama Tim',
    sortable: true,
  }, {
    data: 'juryName',
    title: 'Nama Juri',
    sortable: true
  }, {
    data: 'nilaiPitch',
    title: 'Nilai Pitch Deck',
    sortable: true
  }, {
    data: 'tanggal',
    title: 'Tanggal Nilai',
    sortable: true
  }, {
    data: null,
    title: 'action',

  }];

  const onClickAction = (data)=>{
    console.log(data)
  } 

  const columns2 = [{
    data: 'idPitchDeck',
    title: 'ID Pitch Deck',
    sortable: true
  }, {
    data: 'teamName',
    title: 'Nama Tim',
    sortable: true,
  }, {
    data: 'nilaiRata',
    title: 'Nilai Rata-rata Pitch Deck',
    sortable: true
  }];

  return (
    <>
      <Accordion className="mb-10" defaultActiveKey="0">
        <Card className={screen ? classes.fullSize : null}>
          <CardHeader title="Jury Assesment List">
            <CardHeaderToolbar>
              <Accordion.Toggle as={Button} className="feather icon-minus" size="small" eventKey="0">
                <SVG width={15} src={toAbsoluteUrl("/media/svg/icons/Navigation/Minus.svg")} />
              </Accordion.Toggle>
              <Button type="button" className="feather icon-maximize" size="small" onClick={handleScreen}>
                <SVG width={15} src={toAbsoluteUrl("/media/svg/icons/Design/Position.svg")} />
              </Button>
            </CardHeaderToolbar>
          </CardHeader>
          <Accordion.Collapse eventKey="0">
            <CardBody>
            <DataTable 
              data={products}
              columns={columns}
              buttonCap= "Lihat"
              onAction={onClickAction}
            />
            </CardBody>
          </Accordion.Collapse>
        </Card>
      </Accordion>
      <Accordion defaultActiveKey="1">
        <Card className={screen2 ? classes.fullSize : null}>
          <CardHeader title="Average Value Per Pitch Deck">
            <CardHeaderToolbar>
              <Accordion.Toggle as={Button} className="feather icon-minus" size="small" eventKey="1">
                <SVG width={15} src={toAbsoluteUrl("/media/svg/icons/Navigation/Minus.svg")} />
              </Accordion.Toggle>
              <Button type="button" className="feather icon-maximize" size="small" onClick={handleScreen2}>
                <SVG width={15} src={toAbsoluteUrl("/media/svg/icons/Design/Position.svg")} />
              </Button>
            </CardHeaderToolbar>
          </CardHeader>
          <Accordion.Collapse eventKey="1">
            <CardBody>
            <DataTable 
              data={products2}
              columns={columns2}
            />
            </CardBody>
          </Accordion.Collapse>
        </Card>
      </Accordion>
    </>
  )
}