import axios from 'axios'
import React, { Fragment, useEffect, useState } from 'react'
import { useDispatch, useSelector } from 'react-redux'
import { selectPendingSales, selectToken, setBuildCategories, setLocations, setpendingSales, setPropServices } from '../appState/appSlice'
import AppBackdrop from '../components/global/AppBackDrop'
import SideBarMenu from '../components/global/SideBarMenu'
import SaleWidget from '../components/SaleWidget'

const SalesListScreen = () => {
    const token = useSelector(selectToken)
    const [open, setOpen] = useState(false)
    const sales = useSelector(selectPendingSales)
    const dispatch = useDispatch()
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

    const getBuildCategories = () => {
        axios
          .get("/build_category", {
            headers: {
              Authorization: `Bearer ${token}`,
            },
          })
          .then((categories) => {
            dispatch(setBuildCategories(categories.data));
          })
          .catch((error) => {
            return error;
          });
    };

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
                return error
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


    useEffect(() =>{
        return (
            getProp_Services(),
            get_PendingSales(),
            getBuildCategories(),
            handleGet_Locations()
        )
    }, [])
    return (
        <div className="app">
            <AppBackdrop open={open} />
            <SideBarMenu />
            {/* feed */}
            <div className="app__Feed">
              <section
                style={{height: '97vh', overflow: 'auto'}}
              >
                <SaleWidget sales={sales} />
              </section>
            </div>
        </div>
    )
}

export default SalesListScreen
