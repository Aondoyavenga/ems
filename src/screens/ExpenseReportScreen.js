import axios from 'axios'
import React, { Fragment, useEffect } from 'react'
import { useDispatch, useSelector } from 'react-redux'
import { selectToken, setAccounts, setExpenseCategories, setExpenseHeadings, setExpenseItems } from '../appState/appSlice'
import ExpenseReportFeed from '../components/ExpenseReportFeed'
import SideBarMenu from '../components/global/SideBarMenu'

const ExpenseReportScreen = () => {
    const token = useSelector(selectToken)
    const dispatch = useDispatch()
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

    const get_ExpenseHeadings =() =>{
        
        axios.get('/expense/heads', {
            headers: {
                Authorization: `Bearer ${token}`
            }
        })
        .then(result =>{
           dispatch(setExpenseHeadings(result.data))
        })
        .catch(error =>{
            if(error){
                return error
            }
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

    useEffect(() =>{
        return (
            get_AllAccounts(),
            get_ExpenseHeadings(),
            get_ExpenseCategories(),
            get_Raised_Expense_Items()
        )
    }, [])
    return (
        <Fragment>
            <div className="app">
                <SideBarMenu />
                {/* feed */}
                <ExpenseReportFeed />
            </div>
        </Fragment>
    )
}

export default ExpenseReportScreen
