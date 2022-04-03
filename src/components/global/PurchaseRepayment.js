import { Button, IconButton, Typography } from '@material-ui/core'
import React, { useState } from 'react'
import { Fragment } from 'react'
import { useSelector } from 'react-redux'
import { selectFilterSale } from '../../appState/appSlice'
import ExcelDownload from '../ExcelDownload'

const PurchaseRepayment = ({name, txs}) => {
    const purchases = useSelector(selectFilterSale)
    // func 
    const tx_Status = (x) =>{
        const status = x && x == 1 ?
            <span className='fa fa-plus-circle' style={{color: '#20c997'}} />
        :
        <span className='fa fa-minus-circle' style={{color: 'red'}} />
        return status
    }

    const calcuAmt = (data) =>{
        const total = data&& data.reduce((a, v) =>+v.amount+ a, 0)
        return total
    }

    return (
        <Fragment>
            <table className='table-hover'
                style={{width: '98%', margin: 'auto'}}
            >
                <thead style={{top: '60px', position: 'sticky'}}>
                    <th style={{ border: '1px solid #F7F7F7F7' }}>#</th>
                    <th style={{ border: '1px solid #F7F7F7F7' }}>Description</th>
                    <th style={{ border: '1px solid #F7F7F7F7' }}>Date</th>
                    <th style={{ border: '1px solid #F7F7F7F7' }}>RCPT. NO.</th>
                    <th style={{ border: '1px solid #F7F7F7F7' }}>Amount (<s>N</s>)</th>
                    <th style={{ border: '1px solid #F7F7F7F7' }}> Pay Method </th>
                    <th style={{ border: '1px solid #F7F7F7F7' }}> Status </th>
                </thead>
                <tbody>
                    {
                        txs &&
                        txs.map((tx, index) =>{
                            const { tx_date, description, amount, rcpt_no, pay_method, 
                               paid } = tx
                            return (
                                <tr key={index}>
                                    <td
                                         style={{display: 'flex', alignItems: 'center', justifyContent: 'center'}}
                                    > {index+1} </td>
                                    <td style={{textAlign: 'left', margin: '5px'}}>
                                    
                                        {description}
                                    
                                    </td>
                                    <td> {new Date(tx_date).toLocaleDateString()} </td>
                                    <td> {rcpt_no} </td>
                                    <td> { amount.toLocaleString() } </td>
                                    <td> {pay_method} </td>
                                    <td
                                        style={{display: 'flex', alignItems: 'center', justifyContent: 'center'}}
                                    >
                                        <div className='p-2'>
                                        {tx_Status(paid)}
                                        </div>
                                    </td>
                                </tr>
                            )
                        })
                    }
                     {
                purchases && purchases[0].amount_paid < calcuAmt(txs)?
                <tr
                    style={{background: '#2A3F54', color: 'white'}}
                >
                    <td>  </td>
                    <td colSpan={1}>
                        <Typography variant={'h6'}>
                            Outstanding Balance
                        </Typography>
                    </td>
                    {
                        purchases && purchases.length >0&&
                        <td colSpan={3}>
                            <Typography variant={'h6'}
                                style={{color: 'red'}}
                            >
                                <s>N</s>: 
                            {
                                parseInt(parseInt(purchases[0].amount) -
                                parseInt(purchases[0].amount_paid)).toLocaleString()
                            }
                            </Typography>
                            
                        </td>
                        
                    }
                    <td colSpan={2}></td>
                </tr>
                :
                <Button variant='contained'
                    style={{background: '#2A3F54', color: 'white'}}
                >Close Deal</Button>

            }
                <tr>
                    <td>
                        <ExcelDownload
                        date={`${name} Repayments`} 
                        dataSet1={txs} />
                    </td>
                </tr>
                </tbody>
                
            </table>
            {
                !txs && name.length >0 &&
                
                <div className='alert alert-warning'
                    style={{width: '98%', margin: 'auto'}}
                >
                    {`Ops!!! No Transaction History`}
                </div>                
            }
            {
                name && !name.length >0 &&
                <div className='alert alert-warning'
                    style={{width: '98%', margin: 'auto'}}
                >
                    {`Ops!!! No Staff Selected`}
                </div>
            }
           
        </Fragment>
    )
}

export default PurchaseRepayment
