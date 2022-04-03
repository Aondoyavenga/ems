import axios from 'axios'
import React, { useEffect, useState } from 'react'
import { useDispatch, useSelector } from 'react-redux'
import { useHistory } from 'react-router-dom/cjs/react-router-dom.min'
import { selectToken, setAccounts, setCustomers, setPropServices, setUser, setUserInvoices } from '../appState/appSlice'
import AppBackdrop from '../components/global/AppBackDrop'
import SideBarMenu from '../components/global/SideBarMenu'
import InvoiceFeed from '../components/InvoiceFeed'
import InvoiceWidget from '../components/InvoiceWidget'

const InvoiceScreen = () => {
    const history = useHistory()
    const dispatch = useDispatch()
    const token = useSelector(selectToken)
    const [open, setOpen] = useState(false)
    const [isWidget, setIswidget] = useState(false)

    // func
    const getProp_Services = () =>{
        axios.get('/prop_service', {
            headers: {
                Authorization: `Bearer ${token}`
            }
        })
        .then(ps =>{
            dispatch(setPropServices(ps.data))
        })
        .catch(error =>{
            return error
        })
    }

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

     // func
     const get_My_Invoices = () =>{
        axios.get(`/invoice`, {
            headers: {
                Authorization: `Bearer ${token}`
            }
        })
        .then(invoices =>{
            dispatch(setUserInvoices(invoices.data))
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

    useEffect(() =>{
        if(!token){
            return history.push('/')
        }
        getProp_Services()
        getCustomers()
        get_Session()
        
    }, [])
    useEffect(() =>{
        return get_My_Invoices()
    }, [open])
    return (
        <div className='app'>
            <AppBackdrop open={open} />
            <SideBarMenu />
            {/* feed */}
            <InvoiceFeed
                setOpen={setOpen}
                isWidget={isWidget}
                setIswidget={setIswidget}
            />
            {/* widget */}
            {
                isWidget&&
                <InvoiceWidget
                    open={open}
                    setOpen={setOpen}
                    isWidget={isWidget}
                    setIswidget={setIswidget} 
                />
            }
        </div>
    )
}

export default InvoiceScreen
