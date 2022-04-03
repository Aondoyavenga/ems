import axios from 'axios';
import React, { Fragment, useEffect, useState } from 'react'
import { useDispatch, useSelector } from 'react-redux';
import { selectToken, setCustomers, setPaymentHistory, setPropServices, setTxAccounts } from '../appState/appSlice';
import SideBarMenu from '../components/global/SideBarMenu'
import SaleRepaymentFeed from '../components/SaleRepaymentFeed'



const SaleRepaymentReportScreen = () => {
    const dispatch = useDispatch()
    const [uuid, setUuid] = useState()
    const token = useSelector(selectToken)

    const getProp_Services = () => {
        axios
          .get("/prop_service", {
            headers: {
              Authorization: `Bearer ${token}`,
            },
          })
          .then((ps) => {
            dispatch(setPropServices(ps.data));
          })
          .catch((error) => {
            return error;
          });
      };

    

    const getCustomer_Report = () =>{
        axios.get(`/sale/payment_history/${uuid}`, {
            headers: {
                Authorization: `Bearer ${token}`
            }
        })
        .then(data =>{
           dispatch(setPaymentHistory(data.data))
        })
        .catch(error =>{
            return error
        })
    }
  

    const get_Tx_Accounts = () =>{
        axios.get('/transaction/accounts', {
            headers: {
                Authorization: `Bearer ${token}`
            }
        })
        .then(accounts =>{
            dispatch(setTxAccounts(accounts.data))
        })
        .catch(error =>{
            return error
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

    useEffect(() =>{
        return (
            getCustomers(),
            get_Tx_Accounts,
            getProp_Services()
        )
    }, [])
    return (
        <Fragment>
            <div className="app">
                <SideBarMenu />
                {/* feed */}
                <SaleRepaymentFeed 
                    uuid={uuid} 
                    setUuid={setUuid} 
                    getCustomer_Report={getCustomer_Report}
                />
            </div>
        </Fragment>
    )
}

export default SaleRepaymentReportScreen
