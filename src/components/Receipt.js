import { Avatar, Button, Checkbox, Divider, FormLabel, Grid, IconButton, Paper, TextField, Typography } from '@material-ui/core'
import { CheckCircle, Close, Print } from '@material-ui/icons'
import React from 'react'
import { Fragment } from 'react'
import { useSelector } from 'react-redux'
import { selectUser, selectAccounts } from '../appState/appSlice'

const Receipt = ({ data, setOpen}) => {
    const user = useSelector(selectUser)
    const accounts = useSelector(selectAccounts);
    const printReceipt =()=>{
        window.print()
    }
    console.log(data)
    return (
        <Grid item lg={12} md={12} sm={12} >
            <Paper className='p-2 mb-3 printerarea'>
                <div style={{ 
                    display: 'flex',
                    alignItems: 'center',
                    flexDirection: 'column'
                }}>
                    <Typography variant='h3'>
                        SANTOS ESTATE LTD.
                    </Typography>
                    <Typography variant='p'>
                        Suite B22 AJB Mall, Gudu District, Abuja
                    </Typography>
                    <Typography variant='caption'>
                        Tel: 08036488807, 08023058629
                    </Typography>
                    <div style={{display: 'flex', alignItems: 'center'}}>
                       
                        <IconButton size='small'>
                            <CheckCircle style={{color: '#20c997'}} />
                        </IconButton>
                        
                        <Button variant='contained' style={{background: '#2A3F54', 
                            color: 'white'}}>
                            CASH RECEIPT
                        </Button>
                        <Typography style={{marginLeft: '10px'}}>
                            <b>NO: {data.rcpt_no} </b>
                        </Typography>
                    </div>
                </div>
                <div style={{display: 'flex'}}>
                    <p
                        style={{
                            flex: 1
                        }}
                    >InvNo: </p>
                        <TextField 
                            fullWidth
                            type='text'
                            placeholder='Slip, Ticket, Receipt Or Invoice No...'
                            className='ml-3'
                            name='ticket_no'
                            value={data.rcpt_no}
                            size='small'
                            disabled
                        />
                    <p>  Date: </p>
                        <TextField 
                            fullWidth
                           
                            placeholder='Tx Date'
                            className='ml-3'
                            name='tx_date'
                            value={new Date(data.tx_date).toLocaleDateString()}
                            size='small'
                            disabled
                        />
                </div>
                <div style={{display: 'flex'}}>
                    <p>
                        From: </p>
                        <TextField
                            fullWidth
                            size='small'
                            disabled
                            placeholder='Customer(client)'
                            value={data.applicant_name}
                            className='ml-3'
                        />
                    
                </div>
                <div style={{ display: 'flex'}}>
                    <p>Sum:  </p>
                    <TextField
                        fullWidth
                        size='small'
                        name='amount'
                        className='ml-3'
                        value={data.tx_amount.toLocaleString()}
                        placeholder='Amount (10000)'
                      
                        disabled
                        style={{flex: 2}}
                    />
                   
                </div>
                <div style={{display: 'flex'}}>
                    <div style={{flex: 1, display: 'flex'}}>
                        <p>Amt:</p>
                        <TextField 
                            fullWidth
                            size='small'
                            className='ml-3'
                            
                            name='amount_in_words'
                            value={data.amount_in_words}
                            disabled
                        />
                    </div>
                    <span>Naira</span>
                    <TextField 
                        disabled 
                        value={`00.00`}
                        className='ml-5'
                    /> Kobo
                </div>
                <div style={{display: 'flex'}}>
                        <p className='mr-2'> Desc:  </p>
                        <TextField
                            fullWidth
                            multiline
                            size='small'
                            name='description'
                            placeholder='Property'
                            value={data.description}
                            disabled
                        />
                    
                </div>
                <div style={{display: 'flex', alignItems: 'center',
                justifyContent: 'space-between'}}>
                    Cheque: <Checkbox
                                size='small'
                                checked={data.pay_method=='cheque'}
                                
                                style={{border: '1px solid color: black', 
                                background: '#2A3F54'}} 
                            /> 
                    Cash: <Checkbox
                                size='small' 
                                checked={data.pay_method=='cash'}
                                                        
                                style={{border: '1px solid color: black', 
                                background: '#2A3F54'}} 
                            />
                    Trans: <Checkbox
                                size='small' 
                                checked={data.pay_method=='transfer'}
                                                         
                                style={{border: '1px solid color: black', 
                                background: '#2A3F54'}} 
                            />
                    <div
                    style={{border: '2px solid black'}}
                    >
                        <s>N</s><input
                            readOnly
                            value={parseInt(data.tx_amount).toLocaleString()}
                            style={{ border: 'none', outline: 'none', margin: '5px' }}
                        /> :K
                    </div>
                    <div style={{ display: 'flex', flexDirection: 'column' }}>
                        <Avatar src={user.signature} />
                        <FormLabel>
                            Receiver's Signature
                        </FormLabel>
                    </div>
                </div>
                <Divider />
                <div
                    className='hide-on-print'
                    style={{display: 'flex', alignItems: 'center', 
                        justifyContent: 'center', gap: '30px'}}
                >
                   
                    <Fragment>
                            <Button
                            variant='contained'
                            className='mt-3'
                            endIcon={<Print />}
                            onClick={() =>printReceipt()}
                            style={{ color: 'white', background: '#20c997', borderRadius: '5px'}}
                        >
                            print
                        </Button>
                        <Button
                            className='mt-3'
                            onClick={() =>setOpen(false)}
                            endIcon={<Close color='error' />}
                            variant='outlined' color='secondary'>
                            Clear
                        </Button>
                    </Fragment>
                       
                    
                </div>
            </Paper>
        </Grid>
  
    )
}

export default Receipt
