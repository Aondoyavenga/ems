import React, { useEffect, useState } from 'react'
import axios from 'axios'
import { useDispatch, useSelector } from 'react-redux'
import { useHistory } from 'react-router-dom/cjs/react-router-dom.min'
import { selectToken, setAllStaffs, setCustomers, setUser } from '../appState/appSlice'
import CustomerFeed from '../components/CustomerFeed'
import CustomerWidget from '../components/CustomerWidget'
import AppBackdrop from '../components/global/AppBackDrop'
import SideBarMenu from '../components/global/SideBarMenu'
import Mandate from '../components/Mandate'

const CustomerScreen = () => {
    const history = useHistory()
    const dispatch = useDispatch()
    const token = useSelector(selectToken)
    const [open, setOpen] = useState(false)
    const [isWidget, setIswidget] = useState(false)
    const [mandate, setMandate] = useState(false)
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
    const get_Staffs = () =>{
        axios.get(`/auth`, {
            headers: {
                Authorization: `Bearer ${token}`
            }
        })
        .then(staffs =>{
            dispatch(setAllStaffs(staffs.data))
        })
        .catch(error =>{
            return error
        })
    }

    useEffect(() =>{
        if(!token){
            return history.push('/')
        }
        getCustomers()
        get_Session()
        get_Staffs()
    },[open])
    return (
        <div className='app'>
            <AppBackdrop open={open} />
            <Mandate 
                open={open} 
                setOpen={setOpen}
                mandate={mandate}
                setMandate={setMandate}
                url={mandate && `/customer/avatar/${mandate.split(' ')[0]}`}
            />
            <SideBarMenu />
            {/* feed */}
            <CustomerFeed
                open={open}
                setOpen={setOpen}
                isWidget={isWidget}
                setIswidget={setIswidget}
                mandate={mandate}
                setMandate={setMandate}
            />
            {/* widget */}
            {
                isWidget&&
                <CustomerWidget
                    open={open}
                    setOpen={setOpen}
                    isWidget={isWidget}
                    setIswidget={setIswidget} 
                />
            }
        </div>
    )
}

export default CustomerScreen
