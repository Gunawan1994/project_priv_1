/* eslint-disable no-script-url,jsx-a11y/anchor-is-valid */
import React, { useRef, useState, useEffect } from "react";
import Tabs from 'react-bootstrap/Tabs';
import {
  Card,
  CardBody,
  CardHeader
} from "../../../_metronic/_partials/controls";
import { makeStyles} from '@material-ui/core';
import { Form, Col, Row, Button, Container} from "react-bootstrap";
import Tab from 'react-bootstrap/Tab';
import Editor from "./Editor";
import { gql } from "apollo-boost";
import { useQuery} from '@apollo/client';
import { useForm, Controller } from "react-hook-form";

import ReactQuill from 'react-quill';
import 'react-quill/dist/quill.snow.css';
export function ListTermWidget({ className }) {
  // const { control, handleSubmit } = useForm();
  // const [dataTable, setDataTable] = useState([]);
  const useStyles = makeStyles(() => ({
    bodyform: {
      marginLeft: 150
    },
    btn: {
      marginRight: 15,
      borderColor: 0,
    }
  }))
  const classes = useStyles();
  const [value, setValue] = useState('');

//   const GET_TERMS = gql`
//   query {
//     faq {
//       nama_faq
//       isi
//       add_by_id
//       last_update
//       last_update_by
//       status
//     }
//   }
// `;

//   const onSubmit = datax => {}

//   const { loading, error, data } = useQuery(GET_TERMS)

//   useEffect(() => {
//     if(data !== undefined) {
//       setDataTable(data.faq)
//     }
//   })

//   const CREATE_POST = gql`
//   mutation CreatePost($nama_faq: String!, $isi: String!, $add_by_id: bigint!, $last_update: String!,
//     $last_update_by: bigint!, $status: Int! ) {
//     insert_ann_email(objects: { nama_faq: $nama_faq, isi: $isi, add_by_id: $add_by_id, last_update: $last_update,
//       last_update_by: $last_update_by, status: $status }) {
//       affected_rows
//     }
//   }
// `;

  return (
    <>
      <Card>
        <CardBody>
          <Tabs defaultActiveKey="registration" id="uncontrolled-tab-example">
            <Tab eventKey="registration" title="Registration">
              <div style={{padding: '15px'}}></div>
              <Row className="justify-content-center">
                <Col>
                  <h3>Type of terms</h3>
                  <Form.Label>Registration</Form.Label>
                </Col>
                <Col >
                  <h3>Last Update</h3>
                  <Form.Label>2020-03-23 19:33:42</Form.Label>
                </Col>
                <Col md={'auto'}>
                  <h3>Display Status</h3>
                  <Form.Label>Show</Form.Label>
                </Col>
              </Row>
              <div style={{padding: '15px'}}></div>
              <h3>Contents of terms</h3>
              <Form.Control as="textarea" rows={3} defaultValue="test test test test test test test test" rows={20} />
              <div style={{padding: '10px'}}></div>
              <div className="form-actions" >
                <Button variant='warning' className={classes.btn}>Delete</Button>
                <Button variant='success' className={classes.btn}>Update</Button>
              </div>
            </Tab>
              <Tab eventKey="pitch" title="Pitch Deck">
                <div style={{padding: '15px'}}></div>
                <h3>Contents of terms</h3>
                  <Form.Control as="textarea" rows={3} defaultValue="test test test test test test test test" rows={20} />
                <div style={{padding: '10px'}}></div>
                <div className="form-actions" >
                  <Button variant='warning' className={classes.btn}>Delete</Button>
                  <Button variant='success' className={classes.btn}>Update</Button>
                </div>
              </Tab>
            <Tab eventKey="faq" title="FAQ">
            <div style={{padding: '15px'}}></div>
              <h3 >Contents of terms</h3>
              <div style={{padding: '10px'}}></div>
                <Form.Label>ini test aja</Form.Label>
            </Tab>
            <Tab eventKey="create" title="Create">
            <Form>
              <Form.Group controlId="exampleForm.ControlInput1">
                <Row>
                  <Col md={4}>
                    <div style={{padding: '15px'}}></div>
                    <h3>Terms for</h3>
                    <Form.Control size="lg" type="text" placeholder="type something.."/>
                  </Col>
                </Row>
                <div style={{padding: '10px'}}></div>
                <h3>Contents of terms</h3>
                <Editor />
                <hr />
                  <Button
                    variant='warning'
                    className={classes.btn}
                  >Draft</Button>
                  <Button
                    variant='success'
                    className={classes.btn}
                    // onClick={handleSubmit(onSubmit)} 
                  >Save</Button>
              </Form.Group>
            </Form>
            </Tab>
          </Tabs>
        </CardBody>
      </Card>
    </>
  );
}
