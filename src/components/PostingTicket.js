import { Avatar, Button, Checkbox, Divider, FormLabel, Grid, IconButton, Paper, TextField, Typography } from '@material-ui/core'
import { CheckCircle, Close, Print } from '@material-ui/icons'
import React from 'react'
import { Fragment } from 'react'
import { useSelector } from 'react-redux'
import { selectUser } from '../appState/appSlice'

const PostingTicket = ({ data, message, 
        handleChange, handlePost, setData, setMessage
    }) => {
    const user = useSelector(selectUser)
    const printReceipt =()=>{
        window.print()
    }
    return (
        <Grid item lg={12} md={12} sm={12}>
            <Paper className='p-2 mb-5 printerarea'>
                <div style={{ display: 'flex', alignItems: 'center',
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
                        {
                            message && 
                            <IconButton size='small'>
                                <CheckCircle style={{color: '#20c997'}} />
                            </IconButton>
                        }
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
                    <p>
                        Date: </p>
                        <TextField 
                            fullWidth
                            type='date'
                            placeholder='Due Date'
                            className='ml-3'
                            name='due_date'
                            value={data.due_date}
                            size='small'
                            onChange={e =>handleChange(e)}
                        />
                    
                </div>
                <div style={{display: 'flex'}}>
                    <p>
                        From: </p>
                        <TextField
                            fullWidth
                            size='small'
                            placeholder='Customer(client)'
                            value={data.applicant_name}
                            className='ml-3'
                        />
                    
                </div>
                <div style={{display: 'flex'}}>
                    <p>
                        Sum:  </p>
                        <TextField 
                            fullWidth
                            size='small'
                            type='number'
                            name='amount'
                            className='ml-3'
                            value={data.amount}
                            placeholder='Amount (10000)'
                            value={data.amount}
                            onChange={e =>handleChange(e)}

                        />
                    
                </div>
                <div style={{display: 'flex'}}>
                        <div style={{flex: 1, display: 'flex'}}>
                            <p>Amt:</p>
                            <TextField 
                            fullWidth
                            size='small'
                            className='ml-3'
                            placeholder='Amount in words'
                            name='amount_in_words'
                            value={data.amount_in_words}
                            onChange={e =>handleChange(e)}
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
                        <FormLabel> Being payment for:  </FormLabel>
                        <TextField
                            fullWidth
                            size='small'
                            name='description'
                            placeholder='Property'
                            value={data.description}
                            onChange={e =>handleChange(e)}
                        />
                    
                </div>
                <div style={{display: 'flex', alignItems: 'center',
                justifyContent: 'space-between'}}>
                    Cheque: <Checkbox
                                size='small'
                                checked={data.pay_method=='cheque'}
                                onChange={() =>{setData({
                                    ...data,
                                    pay_method: 'cheque'
                                })}}
                                style={{border: '1px solid color: black', 
                                background: '#2A3F54'}} 
                            /> 
                    Cash: <Checkbox
                                size='small' 
                                checked={data.pay_method=='cash'}
                                onChange={() =>{setData({
                                    ...data,
                                    pay_method: 'cash'
                                })}}                           
                                style={{border: '1px solid color: black', 
                                background: '#2A3F54'}} 
                            />
                    Trans: <Checkbox
                                size='small' 
                                checked={data.pay_method=='transfer'}
                                onChange={() =>{setData({
                                    ...data,
                                    pay_method: 'transfer'
                                })}}                           
                                style={{border: '1px solid color: black', 
                                background: '#2A3F54'}} 
                            />
                    <div
                    style={{border: '2px solid black'}}
                    >
                        <s>N</s><input
                            readOnly
                            value={data.amount}
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
                   { !message &&
                    <Button variant='contained'
                            className='mt-3'
                                onClick={e =>handlePost(e)}
                            style={{ color: 'white', background: '#2A3F54', borderRadius: '5px'}}
                        >
                            Post
                        </Button>
                    }

                    {
                        message &&
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
                                onClick={() =>setMessage(false)}
                                endIcon={<Close color='error' />}
                                variant='outlined' color='secondary'>
                                Clear
                            </Button>
                        </Fragment>
                       
                    }
                </div>
            </Paper>
        </Grid>
  
    )
}

export default PostingTicket
