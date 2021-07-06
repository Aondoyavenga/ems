import axios from 'axios'
import React, { useEffect, useState } from 'react'
import { useDispatch, useSelector } from 'react-redux'
import { useHistory } from 'react-router-dom/cjs/react-router-dom.min'
import { selectToken, setAccounts, setAllStaffs, setExpenseCategories, setUser, setUserExpenseRaised } from '../appState/appSlice'
import AppBackdrop from '../components/global/AppBackDrop'
import SideBarMenu from '../components/global/SideBarMenu'
import StaffFeed from '../components/StaffFeed'
import StaffWidget from '../components/StaffWidget'

const StaffScreen = () => {
    const history = useHistory()
    const dispatch = useDispatch()
    const token = useSelector(selectToken)
    const [open, setOpen] = useState(false)
    const [isWidget, setIswidget] = useState(true)

    // func
 
    const get_Staffs =() =>{
        axios.get('/auth', {
            headers: {
                Authorization: `Bearer ${token}`
            }
        })
        .then(staffs =>{
            dispatch(setAllStaffs(staffs.data))
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
        get_Session()
    }, [])

    useEffect(() =>{
        get_Staffs()
    }, [open])
    return (
        <div className='app'>
            <AppBackdrop open={open} />
            <SideBarMenu />
            {/* feed */}
            <StaffFeed
                setOpen={setOpen}
                isWidget={isWidget}
                setIswidget={setIswidget}
            />
            {/* widget */}
            {
                isWidget&&
                <StaffWidget
                    open={open}
                    setOpen={setOpen}
                    isWidget={isWidget}
                    setIswidget={setIswidget} 
                />
            }
        </div>
    )
}

export default StaffScreen
