import { Button, FormGroup, FormLabel, Grid, Select, TextField, Typography } from '@material-ui/core'
import axios from 'axios'
import React, { useEffect, useState } from 'react'
import { Fragment } from 'react'
import { useSelector } from 'react-redux'
import { selectAllStaffs, selectToken } from '../../appState/appSlice'

const CustomerCreationForm = ({ open, setOpen}) => {
    const token = useSelector(selectToken)
    const [Error, setError] = useState()
    const RMS = useSelector(selectAllStaffs)
    const [cusData, setCusdata] = useState({
        rm:'',
        country: '',
        phone_no: '',
        address_1: '',
        occupation: '',
        place_work: '',
        next_kin_name: '',
        customer_sex: '',
        customer_name: '',
        customer_email: '',
        customer_state: '',
        postal_address: '',
        customer_marital: '',
        customer_address: '',
        next_kin_addrss: '',
        next_kin_relate: '',
        business_employer_name: '',
    })
    // func
    const handleChange = e =>{
        const name = e.target.name;
        const value = e.target.value

        setCusdata({
            ...cusData,
            [name]: value
        })
    }
    const handle_Create_Customer =e =>{
        e. preventDefault()
        if(Error){
            return Error
        }
        setOpen(true)
        axios.post('/customer', cusData, {
            headers: {
                Authorization: `Bearer ${token}`
            }
        })
        .then(result =>{
            setOpen(false)
            setCusdata({
                rm: '',
                country: '',
                phone_no: '',
                address_1: '',
                occupation: '',
                place_work: '',
                next_kin_name: '',
                customer_sex: '',
                customer_name: '',
                customer_email: '',
                customer_state: '',
                postal_address: '',
                customer_marital: '',
                customer_address: '',
                next_kin_addrss: '',
                next_kin_relate: '',
                business_employer_name: '',
            
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
        Object.keys(cusData).map(key =>{
            if(cusData[key].length <=0){
                return setError('Form not valid')
              
            }
            setError('')
        })
        
    },[cusData])
    return (
        <Fragment>
            <form className='mt-3 pl-2 pr-2'>
                <Grid container spacing={1}>
                    <Grid item lg={6} md={6}>
                        <FormGroup>
                            <TextField
                                label='Name'
                                size='small'
                                required
                                variant='outlined'
                                name='customer_name'
                                placeholder='Full Name'
                                value={cusData.customer_name}
                                onChange={e =>handleChange(e)}
                            />
                        </FormGroup>
                    </Grid>
                    <Grid item lg={6} md={6}>
                        <FormGroup>
                            <TextField
                                label='Contact'
                                size='small'
                                required
                                variant='outlined'
                                name='phone_no'
                                placeholder='Phone Number'
                                value={cusData.phone_no}
                                onChange={e =>handleChange(e)}
                            />
                        </FormGroup>
                    </Grid>
                    <Grid item lg={6} md={6}>
                        <FormGroup>
                            <TextField
                                label='Eamil'
                                size='small'
                                required
                                variant='outlined'
                                name='customer_email'
                                placeholder='Email Address'
                                value={cusData.customer_email}
                                onChange={e =>handleChange(e)}
                            />
                        </FormGroup>
                    </Grid>
                    <Grid item lg={6} md={6}>
                        <FormGroup>
                            <TextField
                                required
                                label='Address'
                                size='small'
                                variant='outlined'
                                name='address_1'
                                placeholder='Residential Address'
                                value={cusData.address_1}
                                onChange={e =>handleChange(e)}
                            />
                        </FormGroup>
                    </Grid>
                    <Grid item lg={6} md={6}>
                        <FormLabel>Gender</FormLabel>
                        <FormGroup>
                            <Select style={{height: '40px'}}
                                label='Sex'
                                size='small'
                                variant='outlined'
                                name='customer_sex'
                                value={cusData.customer_sex}
                                onChange={e =>handleChange(e)}
                            >
                                <option value>Select</option>
                                <option value='Male'>Male</option>
                                <option value='Female'>Female</option>
                            </Select>
                        </FormGroup>
                    </Grid>
                    <Grid item lg={6} md={6}>
                    <FormLabel>Marital Status</FormLabel>
                        <FormGroup>
                            <Select style={{height: '40px'}}
                                size='small'
                                variant='outlined'
                                name='customer_marital'
                                value={cusData.customer_marital}
                                onChange={e =>handleChange(e)}
                            >
                                <option value>Select</option>
                                <option value='Single'>Single</option>
                                <option value='Married'>Married</option>
                                <option value='Widow'>Widow</option>
                                <option value='Divorce'>Divorce</option>
                            </Select>
                        </FormGroup>
                    </Grid>
                    <Grid item lg={6} md={6}>
                        <FormLabel>Nationality</FormLabel>
                        <FormGroup>
                            <TextField
                                size='small'
                                variant='outlined'
                                name='country'
                                placeholder='Country'
                                value={cusData.country}
                                onChange={e =>handleChange(e)}
                            />
                        </FormGroup>
                    </Grid>
                    <Grid item lg={6} md={6}>
                        <FormLabel>State of origin?</FormLabel>
                        <FormGroup>
                            <Select style={{height: '40px'}}
                                size='small'
                                variant='outlined'
                                name='customer_state'
                                value={cusData.customer_state}
                                onChange={e =>handleChange(e)}
                            >
                                <option value="Abia">Abia</option>
                                <option value="Adamawa">Adamawa</option>
                                <option value="Akwa Ibom">Akwa Ibom</option>
                                <option value="Anambra">Anambra</option>
                                <option value="Bauchi">Bauchi</option>
                                <option value="Bayelsa">Bayelsa</option>
                                <option value="Benue">Benue</option>
                                <option value="Borno">Borno</option>
                                <option value="Cross Rive">Cross River</option>
                                <option value="Delta">Delta</option>
                                <option value="Ebonyi">Ebonyi</option>
                                <option value="Edo">Edo</option>
                                <option value="Ekiti">Ekiti</option>
                                <option value="Enugu">Enugu</option>
                                <option value="FCT">Federal Capital Territory</option>
                                <option value="Gombe">Gombe</option>
                                <option value="Imo">Imo</option>
                                <option value="Jigawa">Jigawa</option>
                                <option value="Kaduna">Kaduna</option>
                                <option value="Kano">Kano</option>
                                <option value="Katsina">Katsina</option>
                                <option value="Kebbi">Kebbi</option>
                                <option value="Kogi">Kogi</option>
                                <option value="Kwara">Kwara</option>
                                <option value="Lagos">Lagos</option>
                                <option value="Nasarawa">Nasarawa</option>
                                <option value="Niger">Niger</option>
                                <option value="Ogun">Ogun</option>
                                <option value="Ondo">Ondo</option>
                                <option value="Osun">Osun</option>
                                <option value="Oyo">Oyo</option>
                                <option value="Plateau">Plateau</option>
                                <option value="Rivers">Rivers</option>
                                <option value="Sokoto">Sokoto</option>
                                <option value="Taraba">Taraba</option>
                                <option value="Yobe">Yobe</option>
                                <option value="Zamfara">Zamfara</option>
                            </Select>
                        </FormGroup>
                    </Grid>
                    <Grid item lg={12} md={12}>
                        <FormGroup>
                            <TextField
                                label='Home Address'
                                size='small'
                                variant='outlined'
                                name='customer_address'
                                value={cusData.customer_address}
                                onChange={e =>handleChange(e)}
                            />
                        </FormGroup>
                    </Grid>
                    <Grid item lg={12} md={12}>
                        <FormGroup>
                            <TextField
                                label='Postal Address'
                                size='small'
                                variant='outlined'
                                name='postal_address'
                                value={cusData.postal_address}
                                onChange={e =>handleChange(e)}
                            />
                        </FormGroup>
                    </Grid>
                    <Grid item lg={6} md={6}>
                        <FormGroup>
                            <TextField
                                label='Occupation'
                                size='small'
                                variant='outlined'
                                name='occupation'
                                value={cusData.occupation}
                                onChange={e =>handleChange(e)}
                            />
                        </FormGroup>
                    </Grid>
                    <Grid item lg={6} md={6}>
                        <FormGroup>
                            <TextField
                                label='Place of work'
                                size='small'
                                variant='outlined'
                                name='place_work'
                                value={cusData.place_work}
                                onChange={e =>handleChange(e)}
                            />
                        </FormGroup>
                    </Grid>
                    <Grid item lg={12} md={12}>
                        <FormGroup>
                            <TextField
                                label={`Business/Employer's Name`}
                                size='small'
                                variant='outlined'
                                name='business_employer_name'
                                value={cusData.business_employer_name}
                                onChange={e =>handleChange(e)}
                            />
                        </FormGroup>
                    </Grid>
                    <Grid item lg={ 12} md={  12}>
                        <FormLabel>Relationship Mannger (RM)</FormLabel>
                        <FormGroup>
                            <Select style={{height: '40px'}}
                                label='RM'
                                size='small'
                                variant='outlined'
                                name='rm'
                                value={cusData.rm}
                                onChange={e =>handleChange(e)}
                            >
                                <option value>Select</option>
                                {
                                    RMS &&
                                    RMS.map((rm, index) =>{
                                        const {id, first_name, last_name} = rm
                                        return (
                                            <option key={index} value={id}> {`${first_name} ${last_name}`} </option>
                                        )
                                    })
                                }
                            </Select>
                        </FormGroup>
                    </Grid>
                    <Grid item lg={12} md={12}>
                        <Typography variant='h6'>
                            Next of Kin Details
                        </Typography>
                    </Grid>
                    <Grid item lg={6} md={6}>
                        <FormGroup>
                            <TextField
                                label='Name'
                                size='small'
                                variant='outlined'
                                name='next_kin_name'
                                value={cusData.next_kin_name}
                                onChange={e =>handleChange(e)}
                            />
                        </FormGroup>
                    </Grid>
                    <Grid item lg={6} md={6}>
                        <FormGroup>
                            <TextField
                                label='Address'
                                size='small'
                                variant='outlined'
                                name='next_kin_addrss'
                                value={cusData.next_kin_addrss}
                                onChange={e =>handleChange(e)}
                            />
                        </FormGroup>
                    </Grid>
                    <Grid item lg={12} md={12}>
                        <FormLabel>Relationship</FormLabel>
                        <FormGroup>
                            <Select style={{height: '40px'}}
                                label='Relationship'
                                size='small'
                                variant='outlined'
                                name='next_kin_relate'
                                value={cusData.next_kin_relate}
                                onChange={e =>handleChange(e)}
                            >
                                <option value>Related ?</option>
                                <option value='Son'>Son</option>
                                <option value='Sister'>Sister</option>
                                <option value='Brother'>Brother</option>
                                <option value='Aunt'>Aunt</option>
                                <option value='Uncle'>Uncle</option>
                                <option value='Wife'>Wife</option>
                                <option value='Husband'>Husband</option>
                                <option value='Daughter'>Daughter</option>
                                <option value='Father'>Father</option>
                                <option value='Mother'>Mother</option>
                                
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
                            className='mb-4'
                            onClick={e =>handle_Create_Customer(e)}
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

export default CustomerCreationForm




