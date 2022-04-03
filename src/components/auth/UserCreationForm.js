import { Typography } from '@material-ui/core';
import axios from 'axios';
import React, { useState } from 'react'
import AppBackdrop from '../global/AppBackDrop';

const UserCreationForm = ({ user, setUser, swap, setSwap }) => {
    const [open, setOpen] = useState(false)
    const [success, setSuccess] = useState()
    const [authData, setAuthdata] = useState({
        first_name: '',
        last_name: '',
        password: '',
        email: '',
        is_active: '',
        is_superuser: ''
    })

    // func
    const handle_Change =e=>{
        const value = e.target.value;
        const name = e.target.name

        setAuthdata({
            ...authData,
            [name]: value
        })
    }
    const handle_CreateStaff =e=>{
        e.preventDefault()
        setOpen(true)
        axios.post('/auth', authData)
        .then(result =>{
            setSuccess('User created with id: '+result.data.userId)
            setUser({
                ...user,
                username: result.data.userId
            })
            setOpen(false)
            setTimeout(() => {
                setSwap(!swap)
            }, 5000);
        })
        .catch(error =>{
            setOpen(false)
            alert(error)
        })
    }
    return (
        <div className='row'>
            <AppBackdrop open={open} setOpen={setOpen} />
            {   success?
                <Typography variant='caption' color='initial'>
                    {success}
                </Typography>
                :null
            }
            <div className='col-lg-12 col-md-12'>
                <input
                    name='first_name'
                    placeholder='First Name'
                    value={authData.first_name}
                    onChange={e =>handle_Change(e)}
                />
            </div>
            <div className='col-lg-12 col-md-12'>
                <input 
                    name='last_name'
                    placeholder='Last name'
                    value={authData.last_name}
                    onChange={e =>handle_Change(e)}
                />
            </div>
            <div className='col-lg-12 col-md-12'>
                <input 
                    name='email'
                    placeholder='Email'
                    value={authData.email}
                    onChange={e =>handle_Change(e)}
                />
            </div>
            <div className='col-lg-12 col-md-12'>
                <input 
                    name='password'
                    type='password'
                    placeholder='password'
                    value={authData.password}
                    onChange={e =>handle_Change(e)}
                />
            </div>
            <div className='col-lg-12 col-md-12'>
                <select
                    name='is_superuser'
                    value={authData.is_superuser}
                    onChange={e =>handle_Change(e)}
                >
                    <option value=''>Admin?</option>
                    <option value={1}>Yes</option>
                    <option value={0}>No</option>
                </select>
            </div>
            <div className='col-lg-12 col-md-12'>
                <select
                    name='is_active'
                    value={authData.is_active}
                    onChange={e =>handle_Change(e)}
                >
                    <option value=''>Active?</option>
                    <option value={1}>Yes</option>
                    <option value={0}>No</option>
                </select>
            </div>
            <div className='col-lg-12 col-md-12'>
                <div className='btn__Container'>
                <button 
                    type='submit' className='p-1'
                    onClick={e =>handle_CreateStaff(e)}
                >Create</button>
                </div>
            </div>
        </div>
    )
}

export default UserCreationForm
