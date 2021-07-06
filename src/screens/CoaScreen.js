import axios from 'axios'
import React, { useEffect, useState } from 'react'
import { useDispatch, useSelector } from 'react-redux'
import { useHistory } from 'react-router-dom/cjs/react-router-dom.min'
import { selectToken, setAssetAccount, setEquityAccount, setLiabilityAccount, setUser } from '../appState/appSlice'
import CoaFeed from '../components/CoaFeed'
import CoaWidget from '../components/CoaWidget'
import AppBackdrop from '../components/global/AppBackDrop'
import SideBarMenu from '../components/global/SideBarMenu'

const CoaScreen = () => {
    const history = useHistory()
    const dispatch = useDispatch()
    const token = useSelector(selectToken)
    const [open, setOpen] = useState(false)
    const [isWidget, setIswidget] = useState(false)


    // func
    const getAsset = () =>{
        axios.get('/account/asset', {
            headers: {
                Authorization: `Bearer ${token}`
            }
        })
        .then(asset =>{
            dispatch(setAssetAccount(asset.data))
        })
        .catch(error =>{
            return error
        })
    }
    const getLiability = () =>{
        axios.get('/account/liability', {
            headers: {
                Authorization: `Bearer ${token}`
            }
        })
        .then(liability =>{
            dispatch(setLiabilityAccount(liability.data))
        })
        .catch(error =>{
            return error
        })
    }
    const getEquity = () =>{
        axios.get('/account/equity', {
            headers: {
                Authorization: `Bearer ${token}`
            }
        })
        .then(equity =>{
            dispatch(setEquityAccount(equity.data))
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



    useEffect(() =>{
        getAsset()
        getEquity()
        getLiability()
        get_Session()
    },[open])

    useEffect(() =>{
        if(!token) {
            return history.push('/')
        }
    }, [])
    
    return (
        <div className='app'>
            <AppBackdrop open={open} />
            <SideBarMenu />
            {/* feed */}
            <CoaFeed
                isWidget={isWidget}
                setIswidget={setIswidget}
            />
            {/* widget */}
            {
                isWidget&&
                <CoaWidget
                    open={open}
                    setOpen={setOpen}
                    isWidget={isWidget}
                    setIswidget={setIswidget} 
                />
            }
        </div>
    )
}

export default CoaScreen
