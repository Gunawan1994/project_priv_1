import React, { useState } from "react";
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

export function DokumentasiCreate(){
  const classes = useStyles();
  const [file, setFile] = useState(toAbsoluteUrl("/media/users/300_1.jpg"))
  const handleChangeFile = (event) => {
    setFile(URL.createObjectURL(event.target.files[0]))
  }

  return (
    <>
      <Card>
        <CardHeader 
          title="Tentang Dokumentasi"
          icon={
            <SVG 
              className={classes.icon}
              src={toAbsoluteUrl("/media/svg/icons/General/Clipboard.svg")} />
          } />
        <CardBody>
          <Form>
            <Form.Group>
              <Form.Label>Nama Dokumentasi</Form.Label>
              <Form.Control placeholder="Nama Dokumentasi" />
            </Form.Group>
            <Form.Group>
              <Form.Label>
                Detail Dokumentasi
              </Form.Label>
              <Form.Control as="textarea" rows="5" placeholder="Nama Dokumentasi" />
            </Form.Group>
            <Form.Group>
              <Form.Label>
                <h3>Foto Dokumentasi</h3>
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