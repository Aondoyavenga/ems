import { Button, Container, FormLabel, Grid, IconButton, Paper, Select, TextField, Typography } from '@material-ui/core'
import { Delete, FileCopy, PlusOne, PlusOneOutlined, PlusOneRounded, Undo } from '@material-ui/icons'
import axios from 'axios'
import React, { useEffect, useState } from 'react'
import { useSelector } from 'react-redux'
import { useHistory } from 'react-router-dom/cjs/react-router-dom.min'
import { selectAccounts, selectExpenseCategories, selectToken } from '../appState/appSlice'
import AppHeader from './global/AppHeader'
import AppSnackbar from './global/AppSnackbar'

const StaffFeed = ({ setOpen, isWidget, setIswidget }) => {
    const history = useHistory()
    const token = useSelector(selectToken)
    const accounts = useSelector(selectAccounts)
    const [success, setSuccess] = useState(false)
    const [message, setMessage] = useState()
    const [data, setData ] = useState({
        password: '',
        password2: '',
        last_login: '',
        is_superuser: '',
        username: '',
        first_name: '',
        last_name: '',
        email: '',
        md: '',
        entries: '',
        sales: '',
        expense: '',
        accountant: '',
        date_joined: ''
    })
    // func
    const handleChange = e =>{
        const name = e.target.name;
        const value = e.target.value;

        setData({
            ...data,
            [name]: value
        })
    }   
    const handleSubmit =e =>{
        e.preventDefault()
        setOpen(true)
        axios.post('/auth', data, {
            headers: {
                Authorization: `Bearer ${token}`
            }
        })
        .then(result =>{
            setOpen(false)
            setMessage(result.data.message)
            setSuccess(true)
            setData({
                password: '',
                password2: '',
                last_login: '',
                is_superuser: '',
                username: '',
                first_name: '',
                last_name: '',
                email: '',
                mobile: '',
                md: '',
                entries: '',
                sales: '',
                expense: '',
                accountant: '',
                date_joined: '',
            })
        })
        .catch(error =>{
            setOpen(false)
            if(error) {
               
                if(error.status ==500) {
                    return alert(error.response.statusText)
                }
                const err = error.response.data.split(':')[1];
                alert(err)
            }
        })
    }


    
    return (
        <div className={`${isWidget? 'isapp__Feed': 'app__Feed'}`}>
            <AppSnackbar setOpen={setSuccess} open={success} message={message} />
           <AppHeader title='Staff' />
           <div className="row align-items-center justify-content-center d-flex m-1" >
                <div className="col-lg-11 col-md-11">
                    {/* table */}
                    <h3>Staff Entry<span> 
                        <IconButton color='secondary'
                            onClick={() =>setIswidget(!isWidget)}
                        >
                        <FileCopy style={{ color: '#1ABB9C'}} />
                        </IconButton></span></h3> 
                        {/* to do make it a component */}
                        <Grid container alignItems='center' spacing={1} justify='center' className='p-3'>
                            <Grid item lg={6} md={6}>
                                <TextField
                                    required
                                    size='small'
                                    name='first_name'
                                    variant='outlined'
                                    label='First Name'
                                    placeholder='First Name'
                                    value={data.first_name}
                                    onChange={e =>handleChange(e)}
                                    style={{width: '100%', outline: 'none', border: 'none',
                                    }}
                                />
                            </Grid>
                            <Grid item lg={6} md={6}>
                                    
                                <TextField
                                    required
                                    size='small'
                                    name='last_name'
                                    variant='outlined'
                                    label='Last Name'
                                    placeholder='Last Name'
                                    value={data.last_name}
                                    onChange={e =>handleChange(e)}
                                    style={{width: '100%', outline: 'none', border: 'none',
                                    }}
                                />
                            </Grid>
                            <Grid item lg={6} md={6}>
                                <TextField
                                    size='small'
                                    name='mobile'
                                    variant='outlined'
                                    label='Mobile No'
                                    placeholder='Mobile Number 08010000900'
                                    value={data.mobile}
                                    onChange={e =>handleChange(e)}
                                    style={{width: '100%', outline: 'none', border: 'none',
                                    }}
                                />
                            </Grid>
                            <Grid item lg={6} md={6}>
                                    
                                <TextField
                                    size='small'
                                    name='email'
                                    variant='outlined'
                                    label='Email'
                                    placeholder='Email Address(example@gmail.com)'
                                    value={data.email}
                                    onChange={e =>handleChange(e)}
                                    style={{width: '100%', outline: 'none', border: 'none',
                                    }}
                                />
                            </Grid>
                            <Grid item lg={6} md={6}>
                                <TextField
                                    size='small'
                                    name='password'
                                    type='password'
                                    variant='outlined'
                                    label='Password'
                                    placeholder='Password'
                                    value={data.password}
                                    onChange={e =>handleChange(e)}
                                    style={{width: '100%', outline: 'none', border: 'none',
                                    }}
                                />
                            </Grid>
                            <Grid item lg={6} md={6}>
                                    
                                <TextField
                                    size='small'
                                    name='password2'
                                    type='password'
                                    variant='outlined'
                                    label='Confirm Password'
                                    placeholder='Confirm Password'
                                    value={data.password2}
                                    onChange={e =>handleChange(e)}
                                    style={{width: '100%', outline: 'none', border: 'none',
                                    }}
                                />
                            </Grid>
                            <Grid item lg={12} md={12}>
                                <Typography variant='p'>System Rights</Typography>
                            </Grid>
                            <Grid item lg={6} md={6}>
                                <FormLabel>Entries</FormLabel>
                                <Select
                                    
                                    variant='outlined'
                                    name='entries'
                                    value={data.entries}
                                    onChange={e =>handleChange(e)}
                                    style={{width: '100%', outline: 'none', border: 'none',
                                    height: '40px'}}
                                >
                                    <option></option>
                                    <option value='entries'>Yes</option>
                                    <option value='no'>No</option>
                                </Select>
                            </Grid>
                            <Grid item lg={6} md={6}>
                                <FormLabel>Sales</FormLabel>
                                <Select
                                    
                                    variant='outlined'
                                    name='sales'
                                    value={data.sales}
                                    onChange={e =>handleChange(e)}
                                    style={{width: '100%', outline: 'none', border: 'none',
                                    height: '40px'}}
                                >
                                    <option></option>
                                    <option value='sales'>Yes</option>
                                    <option value='no'>No</option>
                                </Select>
                            </Grid>
                            <Grid item lg={6} md={6}>
                                <FormLabel>Expense</FormLabel>
                                <Select
                                    
                                    variant='outlined'
                                    name='expense'
                                    value={data.expense}
                                    onChange={e =>handleChange(e)}
                                    style={{width: '100%', outline: 'none', border: 'none',
                                    height: '40px'}}
                                >
                                    <option></option>
                                    <option value='expense'>Yes</option>
                                    <option value='no'>No</option>
                                </Select>
                            </Grid>
                            <Grid item lg={6} md={6}>
                                <FormLabel>Accountant</FormLabel>
                                <Select
                                    
                                    variant='outlined'
                                    name='accountant'
                                    value={data.accountant}
                                    onChange={e =>handleChange(e)}
                                    style={{width: '100%', outline: 'none', border: 'none',
                                    height: '40px'}}
                                >
                                    <option></option>
                                    <option value='accountant'>Yes</option>
                                    <option value='no'>No</option>
                                </Select>
                            </Grid>
                            <Grid item lg={6} md={6}>
                                <FormLabel>Administrator</FormLabel>
                                <Select
                                    
                                    variant='outlined'
                                    name='is_superuser'
                                    value={data.is_superuser}
                                    onChange={e =>handleChange(e)}
                                    style={{width: '100%', outline: 'none', border: 'none',
                                    height: '40px'}}
                                >
                                    <option></option>
                                    <option value='1'>Yes</option>
                                    <option value='0'>No</option>
                                </Select>
                            </Grid>
                            <Grid item lg={6} md={6}>
                                <FormLabel>MD</FormLabel>
                                <Select
                                    
                                    variant='outlined'
                                    name='md'
                                    value={data.md}
                                    onChange={e =>handleChange(e)}
                                    style={{width: '100%', outline: 'none', border: 'none',
                                    height: '40px'}}
                                >
                                    <option></option>
                                    <option value='md'>Yes</option>
                                    <option value='no'>No</option>
                                </Select>
                            </Grid>
                                
                            <Grid item lg={6} md={6}>
                                <FormLabel>Date Joined</FormLabel>
                                <TextField
                                    size='small'
                                    name='date_joined'
                                    type='date'
                                    variant='outlined'
                                    value={data.date_joined}
                                    onChange={e =>handleChange(e)}
                                    style={{width: '100%', outline: 'none', border: 'none',
                                    }}
                                />
                            </Grid>
                            <Grid item lg={6} md={6}
                                style={{display: 'flex', justifyContent: 'center', alignItems: 'center'}}
                            >
                                <Button
                                    onClick={e =>handleSubmit(e)}
                                    variant='contained' size='medium'
                                    style={{background: '#2A3F54', color: 'white', marginTop: '10px'
                                    }}
                                >
                                    Create
                                </Button>
                                <Button
                                    className='ml-5'
                                    onClick={e =>history.goBack()}
                                    startIcon={<Undo color='error' />}
                                    color='secondary'
                                    variant='outlined' size='medium'
                                    style={{color: '#73879c', marginTop: '10px'
                                    }}
                                >
                                    Return
                                </Button>
                            </Grid>
                            
                        </Grid>
                    
                </div>
            </div>
        </div>
    )
}

export default StaffFeed
