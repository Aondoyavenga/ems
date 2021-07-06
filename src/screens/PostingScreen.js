import axios from 'axios'
import React, { useEffect, useState } from 'react'
import { useDispatch, useSelector } from 'react-redux'
import { useHistory } from 'react-router-dom/cjs/react-router-dom.min'
import { selectToken,  setCustomers, setDuePayments, setTxAccounts, setUser, } from '../appState/appSlice'
import AppBackdrop from '../components/global/AppBackDrop'
import SideBarMenu from '../components/global/SideBarMenu'
import PostingFeed from '../components/PostingFeed'

const PostingScreen = () => {
    const history = useHistory()
    const dispatch = useDispatch()
    const token = useSelector(selectToken)
    const [open, setOpen] = useState(false)

     // func
    const getCustomers = () =>{
        axios.get('/customer', {
            headers: {
                Authorization: `Bearer ${token}`
            }
        })
        .then(asset =>{
            dispatch(setCustomers(asset.data))
        })
        .catch(error =>{
            return error
        })
    }

    const get_Tx_Accounts = () =>{
        axios.get('/transaction/accounts', {
            headers: {
                Authorization: `Bearer ${token}`
            }
        })
        .then(accounts =>{
            dispatch(setTxAccounts(accounts.data))
        })
        .catch(error =>{
            return error
        })
    }

     // func
    const get_Session = () =>{
        axios.get(`/auth/active`, {
            headers: {
                Authorization: `Bearer ${token}`
            }
        })
        .then(user =>{
            dispatch(setUser(user.data))
        })
        .catch(error =>{
            return error
        })
    }
    const handle_Get_Due_Repayment = () =>{
        axios.get(`/transaction/scheldules`,{
            headers: {
                Authorization: `Bearer ${token}`
            }
        })
        .then(dues =>{
            dispatch(setDuePayments(dues.data))
        })
        .catch(error =>{
            if(error) return error.response.statusText
        })
    }

    

    useEffect(() =>{
        if(!token){
            return history.push('/')
        }
        getCustomers()
        get_Session()
        
    }, [])
    useEffect(() =>{
       get_Tx_Accounts()
       handle_Get_Due_Repayment()
    }, [open])
    return (
        <div className='app'>
            <AppBackdrop open={open} setOpen={setOpen} />
            <SideBarMenu />
            {/* feed */}
            <PostingFeed
                setOpen={setOpen}
            />            
        </div>
    )
}

export default PostingScreen
