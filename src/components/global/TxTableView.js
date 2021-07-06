import { Typography } from '@material-ui/core'
import React from 'react'
import { Fragment } from 'react'
import { useSelector } from 'react-redux'
import { selectAccounts, selectFilterTx } from '../../appState/appSlice'
import ExcelDownload from '../ExcelDownload'
const TxTableView = ({name, date}) => {
    const txs = useSelector(selectFilterTx)
    const accounts = useSelector(selectAccounts)
    // func 
    const calcuAmt = (data) =>{
        const total = data&& data.reduce((a, v) =>+v.amount+ a, 0)
        return total
    }
    const calcuTotalCR = (data) =>{
        const crData = data && data.filter(d =>d.tx_type ==='CR');
        const totalCR =  crData && crData.reduce((a, v) =>v.tx_type ==='CR' && v.amount+a, 0)
        return totalCR
    }
    const calcuTotalDR = (data) =>{
        const drData = data && data.filter(d =>d.tx_type ==='DR');
        const totalDR =  drData && drData.reduce((a, v) =>v.tx_type ==='DR' && v.amount+a, 0)
        return totalDR
    }

    const returncusName = (code) =>{
        const cname = accounts && accounts.find(acc =>acc.code ===code)
       if(cname) 
            return cname.name
        return null
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
            <table className='table-hover table-bordered'
                style={{width: '98%', margin: 'auto'}}
            >
                <thead style={{top: '60px', position: 'sticky', background: '#EDEDED'}}>
                    <th style={{ border: '1px solid #F7F7F7F7' }}>#</th>
                    <th style={{ border: '1px solid #F7F7F7F7' }}>Name</th>
                    <th style={{ border: '1px solid #F7F7F7F7' }}>Code</th>
                    <th style={{ border: '1px solid #F7F7F7F7' }}>Description</th>
                    <th style={{ border: '1px solid #F7F7F7F7' }}>Date</th>
                    <th style={{ border: '1px solid #F7F7F7F7' }}>RCPT. NO.</th>
                    <th style={{ border: '1px solid #F7F7F7F7' }}>CR (<s>N</s>)</th>
                    <th style={{ border: '1px solid #F7F7F7F7' }}>DR (<s>N</s>)</th>

                    <th style={{ border: '1px solid #F7F7F7F7' }}> Pay Method </th>
                    <th style={{ border: '1px solid #F7F7F7F7' }}> Status </th>
                </thead>
                <tbody>
                    {
                        txs &&
                        txs.map((tx, index) =>{
                            const { tx_date, description, tx_type, amount, rcpt_no, account_FK, pay_method, 
                               paid } = tx
                            return (
                                <Fragment key={index}>
                                    <tr>
                                        <td
                                            style={{display: 'flex', alignItems: 'center', justifyContent: 'center'}}
                                        > {index+1} </td>
                                        <td style={{textAlign: 'left'}}>
                                            {returncusName(account_FK)}
                                        </td>
                                        <td style={{textAlign: 'left'}}>{account_FK}</td>
                                        <td style={{textAlign: 'left', margin: '5px'}}>
                                        
                                            {description}
                                        
                                        </td>
                                        <td> {new Date(tx_date).toLocaleDateString()} </td>
                                        <td> {rcpt_no} </td>
                                        {
                                            tx_type =='CR'?
                                            <td>
                                                <Typography style={{color: '#20C997'}}>
                                                { amount }
                                                </Typography>
                                            </td>
                                            :
                                            <td> </td>
                                        }
                                        {
                                            tx_type =='DR'?
                                            <td>
                                                <Typography color='error'>
                                                { amount }
                                                </Typography>
                                            </td>
                                            :
                                            <td> </td>
                                        }
                                        <td> {pay_method} </td>
                                        <td
                                            style={{display: 'flex', alignItems: 'center', justifyContent: 'center'}}
                                        >
                                            <div className='p-2'>
                                            {tx_Status(paid)}
                                            </div>
                                        </td>
                                    </tr>
                                </Fragment>
                            )
                        })
                    }
                    {
                        txs && txs.length >0 &&
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
                            <td colSpan={5}>
                                <Typography variant='subtitle1'
                                style={{color: 'white'}}
                                >
                                <b>{
                                    calcuTotalCR(txs)
                                }</b>
                                </Typography>
                            </td>
                            <td colSpan={1}>
                                <Typography variant='subtitle1'
                                    style={{color: 'white'}}
                                    >
                                    <b>{calcuTotalDR(txs)}</b>
                                </Typography>
                            </td>
                            <td colSpan={2}>
                                <Typography variant='subtitle1'
                                    style={{color: 'white'}}
                                    >
                                    <b>{ calcuAmt(txs)}</b>
                                </Typography>
                            </td>
                        </tr>
                        
                    }
                    
                </tbody>
                
            </table>
                  
            {
                txs<=0 &&
                
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
            {
                txs && txs.length >0 &&
                <table className='table'>
                    <tbody>
                    <tr >
                        <td className='p-3'>
                            <ExcelDownload
                                date={date} 
                                dataSet1={txs} 
                            />
                        </td>
                    </tr>
                    </tbody>
                </table>
            }
        </Fragment>
    )
}

export default TxTableView
