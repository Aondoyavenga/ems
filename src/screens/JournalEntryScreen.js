import axios from 'axios'
import React, { useEffect, useState } from 'react'
import { useDispatch, useSelector } from 'react-redux'
import { useHistory } from 'react-router-dom/cjs/react-router-dom.min'
import { selectToken, setAccounts, setJournals, setStaffPosted_Journals, setUser } from '../appState/appSlice'
import AppBackdrop from '../components/global/AppBackDrop'
import SideBarMenu from '../components/global/SideBarMenu'
import JournalFeed from '../components/JournalFeed'
import JournalWidget from '../components/JournalWidget'

const JournalEntryScreen = () => {
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

    const get_All_Posted_Journals =() =>{
        axios.get('/journal', {
            headers: {
                Authorization: `Bearer ${token}`
            }
        })
        .then(journals =>{
            dispatch(setJournals(journals.data))
        })
        .catch(error =>{
            if(error){
                return error.response.statusText
            }
        })
    }

    const get_All_Staff_Posted_Journals =() =>{
        axios.get('/journal/user', {
            headers: {
                Authorization: `Bearer ${token}`
            }
        })
        .then(journals =>{
            dispatch(setStaffPosted_Journals(journals.data))
        })
        .catch(error =>{
            if(error){
                return error.response.statusText
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
        get_All_Posted_Journals()
        get_All_Staff_Posted_Journals()
    }, [open])

    return (
        <div className='app'>
            <AppBackdrop open={open} />
            <SideBarMenu />
            {/* feed */}
            <JournalFeed
                setOpen={setOpen}
                isWidget={isWidget}
                setIswidget={setIswidget}
            />
            {/* widget */}
            {
                isWidget&&
                <JournalWidget
                    open={open}
                    setOpen={setOpen}
                    isWidget={isWidget}
                    setIswidget={setIswidget} 
                />
            }
        </div>
    )
}

export default JournalEntryScreen
