import React, { useState } from "react";
import { CKEditor } from '@ckeditor/ckeditor5-react';
import ClassicEditor from '@ckeditor/ckeditor5-build-classic';
import {
    Card,
    CardBody,
    CardFooter
} from "../../_metronic/_partials/controls";
import { Button } from '@material-ui/core';
import { Col, Row, Container } from "react-bootstrap";





export function InfoPage() {
    const [fileName, setFileName] = useState('Tidak Ada File')
    const fileUpload = (e) => {
        console.log(e.target.files[0].name)
        setFileName(e.target.files[0].name)
    }

    return (
        <>
            <Card>
                <CardBody>
                    <Container>
                        <Row className="mb-10">
                            <Col>
                                <h3>Last Update</h3>
                                <p>2021-09-04 14:37:56</p>
                            </Col>
                            <Col>
                                <h3>File Lampiran</h3>
                                <p>{fileName}</p>
                                <Button
                                    variant="contained"
                                    component="label"
                                >
                                    Upload File
                                    <input
                                        type="file"
                                        hidden
                                        onChange={fileUpload}
                                    />
                                </Button>
                            </Col>
                        </Row>
                        <Row>
                            <Col>
                            <h3 className="mb-6">
                                Content Page
                            </h3>
                            <CKEditor
                                editor={ClassicEditor}                                
                                data="<p>Konten diisi disini </p>"
                                onChange={(event, editor) => {
                                    const data = editor.getData();
                                    console.log({ event, editor, data });
                                }}
                                 
                                />
                                
                            </Col>
                            
                        </Row>
                    </Container>
                </CardBody>
                <CardFooter>
                    <Button variant="contained" color="primary">Update</Button>
                </CardFooter>
            </Card>
        </>
    )
}