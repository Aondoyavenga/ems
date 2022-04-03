import { Paper, Typography } from '@material-ui/core'
import React from 'react'
import { useSelector } from 'react-redux'
import { Link } from 'react-router-dom'
import { selectUserInvoices } from '../appState/appSlice'
import AppWidgetHeader from './global/AppWidgetHeader'

const InvoiceWidget = ({ isWidget, setIswidget }) => {
    const invoices = useSelector(selectUserInvoices)
// func
    const calcuAmt = (data) =>{
        const total = data&& data.reduce((a, v) =>+v.amount+ a, 0)
        return total
    }
    return (
        <div className='app__Widget'>
            <AppWidgetHeader
                isWidget={isWidget}
                setIswidget={setIswidget}
                title='Invoice List' 
            />
            <section className='app__WidgetContainer mt-3'>
                <table className='table table-sm table-striped table-hover'>
                    <thead>
                        <th style={{ border: '1px solid #F7F7F7F7' }}>#</th>
                        <th style={{ border: '1px solid #F7F7F7F7' }}>Description</th>
                        <th style={{ border: '1px solid #F7F7F7F7' }}>Due Date</th>
                        <th style={{ border: '1px solid #F7F7F7F7' }}>Amount (<s>N</s>)</th>
                        {/* <th style={{ border: '1px solid #F7F7F7F7' }}>Action</th> */}
                    </thead>
                    <tbody>
                        {
                            invoices &&
                            invoices.map((invoice, index) =>{
                                const { uuid, invoice_date, due_date, amount } = invoice
                                return(
                                <tr key={index}>
                                <td> { index+1 } </td>
                                <td>
                                    {`Invoice #${uuid} `}
                                </td>
                                <td> {new Date(due_date).toLocaleDateString()} </td>
                                <td> {amount} </td>
                                <td></td>
                                </tr>
                                )
                            })
                        }
                        {
                           invoices&&
                           <tr
                            style={{background: '#2A3F54', color: 'white'}} 
                           >
                               <td colSpan={3}>
                                   <Typography variant='subtitle1'
                                    style={{color: 'white'}}
                                   >
                                        <b>Total:</b>
                                    </Typography>
                               </td>
                               <td>
                                   <Typography variant='subtitle1'
                                    style={{color: 'white'}}
                                   >
                                    <b>{
                                       calcuAmt(invoices)
                                    }</b>
                                   </Typography>
                               </td>
                               <td colSpan={1}></td>
                           </tr>
                       }
                    </tbody>
                </table>
            </section>
        </div>
    )
}

export default InvoiceWidget
