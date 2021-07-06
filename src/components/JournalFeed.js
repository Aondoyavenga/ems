import { Button, Container, Grid, IconButton, Paper, Select, TextField, Typography } from '@material-ui/core'
import { Delete, FileCopy, PlusOne, PlusOneOutlined, PlusOneRounded } from '@material-ui/icons'
import axios from 'axios'
import React, { useEffect, useState } from 'react'
import { useSelector } from 'react-redux'
import { selectAccounts, selectToken, selectUser } from '../appState/appSlice'
import AppHeader from './global/AppHeader'
import AppSnackbar from './global/AppSnackbar'

const JournalFeed = ({ setOpen, isWidget, setIswidget }) => {
    const token = useSelector(selectToken)
    const user = useSelector(selectUser)
    const accounts = useSelector(selectAccounts)
    const [success, setSuccess] = useState(false)
    const [Error, setError] = useState()
    const [message, setMessage] = useState()
    const jeFormTemplate = {account_FK:'', tx_type: '', paid: 1, pay_method: '', amount: '', description: ''};
    const [jeForm, setJeform] = useState([jeFormTemplate])
    const [data, setData] = useState({
        je_ID: '',
        name: '',
        total: '',
        je_date: '',
        VALUES: []
    })
    // func
    const addJeFrom = () =>{
        setJeform([
            ...jeForm,
            jeFormTemplate
        ])
    }
   
    const handleRemoveJeform = index =>{
        const filterJeform = [...jeForm];
        filterJeform.splice(index, 1);
        
        setJeform(filterJeform)
    }
    
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

    const handleChange = (e, index) =>{
        const name = e.target.name;
        const value = e.target.value
        const updatedJeform = jeForm.map((jef, i) => index == i ? Object.assign(jef, {[name]: value}): jef);
        setJeform(updatedJeform)

        if(name =='amount') {
            const updatedJeform =  jeForm.map((jef, i) => index == i ?
            Object.assign(jef, {'rcpt_no': data.je_ID, 'tx_date': data.je_date, 'postedBy_FK': user.username, 'createdAt': new Date(), 'uuid': data.je_ID  }): jef);
        }

        if(name =='pay_method' && calcuTotalDR(jeForm) != calcuTotalCR(jeForm) && calcuTotalCR(jeForm) != calcuTotalDR(jeForm)){
            return setJeform([
                ...jeForm,
                jeFormTemplate
            ])
        }
    }

    useEffect(() =>{
        
        const fdata = jeForm.map(x =>Object.values(x))
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
    }, [jeForm])

    useEffect(() =>{
        setData({
            ...data,
            total: calcuAmt(jeForm)
        })
    }, [data.VALUES])

    // handle post
    const handleSubmit =e =>{
        if(calcuTotalDR(jeForm) > calcuTotalCR(jeForm) || calcuTotalCR(jeForm) > calcuTotalDR(jeForm)) {
            return setError('Debit amount and Credit must be equal, highest tolerance is 0.1')
        }
        console.log(data)
        setError('')
        setOpen(true)
        axios.post('/journal', data, {
            headers: {
                Authorization: `Bearer ${token}`
            }
        })
        .then(result =>{
            setOpen(false)
            setMessage(result.data.message)
            setSuccess(true)
            
            setData({
                je_ID: '',
                name: '',
                total: '',
                je_date: '',
                VALUES: []
            })
        })
        .catch(error =>{
            setOpen(false)
            if(error) {
                return error.response
            }
        })
    

    }
    useEffect(() =>{
        setData({
            ...data,
            je_ID: 'je-'+ new Date().getSeconds().toLocaleString() + new Date().getMinutes().toLocaleString()+new Date().getMilliseconds()
        })
        setJeform([jeFormTemplate])
    }, [success])
    

    return (
        <div className={`${isWidget? 'isapp__Feed': 'app__Feed'}`}>
           <AppHeader title='Journal' />
           <AppSnackbar setOpen={setSuccess} open={success} message={message} />
           <div className="row align-items-center justify-content-center d-flex m-1" >
                <div className="col-lg-12 col-md-12">
                    {/* table */}
                    <h3>Journal Entry<span> 
                        <IconButton color='secondary'
                            onClick={() =>setIswidget(!isWidget)}
                        >
                        <FileCopy style={{ color: '#1ABB9C'}} />
                        </IconButton></span></h3> 
                    <Grid container  spacing={2}
                        alignItems='center'  className='mt-3'>
                        <Grid item lg={4} md={4}>
                            <TextField
                                required
                                name='name'
                                size='small'
                                label='Journal Name'
                                fullWidth
                                value={data.name}
                                variant='outlined'
                                placeholder='Journal Name Or Description'
                                onChange={e =>setData({
                                    ...data, name: e.target.value
                                })}
                            />
                        </Grid>
                        <Grid item lg={8} md={8} justify='flex-end' className='d-flex'>
                            <div className='d-flex align-items-center'
                                style={{flexDirection: 'column', justifyContent: 'center'}}
                            >
                                <Typography variant='p'>
                                    Amount
                                </Typography>
                                <Typography variant='h5'>
                                    <b>
                                        <s>N</s>:
                                        {calcuAmt(jeForm)}
                                    </b>
                                </Typography>
                            </div>
                        </Grid>
                        <Grid item lg={3} md={3}>
                            <TextField
                                required
                                name='je_date'
                                size='small'
                                type='date'
                                fullWidth
                                value={data.je_date}
                                label='Transaction Date'
                                variant='outlined'
                                placeholder='Journal Name'
                                onChange={e =>setData({
                                    ...data,je_date: e.target.value
                                })}
                            />
                        </Grid>
                        <Grid item lg={3} md={3} >
                            <TextField
                                required
                                disabled
                                name='je_ID'
                                size='small'
                                value={data.je_ID}
                                label='Journal Id'
                                variant='outlined'
                                placeholder='Journal Id'
                            />
                        </Grid>
                    </Grid>
                    <Typography variant='h5' className='mt-3 mb-3'>
                        Transaction Details
                    </Typography>
                    {
                        Error && 
                        <Typography color='error'>
                        {Error}
                        </Typography>
                    }
                    <Paper>
                        <Container className='p-3'>
                        <table className="table-small table-hover table-bordered" style={{width: '100%'}}>
                            <thead>
                                
                                <th>#</th>
                                <th> {' '} </th>
                                <th>Account</th>
                                <th>Tx. Type</th>
                                <th>Amount (<s>N</s>)</th>
                                <th>Description</th>
                                <th>Pay Method</th>
                                <th></th>
                            </thead>
                            <tbody id='je__Table'>
                                {   jeForm&&
                                    jeForm.map((jef, index) =>(
                                        <tr>
                                            <td>{index+1} </td>
                                            <td
                                                    onClick={() =>addJeFrom()}
                                                >
                                                    <span className='fa fa-plus-circle fa-1x'
                                                        style={{color: '#20c997'}} 
                                                    /> 
                                            </td>
                                            <td>
                                                <select
                                                    name='account_FK'
                                                    value={jef.account_FK}
                                                    placeholder='Account'
                                                    style={{border: 'none'}}
                                                    onChange={e =>handleChange(e, index)}
                                                >
                                                    <option value=''></option>
                                                    {
                                                        accounts&&
                                                        accounts.map((acc, index) =>{
                                                            const { code, name, balance_type } = acc
                                                            return <option value={code} key={index} >{`${name} (${balance_type})`}</option>
                                                        })
                                                    }
                                                </select>
                                            </td>
                                            <td>
                                                <select
                                                    name='tx_type'
                                                    value={jef.tx_type}
                                                    style={{border: 'none'}}
                                                    onChange={e =>handleChange(e, index)}
                                                >
                                                    <option value=''></option>
                                                        <option value='DR'>Debit</option>
                                                        <option value='CR'>Credit</option>
                                                </select>
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
                                            <td>
                                                <input
                                                    name='description'
                                                    placeholder='Description'
                                                    value={jef.description}
                                                    onChange={e =>handleChange(e, index)}
                                                />
                                            </td>
                                           <td>
                                                <select
                                                    name='pay_method'
                                                    value={jef.pay_method}
                                                    style={{border: 'none'}}
                                                    onChange={e =>handleChange(e, index)}
                                                >
                                                    <option value=''></option>
                                                    <option value='cash'>Cash</option>
                                                    <option value='cheque'>Cheque</option>
                                                </select>
                                            </td>
                                            
                                            <td
                                                onClick={() =>handleRemoveJeform(index)}
                                            >
                                                    <span className='fa fa-trash'
                                                        style={{color: 'red'}}
                                                    ></span>
                                            </td>
                                        </tr>
                                    ))
                                }
                                <tr>
                                    <td colSpan={5}
                                       
                                    >
                                        <section
                                            style={{display: 'flex', alignItems: 'center', justifyContent: 'flex-end'}}
                                        >
                                        <table className='table-sm'>
                                            <thead>
                                                <th>Total DR (<s>N</s>)</th>
                                                <th>Total CR (<s>N</s>)</th>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        <Typography variant='h6' color='error'>
                                                            <b>
                                                            {calcuTotalDR(jeForm)}
                                                            </b>
                                                        </Typography>
                                                    </td>
                                                    <td>
                                                        <Typography variant='h6'>
                                                            <b>
                                                            {calcuTotalCR(jeForm)}
                                                            </b>
                                                        </Typography>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        </section>
                                    </td>
                                    <td colSpan={4}>
                                    <Button
                                        size='medium'
                                        className='m-3'
                                        variant='contained'
                                        onClick={e =>handleSubmit(e)}
                                        style={{background: '#2A3F54', color: 'white',
                                            width: '80%', margin: 'auto'
                                        }}
                                    >post</Button>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        
                        
                        </Container>
                    </Paper>
                </div>
            </div>
        </div>
    )
}

export default JournalFeed
