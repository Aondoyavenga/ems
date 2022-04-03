// MUI Stuff
import Grid from '@material-ui/core/Grid'
import Button from '@material-ui/core/Button'
import Select from '@material-ui/core/Select'
import Tooltip from '@material-ui/core/Tooltip'
import TextField from '@material-ui/core/TextField'
import IconButton from '@material-ui/core/IconButton'
import FormLabel from '@material-ui/core/FormLabel'
import FormGroup from '@material-ui/core/FormGroup'

import axios from 'axios'
import React, { useEffect, useState } from 'react'
import { Fragment } from 'react'
import { useSelector } from 'react-redux'
import { selectToken, } from '../../appState/appSlice'
import AppSnackbar from '../global/AppSnackbar'

const PropServiceForm = ({ open, setOpen}) => {
    const token = useSelector(selectToken)
    const [isOpen, setIsOpen] = useState(false)
    const [success, setSuccess] = useState()
    const [error, setError] = useState()
    const [locations, setLocations] = useState()
    const [body, setBody] = useState({
        name: ''
    })
    const [add, setAdd] = useState(false)
    const [psData, setPsData] = useState({
        ps_type: '',
        name: '',
        sku: '',
        category: '',
        location: '',
        product_class: '',
        quantity: '',
        qty_athDate: '',
        reorder_point: '',
        purchase_info: '',
        cost: '',
        description: '',
        sale_options: '',
        sale_price: '',
        purchase_option: '',
        asset_account_FK: '',
        createdBy_FK: '',
        expense_acc_FK: '',
        income_acc_FK: '',
        vendor_FK: '',
    })
    // func
    const handleGet_Locations = () =>{
        axios.get('/location', {
            headers: {
                Authorization: `Bearer ${token}`
            }
        })
        .then(locations =>{
            setLocations(locations.data)
        })
        .catch(error =>{
            if(error) {
                return error.response.statusText
            }
        })
    }

    const handle_Add_Location = () =>{
        axios.post('/location', body, {
            headers: {
                Authorization: `Bearer ${token}`
            }
        })
        .then(locations =>{
            setBody('')
            setAdd(false)
        })
        .catch(error =>{
            if(error) {
                return error.response.statusText
            }
        })
    }

    const handleChange = e =>{
        const name = e.target.name;
        const value = e.target.value

        setPsData({
            ...psData,
            [name]: value
        })
    }
    const handle_Add_Prop_Service =e =>{
        e. preventDefault()
        // if(Error){
        //     return Error
        // }
        setOpen(true)
        axios.post('/prop_service', psData, {
            headers: {
                Authorization: `Bearer ${token}`
            }
        })
        .then(result =>{
            setOpen(false)
            setIsOpen(true)
            setSuccess(result.data.message)
            setPsData({
                ps_type: '',
                name: '',
                sku: '',
                category: '',
                product_class: '',
                quantity: '',
                qty_athDate: '',
                reorder_point: '',
                purchase_info: '',
                cost: '',
                description: '',
                sale_options: '',
                sale_price: '',
                purchase_option: '',
                asset_account_FK: '',
                createdBy_FK: '',
                expense_acc_FK: '',
                income_acc_FK: '',
                vendor_FK: '',
            })
        })
        .catch(error =>{
            setOpen(false)
            if(error){
                return setError(error.response.statusText)
            }
        })
    }
    useEffect(() =>{
        Object.keys(psData).map(key =>{
            if(psData[key].length <=0){
                return setError('Form not valid')
              
            }
            setError('')
        })
        
    },[psData])

    useEffect(() =>{
        handleGet_Locations()
    }, [add])
    return (
        <Fragment>
            <AppSnackbar 
                open={isOpen} 
                setOpen={setIsOpen} 
                message={success} 
            />
            <form className='mt-3 pl-2 pr-2'>
                <Grid container spacing={2}>
                    {/* <Grid item lg={12} md={12}>
                        <FormGroup>
                            <TextField
                                label='Plot Number'
                                size='small'
                                variant='outlined'
                                name='sku'
                                value={psData.sku}
                                placeholder='Plot number'
                                onChange={e =>handleChange(e)}
                            />
                        </FormGroup>
                    </Grid> */}
                    <Grid item lg={6} md={6}>
                        <FormLabel className='m-2'>Property/Service Type</FormLabel>
                        <FormGroup>
                            <Select style={{height: '40px'}}
                                label='Type'
                                size='small'
                                variant='outlined'
                                name='ps_type'
                                value={psData.ps_type}
                                onChange={e =>handleChange(e)}
                            >
                                <option value></option>
                                <option value='service'>Service</option>
                                <option value='property'>Property</option>
                            </Select>
                        </FormGroup>
                    </Grid>
                    <Grid item lg={6} md={6}>
                        <FormLabel>(District)
                            <Tooltip title='Add New District'>
                                <IconButton
                                    onClick={() =>setAdd(!add)}
                                    size='small' className=' ml-2'
                                >
                                    <span className='fa fa-plus-circle'
                                        style={{ color: '#20c997' }}
                                    />
                                </IconButton>
                            </Tooltip>
                            {
                                add &&
                                <Button
                                    className='ml-4'
                                    onClick={() =>handle_Add_Location()}
                                    size='small' variant='contained'
                                    style={{background: '#2A3F54', color: 'white'}}
                                >
                                    Save
                                </Button>
                            }
                            {
                                add&&
                                <span>
                                    <TextField
                                        value={body.name}
                                        placeholder='District Name'
                                        onChange={e =>setBody({
                                            ...body,
                                            name: e.target.value
                                        })}
                                    />
                                </span>
                            }
                        </FormLabel>
                        {!add && <FormGroup>
                            <Select style={{height: '40px'}}
                                label='Location'
                                size='small'
                                variant='outlined'
                                name='location'
                                value={psData.location}
                                onChange={e =>handleChange(e)}
                            >
                                <option value>Select</option>
                               {
                                   locations&&
                                   locations.map((location, index) =>{
                                       const {id, name} = location;
                                       return (
                                        <option key={index} value={id}>{name}</option>
                                       )
                                   })
                               }
                               
                            </Select>
                        </FormGroup>}
                    </Grid>
                    {/* <Grid item lg={6} md={6}>
                        <FormLabel>Property/Service Class</FormLabel>
                        <FormGroup>
                            <Select style={{height: '40px'}}
                                label='Class'
                                size='small'
                                variant='outlined'
                                name='product_class'
                                value={psData.product_class}
                                onChange={e =>handleChange(e)}
                            >
                                <option value></option>
                                <option value="class1">Class1</option>
                                <option value="class2">Class</option>
                                <option value="class3">Class3</option>
                            </Select>
                        </FormGroup>
                    </Grid> */}
                    {/* <Grid item lg={6} md={6}>
                        <FormLabel>Income Account</FormLabel>
                        <Select
                            label='Class'
                            size='small'
                            variant='outlined'
                            name='income_acc_FK'
                            fullWidth
                            value={psData.income_acc_FK}
                            onChange={e =>handleChange(e)}
                            style={{height: '40px'}}
                        >
                            <option value=''></option>
                            {
                                accounts&&
                                accounts.map((acc, index) =>{
                                    const { id, name, balance_type } = acc
                                    return <option value={id} key={index} >{`${name} (${balance_type})`}</option>
                                })
                            }
                        </Select>
                    </Grid> */}
                    <Grid item lg={6} md={6}>
                        <FormGroup>
                            <TextField
                                label='Name'
                                size='small'
                                variant='outlined'
                                name='name'
                                value={psData.name}
                                placeholder='Property/Service Name'
                                onChange={e =>handleChange(e)}
                            />
                        </FormGroup>
                    </Grid>
                    {/* <Grid item lg={6} md={6}>
                        <FormGroup>
                            <TextField
                                label='SKU'
                                size='small'
                                variant='outlined'
                                name='sku'
                                value={psData.sku}
                                placeholder='Stock unit'
                                onChange={e =>handleChange(e)}
                            />
                        </FormGroup>
                    </Grid> */}
                    <Grid item lg={6} md={6}>
                        <FormGroup>
                            <TextField
                                label={`Price/Rate ${
                                    parseInt(psData.sale_price).toLocaleString()
                                }`}
                                size='small'
                                variant='outlined'
                                name='sale_price'
                                type='number'
                                placeholder='Salling Price'
                                value={psData.sale_price}
                                onChange={e =>handleChange(e)}
                            />
                        </FormGroup>
                    </Grid>
                    
                    <Grid item lg={6} md={6}>
                        <FormGroup>
                            <TextField
                                label='Quantity'
                                size='small'
                                variant='outlined'
                                name='quantity'
                                placeholder='Product Quantity'
                                value={psData.quantity}
                                onChange={e =>handleChange(e)}
                            />
                        </FormGroup>
                    </Grid>
                    {/* <Grid item lg={6} md={6}>
                        <FormGroup>
                            <TextField
                                label='Qty as of Date ?'
                                size='small'
                                variant='outlined'
                                name='qty_athDate'
                                type='date'
                                placeholder='Qty as of date ?'
                                value={psData.qty_athDate}
                                onChange={e =>handleChange(e)}
                            />
                        </FormGroup>
                    </Grid> */}
                    {/* <Grid item lg={6} md={6}>
                        <FormGroup>
                            <TextField
                                label='Reorder Point'
                                size='small'
                                variant='outlined'
                                name='reorder_point'
                                placeholder='Qty Reorder Point '
                                value={psData.reorder_point}
                                onChange={e =>handleChange(e)}
                            />
                        </FormGroup>
                    </Grid> */}
                    <Grid item lg={6} md={6}>
                        <FormGroup>
                            <TextField
                                label={`Property Cost ${parseInt(psData.cost).toLocaleString()}`}
                                size='small'
                                variant='outlined'
                                name='cost'
                                type='number'
                                placeholder='Purchase Cost price'
                                value={psData.cost}
                                onChange={e =>handleChange(e)}
                            />
                        </FormGroup>
                    </Grid>
                    <Grid item lg={12} md={12}>
                        <FormGroup>
                            <TextField
                                label='Description'
                                size='small'
                                variant='outlined'
                                name='description'
                                placeholder='Description'
                                value={psData.description}
                                onChange={e =>handleChange(e)}
                            />
                        </FormGroup>
                    </Grid>
                    {/* <Grid item lg={12} md={12}>
                        <FormGroup>
                            <TextField
                                label='Purchase Info'
                                size='small'
                                variant='outlined'
                                name='purchase_info'
                                placeholder='Purchase Information'
                                value={psData.purchase_info}
                                onChange={e =>handleChange(e)}
                            />
                        </FormGroup>
                    </Grid> */}

                    {/* <Grid item lg={6} md={6}>
                        <FormLabel>Expense Account</FormLabel>
                        <FormGroup>
                            <Select style={{height: '40px'}}
                                label='Sex'
                                size='small'
                                variant='outlined'
                                name='expense_acc_FK'
                                value={psData.expense_acc_FK}
                                onChange={e =>handleChange(e)}
                            >
                                <option value>Select</option>
                                {
                                    accounts&&
                                    accounts.map((acc, index) =>{
                                        const { id, name, balance_type } = acc
                                        return <option value={id} key={index} >{`${name} (${balance_type})`}</option>
                                    })
                                }
                            </Select>
                        </FormGroup>
                    </Grid> */}
                    {/* <Grid item lg={6} md={6}>
                        <FormLabel>Inventory Asset Account</FormLabel>
                        <FormGroup>
                            <Select style={{height: '40px'}}
                                label='Inventory asset account'
                                size='small'
                                variant='outlined'
                                name='asset_account_FK'
                                value={psData.asset_account_FK}
                                onChange={e =>handleChange(e)}
                            >
                                <option value>Select</option>
                                {
                                    accounts&&
                                    accounts.map((acc, index) =>{
                                        const { id, name, balance_type } = acc
                                        return <option value={id} key={index} >{`${name} (${balance_type})`}</option>
                                    })
                                }
                            </Select>
                        </FormGroup>
                    </Grid> */}
                    {/* <Grid item lg={12} md={12}>
                        <FormLabel>Vendor Buying From</FormLabel>
                        <FormGroup>
                            <Select style={{height: '40px'}}
                                label='Vendor Buying From'
                                size='small'
                                variant='outlined'
                                name='vendor_FK'
                                value={psData.vendor_FK}
                                onChange={e =>handleChange(e)}
                            >
                                <option value>Select</option>
                                {
                                    vendors&&
                                    vendors.map((vendor, index) =>{
                                        const { id, vendor_name} = vendor
                                        return <option value={id} key={index} >{`${vendor_name}`}</option>
                                    })
                                }
                            </Select>
                        </FormGroup>
                    </Grid>                             */}
                   
                    <Grid item lg={12} md={12}>
                        {/* {
                            Error&&
                            <Typography variant='caption' color='error'>
                                {Error}
                            </Typography>
                        } */}
                        <Button
                            // disabled={Error}
                            onClick={e =>handle_Add_Prop_Service(e)}
                            color='default' variant='contained'
                            style={{ color: 'white', background: '#2A3F54', width: '100%'}}
                        >
                            Add
                        </Button>
                    </Grid>
                </Grid>
            </form>
        </Fragment>
    )
}

export default PropServiceForm
