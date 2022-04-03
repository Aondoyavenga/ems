import { Button, Container, FormLabel, Grid, IconButton, Paper, Select, TextField, Typography } from '@material-ui/core'
import { Delete, FileCopy, PlusOne, PlusOneOutlined, PlusOneRounded } from '@material-ui/icons'
import axios from 'axios'
import React, { useEffect, useState } from 'react'
import { useSelector } from 'react-redux'
import { selectPropServices, selectCustomers, selectToken } from '../appState/appSlice'
import AppHeader from './global/AppHeader'
import AppSnackbar from './global/AppSnackbar'

const EstimateFeed = ({ setOpen, isWidget, setIswidget }) => {
    const token = useSelector(selectToken)
    const [success, setSuccess] = useState(false)
    const [message, setMessage] = useState()
    const pss = useSelector(selectPropServices)
    const customers = useSelector(selectCustomers)
    const estimateFormTemplate = {pro_service:'', description: '', qty: ''};
    const [estimateForm, setEstimateform] = useState([estimateFormTemplate])
    const [data, setData ] = useState({
        customer_FK: '', 
        estimate_date: '',
        exp_date: '', 
        total: '',
        status: '',
        VALUES: '',
        uuid:''
    })
   
    // func
    const handleSetPostData = e =>{
        const name = e.target.name;
        const value = e.target.value;

        setData({
            ...data,
            [name]: value
        })
    } 
    // func
    const addEstimateFrom = () =>{
        setEstimateform([
            ...estimateForm,
            estimateFormTemplate
        ])
    }
    const handleChange = (e, index) =>{
        const name = e.target.name;
        const value = e.target.value

        const updatedestimateform = estimateForm.map((jef, i) => index == i ?
        Object.assign(jef, {[name]: value, 'estimate_ID': data.uuid, 'createdAt': data.estimate_date }): jef);
        setEstimateform(updatedestimateform)

        if(name =='qty') {
            const updatedestimateform = estimateForm.map((jef, i) => index == i ?
            Object.assign(jef, {'amount': value * jef.rate }): jef);
        }
      
        if(name =='pro_service') {
            const selectedPS = pss.filter(ps => ps.id ==parseInt(value))
            // console.log(selectedPS[0].description)
            const updatedestimateform = estimateForm.map((jef, i) => index == i ?
            Object.assign(jef, {'description': selectedPS[0].description, 'rate': +selectedPS[0].sale_price }): jef);
        }
    }
    const handleRemoveestimateform = (index) =>{
        const filterestimateform = [...estimateForm];
        filterestimateform.splice(index, 1);
        
        setEstimateform(filterestimateform)
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
        axios.post('/estimate',data, {
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
                estimate_date: '',
                exp_date: '', 
                total: '',
                status: '',
                VALUES: '',
                uuid:''
            })
          
            setEstimateform([
                estimateFormTemplate
            ])
        })
        .catch(error =>{
            setOpen(false)
            if(error) {
                return error.response.data
            }
        })
        // console.log(data)
    }
   
    useEffect(() =>{
        
        const fdata = estimateForm.map(x =>Object.values(x))
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
    }, [estimateForm])
   
    useEffect(() =>{
        setData({
            ...data,
            total: calcuAmt(estimateForm)
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
           <AppHeader title='Estimate' />
           <div className="row align-items-center justify-content-center d-flex m-1" >
                <div className="col-lg-12 col-md-12">
                    {/* table */}
                    <h3>Estimate Entry<span> 
                        <IconButton color='secondary'
                            onClick={() =>setIswidget(!isWidget)}
                        >
                        <FileCopy style={{ color: '#1ABB9C'}} />
                        </IconButton></span></h3> 
                        {/* to do make it a component */}
                        <Grid container spacing={2} className='p-3'>
                            <Grid item lg={3} md={3}>
                                <FormLabel>Customer</FormLabel>
                                <select
                                    name='customer_FK'
                                    value={data.customer_FK}
                                    placeholder='Customer'
                                    style={{border: 'none'}}
                                    onChange={e =>handleSetPostData(e)}
                                >
                                    <option value=''></option>
                                    {
                                        customers&&
                                        customers.map((cus, index) =>{
                                            const{id, customer_name} = cus
                                            return <option value={id} key={index} >{customer_name} {id}</option>
                                        })
                                    }
                                </select>
                            </Grid>
                            
                            <Grid item lg={2} md={2}>
                                <FormLabel style={{float: 'center'}}>Status</FormLabel><br />
                                <select
                                    name='status'
                                    value={data.status}
                                    style={{ background: 'inherit',
                                         border: 'none'
                                    }}
                                    onChange={e =>handleSetPostData(e)}
                                >
                                    <option value=''></option>
                                    <option value='1'>Received</option>
                                    <option value='0'>Pending</option>
                                </select>
                            </Grid>

                            <Grid item lg={7} md={7}
                                style={{display: 'flex', 
                                justifyContent: 'flex-end', alignItems: 'flex-end', flexDirection: 'column'}}
                            >
                                <FormLabel>Amount</FormLabel>
                                <Typography variant='h5'>
                                    <s>N</s>: {calcuAmt(estimateForm)}
                                </Typography>
                            </Grid>
                                
                            <Grid item lg={3} md={3}>
                                <FormLabel>Estimate Date</FormLabel>
                                <input
                                    name='estimate_date'
                                    type='date'
                                    value={data.estimate_date}
                                    onChange={e =>handleSetPostData(e)}
                                    style={{width: '100%', outline: 'none', border: 'none',
                                    height: '30px'}}
                                />
                            </Grid>
                                <Grid item lg={3} md={3}>
                                    <FormLabel>Expiration Date</FormLabel>
                                    <input
                                        name='exp_date'
                                        type='date'
                                        value={data.exp_date}
                                        onChange={e =>handleSetPostData(e)}
                                        style={{width: '100%', outline: 'none', border: 'none',
                                        height: '30px'}}
                                    />
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
                                    estimateForm.map((jef, index) =>(
                                        <tr>
                                            <td>{index+1} </td>
                                            <td
                                                    onClick={() =>addEstimateFrom()}
                                                >
                                                     <span className='fa fa-plus-circle fa-1x'
                                                        style={{color: '#20c997'}}
                                                    />
                                            </td>
                                            <td>
                                                <select
                                                    name='pro_service'
                                                    value={jef.pro_service}
                                                    placeholder='Account'
                                                    style={{border: 'none'}}
                                                    onChange={e =>handleChange(e, index)}
                                                >
                                                    <option value=''></option>
                                                    {
                                                        pss&&
                                                        pss.map((ps, index) =>{
                                                            const { id, name, ps_type } = ps
                                                            return <option value={id} key={index} >{`${name}: ${ps_type}`}</option>
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
                                                {/* <input
                                                    name='amount'
                                                    type='number'
                                                    readOnly
                                                    placeholder='Amount'
                                                    value={}
                                                    onChange={e =>handleChange(e, index)}
                                                /> */}
                                               { jef.rate&&jef.qty&&jef.rate*jef.qty }
                                            </td>
                     
                                            <td
                                                onClick={() =>handleRemoveestimateform(index)}
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
                    </Paper>
                </div>
            </div>
        </div>
    )
}

export default EstimateFeed
