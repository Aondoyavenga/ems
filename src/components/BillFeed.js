import { Button, Container, FormLabel, Grid, IconButton, Paper, Select, TextField, Typography } from '@material-ui/core'
import { FileCopy, PlusOne,} from '@material-ui/icons'
import axios from 'axios'
import React, { useEffect, useState } from 'react'
import { useDispatch, useSelector } from 'react-redux'
import { selectAccounts, selectBillCategories, selectToken, selectVendors, setBillCategories } from '../appState/appSlice'
import AppHeader from './global/AppHeader'
import AppSnackbar from './global/AppSnackbar'

const BillFeed = ({ setOpen, isOpen, setIsOpen, isWidget, setIswidget }) => {
    const token = useSelector(selectToken)
    const vendors = useSelector(selectVendors)
    const categories = useSelector(selectBillCategories)
    const [success, setSuccess] = useState(false)
    const [message, setMessage] = useState()
    const [vendorSales, setVendorSales] = useState()
    const billFormTemplate = {billcategory:'', amount: '',  description: ''};
    const [billForm, setBillform] = useState([billFormTemplate])

    const [data, setData ] = useState({
        vendor_FK: '', 
        bill_date: '',
        bill_term: '',
        due_date: '',
        VALUES: [],
        uuid: '',
        total: ''
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

    const handleSetTerm = (e) =>{
        const d = new Date()
        const sd = new Date()
        const value = e.target.value;
         const duedate = d.setDate(sd.getDate()+parseInt(value))
            return setData({
                ...data,
                bill_term: value,
                due_date: new Date(duedate)
            })
    }

    const addBillFrom = () =>{
        setBillform([
            ...billForm,
            billFormTemplate
        ])
    }
    const handleChange = (e, index) =>{
        const name = e.target.name;
        const value = e.target.value
        const updatedbillform = billForm.map((jef, i) => index == i ? Object.assign(jef, {[name]: value}): jef);
        setBillform(updatedbillform)

        if(name =='amount') {
            const updatedbillform =  billForm.map((jef, i) => index == i ?
            Object.assign(jef, {'bill_ID': data.uuid, 'createdAt': data.bill_date  }): jef);
        }
    }
    const handleRemovebillform = (index) =>{
        const filterbillform = [...billForm];
        filterbillform.splice(index, 1);
        
        setBillform(filterbillform)
    }

    const calcuAmt = (data) =>{
        const total = data&& data.reduce((a, v) =>+v.amount+ a, 0)
        return total
    }
    // submit post
    const handleSubmit =e =>{
        e.preventDefault()
        setOpen(true)
        axios.post('/bill',data, {
            headers: {
                Authorization: `Bearer ${token}`
            }
        })
        .then(result =>{
            setOpen(false)
            setSuccess(true)
            setMessage(result.data.message)
            setData({
                vendor_FK: '', 
                bill_date: '',
                bill_term: '',
                due_date: '',
                VALUES: [],
                uuid: '',
                total: ''
            })
          
            setBillform([
               billFormTemplate
            ])
        })
        .catch(error =>{
            setOpen(false)
            if(error) {
                return error.response.data
            }
        })
    }


    // useEffect func
    useEffect(() =>{
        
        const fdata = billForm.map(x =>Object.values(x))
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
    }, [billForm])
   
    useEffect(() =>{
        setData({
            ...data,
            total: calcuAmt(billForm)
        })
    }, [data.VALUES])
    useEffect(() =>{
        setData({
            ...data,
            uuid:  new Date().getSeconds().toLocaleString() + new Date().getMinutes().toLocaleString()+new Date().getMilliseconds()
        })
    }, [success])

    useEffect(() =>{
        const filterCategories = categories&&categories.filter(cat => parseInt(cat.vendor_FK) == parseInt(data.vendor_FK))
       if(filterCategories) {
           return  setVendorSales(filterCategories)
       }
      setVendorSales('')
       
    },[data.vendor_FK])
    return (
        <div className={`${isWidget? 'isapp__Feed': 'app__Feed'}`}>
            <AppSnackbar open={success} setOpen={setSuccess} message={message} />
           <AppHeader title='Bill' />
           <div className="row align-items-center justify-content-center d-flex m-1" >
                <div className="col-lg-12 col-md-12">
                    {/* table */}
                    <h3>Bill Entry<span> 
                        <IconButton color='secondary'
                            onClick={() =>setIswidget(!isWidget)}
                        >
                        <FileCopy style={{ color: '#1ABB9C'}} />
                        </IconButton></span></h3> 
                        {/* to do make it a component */}
                        <Grid container spacing={2} className='p-3'>
                            <Grid item lg={4} md={4}>
                                <FormLabel>Vendor</FormLabel>
                                <select
                                    required
                                    name='vendor_FK'
                                    placeholder='Vendor'
                                    style={{border: 'none'}}
                                    value={data.vendor_FK}
                                    onChange={e =>handleSetPostData(e)}
                                >
                                    <option value=''>Select</option>
                                    <option value='-1'>All</option>
                                    {
                                    vendors&&
                                    vendors.map((vendor, index) =>{
                                        const { id, vendor_name} = vendor
                                        return <option value={id} key={index} >{`${vendor_name}`}</option>
                                    })
                                }
                                </select>
                            </Grid>
                                
                                <Grid item lg={8} md={8}
                                    style={{display: 'flex', 
                                    justifyContent: 'flex-end', alignItems: 'flex-end', flexDirection: 'column'}}
                                >
                                    <FormLabel>Amount</FormLabel>
                                    <Typography variant='h5'>
                                        <s>N</s>: {calcuAmt(billForm)}
                                    </Typography>
                                </Grid>
                                
                                <Grid item lg={3} md={3}>
                                    <FormLabel>Period Term</FormLabel>
                                    <select
                                        required
                                        name='bill_term'
                                        value={data.bill_term}
                                        onChange={e =>handleSetTerm(e)}
                                        style={{width: '100%', outline: 'none', border: 'none',
                                        height: '30px'}}
                                    >
                                        <option></option>
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
                                    <FormLabel>Bill Date</FormLabel>
                                    <input
                                        required
                                        name='bill_date'
                                        type='date'
                                        value={data.bill_date}
                                        onChange={e =>handleSetPostData(e)}
                                        style={{width: '100%', outline: 'none', border: 'none',
                                        height: '30px'}}
                                    />
                                </Grid>
                                <Grid item lg={3} md={3}>
                                    <FormLabel>Due Date</FormLabel>
                                    <input
                                        name='due_date'
                                        value={data.due_date ? new Date(data.due_date).toLocaleDateString(): new Date().toLocaleDateString()}
                                        style={{width: '100%', outline: 'none', border: 'none',
                                        height: '30px'}}
                                    />
                                </Grid>
                            
                        </Grid>
                        <h5>
                            Category Details
                            <span>
                                <IconButton
                                    color='secondary'
                                    onClick={() =>setIsOpen(!isOpen)}
                                >
                                    <PlusOne style={{color: '#20c997'}} />
                                </IconButton>
                            </span>
                        </h5>
                    <Paper>
                        <Container className='p-3'>
                        <table className="table-small table-hover table-bordered" style={{width: '100%'}}>
                            <thead>
                                
                                <th>#</th>
                                <th> {' '} </th>
                                <th>Category</th>
                                <th>Amount</th>
                                <th>Description</th>
                               
                                <th></th>
                            </thead>
                            <tbody id='je__Table'>
                                {
                                    billForm.map((categ, index) =>(
                                        <tr>
                                            <td>{index+1} </td>
                                            <td
                                                    onClick={() =>addBillFrom()}
                                                >
                                                    <span className='fa fa-plus-circle fa-1x'
                                                        style={{color: '#20c997'}}
                                                    />
                                            </td>
                                            <td>
                                                <select
                                                    name='billcategory'
                                                    value={categ.billcategory}
                                                    placeholder='Category'
                                                    style={{border: 'none'}}
                                                    onChange={e =>handleChange(e, index)}
                                                >
                                                    <option value=''></option>
                                                    {
                                                        vendorSales&& vendorSales.length > 0?
                                                        vendorSales.map((vsales, index) =>{
                                                            const { id, name} = vsales
                                                            return <option value={id} key={index} >{`${name}`}</option>
                                                        })
                                                    :
                                                       categories&&
                                                       categories.map((category, index) =>{
                                                            const { id, name} = category
                                                            return <option value={id} key={index} >{`${name}`}</option>
                                                        })
                                                    }
                                                   
                                                </select>
                                            </td>
                                            <td>
                                                <input
                                                    name='amount'
                                                    type='number'
                                                    placeholder='Amount'
                                                    value={categ.amount}
                                                    onChange={e =>handleChange(e, index)}
                                                />
                                            </td>
                                            
                                            <td>
                                                <input
                                                    name='description'
                                                    placeholder='Description'
                                                    value={categ.description}
                                                    onChange={e =>handleChange(e, index)}
                                                />
                                            </td>
                     
                                            <td
                                                onClick={() =>handleRemovebillform(index)}
                                            >
                                                    <span className='fa fa-trash'
                                                        style={{color: 'red'}}
                                                    ></span>
                                            </td>
                                        </tr>
                                    ))
                                }
                                    
                            </tbody>
                        </table>
                       
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

export default BillFeed
