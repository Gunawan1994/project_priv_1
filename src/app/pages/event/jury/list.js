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
  juryName: "Handoko",
  email:"handoko_example@hackmind.com",
  kontak:"08219203****"
}, {
  id: "2",
  juryName: "Handini",
  email:"handini_example@hackmind.com",
  kontak:"08219203****"
}]

export function JuryList() {

  const [screen, setScreen] = useState(false);
  const handleScreen = () => {
    setScreen(!screen)
  };
  const classes = useStyles();

  const columns = [{
    data: 'id',
    title: 'ID',
    sortable: true
  }, {
    data: 'juryName',
    title: 'Nama Juri',
    sortable: true
  }, {
    data: 'email',
    title: 'Email',
    sortable: true,
  }, {
    data: 'kontak',
    title: 'Kontak',
    sortable: true
  },{
    data:null,
    title:'Action',
    
  }];

  const onClickAction = (data)=>{
    console.log(data)
  }


  return (
    <>
      <Accordion defaultActiveKey="0">
        <Card className={screen ? classes.fullSize : null}>
          <CardHeader title="List Of Teams">
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
              buttonCap= "Lihat"
              onAction={onClickAction}
            />
            </CardBody>
          </Accordion.Collapse>
        </Card>
      </Accordion>

    </>
  )
}