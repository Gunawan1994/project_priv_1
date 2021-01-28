import React from "react";
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

export function Kontak(){
  const classes = useStyles();

  return (
    <>
      <Card>
        <CardHeader 
          title="Kontak"
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
                <Form.Control value="admin@riyanz.com" />
              </Col>
            </Form.Group>
            <Form.Group as={Row}>
              <Form.Label column sm={2}>
                No Telepon
              </Form.Label>
              <Col sm={10}>
                <Form.Control value="+62 812 3456 7890" />
              </Col>
            </Form.Group>
            <Form.Group as={Row}>
              <Form.Label column sm={2}>
                No Handphone / WhatsApp
              </Form.Label>
              <Col sm={10}>
                <Form.Control value="+62 812 3456 7890" />
              </Col>
            </Form.Group>
            <Form.Group as={Row}>
              <Form.Label column sm={2}>
                Alamat
              </Form.Label>
              <Col sm={10}>
                <Form.Control as="textarea" rows={5} value="Jakarta Pusat disebelah monas !" />
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