/* eslint-disable no-script-url,jsx-a11y/anchor-is-valid */
import React, {useState} from "react";
import { Dropdown } from "react-bootstrap";
import { makeStyles} from '@material-ui/core';
import { useForm, Controller } from "react-hook-form";
import {
    Card,
    CardBody,
    CardHeader
  } from "../../../_metronic/_partials/controls";
import { Form, Col, Row, Button} from "react-bootstrap";
import { useHistory } from "react-router-dom";
import Select from "react-select";
import { useMutation } from "@apollo/client";
import { gql } from "apollo-boost";

const useStyles = makeStyles(() => ({
bodyform: {
    marginLeft: 150
},
btn: {
    marginRight: 15,
    borderColor: 0,
}
}))

export function AddUser({ className }) {
    const { control, handleSubmit } = useForm();

    const CREATE_POST = gql`
        mutation CreatePost($username: String!, $password: String!, $fullname: String!, $email: String!,
        $tempat_lhr: String!, $tgl_lhr: timestamp!, $tlp: String!, $e_tlp: String!, $address: String!, 
        $instance: String!, $last_edu: String!, $level: bigint!, $join_date: timestamp!, $ann_email: Int!,
        $jenis_kelamin: String!, $peran: String!, $team_id: bigint!, $team_name: String!, $user_ktp: String!, 
        $user_photo: String! ) {

        insert_users(objects: { username: $username, password: $password, fullname: $fullname, email: $email,
            tempat_lhr: $tempat_lhr, tgl_lhr: $tgl_lhr, tlp: $tlp, e_tlp: $e_tlp, address: $address,
            instance: $instance, last_edu: $last_edu, level: $level, join_date: $join_date, ann_email: $ann_email,
            jenis_kelamin: $jenis_kelamin, peran: $peran, team_id: $team_id, team_name: $team_name, user_ktp: $user_ktp, 
            user_photo: $user_photo }) {
            affected_rows
            returning {
                id
              }
            }
        }
    `;
      
    const classes = useStyles();
    let history = useHistory();

    const [createPost, { loading, error, data }] = useMutation(CREATE_POST);
    const [id, setId] = useState()
    if(data !== undefined){
        console.log(data.insert_users.returning)
        data.insert_users.returning.map((link, key) => {
            history.push({
                pathname: '/users/addUserPhoto',
                state: { detail: link.id }
            });


        },[])
    }
    const onSubmit = data => {
        const datetime = new Date().toJSON().slice(0,10) 
        + " " + new Date(new Date()).toString().split(' ')[4];
    
        let username = data.username
        let password = data.password
        let fullname = data.fullname
        let email    = data.email
        let tempat_lhr = data.tempat_lhr
        let tgl_lhr = data.tgl_lhr
        let tlp = data.tlp
        let e_tlp = data.e_tlp
        let address = data.address
        let instance = data.instance
        let last_edu = data.last_edu
        let level = data.level.value
        let join_date = datetime
        let ann_email = 0
        let jenis_kelamin = ""
        let peran = ""
        let team_id = 0
        let team_name = ""
        let user_ktp = ""
        let user_photo = ""
        createPost({ variables: { username, password, fullname, email, tempat_lhr, tgl_lhr, tlp, e_tlp, address, instance,
            last_edu, level, join_date, ann_email, jenis_kelamin, peran, team_id, team_name, user_ktp ,
            user_photo } });
      }

    const access = [
        {value: '1', label: 'Admin'},
        {value: '2', label: 'Juri'},
        {value: '3', label: 'Peserta'}
    ]

    return (
        <>
        <Card>
            <CardBody>
                <h3>ACCESS</h3>
                <div style={{padding: '10px'}}></div>
                <form onSubmit={handleSubmit(onSubmit)}>
                    <Form.Row>
                        <Form.Group as={Col} controlId="formGridEmail">
                            <Form.Label size="lg">Username (for login)</Form.Label>
                            <Controller
                                as={<input type="text" className="form-control border-thick" id="username" />}
                                name="username"
                                control={control}
                                placeholder="Username"
                                defaultValue=""
                                rules={{ required: true }}
                            />
                        </Form.Group>
                        <Form.Group as={Col} controlId="formGridPassword">
                            <Form.Label>Password</Form.Label>
                            <Controller
                                as={<input type="text" className="form-control border-thick" id="password" />}
                                name="password"
                                control={control}
                                placeholder="Password"
                                defaultValue=""
                                rules={{ required: true }}
                            />
                        </Form.Group>
                    </Form.Row>
                    <Form.Row>
                        <Form.Group as={Col} controlId="formGridEmail">
                            <Form.Label size="lg">Email</Form.Label>
                            <Controller
                                as={<input type="text" className="form-control border-thick" id="email" />}
                                name="email"
                                control={control}
                                placeholder="Email"
                                defaultValue=""
                                rules={{ required: true }}
                            />
                        </Form.Group>
                        <Form.Group as={Col} controlId="formGridPassword">
                            <Form.Label>Level Access</Form.Label>
                            <Controller
                                as={<input type="number" className="form-control border-thick" id="level" />}
                                name="level"
                                as={<Select placeholder="Select level access" />}
                                options={access}
                                control={control}
                                defaultValue=""
                                rules={{ required: true }}
                            />
                        </Form.Group>
                    </Form.Row>
                    </form>
                <div style={{padding: '30px'}}></div>
                <h3>BIO</h3>
                <div style={{padding: '10px'}}></div>
                <form onSubmit={handleSubmit(onSubmit)}>
                <Form.Row>
                    <Form.Group as={Col} controlId="formGridCity">
                    <Form.Label>Fullname</Form.Label>
                    <Controller
                        as={<input type="text" className="form-control border-thick" id="fullname" />}
                        name="fullname"
                        control={control}
                        placeholder="Fullname"
                        defaultValue=""
                        rules={{ required: true }}
                    />
                    </Form.Group>
                    <Form.Group as={Col} controlId="formGridState">
                    <Form.Label>Telepon / Handphone</Form.Label>
                    <Controller
                        as={<input type="number" className="form-control border-thick" id="tlp" />}
                        name="tlp"
                        control={control}
                        placeholder="Telepon / Handphone"
                        defaultValue=""
                        rules={{ required: true }}
                    />
                    </Form.Group>
                    <Form.Group as={Col} controlId="formGridZip">
                    <Form.Label>Emergency Telpon / Handphone</Form.Label>
                    <Controller
                        as={<input type="number" className="form-control border-thick" id="e_tlp" />}
                        name="e_tlp"
                        control={control}
                        placeholder="Emergency Telpon / Handphone"
                        defaultValue=""
                        rules={{ required: true }}
                    />
                    </Form.Group>
                </Form.Row>
                <Form.Row>
                    <Col md={{ span: 6 }}>
                    <Form.Group controlId="formGridCity">
                    <Form.Label>Tempat Lahir</Form.Label>
                    <Controller
                        as={<input type="text" className="form-control border-thick" id="tempat_lhr" />}
                        name="tempat_lhr"
                        control={control}
                        placeholder="Tempat Lahir"
                        defaultValue=""
                        rules={{ required: true }}
                    />
                    </Form.Group>
                    <div style={{padding: '4px'}}></div>
                    <Form.Group controlId="formGridCity">
                    <Form.Label>Tanggal Lahir</Form.Label>
                    <Controller
                        as={<input type="date" className="form-control border-thick" id="tgl_lhr" />}
                        name="tgl_lhr"
                        control={control}
                        placeholder="Date of Birth"
                        defaultValue=""
                        rules={{ required: true }}
                    />
                    </Form.Group>
                    </Col>
                    <Col md={{ span: 6}}>
                    <Form.Label>Alamat Tempat Tinggal</Form.Label>
                    <Controller
                        as={                    <Form.Control 
                            as="textarea" 
                            placeholder="Alamat Tempat Tinggal"
                            rows={6}/>}
                            id="address"
                        name="address"
                        control={control}
                        defaultValue=""
                        rules={{ required: true }}
                    />
                    </Col>
                </Form.Row>
                <Form.Row>
                    <Form.Group as={Col}>
                        <Form.Label size="lg">Instansi user</Form.Label>
                        <Controller
                        as={                    <Form.Control 
                            as="textarea" 
                            placeholder="Instansi user"
                            rows={6}/>}
                            id="instance"
                        name="instance"
                        control={control}
                        defaultValue=""
                        rules={{ required: true }}
                        />
                    </Form.Group>
                    <Form.Group as={Col}>
                        <Form.Label>Pendidikan Terakhir</Form.Label>
                        <Controller
                        as={                    <Form.Control 
                            as="textarea" 
                            placeholder="Pendidikan Terakhir"
                            rows={6}/>}
                            id="last_edu"
                        name="last_edu"
                        control={control}
                        defaultValue=""
                        rules={{ required: true }}
                        />
                    </Form.Group>
                </Form.Row>
                </form>
                <hr />
                <Button
                    variant='success' 
                    className={classes.btn}
                    onClick={handleSubmit(onSubmit)}
                    >Next</Button>
            </CardBody>
        </Card>
        </>
    );
    }
