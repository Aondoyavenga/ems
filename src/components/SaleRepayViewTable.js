import { Button, Typography } from '@material-ui/core'
import { Search } from '@material-ui/icons'
import React, { Fragment } from 'react'
import { DownloadSaleRepmt } from './ExcelDownload'

const SaleRepayViewTable = ({ data, reports, handleChange, handle_Get_Report}) => {
    const calcuAmt = (data) =>{
        const total = data&& data.reduce((a, v) =>+v.amount+ a, 0)
        return total.toLocaleString()
    }

    const calcuAimed = (data) =>{
        const total = data&& data.reduce((a, v) =>+v.amount_paid+ a, 0)
        return total.toLocaleString()
    }

    
    const calcuLastPaid = (data) =>{
        const total = data&& data.reduce((a, v) =>+v.tx_amount+ a, 0)
        return total.toLocaleString()
    }

    const tx_Status = (x) =>{
        const status = x && x == 1 ?
            <span className='fa fa-plus-circle' style={{color: '#20c997'}} />
        :
       
        <span className='fa fa-minus-circle' style={{color: 'red'}} />
        return status
    }
    return (
        <Fragment>
            
            <table className='mt-1 table-bordered hide-on-print' style={{width: '98%', margin: 'auto', 
                    position: 'sticky', top: 0, zIndex: 222}}>
                    <thead>
                        <th>From</th>
                        <th>
                            <input
                                type='date'
                                value={data.start_date}
                                placeholder='Staff'
                                name='start_date' list='staffs'
                                onChange={e =>handleChange(e)}
                            />
                            
                        </th>
                        <th>To</th>
                        <th>
                            <input
                                name='end_date'
                                type='date'
                                value={data.end_date}
                                onChange={e =>handleChange(e)}
                                
                            />
                        </th>
                        <th>
                            <Button size='small'
                                endIcon={<Search  />}
                                onClick={() =>handle_Get_Report()}
                                style={{background: '#2a3f54', color: 'white', width: '100%'}}
                            >
                            Search
                            </Button>
                        </th>
                                            
                    </thead>
            </table>
                {/* transaction table */}
            {reports && reports.length>0 &&
            <table className='table-hover table-bordered'
                style={{width: '98%', margin: 'auto',}}
            >
                <thead style={{top: '34px', position: 'sticky', background: '#2a3f54', color: 'white'}}>
                    <th style={{ border: '1px solid #F7F7F7F7' }}>#</th>
                    <th style={{ border: '1px solid #F7F7F7F7' }}>Name</th>
                    <th style={{ border: '1px solid #F7F7F7F7' }}>Property</th>
                    <th style={{ border: '1px solid #F7F7F7F7' }}>Due Date</th>
                    <th style={{ border: '1px solid #F7F7F7F7' }}>Cost AMT(<s>N</s>)</th>
                    <th style={{ border: '1px solid #F7F7F7F7' }}>Aimed AMT(<s>N</s>)</th>
                    <th style={{ border: '1px solid #F7F7F7F7' }}>RCPT. NO.</th>
                    <th style={{ border: '1px solid #F7F7F7F7' }}>TX Date</th>
                    <th style={{ border: '1px solid #F7F7F7F7' }}>LT Paymnt(<s>N</s>)</th>
                    <th style={{ border: '1px solid #F7F7F7F7' }}>Pay Method</th>
                    <th style={{ border: '1px solid #F7F7F7F7' }}> Remark </th>
                </thead>
                <tbody>
                    {
                        reports && 
                        reports.map((tx, index) =>{
                        const { applicant_name, amount, property_name,status, tx_date,
                                amount_paid, due_date, tx_amount, rcpt_no, pay_method, 
                            } = tx
                            return (
                                <Fragment key={index}>
                                    <tr>
                                        <td
                                            style={{display: 'flex', alignItems: 'center', justifyContent: 'center'}}
                                        > {index+1} </td>
                                        <td style={{textAlign: 'left'}}>
                                            {applicant_name}
                                        </td>
                                        <td style={{textAlign: 'left'}}> {property_name} </td>
                                        <td style={{textAlign: 'left', margin: '5px'}}>
                                        
                                            {new Date(due_date).toLocaleDateString()}
                                        
                                        </td>
                                        {/* <td> {new Date(tx_date).toLocaleDateString()} </td> */}
                                        
                                        <td>
                                                <Typography color='error'>
                                                { amount.toLocaleString() }
                                                </Typography>
                                            </td>
                                            <td>
                                                <Typography style={{color: '#20C997'}}>
                                                { amount_paid.toLocaleString() }
                                                </Typography>
                                            </td>
                                            <td> {rcpt_no} </td>
                                            <td> {new Date(tx_date).toLocaleDateString()} </td>
                                            <td>
                                                <Typography style={{color: '#20C997'}}>
                                                { tx_amount.toLocaleString() }
                                                </Typography>
                                            </td>
                                        <td> {pay_method} </td>
                                        <td
                                            style={{display: 'flex', alignItems: 'center', justifyContent: 'center'}}
                                        >
                                            <div className='p-2'>
                                            {tx_Status(status)}
                                            </div>
                                        </td>
                                    </tr>
                                </Fragment>
                            )
                        })
                    }
                    {
                        reports &&reports.length >0 &&
                        <tr
                        style={{background: '#2A3F54', color: 'white'}} 
                        >
                            <td colSpan={2}>
                                <Typography variant='subtitle1'
                                style={{color: 'white'}}
                                >
                                    <b>Total:</b>
                                </Typography>
                            </td>
                            <td colSpan={3}>
                                <Typography variant='subtitle1'
                                style={{color: 'white'}}
                                >
                                <b>{
                                    calcuAmt(reports)
                                }</b>
                                </Typography>
                            </td>
                            <td colSpan={1}>
                                <Typography variant='subtitle1'
                                    style={{color: 'white'}}
                                    >
                                    <b>{calcuAimed(reports)}</b>
                                </Typography>
                            </td>
                            <td colSpan={3}>
                                <Typography variant='subtitle1'
                                    style={{color: 'white'}}
                                    >
                                    <b>{ calcuLastPaid(reports)}</b>
                                </Typography>
                            </td>
                            <td colSpan={2}></td>
                        </tr>
                        
                    }
                    
                </tbody>
                
            </table>
            }
             {
                reports && reports.length>0 &&
                <table className='hide-on-print table'>
                    <tbody>
                    <tr>
                        <td>
                        <DownloadSaleRepmt
                            dataSet1={reports}
                            date={data.start_date + '-'+data.end_date}
                        />
                        </td>
                        <td>
                            <button
                                onClick={() =>window.print()}
                                >
                                    Print
                            </button>
                        </td>
                    </tr>
                    </tbody>
                </table>
            }
        </Fragment>
    )
}

export default SaleRepayViewTable
