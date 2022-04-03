import axios from 'axios'
import React, { useEffect, useState } from 'react'
import { useDispatch, useSelector } from 'react-redux'
import { useHistory } from 'react-router-dom/cjs/react-router-dom.min'
import { selectToken, setAccounts, setExpenseCategories, setUser, 
    setExpenseItems, setUserExpenseRaised } from '../appState/appSlice'
import AppBackdrop from '../components/global/AppBackDrop'
import SideBarMenu from '../components/global/SideBarMenu'
import ExpenseFeed from '../components/ExpenseFeed'
import ExpenseWidget from '../components/ExpenseWidget'

const ExpenseScreen = () => {
    const history = useHistory()
    const dispatch = useDispatch()
    const token = useSelector(selectToken)
    const [open, setOpen] = useState(false)
    const [isWidget, setIswidget] = useState(false)

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
    const get_ExpenseCategories =() =>{
        axios.get('/expense/categories', {
            headers: {
                Authorization: `Bearer ${token}`
            }
        })
        .then(exps =>{
            dispatch(setExpenseCategories(exps.data))
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

    const get_User_Raised_Expense =() =>{
        axios.get('/expense/user', {
            headers: {
                Authorization: `Bearer ${token}`
            }
        })
        .then(exps =>{
            dispatch(setUserExpenseRaised(exps.data))
        })
        .catch(error =>{
            if(error){
                return error
            }
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
        get_AllAccounts()
        get_Session()
    }, [])

    useEffect(() =>{
        return (
            get_ExpenseCategories(),
            get_User_Raised_Expense(),
            get_Raised_Expense_Items()
        )
    }, [open])
    return (
        <div className='app'>
            <AppBackdrop open={open} />
            <SideBarMenu />
            {/* feed */}
            <ExpenseFeed
                setOpen={setOpen}
                isWidget={isWidget}
                setIswidget={setIswidget}
            />
            {/* widget */}
            {
                isWidget&&
                <ExpenseWidget
                    open={open}
                    setOpen={setOpen}
                    isWidget={isWidget}
                    setIswidget={setIswidget} 
                />
            }
        </div>
    )
}

export default ExpenseScreen
