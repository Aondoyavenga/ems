import axios from 'axios'
import React, { useEffect, useState } from 'react'
import { useDispatch, useSelector } from 'react-redux'
import { useHistory } from 'react-router-dom/cjs/react-router-dom.min'
import { selectToken, setBuildCategories, setCustomers, setpendingSales, setPropServices, setUser, setUserInvoices } from '../appState/appSlice'
import AppBackdrop from '../components/global/AppBackDrop'
import SideBarMenu from '../components/global/SideBarMenu'
import SaleFeed from '../components/SaleFeed'
import SaleWidget from '../components/SaleWidget'

const SaleScreen = () => {
    const history = useHistory()
    const dispacth = useDispatch()
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
            dispacth(setPropServices(ps.data))
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
            dispacth(setCustomers(asset.data))
        })
        .catch(error =>{
            return error
        })
    }

    const getBuildCategories = () =>{
        axios.get('/build_category', {
            headers: {
                Authorization: `Bearer ${token}`
            }
        })
        .then(categories =>{
            dispacth(setBuildCategories(categories.data))
        })
        .catch(error =>{
            return error
        })
    }

     // func
     const get_PendingSales = () =>{
        axios.get(`/sale`, {
            headers: {
                Authorization: `Bearer ${token}`
            }
        })
        .then(sales =>{
            dispacth(setpendingSales(sales.data))
        })
        .catch(error =>{
            return error
        })
    }

    const add_BuildCategories = (body) =>{
        setOpen(true)
        axios.post('/build_category', body,{
            headers: {
                Authorization: `Bearer ${token}`
            }
        })
        .then(categories =>{
            setOpen(false)
        })
        .catch(error =>{
            setOpen(false)
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
            dispacth(setUser(user.data))
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
        getBuildCategories()
        return get_PendingSales()
    }, [open])
    return (
        <div className='app'>
            <AppBackdrop open={open} />
            <SideBarMenu />
            {/* feed */}
            <SaleFeed
                setOpen={setOpen}
                isWidget={isWidget}
                setIswidget={setIswidget}
                add_BuildCategories={add_BuildCategories}
            />
            {/* widget */}
            {
                isWidget&&
                <SaleWidget
                    open={open}
                    setOpen={setOpen}
                    isWidget={isWidget}
                    setIswidget={setIswidget} 
                />
            }
        </div>
    )
}

export default SaleScreen
