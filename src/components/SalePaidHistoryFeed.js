import { Button, Grid, Typography } from '@material-ui/core'
import { UndoRounded } from '@material-ui/icons'
import React, {useEffect} from 'react'
import { Fragment } from 'react'
import { useSelector } from 'react-redux'
import { useHistory, useParams } from 'react-router-dom/cjs/react-router-dom.min'
import { selectAccounts, selectPaymentHistory, selectTxAccounts } from '../appState/appSlice'
import CustomerCard from './CustomerCard'
import AppHeader from './global/AppHeader'
import SalePaidHistoryView from './SalePaidHistoryView'

const SalePaidHistoryFeed = () => {
    const params = useParams()
    const {name} = params
    const history = useHistory()
    const txAccounts = useSelector(selectTxAccounts)
    const paymentHistorys = useSelector(selectPaymentHistory)
    const accounts = useSelector(selectAccounts)

    const renderAccountDetails = (account_FK) =>{
        
        const account = accounts && accounts.find(acc =>acc.code == account_FK )
        return account && account.name
        
    }

    return (
        <div className='app__Feed'>
            <AppHeader title='Posting' />
            <div className='m-3'>
                <Grid container spacing={2}>
                    <Grid item lg={3} md={3}
                        style={{
                            top: 0,
                            height: '100vh',
                            overflow: 'auto',
                            position: 'sticky'
                        }}
                        className='hide-on-print'
                    >
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
                    <Grid item lg={9} md={9} 
                        style={{
                            height: '100%',
                            overflowY: 'auto',
                            position: 'sticky'
                        }}
                    >
                      <SalePaidHistoryView 
                        paymentHistorys={paymentHistorys}
                      />
                        {
                            !paymentHistorys?.repayment?.length >0&&
                            
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
                            className='hide-on-print'
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
