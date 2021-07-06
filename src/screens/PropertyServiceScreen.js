import React, { useEffect, useState } from 'react'
import axios from 'axios'
import { useDispatch, useSelector } from 'react-redux'
import { useHistory } from 'react-router-dom/cjs/react-router-dom.min'
import { selectToken, setAccounts, setPropServices, setUser, setVendors } from '../appState/appSlice'
import PropServiceWidget from '../components/PropServiceWidget'
import AppBackdrop from '../components/global/AppBackDrop'
import SideBarMenu from '../components/global/SideBarMenu'
import PropertyServiceFeed from '../components/PropertyServiceFeed'

const PropertyServiceScreen = () => {
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

    useEffect(() =>{
        if(!token){
            return history.push('/')
        }
        getProp_Services()
        get_AllAccounts()
        getVendors()
        get_Session()
    },[open])
    return (
        <div className='app'>
            <AppBackdrop open={open} />
            <SideBarMenu />
            {/* feed */}
            <PropertyServiceFeed
                isWidget={isWidget}
                setIswidget={setIswidget}
            />
            {/* widget */}
            {
                isWidget&&
                <PropServiceWidget
                    open={open}
                    setOpen={setOpen}
                    isWidget={isWidget}
                    setIswidget={setIswidget} 
                />
            }
        </div>
    )
}

export default PropertyServiceScreen
