import React, { useState } from "react";
import {
  Card,
  CardBody,
  CardHeader
} from "../../../_metronic/_partials/controls";
import { makeStyles, CircularProgress, InputBase, IconButton, Divider, Paper } from '@material-ui/core';
import { Button } from "react-bootstrap";
import BootstrapTable from 'react-bootstrap-table-next';
import paginationFactory from 'react-bootstrap-table2-paginator';
import SearchIcon from '@material-ui/icons/Search';
import ListIcon from '@material-ui/icons/Assignment';
import DeleteIcon from '@material-ui/icons/Delete';
import EditIcon from '@material-ui/icons/Edit';

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

export function SubKategoriPenelitian(){
  const classes = useStyles();
  const [searchText, setSearchText] = useState('');
  const loadTable = false;
  const data = [{
    id_sub_kategori: '1',
    judul_kategori: 'Judul Pertama',
    judul_sub_kategori: 'Sub Judul'
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

  return (
    <>
      <Card>
        <CardHeader 
          title="List Sub Kategori Penelitian"
          icon={
            <ListIcon 
              className={classes.icon} />
          }>
          <Button href="/landing-page/sub-kategori-penelitian-create" style={{ margin: '15px 0' }} variant="success">Tambah</Button>
        </CardHeader>
        <CardBody>
        <Paper variant="outlined" className={classes.paper}>
          <InputBase
            className={classes.input}
            placeholder="Cari"
            inputProps={{ 'aria-label': 'Cari' }}
            onChange={(e)=>{
            console.log("Data berubah : " + e.target.value)
            setSearchText(e.target.value)
            }}
            onKeyDown={(e)=>{
            if(e.key === 'Enter'){
                console.log("Melakukan pencarian : " + searchText)
            }
            }}
            value={searchText} />
          <Divider className={classes.divider} />
          <IconButton type="submit" onClick={()=>{
            console.log("Melakukan Pencarian : " + searchText)
            }} 
            className={classes.iconButton} aria-label="search">
            <SearchIcon />
          </IconButton>
        </Paper>
          {loadTable?
            <div className={classes.circularProgress}>
              <CircularProgress />
            </div>:
            <BootstrapTable
              wrapperClasses="table-responsive"
              bordered={false}
              classes="table table-head-custom table-vertical-center overflow-hidden"
              bootstrap4
              remote
              search
              keyField="id_sub_kategori"
              data={ data } 
              columns={ columns } 
              pagination={paginationFactory(paginationOption)} />}
        </CardBody>
      </Card>
    </>
  )
}