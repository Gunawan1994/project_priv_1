import React, { useState } from "react";
import { CKEditor } from '@ckeditor/ckeditor5-react';
import ClassicEditor from '@ckeditor/ckeditor5-build-classic';
import {
  Card,
  CardBody,
  CardHeader
} from "../../../_metronic/_partials/controls";
import { makeStyles, Divider } from '@material-ui/core';
import { toAbsoluteUrl } from "../../../_metronic/_helpers";
import SVG from "react-inlinesvg";
import { Button, Form, Image } from "react-bootstrap";

const useStyles = makeStyles(() => ({
  icon: {
    marginRight: 10,
  }
}))

export function KategoriPenelitianCreate(){
  const classes = useStyles();
  const [file, setFile] = useState(toAbsoluteUrl("/media/users/300_1.jpg"))
  const handleChangeFile = (event) => {
    setFile(URL.createObjectURL(event.target.files[0]))
  }

  return (
    <>
      <Card>
        <CardHeader 
          title="Tentang Kategori Penelitian"
          icon={
            <SVG 
              className={classes.icon}
              src={toAbsoluteUrl("/media/svg/icons/General/Clipboard.svg")} />
          } />
        <CardBody>
          <Form>
            <Form.Group>
              <Form.Label>Nama Kategori Penelitian</Form.Label>
              <Form.Control placeholder="Nama Kategori Penelitian" />
            </Form.Group>
            <Form.Group>
              <Form.Label>
                Detail Kategori Penelitian
              </Form.Label>
              <CKEditor
                editor={ ClassicEditor }
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
            </Form.Group>
            <Form.Group>
              <Form.Label>
                <h3>Logo Kategori Penelitian</h3>
              </Form.Label>
              <Divider />
              <Form.File
                className="py-4" 
                name="dokumen"
                onChange={handleChangeFile}
                label="*Format jpeg/jpg/png kurang dari 1 MB" />
              <Image className="py-4" width="400" src={file} rounded />
            </Form.Group>

            <Divider />
            <div className="text-right py-4">
              <span className="pr-4">
                <Button variant="danger">Batalkan</Button>
              </span>
              <span className="pr-4">
                <Button variant="success">Buat</Button>
              </span>
            </div>
          </Form>
        </CardBody>
      </Card>
    </>
  )
}