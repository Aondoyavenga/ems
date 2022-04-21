import axios from 'axios'
import React, { useEffect, useState } from 'react'
import { useDispatch, useSelector } from 'react-redux'
import { useHistory } from 'react-router-dom/cjs/react-router-dom.min'
import { selectToken, setAccounts, setJournals, setpendingSales, setStaffPosted_Journals, setTransactions, setUser } from '../appState/appSlice'
import AppBackdrop from '../components/global/AppBackDrop'
import SideBarMenu from '../components/global/SideBarMenu'
import RefunFeed from '../components/RefunFeed'
import JournalWidget from '../components/JournalWidget'

const RefunScreen = () => {
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

    const get_PendingSales = () => {
        axios
          .get(`/sale`, {
            headers: {
              Authorization: `Bearer ${token}`,
            },
          })
          .then((sales) => {
            dispatch(setpendingSales(sales.data));
          })
          .catch((error) => {
            return error;
        });
    };

    useEffect(() =>{
        if(!token){
            return history.push('/')
        }
       return (
        get_AllAccounts(),
        get_Session(),
        get_All_Txs(),
        get_PendingSales()
       )
       
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
            <RefunFeed
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

export default RefunScreen
