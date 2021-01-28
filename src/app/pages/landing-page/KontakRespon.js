import React, { useState, useRef } from "react";
import {
  Card,
  CardBody,
  CardHeader
} from "../../../_metronic/_partials/controls";
import { makeStyles, CircularProgress, IconButton, Button } from '@material-ui/core';
import BootstrapTable from 'react-bootstrap-table-next';
import paginationFactory from 'react-bootstrap-table2-paginator';
import ListIcon from '@material-ui/icons/Assignment';
import DeleteIcon from '@material-ui/icons/Delete';
import EditIcon from '@material-ui/icons/Edit';
import ToolkitProvider, { Search } from 'react-bootstrap-table2-toolkit';

const { SearchBar } = Search;
const useStyles = makeStyles((theme) => ({
  icon: {
    marginRight: 10,
  },
  input:{
    marginLeft: theme.spacing(1),
    flex: 1,
  },
  iconButton: {
    padding: 10,
  },
  circularProgress:{
    textAlign:'center'
  },
  divider: {
    width: 1,
    height: 28,
    margin: 4,
  },
  paper: {
    padding: '2px 4px',
    display: 'flex',
    alignItems: 'center',
    width: 300,
  },
}))

export function KontakRespon(){
  const classes = useStyles();
  const componentRef = useRef();
  const [type, setType] = useState('custom.csv');
  const loadTable = false;
  const data = [{
    id_sub_kategori: '1',
    judul_kategori: 'Judul Pertama',
    judul_sub_kategori: 'Sub Judul'
  },{
    id_sub_kategori: '2',
    judul_kategori: 'Judul Kedua',
    judul_sub_kategori: 'Sub Judul Kedua'
  }];

  const columns = [{
    dataField: 'id_sub_kategori',
    text: 'ID Sub Kategori'
  }, {
    dataField: 'judul_kategori',
    text: 'Judul Kategori'
  },{
    dataField: 'judul_sub_kategori',
    text: 'Judul Sub Kategori'
  },{
    dataField: 'action',
    text: 'Aksi',
    formatter:(cell,row)=>{
      return(
        <>
          <IconButton type="submit" onClick={()=>{ alert(row.id_sub_kategori); }}>
            <EditIcon />
          </IconButton>
          <IconButton type="submit" onClick={()=>{ alert(row.id_sub_kategori); }}>
            <DeleteIcon />
          </IconButton>
        </>
      )
    }
  }];

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
      setType(props.tipe);
      props.onExport();
    };
    return (
      <span className="pr-4">
        <Button 
          variant="contained" 
          color="primary"
          onClick={ handleClick }>{props.nama}</Button>
      </span>
    );
  };

  const Table = () => {
    return(
      <>
      <ToolkitProvider
        keyField="id_sub_kategori"
        data={ data }
        columns={ columns }
        exportCSV={ {
          fileName: type,
          separator: '|',
          ignoreHeader: true,
          noAutoBOM: false
        } }
        search
    >
      {
        props => (
          <div id="printablediv">
            <span className="pr-4">
             <SearchBar { ...props.searchProps } />
            </span>
            <span className="pr-4">
              <Button variant="contained" color="primary" onClick={()=>alert("Table dicopy")}>Copy</Button>
            </span>
            <MyExportCSV 
              tipe="custom.csv"
              { ...props.csvProps } nama="CSV" />
            <MyExportCSV 
              tipe="custom.xlsx"
              { ...props.csvProps } nama="Excel" />
            <span className="pr-4">
              <Button variant="contained" color="primary" onClick={() => window.print()}>Print</Button>
            </span>
            <hr />
            <BootstrapTable 
              pagination={paginationFactory(paginationOption)}
              { ...props.baseProps } />
          </div>
        )
      }
    </ToolkitProvider>
    </>
    );
  }

  return (
    <>
      <Card>
        <CardHeader 
          title="List Sub Kategori Penelitian"
          icon={
            <ListIcon 
              className={classes.icon} />
          }/>
        <CardBody>
          {loadTable?
            <div className={classes.circularProgress}>
              <CircularProgress />
            </div>:
            <Table ref={componentRef}/>
            }
        </CardBody>
      </Card>
    </>
  )
}