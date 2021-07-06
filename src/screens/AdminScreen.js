import axios from 'axios'
import React, { Fragment, useEffect, useState } from 'react'
import { useDispatch, useSelector } from 'react-redux'
import { useHistory } from 'react-router-dom/cjs/react-router-dom.min'
import { selectOpen, selectToken, setAccounts, setAllStaffs, setBuildCategories, setCustomers, setExpenseItems, setLocations, setPaidOnpaySales, setPropServices, setSAles, setTransactions, setUser, setUserExpenseRaised } from '../appState/appSlice'
import SideBarMenu from '../components/global/SideBarMenu'
import AdminFeed from '../components/AdminFeed'
import './homeScreen.css'

const AdminScreen = () => {
    const history = useHistory()
    const dispatch = useDispatch()
    const open = useSelector(selectOpen)
    const token = useSelector(selectToken)

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

    const get_Paid_Onpay_Sales = async () =>{
        await localStorage.clear()
        axios.get(`/sale/paid_onpay`, {
            headers: {
                Authorization: `Bearer ${token}`
            }
        })
        .then(paidOnpay =>{
            dispatch(setPaidOnpaySales(paidOnpay.data))
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

    const get_All_Txs = () =>{
        axios.get('/transaction', {
            headers: {
                Authorization: `Bearer ${token}`
            }
        })
        .then(txs =>{
            dispatch(setTransactions(txs.data))
        })
        .catch(error =>{
            return error
        })
    }

    const get_Staffs =() =>{
        axios.get('/auth', {
            headers: {
                Authorization: `Bearer ${token}`
            }
        })
        .then(staffs =>{
            localStorage.setItem('staffs', staffs.data.length)
            dispatch(setAllStaffs(staffs.data))
        })
        .catch(error =>{
            if(error){
                return error.response.statusText
            }
        })
    }

    const get_Raised_Expenses =() =>{
        axios.get('/expense', {
            headers: {
                Authorization: `Bearer ${token}`
            }
        })
        .then(exps =>{
            dispatch(setUserExpenseRaised(exps.data))
        })
        .catch(error =>{
            if(error){
                return error.response.statusText
            }
        })
    }

    const get_Raised_Expense_Items =() =>{
        axios.get('/expense/Items', {
            headers: {
                Authorization: `Bearer ${token}`
            }
        })
        .then(exps =>{
            dispatch(setExpenseItems(exps.data))
        })
        .catch(error =>{
            if(error){
                return error.response.statusText
            }
        })
    }

    const get_All_Sales =() =>{
        axios.get('/sale/all', {
            headers: {
                Authorization: `Bearer ${token}`
            }
        })
        .then(sales =>{
            dispatch(setSAles(sales.data))
        })
        .catch(error =>{
            if(error){
                return error.response.statusText
            }
        })
    }

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

    const handleGet_Locations = () =>{
        axios.get('/location', {
            headers: {
                Authorization: `Bearer ${token}`
            }
        })
        .then(locations =>{
            dispatch(setLocations(locations.data))
        })
        .catch(error =>{
            if(error) {
                return error.response.statusText
            }
        })
    }
    
    const getBuildCategories = () =>{
        axios.get('/build_category', {
            headers: {
                Authorization: `Bearer ${token}`
            }
        })
        .then(categories =>{
            dispatch(setBuildCategories(categories.data))
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
        get_Paid_Onpay_Sales()
        get_AllAccounts()
        get_Raised_Expenses()
        getCustomers()
        get_Staffs()
        get_All_Sales()
        getProp_Services()
        handleGet_Locations()
        get_All_Txs()
        getBuildCategories()
    }, [open])
    

    return (
        <Fragment>
           <div className='app'>
                {/* side__Bar */}
                <SideBarMenu />
                {/* feed */}
                <AdminFeed />
                {/* widget */}
           </div>
        </Fragment>
    )
}

export default AdminScreen
