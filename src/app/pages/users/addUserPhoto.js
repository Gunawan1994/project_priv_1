/* eslint-disable no-script-url,jsx-a11y/anchor-is-valid */
import React, {useState, useEffect } from "react";
import { Dropdown } from "react-bootstrap";
import Dropzone from "react-dropzone";
import { useForm, Controller } from "react-hook-form";
import {
    Card,
    CardBody,
    CardHeader
  } from "../../../_metronic/_partials/controls";
import "./styles.css";
import { Form, Col, Row, Button} from "react-bootstrap";
import { makeStyles} from '@material-ui/core';
import Figure from 'react-bootstrap/Figure';
import { useLocation } from "react-router-dom";
import { useMutation } from "@apollo/client";
import { gql } from "apollo-boost";
import { useHistory } from "react-router-dom";
import FileUpload from './upload/fileupload';

export function addUserPhoto({ className }) {
    const location = useLocation();
    const [iduser, setIdUser] = useState()
    const [userPhoto, setUserPhoto] = useState()
    const [userKtp, setUserKtp] = useState()
    let history = useHistory();
    useEffect(() => {
        try {
            setIdUser(location.state.detail)
        } catch (error) {
            history.push("/users/addUser")
        }
    }, [location]);
    const thumb = {
        display: "inline-flex",
        width: 100,
        height: 100,
      };
    const img = {
        display: "block",
        width: "auto",
        height: "100%"
      };
    const useStyles = makeStyles(() => ({
        bodyform: {
          marginLeft: 150
        },
        btn: {
          marginRight: 15,
          borderColor: 0,
        }
      }))
    const [files, setFiles] = useState([]);
    
    const [filesktp, setFilesKtp] = useState([]);
    const handleDrop = acceptedFiles =>
    setFiles(
        acceptedFiles.map((file, key) =>
          Object.assign(file, {
            preview: URL.createObjectURL(file)
          })
        )
      );

    const handleDropx = acceptedFilesx =>
    setFilesKtp(
        acceptedFilesx.map((file, key) =>
          Object.assign(file, {
            preview: URL.createObjectURL(file)
          })
        )
      );
    const classes = useStyles();

    const UPDATE_USER = gql`
        mutation UpdateUser($id: bigint!, $user_photo: String!, $user_ktp: String! ) {

        update_users(where: {id: {_eq: $id}}, _set: {user_photo: $user_photo, user_ktp: $user_ktp}) {
            affected_rows
            returning {
                id
            }
            }
        }
    `;
    const [updateUser, { loading, error, data }] = useMutation(UPDATE_USER);

    const onSubmit = () => {
        let img = ""
        let ktp = ""
        files.map((file, key) => {
            img = file.path
            // untuk upload image
            const formData = new FormData();
            formData.append('file', files[0], iduser + "_" + file.path + ".jpg")
            fetch("http://localhost:4500/upload", {
                method: "POST",
                body: formData
              })
        },[])

        filesktp.map((file, key) => {
            ktp = file.path
            // untuk upload image
            const formData = new FormData();
            formData.append('file', filesktp[0], iduser + "_" + file.path + ".jpg")
            fetch("http://localhost:4500/upload", {
                method: "POST",
                body: formData
              })
        },[])
        let id = iduser
        let user_photo  = iduser + "_" + img
        let user_ktp    = iduser + "_" + ktp
        updateUser({ variables: { id, user_photo, user_ktp } });
        history.push("/users/listUser")
    }
  return (
    <>
        <Card>
            <CardBody>
                <Form.Row>
                    <Form.Group as={Col}>
                        <h3>UPLOAD PHOTO PROFILE USER</h3>
                            <Dropzone 
                                onDrop={handleDrop}
                                accept="image/*"
                                minSize={1024}
                                maxSize={3072000}
                            >
                        {({
                            getRootProps,
                            getInputProps,
                            isDragActive,
                            isDragAccept,
                            isDragReject
                            }) => {
                        const additionalClass = isDragAccept
                            ? "accept"
                            : isDragReject
                            ? "reject"
                            : "";

                        return (
                            <div
                            {...getRootProps({
                                className: `dropzone ${additionalClass}`
                            })}
                            >
                            <input {...getInputProps()} />
                            <span>{isDragActive ? "📂" : "📁"}</span>
                            <p>Drop files here to upload</p>
                            </div>
                        );
                        }}
                    </Dropzone>
                        <div>
                            {files.map(file => (
                                <div key={file.name}>
                                <Figure>
                                <Figure.Image
                                    width={300}
                                    height={150}
                                    src={file.preview}
                                />
                                <Figure.Caption>
                                    {file.name}
                                </Figure.Caption>
                                </Figure>
                                </div>
                            ))}
                        </div>
                </Form.Group>
                <Form.Group as={Col}>
                    <h3>UPLOAD PHOTO KTP USER</h3>
                        <Dropzone
                            onDrop={handleDropx}
                            accept="image/*"
                            minSize={1024}
                            maxSize={3072000}
                        >
                            {({
                            getRootProps,
                            getInputProps,
                            isDragActive,
                            isDragAccept,
                            isDragReject
                            }) => {
                            const additionalClass = isDragAccept
                                ? "accept"
                                : isDragReject
                                ? "reject"
                                : "";

                        return (
                            <div
                            {...getRootProps({
                                className: `dropzone ${additionalClass}`
                            })}
                            >
                            <input {...getInputProps()} />
                            <span>{isDragActive ? "📂" : "📁"}</span>
                            <p>Drop files here to upload</p>
                            </div>
                        );
                        }}
                    </Dropzone>
                    <div>
                        {filesktp.map(file => (
                            <div key={file.name}>
                                <Figure>
                                <Figure.Image
                                    width={300}
                                    height={150}
                                    src={file.preview}
                                />
                                <Figure.Caption>
                                    {file.name}
                                </Figure.Caption>
                                </Figure>
                                </div>
                        ))}
                    </div>
                        </Form.Group>
                </Form.Row>
                    <Button
                    variant='success' 
                    onClick={onSubmit}
                    >Next</Button>
            </CardBody>
        </Card>
    </>
  );
}
