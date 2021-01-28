import React from "react";
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
import { Button, Form } from "react-bootstrap";
import { useForm } from "react-hook-form";
import * as yup from 'yup';

const useStyles = makeStyles(() => ({
  icon: {
    marginRight: 10
  },
  fontRed: {
    color: 'red'
  }
}))

const schema = yup.object().shape({
    dokumen: yup
      .mixed()
      .required("File tidak boleh kosong !")
      .test("fileSize", "Ukuran tidak boleh lebih dari 5 MB !", (value) => {
        return value && value[0].size <= 5000000;
      })
      .test("type", "Tipe file hanya boleh PDF !", (value) => {
        return value && value[0].type === "application/pdf";
      }),
  });

export function SubKategoriPenelitianCreate(){
  const classes = useStyles();
  const { register, handleSubmit, errors } = useForm({
    validationSchema: schema,
  });
  const onSubmit = (data) => {
    alert(JSON.stringify(data));
  };

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
          <Form onSubmit={handleSubmit(onSubmit)}>
            <Form.Group>
              <Form.Label>Nama Sub Kategori Penelitian</Form.Label>
              <Form.Control as="select">
                <option>Pilih Kategorinya</option>
                <option>Satu</option>
                <option>Dua</option>
                <option>Tiga</option>
              </Form.Control>
            </Form.Group>
            <Form.Group>
              <Form.Label>Nama Sub Kategori Penelitian</Form.Label>
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
                <h3>File Sub Kategori Penelitian</h3>
              </Form.Label>
              <Divider />
              <Form.File 
                className="py-4" 
                name="dokumen"
                ref={register}
                label="*Format PDF harus kurang dari 5 MB"
                accept="application/pdf" />
                {errors.dokumen && <p className={classes.fontRed}>{errors.dokumen.message}</p>}
            </Form.Group>

            <Divider />
            <div className="text-right py-4">
              <span className="pr-4">
                <Button variant="danger">Batal</Button>
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