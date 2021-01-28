import React, { useState } from "react";
import {
  Card,
  CardBody,
  CardHeader
} from "../../../_metronic/_partials/controls";
import { makeStyles, Divider } from '@material-ui/core';
import { toAbsoluteUrl } from "../../../_metronic/_helpers";
import SVG from "react-inlinesvg";
import { Button, Form, Image, Col, Row } from "react-bootstrap";
import ReactPlayer from 'react-player'

const useStyles = makeStyles(() => ({
  icon: {
    marginRight: 10,
  },
  video: {
    position: 'absolute', 
    top: 0
  }
}))

export function VideoCreate(){
  const classes = useStyles();
  const [file, setFile] = useState(toAbsoluteUrl("/media/users/300_1.jpg"))
  const [fileVideo, setFileVideo] = useState('')
  const handleChangeFile = (event) => {
    setFile(URL.createObjectURL(event.target.files[0]))
  }
  const handleChangeFileVideo = (event) => {
    setFileVideo(URL.createObjectURL(event.target.files[0]))
  }

  return (
    <>
      <Card>
        <CardHeader 
          title="Tentang Video"
          icon={
            <SVG 
              className={classes.icon}
              src={toAbsoluteUrl("/media/svg/icons/General/Clipboard.svg")} />
          } />
        <CardBody>
          <Form>
            <Form.Group>
              <Form.Label>Judul</Form.Label>
              <Form.Control placeholder="Judul" />
            </Form.Group>
            <Form.Group>
              <Form.Label>
                Keterangan
              </Form.Label>
              <Form.Control as="textarea" rows="5" placeholder="Keterangan" />
            </Form.Group>
            <Form.Label>
              <h3>Cover Video</h3>
            </Form.Label>
            <Divider />
            <Form.Group as={Row}>
              <Col sm={6}>
                <Form.File
                  className="py-4" 
                  name="dokumen"
                  onChange={handleChangeFile}
                  label="*Format jpeg/jpg/png kurang dari 1 MB" />
                <Image className="py-4" width="400" src={file} rounded />
              </Col>
              <Col sm={6}>
                <Form.File
                  className="py-4" 
                  name="dokumen"
                  onChange={handleChangeFileVideo}
                  label="*Format Webm kurang dari 15 MB" />
                  <div id="plyr-video-player" class="embed-responsive embed-responsive-item embed-responsive-16by9">
                  <ReactPlayer
                    className={classes.video}
                    playing
                    width='75%'
                    url={fileVideo}
                  />
                </div>
              </Col>
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