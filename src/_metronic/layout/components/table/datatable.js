import React, { useEffect, useRef, useState } from 'react';
import ReactDOM from 'react-dom';
import { Button } from 'react-bootstrap';
import 'datatables.net-bs4/css/dataTables.bootstrap4.css';
import 'datatables.net-responsive';
import 'datatables.net-scroller';
import 'datatables.net-buttons-bs4';
import 'datatables.net-buttons-bs4/css/buttons.bootstrap4.css';
import 'datatables.net-buttons/js/buttons.colVis';
import 'datatables.net-buttons/js/buttons.html5';
import 'datatables.net-buttons/js/buttons.flash';
import 'datatables.net-buttons/js/buttons.print';
import JSZip from 'jszip';
window.JSZip = JSZip;

const $ = require('jquery')
$.DataTable = require('datatables.net-bs4')


export function DataTable(props) {
    const [infoData, setInfoData]=useState(props)
    const tableRef = useRef();
    useEffect(() => {
        const $el = $(tableRef.current);
        $el.DataTable(
            {
                data: infoData.data,
                columns: infoData.columns,
                sScrollX:"100%",
                dom: "<'row'>"+
                "<'row'<'col-md-6 mb-3'B><'col-sm-12 col-md-6'f>>" +
                "<'row'<'col-sm-12'tr>>" +
                "<'row'<'col-sm-2 col-md-5 mt-5'i><'col-sm-2 col-md-5 mt-5'l><'col-md-2 mt-5'p>>",
                buttons: [
                    {
                        extend:'copyHtml5',
                        exportOptions:{
                            columns: infoData.onAction ? 'th:not(:last-child)':''
                        }
                    },
                    {
                        extend:'csvHtml5',
                        exportOptions:{
                            columns: infoData.onAction ? 'th:not(:last-child)':''
                        }
                    },
                    {
                        extend:'excelHtml5',
                        exportOptions:{
                            columns: infoData.onAction ? 'th:not(:last-child)':''
                        }
                    },
                    {
                        extend:'print',
                        exportOptions:{
                            columns: infoData.onAction ? 'th:not(:last-child)':''
                        }
                    },
                    {
                        extend:'pdfHtml5',
                        exportOptions:{
                            columns: infoData.onAction ? 'th:not(:last-child)':''
                        }
                    },
                    
                    
                    
                ],
                columnDefs: [
                    { 
                        targets: infoData.onAction ?[-1]:null,
                        className:"center",
                        createdCell: (td, cellData, rowData) =>
                            ReactDOM.render(
                                <Button
                                    variant="secondary" 
                                    size="sm"
                                    id={rowData.id}
                                    onClick={() => {
                                        infoData.onAction(rowData)
                                    }}
                                >
                                    {infoData.buttonCap}
                            </Button>, td
                            ),
                    },
                ],
            })


        // return () => {
        //     $el.DataTable.destroy(true);
        // }
    },[tableRef, infoData])

    return (
        <>
            <table 
            className="table table-bordered" 
            width='100%' 
            ref={el => tableRef.current = el} 
            >
            </table>
        </>
    )
}