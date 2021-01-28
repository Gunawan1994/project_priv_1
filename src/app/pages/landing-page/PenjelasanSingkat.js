import React from "react";
import { CKEditor } from '@ckeditor/ckeditor5-react';
import ClassicEditor from '@ckeditor/ckeditor5-build-classic';
import {
  Card,
  CardBody,
  CardHeader
} from "../../../_metronic/_partials/controls";
import { makeStyles, Divider } from '@material-ui/core';
import { Button, ButtonToolbar, Form, Col, Row } from "react-bootstrap";
import ListIcon from '@material-ui/icons/Assignment';

const useStyles = makeStyles((theme) => ({
  icon: {
    marginRight: 10,
  }
}))

export function PenjelasanSingkat(){
  const classes = useStyles();

  return (
    <>
      <Card>
        <CardHeader 
          title="Penjelasan Singkat"
          icon={
            <ListIcon 
              className={classes.icon} />
          } />
        <CardBody>
          <Form>
            <Form.Group as={Row}>
              <Form.Label column sm={2}>
                Terakhir diperbarui
              </Form.Label>
              <Col sm={10}>
                <Form.Control
                  plaintext
                  readOnly
                  defaultValue="30-12-2020 12:34:56 by Riyan" />
              </Col>
            </Form.Group>
            <Form.Group as={Row}>
              <Form.Label column sm={2}>
                Detail Keterangan Singkat
              </Form.Label>
              <Col sm={10}>
                <CKEditor
                  editor={ ClassicEditor }
                  data="<p>Isi Contect tulis disini dan disini By Riyan</p>"
                  onReady={ editor => {
                    // You can store the "editor" and use when it is needed.
                    console.log( 'Editor is ready to use!', editor );
                  }}
                  onChange={ ( event, editor ) => {
                    const data = editor.getData();
                    console.log( { event, editor, data } );
                  }}
                  onBlur={ ( event, editor ) => {
                    console.log( 'Blur.', editor );
                  }}
                  onFocus={ ( event, editor ) => {
                    console.log( 'Focus.', editor );
                  }} />
              </Col>
            </Form.Group>

            <Divider />
            <ButtonToolbar className="py-4">
              <span className="pr-4">
                <Button variant="warning">Batal</Button>
              </span>
              <span className="pr-4">
                <Button variant="success">Perbarui</Button>
              </span>
            </ButtonToolbar>
          </Form>
        </CardBody>
      </Card>
    </>
  )
}