import { Button, Grid, Typography } from '@material-ui/core'
import { UndoRounded } from '@material-ui/icons'
import React from 'react'
import { Fragment } from 'react'
import { useSelector } from 'react-redux'
import { useHistory, useParams } from 'react-router-dom/cjs/react-router-dom.min'
import { selectAccountTxs } from '../appState/appSlice'
import AppHeader from './global/AppHeader'

const AccountFeed = () => {
    const params = useParams()
    const {name} = params
    const history = useHistory()
    const accountTxs = useSelector(selectAccountTxs)
    const calcuAmt = (data) =>{
        const total = data && data.reduce((a, v) =>+v.amount+ a, 0)
        return total
    }
    const calcuTotalDR = (data) =>{
        const tDR = data && data.filter(dta => dta.tx_type =='DR')
        const total = tDR&& tDR.reduce((a, v) =>+v.amount+ a, 0)
        return total
    }
    const calcuTotalCR = (data) =>{
        const tCR = data && data.filter(dta => dta.tx_type =='CR')
        const total = tCR&& tCR.reduce((a, v) =>+v.amount+ a, 0)
        return total
    }
    return (
        <div className='app__Feed'>
            <AppHeader title='Posting' />
            <div className='m-3'>
                <Grid container spacing={2}>
                    <Grid item lg={12} md={12} >
                        <table className='table table-sm table-striped table-hover'>
                            <thead>
                                <th style={{ border: '1px solid #F7F7F7F7' }}>#</th>
                                <th style={{ border: '1px solid #F7F7F7F7' }}>Description</th>
                                <th style={{ border: '1px solid #F7F7F7F7' }}>Date</th>
                                <th style={{ border: '1px solid #F7F7F7F7' }}>DR (<s>N</s>)</th>
                                <th style={{ border: '1px solid #F7F7F7F7' }}>CR (<s>N</s>)</th>
                                <th style={{ border: '1px solid #F7F7F7F7' }}> Pay Method </th>
                                {/* <th style={{ border: '1px solid #F7F7F7F7' }}> Status </th> */}
                            </thead>
                            <tbody>
                                {
                                    accountTxs &&
                                    accountTxs.map((pay, index) =>{
                                        const { tx_date, tx_type, description, amount, rcpt_no, pay_method } = pay
                                        return (
                                            <tr key={index}>
                                                <td> {index+1} </td>
                                                <td>
                                                
                                                    {description}
                                                
                                                </td>
                                                <td> {new Date(tx_date).toLocaleDateString()} </td>
                                                <td>
                                                    <Typography variant='p'
                                                        style={{color: '#2A3F54'}} 
                                                    >
                                                        {tx_type =='DR'? amount: null}
                                                    </Typography> 
                                                </td>
                                                <td>
                                                    <Typography variant='p'
                                                        style={{color: '#20c997'}} 
                                                    >
                                                        {tx_type =='CR'? amount: null}
                                                    </Typography> 
                                                </td>
                                                <td> {pay_method} </td>
                                            </tr>
                                        )
                                    })
                                }

                                {
                                    accountTxs&&
                                    <tr
                                        style={{background: 'none'}}
                                    >
                                        <td colSpan={1}></td>
                                        <td colSpan={1}>
                                           <Button variant='contained'
                                            style={{color: 'white', background: 'red'}}
                                           >
                                                <b>Total Debit :</b>
                                           </Button>
                                        </td>
                                        <td colSpan={1}></td>
                                        <td colSpan={1}>
                                            <Typography variant='h5'>
                                                <b>
                                                    <s>N</s>:
                                                    {calcuTotalDR(accountTxs)}
                                                </b>
                                            </Typography>
                                        </td>
                                        <td colSpan={2}></td>
                                    </tr>
                                }

                                {
                                    accountTxs&&
                                    <tr
                                        style={{background: 'none'}}
                                    >
                                        <td colSpan={1}></td>
                                        <td colSpan={1}>
                                           <Button variant='contained'
                                            style={{color: 'white', background: '#2A3F54'}}
                                           >
                                                <b>Total Credit :</b>
                                           </Button>
                                        </td>
                                        
                                        <td colSpan={2}></td>
                                        <td colSpan={1}>
                                            <Typography variant='h5'
                                                style={{color: '#20c997',}}
                                            >
                                                <b>
                                                    <s>N</s>:
                                                    {calcuTotalCR(accountTxs)}
                                                </b>
                                            </Typography>
                                        </td>
                                        <td colSpan={1}></td>
                                    </tr>
                                }

{
                                    accountTxs&&
                                    <tr
                                        style={{background: 'none'}}
                                    >
                                        <td colSpan={1}></td>
                                        <td >
                                           <Button variant='contained'
                                            style={{color: 'white', background: '#20c997'}}
                                           >
                                                <b>Close Balance :</b>
                                           </Button>
                                        </td>
                                        <td colSpan={accountTxs && accountTxs.balance_type=='DR'? 2: 2}></td>
                                        <td ccolSpan={2}>
                                            <Typography variant='h5'
                                                style={{color: '#20c997',}}
                                            >
                                                <b>
                                                    <s>N</s>:
                                                    {calcuTotalDR(accountTxs) >0? calcuTotalCR(accountTxs) - calcuTotalDR(accountTxs):
                                                     calcuTotalCR(accountTxs)}
                                                </b>
                                            </Typography>
                                        </td>
                                        <td colSpan={accountTxs && accountTxs.balance_type=='DR'? 1: 1}></td>
                                    </tr>
                                }
                                
                            </tbody>
                           
                        </table>
                        {
                            !accountTxs.length >0&&
                            <Fragment>
                                <div className='alert alert-warning'>
                                    {`Ops!!! ${name} have no transaction history`}
                                </div>
                            </Fragment>
                            
                        
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

export default AccountFeed
