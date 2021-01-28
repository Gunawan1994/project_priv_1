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
  id: "1",
  webinarName: "Nama Webinar",
  startDate: "2021/02/30",
  endDate: "2021/03/30",
  form: "ini Formnya",
  particpant: "200",
}, {
  id: "2",
  webinarName: "Nama Webinar",
  startDate: "2021/02/30",
  endDate: "2021/03/30",
  form: "ini Formnya",
  particpant: "200",
}]

export function WebinarList() {

  const [screen, setScreen] = useState(false);
  const handleScreen = () => {
    setScreen(!screen)
  };
  const classes = useStyles();

  const onClickAction = (data)=>{
    console.log(data)
  }

  const columns = [{
    data: 'id',
    title: 'ID',
    sortable: true
  }, {
    data: 'webinarName',
    title: 'Nama Webinar',
    sortable: true
  }, {
    data: 'startDate',
    title: 'Waktu Mulai',
    sortable: true,
  }, {
    data: 'endDate',
    title: 'Waktu Berakhir',
    sortable: true
  }, {
    data: 'form',
    title: 'Form Registrasi',
    sortable: true
  }, {
    data: 'particpant',
    title: 'Peserta Terdaftar',
    sortable: true
  }, {
    data: null,
    title: 'action',
   

  }];

  return (
    <>
      <Accordion defaultActiveKey="0">
        <Card className={screen ? classes.fullSize : null}>
          <CardHeader title="Webinar List">
            <CardHeaderToolbar>
              <Accordion.Toggle as={Button} className="feather icon-minus" size="small" eventKey="0">
                <SVG width={15} src={toAbsoluteUrl("/media/svg/icons/Navigation/Minus.svg")} />
              </Accordion.Toggle>
              <Button type="button" className="feather icon-rotate" size="small">
                <SVG width={15} src={toAbsoluteUrl("/media/svg/icons/General/Update.svg")} />
              </Button>
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
              buttonCap= "Ubah"
              onAction={onClickAction}
            />
            </CardBody>
          </Accordion.Collapse>
        </Card>
      </Accordion>

    </>
  )
}