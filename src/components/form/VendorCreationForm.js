import { Button, FormGroup, FormLabel, Grid, Select, TextField, Typography } from '@material-ui/core'
import axios from 'axios'
import React, { useEffect, useState } from 'react'
import { Fragment } from 'react'
import { useSelector } from 'react-redux'
import { selectAccounts, selectToken } from '../../appState/appSlice'

const VendorCreationForm = ({ open, setOpen}) => {
    const token = useSelector(selectToken)
    const [Error, setError] = useState()
    const accounts = useSelector(selectAccounts)
    const [vendorData, setVendordata] = useState({
            vendor_name: '',
            address_1: '',
            address_2: '',
            city: '',
            state: '',
            zip_code: '',
            country: '',
            email: '',
            website: '',
            phone: '',
            exp_account_FK: '',
    })
    // func
    const handleChange = e =>{
        const name = e.target.name;
        const value = e.target.value

        setVendordata({
            ...vendorData,
            [name]: value
        })
    }
    const handle_Create_Vendor =e =>{
        e. preventDefault()
        if(Error){
            return Error
        }
        setOpen(true)
        axios.post('/vendor', vendorData, {
            headers: {
                Authorization: `Bearer ${token}`
            }
        })
        .then(result =>{
            setOpen(false)
            setVendordata({
                vendor_name: '',
                address_1: '',
                address_2: '',
                city: '',
                state: '',
                zip_code: '',
                country: '',
                email: '',
                website: '',
                phone: '',
                exp_account_FK: '',
            
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
        Object.keys(vendorData).map(key =>{
            if(vendorData[key].length <=0){
                return setError('Form not valid')
              
            }
            setError('')
        })
        
    },[vendorData])
    return (
        <Fragment>
            <form className='mt-3 pl-2 pr-2'>
                <Grid container spacing={2}>
                    <Grid item lg={6} md={6}>
                        <FormGroup>
                            <TextField
                                label='Name'
                                size='small'
                                variant='outlined'
                                name='vendor_name'
                                value={vendorData.vendor_name}
                                onChange={e =>handleChange(e)}
                            />
                        </FormGroup>
                    </Grid>
                    <Grid item lg={6} md={6}>
                        <FormGroup>
                            <TextField
                                label='Contact'
                                size='small'
                                variant='outlined'
                                name='phone'
                                value={vendorData.phone}
                                onChange={e =>handleChange(e)}
                            />
                        </FormGroup>
                    </Grid>
                    <Grid item lg={6} md={6}>
                        <FormGroup>
                            <TextField
                                label='Eamil'
                                size='small'
                                variant='outlined'
                                name='email'
                                value={vendorData.email}
                                onChange={e =>handleChange(e)}
                            />
                        </FormGroup>
                    </Grid>
                    
                    <Grid item lg={6} md={6}>
                        <FormGroup>
                            <TextField
                                label='Nationality'
                                size='small'
                                variant='outlined'
                                name='country'
                                value={vendorData.country}
                                onChange={e =>handleChange(e)}
                            />
                        </FormGroup>
                    </Grid>
                   
                    <Grid item lg={12} md={12}>
                        <FormGroup>
                            <TextField
                                label='Home Address'
                                size='small'
                                variant='outlined'
                                name='address_2'
                                value={vendorData.address_2}
                                onChange={e =>handleChange(e)}
                            />
                        </FormGroup>
                    </Grid>
                    <Grid item lg={6} md={6}>
                        <FormGroup>
                            <TextField
                                label='City'
                                size='small'
                                variant='outlined'
                                name='city'
                                value={vendorData.city}
                                onChange={e =>handleChange(e)}
                            />
                        </FormGroup>
                    </Grid>
                    <Grid item lg={6} md={6}>
                        <FormGroup>
                            <TextField
                                label='Website'
                                size='small'
                                variant='outlined'
                                name='website'
                                value={vendorData.website}
                                onChange={e =>handleChange(e)}
                            />
                        </FormGroup>
                    </Grid>
                    <Grid item lg={12} md={12}>
                        <FormGroup>
                            <TextField
                                label='Residential Address'
                                size='small'
                                variant='outlined'
                                name='address_1'
                                value={vendorData.address_1}
                                onChange={e =>handleChange(e)}
                            />
                        </FormGroup>
                    </Grid>
                    <Grid item lg={12} md={12}>
                        <FormLabel>Appear for all vendor payment</FormLabel>
                        <Select
                            fullWidth
                            variant='outlined'
                            name='exp_account_FK'
                            value={vendorData.exp_account_FK}
                            onChange={e =>handleChange(e)}
                            style={{ height: '40px' }}
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
                    </Grid>
                    <Grid item lg={12} md={12}>
                        <FormLabel>State of origin?</FormLabel>
                        <FormGroup>
                            <Select style={{height: '40px'}}
                                label='Marital Status'
                                size='small'
                                variant='outlined'
                                name='state'
                                value={vendorData.state}
                                onChange={e =>handleChange(e)}
                            >
                                <option value></option>
                                <option value='Abia'>Abia</option>
                                <option value='Adamawa'>Adamawa</option>
                                <option value='Anambara'>Anambara</option>
                                <option value='Akwa-ibom'>Akwa-ibom</option>
                                <option value='Benue'>Benue</option>
                                <option value='Enugu'>Enugu</option>
                                <option value='Cross-River'>Cross-River</option>
                                <option value='Imo'>Imo</option>
                                <option value='FCT'>FCT</option>
                                <option value='Nsarawa'>Nsarawa</option>
                                <option value='Kaduna'>Kaduna</option>
                                <option value='Kano'>Kano</option>
                            </Select>
                        </FormGroup>
                    </Grid>
                    <Grid item lg={12} md={12}>
                        {/* {
                            Error&&
                            <Typography variant='caption' color='error'>
                                {Error}
                            </Typography>
                        } */}
                        <Button
                            disabled={Error}
                            onClick={e =>handle_Create_Vendor(e)}
                            color='default' variant='contained'
                            style={{ color: 'white', background: '#2A3F54', width: '100%'}}
                        >
                            Create
                        </Button>
                    </Grid>
                </Grid>
            </form>
        </Fragment>
    )
}

export default VendorCreationForm





