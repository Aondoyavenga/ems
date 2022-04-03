import axios from 'axios'
import React, { useEffect, useState } from 'react'
import { useDispatch, useSelector } from 'react-redux'
import { useHistory, useParams } from 'react-router-dom/cjs/react-router-dom.min'
import { selectToken,  setAccounts,  setAccountTxs,  setCustomers, setUser, } from '../appState/appSlice'
import AppBackdrop from '../components/global/AppBackDrop'
import SideBarMenu from '../components/global/SideBarMenu'
import AccountFeed from '../components/AccountFeed'

const AccountScreen = () => {
    const params = useParams()
    const {uuid} = params
    const history = useHistory()
    const dispatch = useDispatch()
    const token = useSelector(selectToken)
    const [open, setOpen] = useState(false)
    const [isWidget, setIswidget] = useState(false)

     // func

    const get_Accounts_Tx = () =>{
        // console.log(uuid)
        axios.get(`/account/tx/${uuid}`, {
            headers: {
                Authorization: `Bearer ${token}`
            }
        })
        .then(txs =>{
            dispatch(setAccountTxs(txs.data))
        })
        .catch(error =>{
            return error
        })
    }

    const get_AllAccounts =() =>{
        axios.get('/account', {
            headers: {
                Authorization: `Bearer ${token}`
            }
        })
        .then(accounts =>{
            dispatch(setAccounts(accounts.data))
        })
        .catch(error =>{
            if(error){
                return error.response.statusText
            }
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
    
    useEffect(() =>{
        if(!token){
            return history.push('/')
        }
        get_Session()
       get_AllAccounts()
    }, [])

    useEffect(() => {
        get_Accounts_Tx()
    }, [uuid])
    return (
        <div className='app'>
            <AppBackdrop open={open} setOpen={setOpen} />
            <SideBarMenu />
            {/* feed */}
            <AccountFeed
                setOpen={setOpen}
            />            
        </div>
    )
}

export default AccountScreen
