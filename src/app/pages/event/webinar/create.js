import React from 'react';
import {
  Card,
  CardBody,
  CardFooter
} from "../../../../_metronic/_partials/controls";
import {Form, Col, Row} from 'react-bootstrap'
import {  Button } from '@material-ui/core';
import { toAbsoluteUrl } from "../../../../_metronic/_helpers";


export function CreateWebinar() {
  return (
    <>
        <Card >
            <CardBody>
                {/* <h3>Create New Webinar</h3> */}
                <Form>
                    <Form.Group as={Row}>
                        <Form.Label column sm="2">
                            Nama Webinar
                        </Form.Label>
                        <Col sm="10">
                        <Form.Control type="input"/>
                        </Col>
                    </Form.Group>
                    <Form.Group as={Row}>
                        <Form.Label column sm="2">
                            Deskripsi Webinar
                        </Form.Label>
                        <Col sm="10">
                        <Form.Control as="textarea"/>
                        </Col>
                    </Form.Group>
                    <Form.Group as={Row}>
                        <Form.Label column sm="2">
                           Tanggal Mulai Registrasi
                        </Form.Label>
                        <Col sm="10">
                        <Form.Control type="date"/>
                        </Col>
                    </Form.Group>
                    <Form.Group as={Row}>
                        <Form.Label column sm="2">
                           Tanggal Berakhir Registrasi
                        </Form.Label>
                        <Col sm="10">
                        <Form.Control type="date"/>
                        </Col>
                    </Form.Group>
                    <Form.Group as={Row}>
                        <Form.Label column sm="2">
                           Banner Webinar
                        </Form.Label>
                        <Col sm="10">
                            <Form.Control type="file"></Form.Control>
                        {/* <Button className="btn btn-primary mr-2 mb-5">Browse...</Button> */}
                        <br/>
                        <img src={toAbsoluteUrl("/media/image970x250.png")} alt="example banner"/>
                        </Col>
                    </Form.Group>
                </Form>
            </CardBody>
            <CardFooter>
                <Button className="btn btn-success">
                    Buat Sekarang
                </Button>
            </CardFooter>
        </Card>

    </>
  )
}