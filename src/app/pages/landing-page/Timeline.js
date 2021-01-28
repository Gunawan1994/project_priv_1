import React from "react";
import {
  Card,
  CardBody,
  CardHeader
} from "../../../_metronic/_partials/controls";
import HorizontalTimeline from "react-horizontal-timeline";
import ListIcon from '@material-ui/icons/Assignment';

const data = [
  {
    tanggal: "2020-01-01",
    title: "Judul Pertama",
    deskripsi: "Ini adalah isi pertama"
  },
  {
    tanggal: "2020-01-02",
    title: "Judul Kedua",
    deskripsi: "Ini adalah isi Kedua"
  },
  {
    tanggal: "2020-01-03",
    title: "Judul Ketiga",
    deskripsi: "Ini adalah isi ketiga"
  },
  {
    tanggal: "2020-01-04",
    title: "Judul Keempat",
    deskripsi: "Ini adalah isi keempat"
  },
  {
    tanggal: "2020-01-05",
    title: "Judul Kelima",
    deskripsi: "Ini adalah isi kelima"
  }
];

export default class Timeline extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      curIdx: 0,      
      prevIdx: -1
    };
  }

  render() {    
    const {curIdx} = this.state;
    const judul = data[curIdx].title;
    const deskripsi = data[curIdx].deskripsi;

    return (
      <Card>
        <CardHeader 
          title="Timeline"
          icon={
            <ListIcon 
              style={{ marginRight: 10 }} />
          }>
        </CardHeader>
        <CardBody height="500">
        <div>
          <div
            style={{
              width: "60%",
              height: "100px",
              margin: "0 auto",
              marginTop: "25px",
              fontSize: "14px"
            }}
          >
            <HorizontalTimeline
              styles={{
                background: "#f8f8f8",
                foreground: "#1A79AD",
                outline: "#dfdfdf"
              }}
              index={this.state.curIdx}
              indexClick={index => {
                const curIdx = this.state.curIdx;
                this.setState({ curIdx: index, prevIdx: curIdx });
              }}            
              values={data.map(x => x.tanggal)}
            />
          </div>
          <div className="text-center">
            <h3 className="py-3">{judul}</h3>
            <p>{deskripsi}</p>
          </div>
        </div>
        </CardBody>
      </Card>
    );
  }
}
