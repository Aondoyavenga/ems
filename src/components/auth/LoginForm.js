import axios from 'axios'
import React, { useEffect } from 'react'
import { useDispatch, useSelector } from 'react-redux'
import {setToken } from '../../appState/appSlice'

const LoginForm = ({ setSuccess, setError, setOpen, user, setUser}) => {
    const dispatch = useDispatch()
   
    const handle_Login = e =>{
        e.preventDefault()
        setOpen(true)
        axios.post('/auth/login', user)

        .then(result =>{
            setSuccess(false)
            return dispatch(setToken(result.data))
        })
        .catch(error =>{
            setOpen(false)
            setSuccess(true)
            if(error.status ==500){
                setSuccess(true)
                return setError(error.response.statusText)
            }
            setSuccess(true)
            setError(error.response.data.message)
        })
    }
    return (
        <div className='row'>
            <div className='col-lg-12 col-md-12'>
                <input
                    name='User Id'
                    value={user.username}
                    placeholder='User name'
                    onChange={e =>setUser({
                        ...user,
                        username: e.target.value
                    })}
                />
            </div>
            <div className='col-lg-12 col-md-12'>
                <input
                    type='password'
                    name='password'
                    value={user.password}
                    placeholder='Password'
                    onChange={e =>setUser({
                        ...user,
                        password: e.target.value
                    })}
                />
            </div>
            
            <div className='col-lg-12 col-md-12'>
                <div className='btn__Container'>
                <button
                    onClick={e =>handle_Login(e)}
                    type='submit' className='p-1'>Log In</button>
                </div>
            </div>
        </div>
    )
}

export default LoginForm
