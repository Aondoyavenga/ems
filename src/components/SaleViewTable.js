import { IconButton, Typography } from '@material-ui/core'
import { More } from '@material-ui/icons'
import React, { useEffect, useState } from 'react'
import { Fragment } from 'react'
import { useSelector } from 'react-redux'
import { selectFilterSale, selectTransactions, setfilterTx,} from '../appState/appSlice'
import PurchaseRepayment from './global/PurchaseRepayment.js'

const SaleViewTable = () => {
    const purchases = useSelector(selectFilterSale)
    const transactions = useSelector(selectTransactions)
    const [rcpt_no, setRcpt_no] = useState()
    const [proptxs, setProptxs] = useState()
   

    useEffect(() =>{
       if(!purchases.length >0){
            return setProptxs('')
       }
       const ftxs = transactions && transactions.filter(tx =>tx.rcpt_no == purchases[0].uuid);
       return setProptxs(ftxs)
    }, [purchases, rcpt_no])
    return (
        <Fragment>
            <table className='table-hover'
                style={{width: '98%', margin: 'auto'}}
            >
                <thead>
                    <th style={{ border: '1px solid #F7F7F7F7', textAlign: 'center' }}>#</th>
                    <th style={{ border: '1px solid #F7F7F7F7', textAlign: 'center' }}>Property</th>
                    <th style={{ border: '1px solid #F7F7F7F7', textAlign: 'center' }}>Date Sold</th>
                    <th style={{ border: '1px solid #F7F7F7F7', textAlign: 'center' }}>Due Date</th>
                    <th style={{ border: '1px solid #F7F7F7F7', textAlign: 'center' }}>Amount (<s>N</s>)</th>
                    <th style={{ border: '1px solid #F7F7F7F7', textAlign: 'center' }}> </th>
                </thead>
                <tbody>
                           {
                               purchases &&
                               purchases.map((sale, index) =>{
                                   const {property_name, sale_date, due_date, uuid, amount } = sale
                                   return(
                                       <Fragment key={index}>
                                            <tr>
                                                <td style={{textAlign: 'center'}}> {index+1} </td>
                                                <td style={{textAlign: 'left'}}>
                                                    {property_name}
                                                </td>
                                                <td style={{textAlign: 'center'}}> {new Date(sale_date).toLocaleDateString()} </td>
                                                <td style={{textAlign: 'center'}}> {new Date(due_date).toLocaleDateString()} </td>
                                                <td style={{textAlign: 'center'}}> {amount.toLocaleString()} </td>
                                                <td style={{display: 'flex', alignItems: 'center', justifyContent: 'center'}}>
                                                    <div>
                                                    <IconButton size='small'
                                                        onClick={() =>setRcpt_no(uuid)}
                                                    >
                                                        <More style={{color: '#20c997'}} />
                                                    </IconButton>
                                                    </div>
                                                </td>
                                            </tr>
                                        </Fragment>
                                   )
                               })
                           }
                           {
                           rcpt_no&&
                           <tr
                            style={{background: '#2A3F54', color: 'white'}} 
                           >
                               <td colSpan={3}>
                                   <Typography variant='h6'
                                    style={{color: '#20c997'}}
                                   >
                                        Repayment History
                                    </Typography>
                               </td>
                               <td style={{textAlign: 'center'}}>
                                   <Typography variant='subtitle1'
                                    style={{color: 'white'}}
                                   >
                                    
                                   </Typography>
                               </td>
                               <td colSpan={2}></td>
                           </tr>
                       }
                       </tbody>
            </table>
            {
               rcpt_no &&
                <PurchaseRepayment txs={proptxs} name={purchases? purchases[0].applicant_name: null} />
            }
        </Fragment>
    )
}

export default SaleViewTable
