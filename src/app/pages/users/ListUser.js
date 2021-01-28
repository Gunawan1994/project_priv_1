/* eslint-disable no-script-url,jsx-a11y/anchor-is-valid */
import React, {useState, useEffect} from "react";
import { Button } from "react-bootstrap";
import {
  Card,
  CardBody,
  CardHeader
} from "../../../_metronic/_partials/controls";
import BootstrapTable from 'react-bootstrap-table-next';
import ToggleButton from '@material-ui/lab/ToggleButton';
import ToggleButtonGroup from '@material-ui/lab/ToggleButtonGroup';
import paginationFactory from 'react-bootstrap-table2-paginator';
import { useReactToPrint } from 'react-to-print';
import ToolkitProvider, { Search } from 'react-bootstrap-table2-toolkit';
import 'react-bootstrap-table-next/dist/react-bootstrap-table2.min.css';
import {CopyToClipboard} from 'react-copy-to-clipboard';
import { useQuery, gql} from '@apollo/client';
import { useHistory } from "react-router-dom";

export function ListUser({ className }) {

  const [dataTable, setDataTable] = useState([]);
  const arrayData = []
  const [dataku, stDataku] = useState([])
  const [teamName, setTeamName] = useState()

  const GET_USER = gql`
    query {
      users {
        fullname
        email
        tlp
        e_tlp
        team_name
        join_date
        level
        id
      }
    }
  `;
    
  const { loading, error, data } = useQuery(GET_USER)

  useEffect(() => {
    if(data !== undefined) {
          setDataTable(data.users)
    }
  
  })

    const { SearchBar } = Search;
    const [type, setType] = useState('data.csv');
    let history = useHistory();
    const columns = [
      {
        dataField: "fullname",
        text: "Fullname",
        sort: true
      },
      {
        dataField: "team_name",
        text: "Team Name",
        sort: true,
      },
      {
        dataField: "email",
        text: "Email",
        sort: true
      },
      {
        dataField: "tlp",
        text: "Telpom Number",
        sort: true
      },
      {
        dataField: "e_tlp",
        text: "Emergency Number",
        sort: true
      },
      {
        dataField: "join_date",
        text: "Join Date",
        sort: true
      },
      {
        dataField: "id",
        text: "Lihat Detail",
        formatter: (rowContent, row) => {
          const xonClick = () => {
            history.push({
              pathname: '/users/read',
              state: { detail: row.id }
          });
          }
          return (    
            <Button variant='primary' onClick={xonClick} >Lihat</Button>
          )
        },
        sort: true
      }
    ];
  
    const paginationOption = {
      totalSize: 0,
      page: 1,
      sizePerPage: 10,
      showTotal: true,
      sizePerPageList: [{
        text: '10', value: 10
      },{
        text: '25', value: 25
      },{
        text: '50', value: 50
      }],
      onSizePerPageChange: (sizePerPage, page) => {
        console.log(page)
        console.log(sizePerPage)
      },
      onPageChange: (page, sizePerPage) => {
        console.log(page)
        console.log(sizePerPage)
      }
    };
  
    const MyExportCSV = (props) => {
      const handleClick = () => {
        setType(props.filename);
        props.onExport();
      };
      var myJSON = JSON.stringify(dataTable);
      return (
        <span className="pr-4">
          <CopyToClipboard text={myJSON}>
              <ToggleButton value={1} style={{color: '#ffffff'}}>Copy</ToggleButton></CopyToClipboard>
              <ToggleButton value={2} style={{color: '#ffffff'}} onClick={ handleClick } >CSV</ToggleButton>
          </span>
      );
    };

    const Title = (id) => {
      let title = ""
      if(id.data === 0) {
        title = "ADMIN"
      } else if (id.data === 1) {
        title = "JURI"
      } else if (id.data === 2) {
        title = "PESERTA"
      } else if (id.data === 3) {
        title = "UN-VERIFIED USERS"
      }

      return (
        <span className="pr-4">{title}
        </span>
      );
    }
  
    const MyExportXLS = (props) => {
      const handleClick = () => {
        console.log(props.filename)
        setType(props.filename);
        props.onExport();
      };
      return (
        <span className="pr-4">
              <ToggleButton value={1} style={{color: '#ffffff'}} onClick={ handleClick } >EXCEL</ToggleButton>
              <ToggleButton value={2} style={{color: '#ffffff'}} onClick={() => window.print()}>Print</ToggleButton>
          </span>
      );
    };
  const MyTable = (propsx) => (
    <ToolkitProvider
      keyField="fullname"
      data={ propsx.data }
      columns={ columns }
      exportCSV={{fileName: type}}
      search
    >
      {
        props => (
          <div>
            <ToggleButtonGroup type="checkbox" value={value} style={{backgroundColor: '#1b2942'}}>
              <MyExportCSV filename='data.csv' { ...props.csvProps } />
            <MyExportXLS filename='data.xls' { ...props.csvProps } 
            />
            </ToggleButtonGroup>
            <SearchBar style={{marginLeft: '15px'}} { ...props.searchProps } />
            <BootstrapTable
              wrapperClasses="table-responsive"
              bootstrap4
              keyField="fullname"
              data={propsx.data} 
              columns={columns}
              pagination={paginationFactory(paginationOption)}
              { ...props.baseProps }
            />
          </div>
        )
      }
    </ToolkitProvider>
  );
  const [value, setValue] = React.useState([]);
  const arrD      = []
  const adminTb   = []
  const juriTb    = []
  const pesertaTb = []
  const unverifUser = []

  dataTable.map((link, key) => {
    if(link.level === 1){
      adminTb.push(link)
    } else if(link.level === 2) {
      juriTb.push(link)
    } else if (link.level === 3) {
      pesertaTb.push(link)
    } else if (link.level === 0) {
      unverifUser.push(link)
    }
  })
  arrD.push(adminTb, juriTb, pesertaTb,unverifUser )

  return(
    <>
    <div>
        {arrD.map((link, key) => {
        return (
          <Card>
            <CardBody>
              <Title data={key}/>
              <div style={{padding: '10px'}} />
              <MyTable data={link}/>
            </CardBody>
          </Card>
        )
      })}
    </div>
    </>
)}