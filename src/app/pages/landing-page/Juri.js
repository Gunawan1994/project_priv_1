import React from "react";
import {
  Card,
  CardBody,
  CardHeader
} from "../../../_metronic/_partials/controls";
import { makeStyles } from '@material-ui/core';
import { Button, CardDeck } from "react-bootstrap";
import BCard from "react-bootstrap/Card";
import ListIcon from '@material-ui/icons/Assignment';
import { toAbsoluteUrl } from "../../../_metronic/_helpers";

const useStyles = makeStyles((theme) => ({
  icon: {
    marginRight: 10
  },
  btnAdd: {
    margin: '15px 0' 
  }
}))

export function Juri(){
  const classes = useStyles(); 
  return (
    <>
      <Card>
        <CardHeader 
          title="List Juri"
          icon={
            <ListIcon 
              className={classes.icon} />
          }>
            <Button href="/landing-page/juri-create" className={classes.btnAdd} variant="success">Tambah</Button>
        </CardHeader>
        <CardBody>
        <CardDeck>
          <BCard>
            <BCard.Img variant="top" src={toAbsoluteUrl("/media/users/300_1.jpg")} />
            <BCard.Body>
              <BCard.Title>Judul Pertama</BCard.Title>
              <BCard.Text>
                This is a wider card with supporting text below as a natural lead-in to
                additional content. This content is a little bit longer.
              </BCard.Text>
              <div className="py-3">
                <span className="pr-4">
                  <Button variant="warning" href="/landing-page/juri-create">Ubah</Button>
                </span>
                <span className="pr-4">
                  <Button variant="danger">Hapus</Button>
                </span>
              </div>
            </BCard.Body>
          </BCard>
          <BCard>
            <BCard.Img variant="top" src={toAbsoluteUrl("/media/users/300_2.jpg")} />
            <BCard.Body>
              <BCard.Title>Judul Kedua</BCard.Title>
              <BCard.Text>
                This card has supporting text below as a natural lead-in to additional
                content.
              </BCard.Text>
              <div className="py-3">
                <span className="pr-4">
                  <Button variant="warning" href="/landing-page/juri-create">Ubah</Button>
                </span>
                <span className="pr-4">
                  <Button variant="danger">Hapus</Button>
                </span>
              </div>
            </BCard.Body>
          </BCard>
          <BCard>
            <BCard.Img variant="top" src={toAbsoluteUrl("/media/users/300_3.jpg")} />
            <BCard.Body>
              <BCard.Title>Judul Ketiga</BCard.Title>
              <BCard.Text>
                This is a wider card with supporting text below as a natural lead-in to
                additional content. This card has even longer content than the first to
                show that equal height action.
              </BCard.Text>
              <div className="py-3">
                <span className="pr-4">
                  <Button variant="warning" href="/landing-page/juri-create">Ubah</Button>
                </span>
                <span className="pr-4">
                  <Button variant="danger">Hapus</Button>
                </span>
              </div>
            </BCard.Body>
          </BCard>
        </CardDeck>
        </CardBody>
      </Card>
    </>
  )
}