import { Button, IconButton, Typography } from '@material-ui/core'
import axios from 'axios'
import React, { useEffect, useState } from 'react'
import { useDispatch, useSelector } from 'react-redux'
import { Link } from 'react-router-dom'
import { selectAccounts, selectAllStaffs, 
    selectLocations, 
    selectOpen, 
    selectPropServices,
    selectSales,
    selectToken,
    setOpen,
    setPsSold, } from '../appState/appSlice'
import AppBackdrop from './global/AppBackDrop'
import AppSnackbar from './global/AppSnackbar'
import PsViewTable from './PsViewTable'

const AdminPsSetting = () => {
    const dispatch = useDispatch()
    const open = useSelector(selectOpen)
    const token = useSelector(selectToken)
    const staffs = useSelector(selectAllStaffs)
    const accounts = useSelector(selectAccounts)
    const sales = useSelector(selectSales)
    const locations = useSelector(selectLocations)
    const propServices = useSelector(selectPropServices)
    const [tab, setTab] = useState('gen')
    const [add, setAdd] = useState(false)
    const [error, setError] = useState()
    const [success, setSuccess] = useState()
    const [body, setBody] = useState({
        name: ''
    })
    const [psData, setPsData] = useState({
        id: '',
        cost: '',
        status: '',
        name: '',
        ps_type: '',
        category: '',
        location: '',
        quantity: '',
        description: '',
        sale_price: '',
    })
    // func
    const handleChange = e =>{
        const name = e.target.name;
        const value = e.target.value

        setPsData({
            ...psData,
            [name]: value
        })
    }

    const handle_Edit_Ps = () =>{
        dispatch(setOpen(true))
        axios.post(`/prop_service/${psData.id}`, psData, {
            headers: {
                Authorization: `Bearer ${token}`
            }
        })
        .then(result =>{
            dispatch(setOpen(false))
            setSuccess(result.data.message)
            setPsData({
                id: '',
                cost: '',
                name: '',
                status: '',
                ps_type: '',
                category: '',
                location: '',
                quantity: '',
                description: '',
                sale_price: '',
            })
        })
        .catch(error =>{
            dispatch(setOpen(false))
            if(error){
                return setError(error.response.statusText)
            }
        })
    }

    const handle_Add_Location = () =>{
        dispatch(setOpen(true))
        axios.post('/location', body, {
            headers: {
                Authorization: `Bearer ${token}`
            }
        })
        .then(locations =>{
            setBody('')
            dispatch(setOpen(false))
            setAdd(false)
        })
        .catch(error =>{
            dispatch(setOpen(false))
            if(error) {
                return error.response.statusText
            }
        })
    }


    useEffect(() =>{
        const fps = propServices && propServices.filter(ps =>ps.id == psData.id)[0];
        if(fps) {
            return setPsData({
                id: fps.id,
                cost: fps.cost,
                name: fps.name,
                status: fps.status,
                ps_type: fps.ps_type,
                category: fps.category,
                location: fps.location,
                quantity: fps.quantity,
                description: fps.description,
                sale_price: fps.sale_price,
            })
        }
       
    }, [psData.id])

    useEffect(() =>{
        const getSoldFps = sales && sales.filter(sale =>sale.property == psData.id);
        
        if(getSoldFps) {
            return dispatch(setPsSold(getSoldFps))
        }
    },[psData])

    return (
        <div>
            <AppBackdrop open={open} />
            <AppSnackbar open={success} setOpen={setSuccess} message={success} />
            <div className='admin__Title'>
                <section>
                    <Typography variant='h3'>PROPERTY</Typography>
                </section>
                <div>
                    <Link to='/' className='ml-3'>
                        <Button 
                            variant='contained'
                            startIcon={<span className='fa fa-arrow-right' />}
                            style={{background: '#2A3F54', color: 'white'}}
                        >
                            <Typography variant='caption'>
                                Property Lists
                            </Typography>
                        </Button>
                    </Link>
                </div>
            </div>
            <div className='p-1' />
            
            <table className='mt-1 table-bordered' style={{width: '98%', margin: 'auto'}}>
                <thead>
                    <th>Property</th>
                    <th>
                        
                        <select
                            name='id'
                            value={psData.id}
                            onChange={e =>handleChange(e)}
                        >
                                <option value=""></option>
                            {
                                propServices&&
                                propServices.map((sale, index) =>{
                                    const {id, name} = sale
                                    return <option key={index} value={id}> {name} </option>
                                })
                            }
                        </select>
                    </th>
                    
                    <th
                        style={{borderColor: 'none'}}
                    >
                        <Link to='/ps' className='ml-3'>
                            <Button 
                                variant='contained'
                                startIcon={<span className='fa fa-plus' />}
                                style={{background: '#2A3F54', color: 'white'}}
                            >
                                <Typography variant='caption'>
                                    Add New
                                </Typography>
                            </Button>
                        </Link>
                    </th>
                    <th
                        style={{border: 'none', outline: 'none'}}
                    >
                        <Button
                            onClick={() =>handle_Edit_Ps()}
                            startIcon={<span className='fa fa-check />' />}
                            variant='contained'
                            style={{background: '#2A3F54', color: 'white'}}
                        >
                            <Typography variant='caption'>
                                Update 
                            </Typography>
                        </Button>
                    </th>
                    <th
                        style={{border: 'none', outline: 'none'}}
                    >
                        <Button
                            startIcon={<span className='fa fa-trash />' />}
                            variant='contained'
                            style={{background: '#2A3F54', color: 'white', width: '100%'}}
                        >
                            <Typography variant='caption'>
                                Delete 
                            </Typography>
                        </Button>
                    </th>
                </thead>
            </table>
            <div className='p-1' />
            <table className='mt-1 table-bordered' style={{width: '98%', margin: 'auto'}}>
                <thead>
                    <th
                        onClick={() =>setTab('gen')}
                        style={{background: tab=='gen'?'':'#2A3F54', color: tab=='gen'? '#2A3F54': 'white',  paddingLeft: '5px',
                        paddingRight: '5px', border: '1px solid #000', borderBottom: 'none' }}
                    >
                       
                        General Info
                           
                    </th>
                    <th
                       onClick={() =>setTab('sol')}
                       style={{background: tab=='sol'?'':'#2A3F54', color: tab=='sol'? '#2A3F54': 'white',  paddingLeft: '5px',
                       paddingRight: '5px', border: '1px solid #000', borderBottom: 'none' }}
                    >
                       Sold
                    </th>
                    <th
                        onClick={() =>setTab('pos')}
                        style={{background: tab=='pos'?'':'#2A3F54', color: tab=='pos'? '#2A3F54': 'white',  paddingLeft: '5px',
                        paddingRight: '5px', border: '1px solid #000', borderBottom: 'none' }}
                    >
                      Post Report
                    </th>
                    <th
                        style={{color: 'white', paddingLeft: '5px',
                        paddingRight: '5px', border: '1px solid #000', borderLeft: '1px solid white', borderBottom: 'none',
                        borderTop: 'none', borderRight: 'none'}}
                    >
                      
                    </th>
                    
                </thead>
                { tab=='gen' && psData.id && <tbody>
                    <div className='p-1' />
                    <tr>
                        <td>Property/Service</td>
                        <td>
                            <input
                                list='ps'
                                name='ps_type'
                                value={psData.ps_type}
                                placeholder='Select'
                                onChange={e =>handleChange(e)}
                            />
                            <datalist id='ps'>
                                <option value=""></option>
                                <option value='property'></option>
                                <option value='service'></option>
                            </datalist>
                        </td>
                        <td>Name</td>
                        <td>
                            <input
                                name='name'
                                value={psData.name}
                                placeholder='Property Name'
                                onChange={e =>handleChange(e)}
                            />
                            
                        </td>
                        <td
                            style={{display: 'flex', alignItems: 'center', justifyContent: 'center'}}
                        >Location
                            <span>
                                
                            <IconButton
                                onClick={() =>setAdd(!add)}
                                size='small' className=' ml-2'
                            >
                                <span className='fa fa-plus-circle'
                                    style={{ color: '#20c997' }}
                                />
                            </IconButton>
                            </span>
                        </td>
                        { !add ?
                            <td>
                            
                            <select
                                name='location'
                                value={psData.location}
                                onChange={e =>handleChange(e)}
                            >
                                <option value=""></option>
                                {
                                    locations &&
                                    locations.map((l, index) =>{
                                        const {id, name} = l
                                        return <option key={index} value={id}>{name}</option>
                                    })
                                }
                            </select>
                            </td>
                            :
                            <td
                            >
                            {
                                add&&
                                <div style={{display: 'flex',
                                    flexDirection: 'row', justifyContent: 'space-between'}}>
                              
                                    <input
                                        value={body.name}
                                        placeholder='Location Name'
                                        onChange={e =>setBody({
                                            ...body,
                                            name: e.target.value
                                        })}
                                        
                                    />
                                    <Button
                                    className='ml-4'
                                    onClick={() =>handle_Add_Location()}
                                    size='small' variant='contained'
                                    style={{background: '#2A3F54', color: 'white', width: '200px'}}
                                >
                                    Save
                                </Button>
                            </div>
                                
                            }
                            
                        
                            </td>
                        }
                    </tr>
                    <div className='p-1' />
                    <tr>
                        <td>Sale Price</td>
                        <td>
                            <input
                                name='sale_price'
                                value={psData.sale_price}
                                placeholder='Selling Price'
                                onChange={e =>handleChange(e)}
                            />
                            
                        </td>
                        <td>Quantity</td>
                        <td>
                            <input
                                name='quantity'
                                type='number'
                                value={psData.quantity}
                                placeholder='Quantity'
                                onChange={e =>handleChange(e)}
                            />
                        </td>
                        <td>Status</td>
                        <td>
                            
                            <select 
                                name='status'
                                value={psData.status}
                                onChange={e =>handleChange(e)}
                            >
                                <option value=""></option>
                                <option value={1}>Active</option>
                                <option value={0}>InActive</option>
                            </select>
                        </td>
                    </tr>
                    <div className='p-1' />
                    <tr>
                        <td>Description</td>
                        <td colSpan={5}>
                            <input
                                name='description'
                                value={psData.description}
                                onChange={e =>handleChange(e)}
                                placeholder='Property Description'
                            />
                        </td>
                    </tr>
                </tbody>}
            </table>
            {/* imported component */}
            {
                tab =='sol' &&
                <PsViewTable />
            }
        </div>
    )
}

export default AdminPsSetting
