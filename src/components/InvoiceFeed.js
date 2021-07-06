import { Button, Container, FormLabel, Grid, IconButton, Paper, Select, TextField, Typography } from '@material-ui/core'
import { Delete, FileCopy, PlusOne, PlusOneOutlined, PlusOneRounded } from '@material-ui/icons'
import axios from 'axios'
import React, { useEffect, useState } from 'react'
import { useDispatch, useSelector } from 'react-redux'
import { selectPropServices, selectCustomers, selectToken, selectOpenEstimate, setOpenEstimate } from '../appState/appSlice'
import AppHeader from './global/AppHeader'
import AppSnackbar from './global/AppSnackbar'

const InvoiceFeed = ({  open, setOpen, isWidget, setIswidget }) => {
    const dispatch = useDispatch()
    const token = useSelector(selectToken)
    const props = useSelector(selectPropServices)
    const customers = useSelector(selectCustomers)
    const openEstimate = useSelector(selectOpenEstimate)
    const pss = useSelector(selectPropServices)
    const [noestimate, setNoestimate] = useState(false)
    const [success, setSuccess] = useState(false)
    const [message, setMessage] = useState()
    const invoiceFormTemplate = {pro_service:'', description: '', qty: '', rate: '',  amount: '',  };
    const [invoiceForm, setInvoiceform] = useState([])

    const [data, setData ] = useState({
        asset_account_FK: openEstimate.asset_account_FK,
        customer_FK: '', 
        invoice_date: '',
        invoice_term: '',
        due_date: '',
        VALUES: [],
        uuid: '',
        total: ''
    })

    // func
    const get_OpenEstimate =(cus_FK) =>{
       
        axios.get(`estimate/${cus_FK}`, {
            headers: {
                Authorization: `Bearer ${token}`
            }
        })
        .then(result =>{
            setNoestimate(false)
            dispatch(setOpenEstimate(result.data))
        })
        .catch(error =>{
            if(error) {
                setNoestimate(false)
                dispatch(setOpenEstimate(''))
            }
        })
    }

    const handleSetPostData = e =>{
        const name = e.target.name;
        const value = e.target.value;

        setData({
            ...data,
            [name]: value
        })

    } 

    const handleSetTerm = (e) =>{
        const d = new Date()
        const sd = new Date()
        const value = e.target.value;
         const duedate = d.setDate(sd.getDate()+parseInt(value))
            return setData({
                ...data,
                invoice_term: value,
                due_date: new Date(duedate)
            })
    }

    // func
    const addInvoiceFrom = () =>{
        setInvoiceform([
            ...invoiceForm,
            invoiceFormTemplate
        ])
    }
  

    useEffect(() =>{
        const form = []
        for(let i= 0; i <openEstimate.length;  i++){
           

            form.push(
                {
                    pro_service:  openEstimate&& openEstimate[i].id, 
                    description:  openEstimate&& openEstimate[i].description, 
                    qty:  openEstimate&& openEstimate[i].qty,
                    invoice_ID: data.uuid,
                    rate:  openEstimate&& openEstimate[i].rate,  
                    amount:  openEstimate&& openEstimate[i].amount,
                    createdAt: data.invoice_date 
                }
            )
        }
        return setInvoiceform(form)
    },[openEstimate])

    useEffect(() =>{
        setInvoiceform([
            invoiceFormTemplate
        ])
       
    },[!openEstimate])
    const handleChange = (e, index) =>{
        const name = e.target.name;
        const value = e.target.value
   
        const updatedinvoiceform =  invoiceForm.map((jef, i) => index == i ?
        Object.assign(jef, {[name]: value, 'invoice_ID': data.uuid, 'createdAt': data.invoice_date }): jef);
        setInvoiceform(updatedinvoiceform)

        if(name =='qty') {
            const updatedinvoiceform =  invoiceForm.map((jef, i) => index == i ?
            Object.assign(jef, {'amount': value * jef.rate, 'invoice_ID': data.uuid, 'createdAt': data.invoice_date  }): jef);
        }
      
        if(name =='pro_service') {
            const selectedPS = pss.filter(ps => ps.id ==parseInt(value))
            // console.log(selectedPS[0].description)
            const updatedinvoiceform =  invoiceForm.map((jef, i) => index == i ?
            Object.assign(jef, {'description': selectedPS[0].description, 'rate': +selectedPS[0].sale_price }): jef);
        }
    }
    const handleRemoveinvoiceform = (index) =>{
        const filterinvoiceform = [...invoiceForm];
        filterinvoiceform.splice(index, 1);
        
        setInvoiceform(filterinvoiceform)
    }
// func
    const calcuAmt = (data) =>{
        const total = data&& data.reduce((a, v) =>+v.amount+ a, 0)
        return total
    }

       // handle submit
    const handleSubmit = e =>{
        
        e.preventDefault()
        setOpen(true)
        axios.post('/invoice',data, {
            headers: {
                Authorization: `Bearer ${token}`
            }
        })
        .then(result =>{
            setOpen(false)
            setSuccess(true)
            setMessage(result.data.message)
            setData({
                customer_FK: '', 
                invoice_date: '',
                invoice_term: '',
                due_date: '',
                VALUES: [],
                uuid: '',
                total: ''
            })
          
            setInvoiceform([
                invoiceFormTemplate
            ])
        })
        .catch(error =>{
            setOpen(false)
            if(error) {
                return error.response.data
            }
        })
    }

    useEffect(() =>{
        get_OpenEstimate(data.customer_FK)
    }, [data.customer_FK])

    useEffect(() =>{
        
        const fdata = invoiceForm.map(x =>Object.values(x))
        const findal =[]
        // const data = fdata
        for(let i =0; i< fdata.length; i++){
            const element = fdata[i]
            findal.push(element)
        }
        
         setData({
            ...data,
            VALUES: findal
        })
    }, [invoiceForm])
   
    useEffect(() =>{
        setData({
            ...data,
            total: calcuAmt(invoiceForm)
        })
    }, [data.VALUES])
    useEffect(() =>{
        setData({
            ...data,
            uuid:  new Date().getSeconds().toLocaleString() + new Date().getMinutes().toLocaleString()+new Date().getMilliseconds()
        })
    }, [success])
   
    return (
        <div className={`${isWidget? 'isapp__Feed': 'app__Feed'}`}>
            <AppSnackbar open={success} setOpen={setSuccess} message={message} />
           <AppHeader title='Invoice' />
           <div className="row align-items-center justify-content-center d-flex m-1" >
                <div className="col-lg-12 col-md-12">
                    {/* table */}
                    <h3>Invoice Entry<span> 
                        <IconButton color='secondary'
                            onClick={() =>setIswidget(!isWidget)}
                        >
                        <FileCopy style={{ color: '#1ABB9C'}} />
                        </IconButton></span></h3> 
                        {/* to do make it a component */}
                        <Grid container spacing={2} className='p-3'>
                            <Grid item lg={4} md={4}>
                                <FormLabel>Customer</FormLabel>
                                <select
                                    name='customer_FK'
                                    value={data.customer_FK}
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
                                    <FormLabel>Due Balance</FormLabel>
                                    <Typography variant='h5'>
                                        <s>N</s>: {invoiceForm.length>0 && calcuAmt(invoiceForm)}
                                    </Typography>
                                </Grid>
                                
                                <Grid item lg={3} md={3}>
                                    <FormLabel>Period Term</FormLabel>
                                    <select
                                        name='invoice_term'
                                        style={{width: '100%', 
                                        outline: 'none', border: 'none',
                                        height: '30px'}}
                                        value={data.invoice_term}
                                        onChange={ e => handleSetTerm(e)}
                                    >
                                        <option value=''></option>
                                        <option value={7}>7 Days</option>
                                        <option value={14}>14 Days</option>
                                        <option value={21}>21 Days</option>
                                        <option value={28}>28 Days</option>
                                        <option value={30}>30 Days</option>
                                        <option value={60}>60 Days</option>
                                        <option value={90}>90 Days</option>
                                        <option value={120}>120 Days</option>
                                        <option value={150}>150 Days</option>
                                        <option value={180}>180 Days</option>
                                        <option value={210}>210 Days</option>
                                        <option value={240}>240 Days</option>
                                        <option value={270}>270 Days</option>
                                        <option value={300}>300 Days</option>
                                        <option value={330}>330 Days</option>
                                        <option value={360}>360 Days</option>
                                    </select>
                                </Grid>
                                <Grid item lg={3} md={3}>
                                    <FormLabel>Invoice Date</FormLabel>
                                    <input
                                        name='invoice_date'
                                        type='date'
                                        value ={data.invoice_date}
                                        onChange={e =>handleSetPostData(e)}
                                        style={{width: '100%', outline: 'none', border: 'none',
                                        height: '30px'}}
                                    />
                                </Grid>
                                <Grid item lg={3} md={3}>
                                    <FormLabel>Due Date</FormLabel>
                                    <input
                                        name='due_date'
                                        readOnly
                                        value={ data.due_date ? new Date(data.due_date).toLocaleDateString(): new Date().toLocaleDateString()}
                                        onChange={e =>handleSetPostData(e)}
                                        style={{width: '100%', outline: 'none', 
                                        border: 'none',
                                        height: '30px'}}
                                    />
                                </Grid>
                            
                        </Grid>
                        <h5>
                            Details
                        </h5>
                   { !noestimate&&<Paper>
                        <Container className='p-3'>
                        <table className="table-small table-hover table-bordered" style={{width: '100%'}}>
                            <thead>
                                
                                <th>#</th>
                                <th> {' '} </th>
                                <th>Property/Service</th>
                                <th>Description</th>
                                <th>QTY</th>
                                <th>Rate</th>
                                <th>Amount</th>
                                <th></th>
                            </thead>
                            <tbody id='je__Table'>
                                {
                                    invoiceForm && invoiceForm.map((jef, index) =>(
                                        <tr key={index}>
                                            <td>{index+1} </td>
                                            <td
                                                    onClick={() =>addInvoiceFrom()}
                                                >
                                                     <span className='fa fa-plus-circle fa-1x'
                                                        style={{color: '#20c997'}}
                                                    />
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
                                                        props&&
                                                        props.map((ps, index) =>{
                                                            const { id, name, ps_type } = ps
                                                            return <option value={id} key={index} >{`${name} (${ps_type})`}</option>
                                                        })
                                                    }
                                                </select>
                                            </td>
                                            
                                            <td>
                                                <input
                                                    name='description'
                                                    placeholder='Description'
                                                    value={jef.description}
                                                    onChange={e =>handleChange(e, index)}
                                                />
                                            </td>

                                            <td>
                                                <input
                                                    name='qty'
                                                    type='number'
                                                    placeholder='Quantity'
                                                    value={jef.qty}
                                                    onChange={e =>handleChange(e, index)}
                                                />
                                            </td>

                                            <td>
                                                <input
                                                    name='rate'
                                                    type='number'
                                                    placeholder='Rate'
                                                    value={jef.rate}
                                                    onChange={e =>handleChange(e, index)}
                                                />
                                            </td>

                                            <td>
                                                <input
                                                    name='amount'
                                                    type='number'
                                                    placeholder='Amount'
                                                    value={jef.amount}
                                                    onChange={e =>handleChange(e, index)}
                                                />
                                            </td>
                     
                                            <td
                                                onClick={() =>handleRemoveinvoiceform(index)}
                                            >
                                                    <span className='fa fa-trash'
                                                        style={{color: 'red'}}
                                                    ></span>
                                            </td>
                                        </tr>
                                    ))
                                }
                            {/*                                 
                                {
                                   customers&&
                                   customers.map((customer, index) =>{
                                        return <CustomerList
                                            index={index}
                                            {...customer}
                                            isWidget={isWidget}
                                        />
                                    })

                                } */}
                                    
                            </tbody>
                        </table>
                        {/* {customers&& !customers.length>0&&
                            <div className="alert alert-warning">
                            <h6>No Asset Accounts Availabe</h6>
                            </div>
                        } */}
                        <Button
                            className='m-3'
                            variant='contained'
                            onClick={e =>handleSubmit(e)}
                            style={{background: '#2A3F54', color: 'white'}}
                        >submit</Button>
                        </Container>
                    </Paper>}
                </div>
            </div>
        </div>
    )
}

export default InvoiceFeed
