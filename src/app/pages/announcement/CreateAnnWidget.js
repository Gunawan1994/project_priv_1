/* eslint-disable no-script-url,jsx-a11y/anchor-is-valid */
import { colors } from "@material-ui/core";
import React, {useState} from "react";
import { Form, Col, Row, Button} from "react-bootstrap";
import { makeStyles} from '@material-ui/core';
import { useForm, Controller } from "react-hook-form";
import Select from "react-select";
import { useMutation } from "@apollo/client";
import { gql } from "apollo-boost";
import { useHistory } from "react-router-dom";

// user id hardcode smentara "user akbar sahada"
let iduser = "3"

const useStyles = makeStyles(() => ({
  bodyform: {
    marginLeft: 150
  },
  btn: {
    marginRight: 15,
    borderColor: 0,
  }
}))

export function CreateAnnWidget({ className }) {
  const { control, handleSubmit } = useForm();



  const classes = useStyles();
  const sendto = [
    {value: '0', label: 'All Verified participant'},
    {value: '1', label: 'Participant who has not completed the Team'},
    {value: '2', label: 'Participant who has not uploaded Pitch Deck'},
    {value: '3', label: 'Participant who has not agreed to the terms and conditions'},
    {value: '4', label: 'All Participant who have completed the data'},
  ]

  const CREATE_POST = gql`
    mutation CreatePost($subject: String!, $sendto: Int!, $from_email: String!, $isi: String!,
      $sendate: timestamp!, $send_by_id: bigint!, $status: Int! ) {
      insert_ann_email(objects: { subject: $subject, send_to: $sendto, from_email: $from_email, isi: $isi,
        send_date: $sendate, send_by_id: $send_by_id, status: $status }) {
        affected_rows
      }
    }
  `;
  let history = useHistory();
  const [createPost, { loading, error }] = useMutation(CREATE_POST);
  const onSubmit = data => {
    const datetime = new Date().toJSON().slice(0,10) 
    + " " + new Date(new Date()).toString().split(' ')[4];

    let subject = data.subject
    let sendto = data.send_to.value
    let isi   = data.content
    let sendate = datetime
    let from_email = "hackathon@mind.id"
    let status = "0"
    let send_by_id = iduser
    createPost({ variables: { subject, sendto, from_email, isi, sendate, send_by_id, status } });
    history.push("/announcement/statusAnn")
    
}

const onCancel = () => {
  history.push("/dashboard")
}

  return (
    <>
    <div className={`card card-custom  ${className}`} >
      <div className="card-header align-items-center border-0 mt-4" style={{padding: '20px'}}>
        <div className="col-md-12">
          <span>
            <b>Note</b>&nbsp;:<br></br>
              By default, emails sent are plain text not html, if you want to send the html format, just paste the html source code you want to send in the announcement content form.
            <b>Don't forget to change tag quote ( " ) to ( ' ) in your html email source code.</b>
          </span>
          <hr />
          <form onSubmit={handleSubmit(onSubmit)}>
          <Form.Group className={classes.bodyform}>
            <Form.Row>
              <Form.Label column="md" lg={2}>Subject:</Form.Label>
                <Col>
                <Controller
                    as={<input type="text" className="form-control border-thick" id="subject" />}
                    name="subject"
                    control={control}
                    defaultValue=""
                    rules={{ required: true }}
                />
                </Col>
            </Form.Row>
            <br />
              <Form.Row>
                <Form.Label column="md" lg={2}>Sent to:</Form.Label>
                  <Col>
                  <Controller
                      as={<input type="number" className="form-control border-thick" id="send_to" />}
                      name="send_to"
                      as={<Select placeholder="Please select one" />}
                      options={sendto}
                      control={control}
                      defaultValue=""
                      rules={{ required: true }}
                  />
                  </Col>
              </Form.Row>
              <br />
                <Form.Row>
                  <Form.Label column="md" lg={2}>Content Announcement</Form.Label>
                    <Col>
                    <Controller
                      as={<textarea className="form-control border-thick" id="content"
                      />}
                      rows={6}
                      name="content"
                      control={control}
                      rules={{ required: true }}
                    />
                    </Col>
                </Form.Row>
          </Form.Group>
          </form>
          <hr />
          <div className="form-actions" >
          <Button 
              variant='warning' 
              onClick={onCancel} 
              className={classes.btn}
              >Cancel</Button>
            <Button 
              variant='success' 
              onClick={handleSubmit(onSubmit)} 
              className={classes.btn}
              >Send Now</Button>
          </div>
        </div>
      </div>
    </div >
    {/* <div style={{padding: '20px'}} /> */}
    </>
  );
}
