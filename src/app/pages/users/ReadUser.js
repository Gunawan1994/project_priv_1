/* eslint-disable no-script-url,jsx-a11y/anchor-is-valid */
import React, {useState, useEffect} from "react";
import { Form, Container, Row, Col, Button } from "react-bootstrap";
import {
  Card,
  CardBody,
  CardHeader
} from "../../../_metronic/_partials/controls";
import { makeStyles} from '@material-ui/core';
import Image from 'react-bootstrap/Image'
import { useHistory } from "react-router-dom";
import { useLocation } from "react-router-dom";
import { useQuery} from '@apollo/client';
import { gql } from "@apollo/client";
import DataTable from "react-data-table-component";
import Figure from 'react-bootstrap/Figure';
import { useForm, Controller } from "react-hook-form";
import Select from "react-select";
import { useMutation } from "@apollo/client";

const useStyles = makeStyles(() => ({
  bodyform: {
    marginLeft: 150
  },
  btn: {
    marginRight: 15,
    borderColor: 0,
  }
}))
export function ReadUser({ className }) {
  const { control, handleSubmit } = useForm();
  const location = useLocation();
  const [dataTable, setDataTable] = useState([]);
  const classes = useStyles();
  const [iduser, setIdUser] = useState()
  let history = useHistory();
  useEffect(() => {
    try {
        setIdUser(location.state.detail)
    } catch (error) {
        history.push("/users/listUser")
    }
}, [location]);

  const GET_USER_ONE = gql`
    query Users($iduser: bigint!) {
      users(where: {id: {_eq: $iduser}}) {
        id
        fullname
        email
        level
        join_date
        username
        email_ver
        banned
        user_photo
        tempat_lhr
        tgl_lhr
        tlp
        e_tlp
        last_edu
        address
        instance
      }
    }
  `;

  let id = iduser
  const { loading, error, data } = useQuery(GET_USER_ONE, {
    variables: { iduser },
  });

useEffect(() => {
  if(data !== undefined) {
        setDataTable(data.users)
  }

})

  const access = [
    {value: '0', label: 'Un-verified'},
    {value: '1', label: 'Admin'},
    {value: '2', label: 'Juri'},
    {value: '3', label: 'Peserta'},
  ]
  const banned = [
    {value: '0', label: 'Active'},
    {value: '1', label: 'Banned'},
  ]
  const emailver = [
    {value: '0', label: 'Un-Verified'},
    {value: '1', label: 'Verified'},
  ]

  const UPDATE_USER = gql`
    mutation UpdateUser($id: bigint!, $email_ver: Int!, $level: bigint!, $banned: Int! ) {

    update_users(where: {id: {_eq: $id}}, _set: {email_ver: $email_ver, level: $level, banned: $banned }) {
        affected_rows
        returning {
            id
        }
        }
    }
    `;
  const person = new Object()
  const [stateUser, setNewfirstName] = useState()
  const [updateUser, { datax }] = useMutation(UPDATE_USER);
  const onSubmit = datax => {
    let id = iduser
    let email_ver = datax.email_ver.value
    let level = datax.level.value
    let banned = datax.banned.value
    updateUser({ variables: { id, email_ver, level, banned } });
    history.push("/users/listUser")
  }
  
  return (
    <>
    <div>
    {dataTable.map((postDetail, index) => {
      person.email_ver = postDetail.email_ver
      person.level = postDetail.level
      person.banned = postDetail.banned
      return (
      <Card>
        <CardBody>
          <Container>
            <h3>DETAIL USER</h3>
            <hr/>
            <Row>
              <Col xs="6">
                <Form.Group as={Row} controlId="formPlaintextEmail">
                  <Form.Label column sm="2">
                  Fullname:
                  </Form.Label>
                  <Col sm="10">
                    <Form.Control plaintext readOnly defaultValue={postDetail.fullname} />
                  </Col>
                </Form.Group>
              </Col>
              <Col xs="6">
                <Form.Group as={Row} controlId="formPlaintextEmail">
                  <Form.Label column sm="2">
                  Username:
                  </Form.Label>
                  <Col sm="10">
                    <Form.Control plaintext readOnly defaultValue={postDetail.username} />
                  </Col>
                </Form.Group>
              </Col>
            </Row>
            <Row>
              <Col xs="6">
                <Form.Group as={Row} controlId="formPlaintextEmail">
                  <Form.Label column sm="2">
                  Email :
                  </Form.Label>
                  <Col sm="10">
                    <Form.Control plaintext readOnly defaultValue={postDetail.email} />
                  </Col>
                </Form.Group>
              </Col>
              <Col xs="6">
              <form onSubmit={handleSubmit(onSubmit)}>
                <Form.Group as={Row} controlId="formPlaintextEmail">
                  <Form.Label column sm="2">
                  Verifikasi Email:
                  </Form.Label>
                  <Col sm="10">
                  <Controller
                      as={<input type="number" className="form-control border-thick" id="email_ver" />}
                      name="email_ver"
                      as={<Select />}
                      options={emailver}
                      control={control}
                      defaultValue={
                        emailver[postDetail.email_ver]
                      }
                      rules={{ required: true }}
                      onChange={e => setNewfirstName(e.target.value)}
                  />
                  </Col>
                </Form.Group>
                </form>
              </Col>
            </Row>
            <Row>
              <Col xs="6">
              <form onSubmit={handleSubmit(onSubmit)}>
                <Form.Group as={Row} controlId="formPlaintextEmail">
                  <Form.Label column sm="2">
                  Level Access :
                  </Form.Label>
                  <Col sm="10">
                  <Controller
                      as={<input type="number" className="form-control border-thick" id="level" />}
                      name="level"
                      as={<Select />}
                      options={access}
                      control={control}
                      defaultValue={
                        access[postDetail.level]
                      }
                      rules={{ required: true }}
                  />
                  </Col>
                </Form.Group>
                </form>
              </Col>
              <Col xs="6">
              <form onSubmit={handleSubmit(onSubmit)}>
                <Form.Group as={Row} controlId="formPlaintextEmail">
                  <Form.Label column sm="2">
                  Status Akun:
                  </Form.Label>
                  <Col sm="10">
                  <Controller
                      as={<input type="number" className="form-control border-thick" id="banned" />}
                      name="banned"
                      as={<Select />}
                      options={banned}
                      control={control}
                      defaultValue={
                        banned[postDetail.banned]
                      }
                      rules={{ required: true }}
                  />
                  </Col>
                </Form.Group>
                </form>
              </Col>
            </Row>
            <h3>Contact Info & Bio</h3>
            <hr />
            <Form.Row>
                    <Col md={{ span: 6 }}>
                <Form.Group as={Row} controlId="formPlaintextEmail">
                  <Form.Label column sm="2">
                  TTL
                  </Form.Label>
                  <Col sm="10">
                    <Form.Control plaintext readOnly defaultValue={postDetail.tempat_lhr +", "+ postDetail.tgl_lhr} />
                  </Col>
                </Form.Group>
                <Form.Group as={Row} controlId="formPlaintextEmail">
                  <Form.Label column sm="2">
                  Contact Number
                  </Form.Label>
                  <Col sm="10">
                    <Form.Control plaintext readOnly defaultValue={postDetail.tlp} />
                  </Col>
                </Form.Group>
                <Form.Group as={Row} controlId="formPlaintextEmail">
                  <Form.Label column sm="2">
                  Emergency Contact Number
                  </Form.Label>
                  <Col sm="10">
                    <Form.Control plaintext readOnly defaultValue={postDetail.e_tlp} />
                  </Col>
                </Form.Group>
                <Form.Group as={Row} controlId="formPlaintextEmail">
                  <Form.Label column sm="2">
                  Last Education
                  </Form.Label>
                  <Col sm="10">
                    <Form.Control plaintext readOnly defaultValue={postDetail.last_edu} />
                  </Col>
                </Form.Group>
                <Form.Group as={Row} controlId="formPlaintextEmail">
                  <Form.Label column sm="2">
                  Agency
                  </Form.Label>
                  <Col sm="10">
                    <Form.Control plaintext readOnly defaultValue={postDetail.instance} />
                  </Col>
                </Form.Group>
                <Form.Group as={Row} controlId="formPlaintextEmail">
                  <Form.Label column sm="2">
                  Address
                  </Form.Label>
                  <Col sm="10">
                    <Form.Control plaintext readOnly defaultValue={postDetail.address} />
                  </Col>
                </Form.Group>
                    </Col>
                    <Col sm="1">User Photo</Col>
                    <Col xs={6} md={4}>
                    
                      <Figure>
                        <Figure.Image
                            width={300}
                            height={150}
                            src={`http://localhost:4500/${postDetail.user_photo+ ".jpg"}`}
                        />
                        </Figure>
                    </Col>
                </Form.Row>
            <hr />
            <div className="form-actions" >
            <Button variant='warning' className={classes.btn}>Back</Button>
            <Button variant='success' className={classes.btn} onClick={handleSubmit(onSubmit)} >Update</Button>
          </div>
          </Container>
        </CardBody>
      </Card>
      )
    })}
          <Button variant='dark' className={classes.btn}>Reset Password</Button>
      </div>
    </>
  );
}
