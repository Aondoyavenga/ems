import { Button, Container, FormLabel, Grid, IconButton, Paper, Select, TextField, Typography } from '@material-ui/core'
import { Delete, FileCopy, PlusOne, PlusOneOutlined, PlusOneRounded } from '@material-ui/icons'
import axios from 'axios'
import React, { useEffect, useState } from 'react'
import { Fragment } from 'react'
import { useSelector } from 'react-redux'
import { Link } from 'react-router-dom/cjs/react-router-dom.min'
import { selectAccounts, selectCustomers, selectToken } from '../appState/appSlice'
import AppHeader from './global/AppHeader'

const ReceivePaymentFeed = ({ isWidget, setIswidget }) => {
    const token = useSelector(selectToken)
    const accounts = useSelector(selectAccounts)
    const customers = useSelector(selectCustomers)
    const [invoice, setInvoice] = useState()
    const recievePayFormTemplate = {description: '', due_date:'', orig_amount: '', amount_pay: '',  };
    const [receivePayForm, setReceivePayform] = useState([recievePayFormTemplate])
    const [data, setData ] = useState({
        customer_FK: '',
        pay_date: '',
        pay_method: '',
        total: '',
        deposit_account: ''
    })
    const handleSetPostData = e =>{
        const name = e.target.name;
        const value = e.target.value;

        setData({
            ...data,
            [name]: value
        })

    } 

    // func
    const calcuAmt = (data) =>{
        const total = data&& data.reduce((a, v) =>+v.amount+ a, 0)
        return total
    }

    // func
    const addReceivePayFrom = () =>{
        setReceivePayform([
            ...receivePayForm,
            recievePayFormTemplate
        ])
    }
    const handleChange = (e, index) =>{
        const name = e.target.name;
        const value = e.target.value
        const updatedreceivePayform = receivePayForm.map((jef, i) => index == i ? Object.assign(jef, {[name]: value}): jef);
        setReceivePayform(updatedreceivePayform)
    }
    const handleRemovereceivePayform = (index) =>{
        const filterreceivePayform = [...receivePayForm];
        filterreceivePayform.splice(index, 1);
        
        setReceivePayform(filterreceivePayform)
    }
    const handleSubmit =e =>{
        console.log(receivePayForm)
    }

    const get_Customer_Invoice = () =>{
        axios.get(`/invoice/open_invoice/${data.customer_FK}`, {
            headers: {
                Authorization: `Bearer ${token}`
            }
        })
        .then(result =>{
            setInvoice(result.data)
            console.log(result.data)
        })
        .catch(error =>{
            return error
        })
    }

    useEffect(() =>{
        get_Customer_Invoice()
    }, [data.customer_FK])
    return (
        <div className={`${isWidget? 'isapp__Feed': 'app__Feed'}`}>
           <AppHeader title='Receive Payment' />
           <div className="row align-items-center justify-content-center d-flex m-1" >
                <div className="col-lg-12 col-md-12">
                    {/* table */}
                    {/* <h3>Received Payment
                        <span> 
                        <IconButton color='secondary'
                            onClick={() =>setIswidget(!isWidget)}
                        >
                        <FileCopy style={{ color: '#1ABB9C'}} />
                        </IconButton></span>
                    </h3>  */}
                        {/* to do make it a component */}
                        <Grid container spacing={2} className='p-3'>
                            <Grid item lg={4} md={4}>
                                <FormLabel>Customer</FormLabel>
                                <select
                                    name='customer_FK'
                                   
                                    placeholder='Customer'
                                    style={{border: 'none'}}
                                    onChange={e =>handleSetPostData(e)}
                                >
                                    <option value=''>Select</option>
                                    {
                                        customers&&
                                        customers.map((cus, index) =>{
                                            const{id, customer_name} = cus
                                            return <option key={index} value={id} > {customer_name} </option>
                                        })
                                    }
                                </select>
                            </Grid>
                                
                                <Grid item lg={8} md={8}
                                    style={{display: 'flex', 
                                    justifyContent: 'flex-end', alignItems: 'flex-end', flexDirection: 'column'}}
                                >
                                    <FormLabel>Received Amount</FormLabel>
                                    <Typography variant='h5'>
                                        <s>N</s>: {
                                            invoice&&
                                            calcuAmt(invoice)
                                        }
                                    </Typography>
                                </Grid>
                                
                                <Grid item lg={3} md={3}>
                                    <FormLabel>Pay Method</FormLabel>
                                    <select
                                        name='pay_method'
                                        onChange={e =>handleSetPostData(e)}
                                        style={{width: '100%', outline: 'none', border: 'none',
                                        height: '30px'}}
                                    >
                                        <option></option>
                                        <option value='cash'>Cash</option>
                                        <option value='cheque'>Cheque</option>
                                    </select>
                                </Grid>
                                <Grid item lg={3} md={3}>
                                    <FormLabel>Payment Date</FormLabel>
                                    <input
                                        name='pay_date'
                                        type='date'
                                        value={data.pay_date}
                                        onChange={e =>handleSetPostData(e)}
                                        style={{width: '100%', outline: 'none', border: 'none',
                                        height: '30px'}}
                                    />
                                </Grid>
                                <Grid item lg={3} md={3}>
                                    <FormLabel>Deposit To</FormLabel>
                                    <select
                                        name='deposit_account'
                                        value={data.deposit_account}
                                        style={{width: '100%', outline: 'none', border: 'none',
                                        height: '30px'}}
                                    >
                                        <option></option>
                                        <option value='cash'>Cash</option>
                                        {
                                            accounts&&
                                            accounts.map((acc, index) =>{
                                                const{id, name} = acc;
                                                return <option key={index} value={id}> {name} </option>
                                            })
                                        }
                                    </select>
                                </Grid>
                            
                        </Grid>
                        <h5>
                            Details
                        </h5>
                    <Paper>
                        <Container className='p-3'>
                        <table className="table-small table-hover table-bordered" style={{width: '100%'}}>
                            <thead>
                                
                                <th>#</th>
                                {/* <th> {' '} </th> */}
                                <th>Description</th>
                                <th>Due Date</th>
                                <th>Amount (<s>N</s>) </th>
                               
                            </thead>
                            <tbody id='je__Table'>
                                {
                                    invoice && 
                                    invoice.map((invoi, index) =>{
                                        const { amount, uuid, due_date } = invoi
                                        return (
                                            <Fragment key={index}>
                                                <tr>
                                                    <td> { index+1} </td>
                                                    <td>
                                                        <Typography variant='p'
                                                            style={{cursor: 'pointer', color: '#20C997'}}
                                                        >
                                                            { `Invoice (${uuid})` }
                                                        </Typography>
                                                    </td>
                                                    <td> { new Date(due_date).toLocaleDateString() } </td>
                                                    <td> { amount } </td>
                                                </tr>
                                            </Fragment>
                                        )
                                    })
                                }
                                {/* {
                                    receivePayForm.map((jef, index) =>(
                                        <tr>
                                            <td>{index+1} </td>
                                            <td
                                                    onClick={() =>addReceivePayFrom()}
                                                >
                                                    <span className='fa fa-plus-circle fa-1x'></span>
                                            </td>
                                            <td>
                                                <select
                                                    name='pro_service'
                                                    value={jef.account}
                                                    placeholder='Account'
                                                    style={{border: 'none'}}
                                                    onChange={e =>handleChange(e, index)}
                                                >
                                                    <option value=''></option>
                                                    {
                                                        accounts&&
                                                        accounts.map((acc, index) =>{
                                                            const { id, name, balance_type } = acc
                                                            return <option value={id} key={index} >{`${name} (${balance_type})`}</option>
                                                        })
                                                    }
                                                </select>
                                            </td>
                                            
                                            <td>
                                                <input
                                                    name='due_date'
                                                    value={jef.due_date}
                                                    onChange={e =>handleChange(e, index)}
                                                />
                                            </td>

                                            <td>
                                                <input
                                                    name='qty'
                                                    type='number'
                                                    placeholder='Old Amount'
                                                    value={jef.orig_amount}
                                                    onChange={e =>handleChange(e, index)}
                                                />
                                            </td>

                                            <td>
                                                <input
                                                    name='rate'
                                                    type='number'
                                                    placeholder='Payment Amount'
                                                    value={jef.amount_pay}
                                                    onChange={e =>handleChange(e, index)}
                                                />
                                            </td>

                                         
                                        </tr>
                                    ))
                                } */}
                            
                            </tbody>
                        </table>
                        {invoice&& !invoice.length>0&&
                            <div className="alert alert-warning">
                            <h6>No Invoice Availabe For Selected Customer</h6>
                            </div>
                        }
                        <Button
                           className='m-3'
                           variant='contained'
                           onClick={e =>handleSubmit(e)}
                           style={{background: '#2A3F54', color: 'white'}}
                        >Save</Button>
                        </Container>
                    </Paper>
                </div>
            </div>
        </div>
    )
}

export default ReceivePaymentFeed
