import axios from 'axios'
import React, { useEffect, useState } from 'react'
import { useDispatch, useSelector } from 'react-redux'
import { useHistory } from 'react-router-dom/cjs/react-router-dom.min'
import { selectToken, setBillCategories, setUser, setVendors} from '../appState/appSlice'
import AppBackdrop from '../components/global/AppBackDrop'
import SideBarMenu from '../components/global/SideBarMenu'
import BillFeed from '../components/BillFeed'
import BillWidget from '../components/BillWidget'
import AddBillCategories from '../components/global/AddBillCategories'

const BillScreen = () => {
    const history = useHistory()
    const dispatch = useDispatch()
    const token = useSelector(selectToken)
    const [open, setOpen] = useState(false)
    const [isOpen, setIsOpen] = useState(false)
    const [isWidget, setIswidget] = useState(false)
// func
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

    const get_BillCategories = () =>{
        axios.get('/bill/category', {
            headers: {
                Authorization: `Bearer ${token}`
            }
        })
        .then(category =>{
            dispatch(setBillCategories(category.data))
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

    const get_Active_User = () =>{
        axios.get('/auth/active', {
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
        getVendors()
        get_Active_User()
        get_Session()
    }, [])
    useEffect(() =>{
        return get_BillCategories()
    }, [isOpen])
    return (
        <div className='app'>
            <AppBackdrop open={open} />
            <AddBillCategories open={isOpen} setOpen={setIsOpen} />
            <SideBarMenu />
            {/* feed */}
            <BillFeed
                setOpen={setOpen}
                isOpen={isOpen}
                setIsOpen={setIsOpen}
                isWidget={isWidget}
                setIswidget={setIswidget}
            />
            {/* widget */}
            {
                isWidget&&
                <BillWidget
                    open={open}
                    setOpen={setOpen}
                    isWidget={isWidget}
                    setIswidget={setIswidget} 
                />
            }
        </div>
    )
}

export default BillScreen
