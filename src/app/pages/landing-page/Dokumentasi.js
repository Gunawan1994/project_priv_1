import React, { useState } from "react";
import {
  Card,
  CardBody,
  CardHeader
} from "../../../_metronic/_partials/controls";
import { makeStyles } from '@material-ui/core';
import Zoom from '@material-ui/core/Zoom';
import { Button, Col, Row, Container } from "react-bootstrap";
import BCard from "react-bootstrap/Card";
import ListIcon from '@material-ui/icons/Assignment';
import { toAbsoluteUrl } from "../../../_metronic/_helpers";

const useStyles = makeStyles((theme) => ({
  icon: {
    marginRight: 10
  },
  btnAdd: {
    margin: '15px 0' 
  },
  cardSize: {
    width: '75%'
  },
  cardTitle: { 
    marginBottom: 100, 
    color: "white", 
    fontWeight: "bold" 
  },
  cardOverlay: { 
    bottom: 50, 
    left: 20, 
    right: 20, 
    position: 'absolute' 
  }
}))

export function Dokumentasi(){
  const classes = useStyles();
  const [hover1, setHover1] = useState(true)
  const [hover2, setHover2] = useState(true)

  const toggleHover1 = () => {
    setHover1(!hover1)
  }  
  const toggleHover2 = () => {
    setHover2(!hover2)
  } 

  let hoverImg1;
  if (hover1) {
    hoverImg1 = {visibility: "hidden"}
  } else {
    hoverImg1 = {visibility: "visible",  backgroundColor: '#00000080'}
  }

  let hoverImg2;
  if (hover2) {
    hoverImg2 = {visibility: "hidden"}
  } else {
    hoverImg2 = {visibility: "visible",  backgroundColor: '#00000080'}
  }

  return (
    <>
      <Card>
        <CardHeader 
          title="List Dokumentasi"
          icon={
            <ListIcon 
              className={classes.icon} />
          }>
            <Button href="/landing-page/dokumentasi-create" className={classes.btnAdd} variant="success">Tambah</Button>
        </CardHeader>
        <CardBody>
          <Container>
            <p className="py-5">Arahkan cursor ke Cover untuk update atau delete. Jika melalui mobile device, cukup klik cover.</p>
            <Row>
            <Col md={6}>
                <BCard className={classes.cardSize} onMouseEnter={toggleHover1} onMouseLeave={toggleHover1}>
                  <BCard.Img
                    variant="bottom"
                    src={toAbsoluteUrl("/media/users/300_1.jpg")} alt="Card Image 1" />
                    <Zoom in={!hover1}>
                    <BCard.ImgOverlay className="text-center" style={ hoverImg1 }>
                      <div className={classes.cardOverlay}>
                        <h3 className={classes.cardTitle}>sagittis id consectetur purus ut faucibus pulvinar elementum integer enim neque volutpat ac tincidunt vitae semper quis lectus nulla at volutpat diam ut venenatis tellus</h3>
                        <span className="pr-4">
                          <Button href="/landing-page/dokumentasi-create" variant="warning">Edit</Button>
                        </span>
                        <span className="pr-4">
                          <Button variant="danger">Hapus</Button>
                        </span>
                      </div>
                    </BCard.ImgOverlay>
                    </Zoom>
                </BCard>
              </Col>
              <Col md={6}>
                <BCard className={classes.cardSize} onMouseEnter={toggleHover2} onMouseLeave={toggleHover2}>
                  <BCard.Img
                    variant="bottom"
                    src={toAbsoluteUrl("/media/users/300_2.jpg")} alt="Card Image 2" />
                    <Zoom in={!hover2}>
                    <BCard.ImgOverlay className="text-center" style={ hoverImg2 }>
                      <div className={classes.cardOverlay}>
                        <BCard.Title className={classes.cardTitle}>vestibulum lectus mauris ultrices eros in cursus turpis massa tincidunt dui ut ornare lectus sit</BCard.Title>
                        <span className="pr-4">
                          <Button href="/landing-page/dokumentasi-create" variant="warning">Edit</Button>
                        </span>
                        <span className="pr-4">
                          <Button variant="danger">Hapus</Button>
                        </span>
                      </div>
                    </BCard.ImgOverlay>
                    </Zoom>
                </BCard>
              </Col>
            </Row>
          </Container>
        </CardBody>
      </Card>
    </>
  )
}