import { Button, Checkbox, FormLabel, Grid, Paper, TextField, Typography } from '@material-ui/core'
import React from 'react'
import { Fragment } from 'react'

const Receipt = ({ sale_uuid, amount, date, applicant_name, property_name }) => {
    return (
        <Fragment>
            <Grid item lg={12} md={12} sm={12}>
                <Paper className='p-2 mb-5'>
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
                            <Button variant='contained' style={{background: '#2A3F54', 
                                color: 'white'}}>
                                CASH RECEIPT
                            </Button>
                            <Typography style={{marginLeft: '10px'}}>
                                <b>NO: {sale_uuid} </b>
                            </Typography>
                        </div>
                    </div>
                    <div style={{display: 'flex'}}>
                        <p>
                            Date: </p>
                            <TextField 
                                fullWidth
                                disabled
                                className='ml-3'
                                value={new Date(date).toLocaleDateString()}
                                size='small'
                            />
                        
                    </div>
                    <div style={{display: 'flex'}}>
                        <p>
                            From: </p>
                            <TextField
                                disabled
                                fullWidth
                                size='small'
                                value={applicant_name}
                                className='ml-3'
                            />
                        
                    </div>
                    <div style={{display: 'flex'}}>
                        <p>
                            Sum:  </p>
                            <TextField 
                                fullWidth
                                disabled
                                size='small'
                                className='ml-3'
                                value={Math.round(parseInt(amount))}
                            />
                        
                    </div>
                    <div style={{display: 'flex'}}>
                        
                            <TextField 
                                fullWidth
                                size='small'
                                disabled
                            />
                            <span>Naira</span>
                            <TextField 
                            disabled 
                            value={`00.00`}
                            className='ml-5'
                            /> Kobo
                        
                    </div>
                    <div style={{display: 'flex'}}>
                            <FormLabel> Being payment for </FormLabel>
                            <TextField 
                                fullWidth
                                disabled
                                size='small'
                                value={property_name}
                            />
                        
                    </div>
                    <div style={{display: 'flex', alignItems: 'center',
                    justifyContent: 'space-between'}}>
                        Cheque: <Checkbox style={{border: '1px solid color: black', 
                                                    background: '#2A3F54'}} /> 
                        Cash: <Checkbox style={{border: '1px solid color: black', 
                                                    background: '#2A3F54'}} />
                        <div
                        style={{border: '2px solid black'}}
                        >
                            <s>N</s><input
                                readOnly
                                value={Math.round(parseInt(amount))}
                                style={{ border: 'none', outline: 'none', margin: '5px' }}
                            /> :K
                        </div>
                        <div style={{ display: 'flex', flexDirection: 'column' }}>
                            <TextField />
                            <FormLabel>
                                Receiver's Signature
                            </FormLabel>
                        </div>
                    </div>
                </Paper>
            </Grid>
        </Fragment>
    )
}

export default Receipt
