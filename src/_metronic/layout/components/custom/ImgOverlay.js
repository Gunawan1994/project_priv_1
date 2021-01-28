import React from "react";
import { makeStyles } from '@material-ui/core';

const useStyles = makeStyles((theme) => ({
  overlay: `
    position: absolute;
    bottom: 0;
    left: 0;
    right: 0;
    background-color: #008CBA;
    overflow: hidden;
    width: 100%;
    height: 0;
    transition: .5s ease;`,
  test: {
    '&:hover': {
      height: '100%',
      overlay,
    },
  },
  text: `
    color: white;
    font-size: 20px;
    position: absolute;
    top: 50%;
    left: 50%;
    -webkit-transform: translate(-50%, -50%);
    -ms-transform: translate(-50%, -50%);
    transform: translate(-50%, -50%);
    text-align: center;
  `
}))

export function ImgOverlay(props) {
  const classes = useStyles();

  return (
    <div>
      <Image className={classes.test} src={props.src} rounded />
      <div className={classes.overlay}>
        <div className={classes.text}>Hello World</div>
      </div>
    </div>
  );
}
