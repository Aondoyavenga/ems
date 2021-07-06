import { Button, Container, FormLabel, Grid, IconButton, Paper, Select, TextField, Typography } from '@material-ui/core'
import { Delete, FileCopy, PlusOne, PlusOneOutlined, PlusOneRounded } from '@material-ui/icons'
import axios from 'axios'
import React, { useEffect, useState } from 'react'
import { useSelector } from 'react-redux'
import { selectAccounts, selectExpenseCategories, selectToken } from '../appState/appSlice'
import AppHeader from './global/AppHeader'
import AppSnackbar from './global/AppSnackbar'

const ExpenseFeed = ({ setOpen, isWidget, setIswidget }) => {
    const token = useSelector(selectToken)
    const accounts = useSelector(selectAccounts)
    const [success, setSuccess] = useState(false)
    const [message, setMessage] = useState()
    const [add, setAdd] = useState(false)
    const [body, setbody] = useState({
        name: ''
    })
    const expenseCategories = useSelector(selectExpenseCategories)
    const expenseFormTemplate = {account:'', amount: '',  description: ''};
    const [expenseForm, setExpenseform] = useState([expenseFormTemplate])
    const [data, setData ] = useState({
        expense_date: '',
        payee_account: '',
        payment_account: '',
        pay_method: '',
        description: '',
        tx_date: '',
        VALUES: [],
        uuid: '',
        total: ''
    })
    // func
    const addExpenseFrom = () =>{
        setExpenseform([
            ...expenseForm,
            expenseFormTemplate
        ])
    }
    const handleChange = (e, index) =>{
        const name = e.target.name;
        const value = e.target.value
        const updatedexpenseform = expenseForm.map((jef, i) => index == i ? Object.assign(jef, {[name]: value}): jef);
        setExpenseform(updatedexpenseform)
        if(name =='amount') {
            const updatedexpenseform =  expenseForm.map((jef, i) => index == i ?
            Object.assign(jef, {'expense_ID': data.uuid, 'createdAt': data.expense_date  }): jef);
        }
    }
    const handleRemoveexpenseform = (index) =>{
        const filterexpenseform = [...expenseForm];
        filterexpenseform.splice(index, 1);
        
        setExpenseform(filterexpenseform)
    }

    const calcuAmt = (data) =>{
        const total = data&& data.reduce((a, v) =>+v.amount+ a, 0)
        return total
    }


    useEffect(() =>{
        
        const fdata = expenseForm.map(x =>Object.values(x))
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
    }, [expenseForm])

    useEffect(() =>{
        setData({
            ...data,
            total: calcuAmt(expenseForm)
        })
    }, [data.VALUES])

    // add expense category
    const handle_Add_ExpCategory = e =>{
        setOpen(true)
        axios.post('/expense/category', body, {
            headers: {
                Authorization: `Bearer ${token}`
            }
        })
        .then(result =>{
            setOpen(false)
            setMessage(result.data.message)
            setSuccess(true)
            setAdd(!add)
        })
        .catch(error =>{
            setOpen(false)
            if(error) {
                return error.response.statusText
            }
        })
    }

    
    const handleSubmit =e =>{
        e.preventDefault()
        setOpen(true)
        axios.post('/expense', data, {
            headers: {
                Authorization: `Bearer ${token}`
            }
        })
        .then(result =>{
            setOpen(false)
            setMessage(result.data.message)
            setSuccess(true)
            setData({
                expense_date: '',
                payee_account: '',
                payment_account: '',
                pay_method: '',
                description: '',
                tx_date: '',
                VALUES: [],
                uuid: '',
                total: ''
            })
        })
        .catch(error =>{
            setOpen(false)
            if(error) {
                return error.response.statusText
            }
        })
    }

    useEffect(() =>{
        setData({
            ...data,
            uuid:  new Date().getSeconds().toLocaleString() + new Date().getMinutes().toLocaleString()+new Date().getMilliseconds()
        })
    }, [success])
    return (
        <div className={`${isWidget? 'isapp__Feed': 'app__Feed'}`}>
            <AppSnackbar setOpen={setSuccess} open={success} message={message} />
           <AppHeader title='Expense' />
           <div className="row align-items-center justify-content-center d-flex m-1" >
                <div className="col-lg-12 col-md-12">
                    {/* table */}
                    <h3>Expense Entry<span> 
                        <IconButton color='secondary'
                            onClick={() =>setIswidget(!isWidget)}
                        >
                        <FileCopy style={{ color: '#1ABB9C'}} />
                        </IconButton></span></h3> 
                        {/* to do make it a component */}
                        <Grid container spacing={2} className='p-3'>
                            <Grid item lg={3} md={3}>
                                <FormLabel>Account Receivable</FormLabel>
                                <select
                                    name='payee_account'
                                    placeholder='Account'
                                    style={{border: 'none'}}
                                    value={data.payee_account}
                                    onChange={e =>setData({
                                        ...data,
                                        payee_account: e.target.value
                                    })}
                                >
                                    <option value=''></option>
                                    {
                                        accounts&&
                                        accounts.map((acc, index) =>{
                                            const { name, code, balance_type } = acc
                                            return <option value={code} key={index} >{`${name} (${balance_type})`}</option>
                                        })
                                    }
                                </select>
                            </Grid>
                                <Grid item lg={3} md={3}>
                                    <FormLabel>Account Payable</FormLabel>
                                    <select
                                        name='payment_account'
                                        placeholder='Account'
                                        style={{border: 'none'}}
                                        value={data.payment_account}
                                        onChange={e =>setData({
                                            ...data,
                                            payment_account: e.target.value
                                        })}
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
                                </Grid>
                                <Grid item lg={6} md={6}
                                    style={{display: 'flex', 
                                    justifyContent: 'flex-end', alignItems: 'flex-end', flexDirection: 'column'}}
                                >
                                    <FormLabel>Amount</FormLabel>
                                    <Typography variant='h5'>
                                        <s>N</s>: { expenseForm&& calcuAmt(expenseForm) }
                                    </Typography>
                                </Grid>
                                <Grid item lg={3} md={3}>
                                    <FormLabel>Payment Date</FormLabel>
                                    <input
                                        name='expense_date'
                                        type='date'
                                        value={data.expense_date}
                                        onChange={e =>setData({
                                            ...data,
                                            expense_date: e.target.value
                                        })}
                                        style={{width: '100%', outline: 'none', border: 'none',
                                        height: '30px'}}
                                    />
                                </Grid>
                                <Grid item lg={3} md={3}>
                                    <FormLabel>Payment Method</FormLabel>
                                    <select
                                        name='pay_method'
                                        value={data.pay_method}
                                        onChange={e =>setData({
                                            ...data,
                                            pay_method: e.target.value
                                        })}
                                        style={{width: '100%', outline: 'none', border: 'none',
                                        height: '30px'}}
                                    >
                                        <option></option>
                                        <option value='cash'>Cash</option>
                                        <option value='cheque'>Cheque</option>
                                        <option value='transfer'>Transfer</option>
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
                                <th> {' '} </th>
                                <th>Category
                                    <span>
                                        <IconButton size='small'
                                            onClick={() =>setAdd(!add)}
                                        >
                                            <span className='fa fa-plus-circle'
                                                style={{color: '#20c997'}} 
                                            />
                                        </IconButton>
                                    </span>
                                    {
                                        add&&
                                        <div
                                            style={{display: 'flex'}}
                                        >
                                            <TextField
                                                size='small'
                                                label='Name'
                                                value={body.name}
                                                variant='outlined'
                                                placeholder='Category Name'
                                                onChange={e =>setbody({
                                                    ...body, name: e.target.value
                                                })}
                                            />
                                            <Button
                                                onClick={e =>handle_Add_ExpCategory(e)}
                                                variant='contained' size='small'
                                                style={{background: '#2A3F54', color: 'white'}}
                                            >
                                                Save
                                            </Button>
                                        </div>
                                    }
                                </th>
                                <th>Amount</th>
                                <th>Description</th>
                               
                                <th></th>
                            </thead>
                            <tbody id='je__Table'>
                                {
                                    expenseForm.map((jef, index) =>(
                                        <tr>
                                            <td>{index+1} </td>
                                            <td
                                                    onClick={() =>addExpenseFrom()}
                                                >
                                                     <span className='fa fa-plus-circle fa-1x'
                                                        style={{color: '#20c997'}} 
                                                    />
                                            </td>
                                            <td>
                                                <select
                                                    name='account'
                                                    value={jef.account}
                                                    placeholder='Account'
                                                    style={{border: 'none'}}
                                                    onChange={e =>handleChange(e, index)}
                                                >
                                                    <option value=''></option>
                                                    {
                                                        expenseCategories&&
                                                        expenseCategories.map((exps, index) =>{
                                                            const { id, name } = exps
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
                                            
                                            <td
                                                onClick={() =>handleRemoveexpenseform(index)}
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
                        >Post</Button>
                        </Container>
                    </Paper>
                </div>
            </div>
        </div>
    )
}

export default ExpenseFeed
