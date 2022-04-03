import React, { useEffect, useState } from 'react'
import { Fragment } from 'react'

// MUI Stuff
import Typography from '@material-ui/core/Typography'

import { useDispatch, useSelector } from 'react-redux'
import { selectAccounts, selectTransactions } from '../appState/appSlice'

const JournalListTable = ({jeID}) => {
    const dispatch = useDispatch()
    const [txs, setTxs] = useState()
    const transactions = useSelector(selectTransactions)
    const accounts = useSelector(selectAccounts)

    // func
    const calcuAmt = (data) =>{
        const total = data && data.reduce((a, v) =>+v.amount+ a, 0)
        return total
    }

    const calcuTotalCR = (data) =>{
        const crData = data && data.filter(d =>d.tx_type ==='CR');
        const totalCR =  crData && crData.reduce((a, v) =>v.tx_type ==='CR' && v.amount+a, 0)
        return totalCR.toLocaleString()
    }
    const calcuTotalDR = (data) =>{
        const drData = data && data.filter(d =>d.tx_type ==='DR');
        const totalDR =  drData && drData.reduce((a, v) =>v.tx_type ==='DR' && v.amount+a, 0)
        return totalDR.toLocaleString()
    }

    const returncusName = (code) =>{
        const cname = accounts && accounts.find(acc =>acc.code ===code)
       if(cname) 
            return cname.name
        return null
    }
    useEffect(() =>{
        const fTXs = transactions && transactions.filter(tx =>tx.rcpt_no === parseInt(jeID.trim().split('-')[1]) || tx.uuid ===jeID);
        console.log(fTXs)
        console.log(transactions)
        return setTxs(fTXs)
    },[jeID])
    return (
        <Fragment>
            <tr>
                <td colSpan={5}>
                <table style={{width: '100%', borderLeft: '2px solid #20c997'}} >
                    <thead style={{zIndex: 222, top: '60px', position: 'sticky', background: '#EDEDED'}}>
                        <th style={{ border: '1px solid #F7F7F7F7' }}>#</th>
                        <th style={{ border: '1px solid #F7F7F7F7' }}>Account</th>
                        <th style={{ border: '1px solid #F7F7F7F7' }}>Description</th>
                        <th style={{ border: '1px solid #F7F7F7F7' }}>Code</th>
                        <th style={{ border: '1px solid #F7F7F7F7' }}>CR (<s>N</s>)</th>
                        <th style={{ border: '1px solid #F7F7F7F7' }}>DR (<s>N</s>)</th>
                    </thead>
                    <tbody>
                    {
                            txs &&
                            txs.map((tx, index) =>{
                                const { tx_date, description, tx_type, amount, account_FK, pay_method, 
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
                                            
                                            <td style={{textAlign: 'left'}}>
                                            
                                                {description}
                                            
                                            </td>
                                            <td style={{textAlign: 'left'}}>{account_FK}</td>
                                            {
                                                tx_type =='CR'?
                                                <td>
                                                    <Typography style={{color: '#20C997'}}>
                                                    { amount.toLocaleString() }
                                                    </Typography>
                                                </td>
                                                :
                                                <td> </td>
                                            }
                                            {
                                                tx_type =='DR'?
                                                <td>
                                                    <Typography color='error'>
                                                    { amount.toLocaleString() }
                                                    </Typography>
                                                </td>
                                                :
                                                <td> </td>
                                            }
                                        
                                            
                                        </tr>
                                </Fragment>
                            )
                        })
                    }
                    {
                        txs && txs.length >0 &&
                        <tr>
                            <td colSpan={3}>
                                <Typography variant='subtitle1'
                                style={{color: '#2A3F54'}}
                                >
                                    <b>Total:</b>
                                </Typography>
                            </td>
                            <td></td>
                            <td colSpan={1}>
                                <Typography variant='subtitle1'
                                style={{color: '#2A3F54'}}
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
            </td>
        </tr>
        </Fragment>
    )
}

export default JournalListTable
