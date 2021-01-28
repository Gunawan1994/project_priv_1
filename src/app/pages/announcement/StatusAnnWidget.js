/* eslint-disable no-script-url,jsx-a11y/anchor-is-valid */
import React, { useRef, useState,useEffect } from "react";
import BootstrapTable from 'react-bootstrap-table-next';
import ToggleButton from '@material-ui/lab/ToggleButton';
import ToggleButtonGroup from '@material-ui/lab/ToggleButtonGroup';
import paginationFactory from 'react-bootstrap-table2-paginator';
import { useReactToPrint } from 'react-to-print';
import ToolkitProvider, { Search } from 'react-bootstrap-table2-toolkit';
import 'react-bootstrap-table-next/dist/react-bootstrap-table2.min.css';
import {CopyToClipboard} from 'react-copy-to-clipboard';
import {
  Card,
  CardBody,
  CardHeader
} from "../../../_metronic/_partials/controls";

import { useQuery, gql, ApolloClient, InMemoryCache} from '@apollo/client';
export function StatusAnnWidget({ className }) {

  const [dataTable, setDataTable] = useState([]);
  const [ann_email_id, setIdAnn ] = useState()

  const sendto = [
    {value: '0', label: 'All Verified participant'},
    {value: '1', label: 'Participant who has not completed the Team'},
    {value: '2', label: 'Participant who has not uploaded Pitch Deck'},
    {value: '3', label: 'Participant who has not agreed to the terms and conditions'},
    {value: '4', label: 'All Participant who have completed the data'},
  ]

  const GET_ANN = gql`
    query {
      ann_email {
        id
        send_to
        from_email
        subject
        send_date
        send_by_id
        status
      }
    }
  `;

  const { loading, error, data } = useQuery(GET_ANN)

  useEffect(() => {
    if(data !== undefined) {
          setDataTable(data.ann_email)
    }
  
  })

  const { SearchBar } = Search;
  const [type, setType] = useState('data.csv');

  const GET_BY_ID = gql`
  query Users($idx: bigint!) {
    users(where: {id: {_eq: $idx}}) {
      id
      fullname
    }
  }
  `;
  
  const columns = [
    {
      dataField: "id",
      text: "ID",
      sort: true
    },
    {
      dataField: "send_to",
      text: "Send To",
      formatter: (rowContent, row) => {
        rowContent = sendto[rowContent].label
        return rowContent
      },
      sort: true
    },
    {
      dataField: "from_email",
      text: "Using Email",
      sort: true
    },
    {
      dataField: "subject",
      text: "Subject",
      sort: true
    },
    {
      dataField: "send_date",
      text: "Send Date",
      sort: true
    },
    {
      dataField: "send_by_id",
      text: "Send By",
      formatter: (rowContent, row) => {
        const client = new ApolloClient({
          uri: 'http://localhost:8080/v1/graphql',
          cache: new InMemoryCache()
        });
        client
        .query({ variables: { rowContent },
          query: gql`
          query Users($rowContent: bigint!) {
            users(where: {id: {_eq: $rowContent}}) {
              id
              fullname
            }
          }
          `
        })
        .then(result => 
          Object.values(result).map((link, key) => {
            if (link.users !== undefined){
              if(rowContent === link.users[0].id) {
                setIdAnn(link.users[0].fullname)
              }
            }
          })
        );
        return ann_email_id
      },
      sort: true
    },
    {
      dataField: "status",
      text: "Status",
      formatter: (rowContent, row) => {
        if(rowContent === 0) {
          rowContent = "On Progress"
        } else if (rowContent === 1){
          rowContent = "Finish"
        }
        return rowContent
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
    return (
      <span className="pr-4">
        <CopyToClipboard text={myJSON}>
            <ToggleButton value={1} style={{color: '#ffffff'}}>Copy</ToggleButton></CopyToClipboard>
            <ToggleButton value={2} style={{color: '#ffffff'}} onClick={ handleClick } >CSV</ToggleButton>
        </span>
    );
  };

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

  const MyTable = () => (
    
    <ToolkitProvider
      keyField="id"
      data={ dataTable }
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
              keyField="id"
              data={dataTable} 
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
  var myJSON = JSON.stringify(dataTable);
  return (
    <>
    <Card>
      <CardBody>
          <MyTable />
      </CardBody>
    </Card>
  </>
  );
}
