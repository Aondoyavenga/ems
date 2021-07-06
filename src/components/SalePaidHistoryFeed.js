import { Button, Grid, Typography } from '@material-ui/core'
import { UndoRounded } from '@material-ui/icons'
import React from 'react'
import { Fragment } from 'react'
import { useSelector } from 'react-redux'
import { useHistory, useParams } from 'react-router-dom/cjs/react-router-dom.min'
import { selectPaymentHistory, selectTxAccounts } from '../appState/appSlice'
import CustomerCard from './CustomerCard'
import AppHeader from './global/AppHeader'

const SalePaidHistoryFeed = () => {
    const params = useParams()
    const {name} = params
    const history = useHistory()
    const txAccounts = useSelector(selectTxAccounts)
    const paymentHistorys = useSelector(selectPaymentHistory)
    return (
        <div className='app__Feed'>
            <AppHeader title='Posting' />
            <div className='m-3'>
                <Grid container spacing={2}>
                    <Grid item lg={3} md={3}>
                    {
                        txAccounts&&
                        txAccounts.map((txacc, index) => {
                            return (
                                <CustomerCard key={index} {...txacc} 
                                    
                                />
                            )
                        })
                    }
                        
                    </Grid>
                    <Grid item lg={9} md={9} >
                        <table className='table table-sm table-striped table-hover'>
                            <thead>
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
                                    paymentHistorys &&
                                    paymentHistorys.map((pay, index) =>{
                                        const { tx_date, description, tx_amount, rcpt_no, pay_method } = pay
                                        return (
                                            <Fragment key={index}>
                                                <tr>
                                                    <td> {index+1} </td>
                                                    <td>
                                                    
                                                        {description}
                                                    
                                                    </td>
                                                    <td> {new Date(tx_date).toLocaleDateString()} </td>
                                                    <td> {rcpt_no} </td>
                                                    <td> { tx_amount } </td>
                                                    <td> {pay_method} </td>
                                                </tr>
                                            </Fragment>
                                        )
                                    })
                                }
                                {paymentHistorys && paymentHistorys.length > 0 &&
                                    <tr
                                    style={{background: '#2A3F54', color: 'white'}}
                                    >
                                        <td>  </td>
                                        <td colSpan={2}>
                                            <Typography variant={'h6'}>
                                                Outstanding Balance
                                            </Typography>
                                        </td>
                                    {
                                        paymentHistorys && paymentHistorys.length>0&&
                                        <td colSpan={3}>
                                            <Typography variant={'h6'}
                                                style={{color: 'white'}}
                                            >
                                                <s>N</s>: 
                                            {
                                                parseInt(paymentHistorys[0].amount) -
                                                parseInt(paymentHistorys[0].amount_paid)
                                            }
                                            </Typography>
                                            
                                        </td>
                                    }
                                    </tr>
                                }
                            </tbody>
                           
                        </table>
                        {
                            !paymentHistorys.length >0&&
                            
                            <div className='alert alert-warning'>
                                {`Ops!!! ${name} have no repayment history`}
                            </div>
                        
                        }
                        <section
                            className='mt-5'
                            style={{display: 'flex', alignItems: 'center', 
                            justifyContent: 'center'}}
                        >
                        <Button
                            size='medium'
                            variant='contained'
                            onClick={() =>history.goBack()}
                            style={{background: '#2A3F54',color: 'white'}}
                            endIcon={<UndoRounded style={{color: '#20c997'}} />}
                        >
                            Back
                        </Button>
                        </section>
                    </Grid>
                </Grid>
            </div>
        </div>
    )
}

export default SalePaidHistoryFeed
