import React, { useEffect, useState } from 'react'
import axios from 'axios'
import { useDispatch, useSelector } from 'react-redux'
import { useHistory } from 'react-router-dom/cjs/react-router-dom.min'
import { selectToken, setAccounts, setUser, setVendors } from '../appState/appSlice'
import VendorFeed from '../components/VendorFeed'
import VendorWidget from '../components/VendorWidget'
import AppBackdrop from '../components/global/AppBackDrop'
import SideBarMenu from '../components/global/SideBarMenu'

const VendorScreen = () => {
    const history = useHistory()
    const dispatch = useDispatch()
    const token = useSelector(selectToken)
    const [open, setOpen] = useState(false)
    const [isWidget, setIswidget] = useState(false)
    // func
    const getVendors = () =>{
        axios.get('/vendor', {
            headers: {
                Authorization: `Bearer ${token}`
            }
        })
        .then(vendor =>{
            dispatch(setVendors(vendor.data))
        })
        .catch(error =>{
            return error
        })
    }

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

       // func
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
    useEffect(() =>{
        if(!token){
            return history.push('/')
        }
        getVendors()
        get_AllAccounts()
        get_Session()
    },[open])
    return (
        <div className='app'>
            <AppBackdrop open={open} />
            <SideBarMenu />
            {/* feed */}
            <VendorFeed
                isWidget={isWidget}
                setIswidget={setIswidget}
            />
            {/* widget */}
            {
                isWidget&&
                <VendorWidget
                    open={open}
                    setOpen={setOpen}
                    isWidget={isWidget}
                    setIswidget={setIswidget} 
                />
            }
        </div>
    )
}

export default VendorScreen
