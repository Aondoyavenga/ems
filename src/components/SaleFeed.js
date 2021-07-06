import { Avatar, Button, Checkbox, FormControlLabel, FormLabel, Grid, IconButton, Paper, Select, TextField, Typography } from '@material-ui/core'
import { FileCopy,  } from '@material-ui/icons'
import axios from 'axios'
import React, { useEffect, useState } from 'react'
import { useDispatch, useSelector } from 'react-redux'
import { selectBuildCategories, selectPropServices, selectToken, selectUser } from '../appState/appSlice'
import AppHeader from './global/AppHeader'
import AppSnackbar from './global/AppSnackbar'
import CashReceipt from './global/CashReceipt'
import SelectApplicant from './global/SelectApplicant'

const SaleFeed = ({ setOpen, isWidget, setIswidget, add_BuildCategories }) => {
    const dispatch = useDispatch()
    const user = useSelector(selectUser)
    const token = useSelector(selectToken)
    const propServices = useSelector(selectPropServices)
    const buildCategories = useSelector(selectBuildCategories)
    const [success, setSuccess] = useState(false)
    const [message, setMessage] = useState()
    const [isOpen, setIsopen] = useState(false)
    const [select, setSelect] = useState(false)
    const [applicant, setApplicant] = useState()
    const [step, setStep] = useState(1)
    const [plans, setPlans] = useState()
    const [body, setBody] = useState({
        name: ''
    })
    const [add, setAdd] = useState(false)
    const [data, setData] = useState({
        uuid: '',
        applicant_name: '',
        build_category: '',
        property: '',
        due_date: '',
        period: '',
        amount: '',
        sale_date: '',
        applicant: '',
        property_name: '',
        VALUES: []
    })

    const handleSetPostData = e =>{
        const name = e.target.name;
        const value = e.target.value;

        setData({
            ...data,
            [name]: value
        })

    }
    
    const handleChange = (index) => {
       setData({ ...data, build_category: index});
    };

    const handleSetTerm = (e) =>{
        const d = new Date()
        const sd = new Date()
        const value = e.target.value;
         const duedate = d.setDate(sd.getDate()+parseInt(value))
            return setData({
                ...data,
                period: value,
                due_date: new Date(duedate)
            })
    }

    const start = data.sale_date? new Date(data.sale_date): new Date()
    const end = new Date(data.due_date)
    const rows = []
    const handleDate = () =>{
        let loop = new Date(start)
        const division =  data.period/30;
        while(loop <= end) {
            
            const newDate = loop.setDate(data.period<=28?loop.getDate() +data.period: loop.getDate() +31);
            loop = new Date(newDate)
            rows.push({
                sale_uuid: data.uuid,
                applicant_name: applicant&&applicant.customer_name,
                amount: data.period <=28? parseInt(data.amount)/1 : parseInt(data.amount) / Math.round(division),
                period: data.period,
                date: new Date(newDate),
                property_name: data.property_name
            })
        }
    }
    const handleSetValues = (d) =>{
        const fdata = d.map(x =>Object.values(x));
        const findal = []
        for(let i =0; i< fdata.length; i++){
            const element = fdata[i];
            findal.push(element)
        }
        // console.log(findal)
        return setData({
            ...data,
            VALUES: findal
        })
    }

    // handle post
    const handlePost = e =>{
        e.preventDefault()
        setOpen(true)
        axios.post('/sale', data, {
            headers: {
                Authorization: `Bearer ${token}`
            }
        })
        .then(result =>{
            setOpen(false)
            setSuccess(true)
            setMessage(result.data.message)
            setData({
                uuid: '',
                applicant_name: '',
                build_category: '',
                property: '',
                due_date: '',
                period: '',
                amount: '',
                sale_date: '',
                applicant: '',
                property_name: '',
                VALUES: []
            })
        })
        .catch(error =>{
            setOpen(false)
            if(error){
                console.log(error.response)
            }
        })
    }

    useEffect(() =>{
        handleDate()
        setPlans(rows)
        handleSetValues(rows)
    }, [data.property, data.due_date])

    
    
    useEffect(() =>{
        
       if(data.property){
        const prop = parseInt(data.property);
        const filterProperty = propServices? propServices.filter(ps =>parseInt(ps.id) == prop ): null;
      
        setData({
            ...data,
            property_name: filterProperty? filterProperty[0].name: null,
            property: filterProperty? filterProperty[0].id: null,
            amount: filterProperty? filterProperty[0].sale_price: 0
        })
        
       }
        
    }, [data.property])
    
    useEffect(() =>{
        setData({
            ...data,
            applicant: applicant && applicant.id,
            applicant_name:  applicant && applicant.customer_name
        })
    }, [applicant])

    useEffect(() =>{
        setData({
            ...data,
            uuid:  new Date().getSeconds().toLocaleString() + new Date().getMinutes().toLocaleString()+new Date().getMilliseconds()
        })
    }, [success])
    return (
        <div className={`${isWidget? 'isapp__Feed': 'app__Feed'}`}>
            <SelectApplicant 
                open={select}
                setOpen={setSelect}
                applicant={applicant}
                setApplicant={setApplicant}
            />
            <CashReceipt rows={plans} isOpen={isOpen} setIsOpen={setIsopen} />
            <AppSnackbar open={success} setOpen={setSuccess} message={message} />
            <AppHeader title='Application Form' />
           <div className="row align-items-center justify-content-center d-flex m-1" >
                <div className="col-lg-12 col-md-12">
                    {/* table */}
                    <h3>Application Entry<span> 
                        <IconButton color='secondary'
                            onClick={() =>setIswidget(!isWidget)}
                        >
                        <FileCopy style={{ color: '#1ABB9C'}} />
                        </IconButton></span></h3>
                </div>
            </div>
            <Grid container alignItems='center' justify='center'>
                <Grid item lg={10} md={10} sm={12}>
                    <Paper className='p-2'>
                        <Grid item lg={12} md={12} sm={12}>
                            <Grid container alignItems='center' justify='center'>
                                {step==1&&<Grid item lg={9} md={9} sm={12}
                                    style={{ display: 'flex', alignItems: 'center', 
                                        justifyContent: 'center', flexDirection: 'column',
                                        
                                    }}
                                >
                                   <Avatar 
                                        style={{width: '100px', height: '100px',
                                            boxSizing: 'border-box', boxShadow: '0px 0px 1px 0px #000'
                                        }}
                                    />
                                    <div style={{ position: 'absolute', marginTop: '-70px', marginLeft: '60px' }}>
                                        <IconButton
                                            onClick={() =>setSelect(!select)}
                                        >
                                            <span className='fa fa-plus-circle' style={{ color: '#1ABB9C'}}/>
                                        </IconButton>
                                    </div>
                                    <div className='mt-2 p-1'
                                        style={{ color: 'white', background: '#2A3F54',
                                            display: 'flex', alignItems: 'center', height: '40px',
                                            justifyContent: 'center', width: '50%', margin: 'auto',
                                            boxSizing: 'border-box', boxShadow: '0px 0px 1px 0px #000'
                                        }}
                                    >
                                        <h6>APPLICATION FORM 
                                           
                                        </h6>
                                    </div>
                                    
                                    <div className='mt-5 p-1'
                                        style={{ color: 'white', background: '#2A3F54',
                                            display: 'flex', alignItems: 'center', height: '40px',
                                            justifyContent: 'center', width: '50%', margin: 'auto',
                                            boxSizing: 'border-box', boxShadow: '0px 0px 5px 0px #000'
                                        }}
                                    >
                                        <h6>A. PERSONAL DATA</h6>
                                            
                                    </div>
                                </Grid>}
                                
                                {step==1&&<Grid item lg={3} md={3} sm={12} 
                                     style={{ display: 'flex', justifyContent: 'center' }}
                                >
                                    <Avatar 
                                        variant='square'
                                        alt={applicant && applicant.customer_name[0]}
                                        src={applicant && applicant.avatar}
                                        style={{ width: '150px', height: '150px' ,
                                            boxSizing: 'border-box', boxShadow: '0px 0px 1px 0px #000'
                                        }} 
                                    />
                                </Grid>}
                            </Grid>
                           
                            {applicant && step==1&&<Grid container spacing={2} className='mt-3'>
                                <Grid item lg={6} md={6} sm={12}>
                                    <TextField
                                        fullWidth
                                        disabled
                                        size='small'
                                        value={applicant&&applicant.customer_name}
                                        variant='outlined'
                                        label='Name of Applicant'
                                        
                                    />
                                </Grid>
                                <Grid item lg={6} md={6} sm={12}>
                                    <TextField
                                        fullWidth
                                        disabled
                                        size='small'
                                        variant='outlined'
                                        value={applicant && applicant.business_employer_name}
                                        label='Business Name & RC. No Corporate Body'
                                        
                                    />
                                </Grid>
                                <Grid item lg={12} md={12} sm={12}>
                                    <TextField
                                        fullWidth
                                        disabled
                                        size='small'
                                        variant='outlined'
                                        value={applicant && applicant.address_1}
                                        label='Residential Address:'
                                    />
                                </Grid>
                                <Grid item lg={6} md={6} sm={12}>
                                    <TextField
                                        fullWidth
                                        disabled
                                        size='small'
                                        variant='outlined'
                                        value={applicant && applicant.phone_no}
                                        label='Phone No.'
                                    />
                                </Grid>
                                <Grid item lg={6} md={6} sm={12}>
                                    <TextField
                                        fullWidth
                                        disabled
                                        size='small'
                                        variant='outlined'
                                        value={applicant && applicant.customer_email}
                                        label='Email Address:'
                                    />
                                </Grid>
                                <Grid item lg={6} md={6} sm={12}>
                                    <TextField
                                        fullWidth
                                        disabled
                                        size='small'
                                        variant='outlined'
                                        value={applicant && applicant.customer_sex}
                                        label='Gender'
                                        
                                    />
                                </Grid>
                                <Grid item lg={6} md={6} sm={12}>
                                    <TextField
                                        fullWidth
                                        disabled
                                        size='small'
                                        variant='outlined'
                                        value={applicant && applicant.customer_marital}
                                        label='Marital Status'
                                    />
                                </Grid>
                                <Grid item lg={6} md={6} sm={12}>
                                    <TextField
                                        fullWidth
                                        disabled
                                        size='small'
                                        variant='outlined'
                                        value={applicant && applicant.country}
                                        label='Nationality:'
                                    />
                                </Grid>
                                <Grid item lg={6} md={6} sm={12}>
                                    <TextField
                                        fullWidth
                                        disabled
                                        size='small'
                                        variant='outlined'
                                        value={applicant && applicant.customer_state}
                                        label='State of Origin:'
                                    />
                                </Grid>
                                <Grid item lg={12} md={12} sm={12}>
                                    <TextField
                                        fullWidth
                                        disabled
                                        size='small'
                                        variant='outlined'
                                        value={applicant && applicant.customer_address}
                                        label='Permanent Home Address'
                                    />
                                </Grid>
                                <Grid item lg={12} md={12} sm={12}>
                                    <TextField
                                        fullWidth
                                        disabled
                                        size='small'
                                        variant='outlined'
                                        value={applicant && applicant.postal_address}
                                        label='Postal Address:'
                                    />
                                </Grid>
                                <Grid item lg={6} md={6} sm={12}>
                                    <TextField
                                        fullWidth
                                        disabled
                                        size='small'
                                        variant='outlined'
                                        value={applicant && applicant.occupation}
                                        label='Occupation:'
                                    />
                                </Grid>
                                <Grid item lg={6} md={6} sm={12}>
                                    <TextField
                                        fullWidth
                                        disabled
                                        size='small'
                                        variant='outlined'
                                        value={applicant && applicant.place_work}
                                        label='Place of Work:'
                                    />
                                </Grid>
                                {/* <Grid item lg={12} md={12} sm={12}>
                                    <FormLabel>Business/Employer's Name & Address:</FormLabel>
                                    <TextField
                                        name=''
                                        fullWidth
                                        size='small'
                                        variant='outlined'
                                        
                                    />
                                </Grid> */}
                                <Grid item lg={6} md={6} sm={12}>
                                    <TextField
                                        fullWidth
                                        disabled
                                        size='small'
                                        variant='outlined'
                                        value={applicant && applicant.next_kin_name}
                                        label='Name of Next Kin:'
                                    />
                                </Grid>
                                <Grid item lg={6} md={6} sm={12}>
                                    <TextField
                                        fullWidth
                                        disabled
                                        size='small'
                                        variant='outlined'
                                        value={applicant && applicant.next_kin_relate}
                                        label='Relationship With Next of Kin:'
                                    />
                                </Grid>
                                <Grid item lg={12} md={12} sm={12}>
                                    <TextField
                                        fullWidth
                                        disabled
                                        size='small'
                                        variant='outlined'
                                        value={applicant && applicant.next_kin_addrss}
                                        label='Next of Kin Address'
                                    />
                                </Grid>
                            </Grid>}
                           <Grid item lg={12} md={12} sm={12}>
                               <Grid container>
                               {
                                step ==2&&
                                <Grid item lg={6} md={6} sm={12}
                                style={{ display: 'flex', 
                                    justifyContent: 'center', flexDirection: 'column',
                                       
                                    }}
                                >
                                    <div className='mt-5 p-1'
                                        style={{ color: 'white', background: '#2A3F54',
                                            display: 'flex',  height: '40px',
                                            justifyContent: 'center', width: '100%',
                                            boxSizing: 'border-box', boxShadow: '0px 0px 5px 0px #000'
                                        }}
                                    >
                                        <h6>B.SELECT PROPERTY</h6>
                                    </div>
                                    <div className='mt-3' />
                                    <FormLabel>Select Property</FormLabel>
                                    <Select
                                        fullWidth
                                        name='property'
                                        variant='outlined'
                                        value={data.property}
                                        onChange={e =>handleSetPostData(e)}
                                        style={{ height: '40px', width: '100%', }}
                                    >
                                        {
                                            propServices&&
                                            propServices.map((ps, index) =>{
                                                const {id, name} = ps
                                                return (
                                                    <option key={index} value={id}> {name} </option>
                                                )
                                            })
                                        }
                                    </Select>
                                    <FormLabel className='mt-3'>Amount</FormLabel>
                                    <TextField
                                        disabled
                                       
                                        size='small'
                                        variant='outlined'
                                        value={data.amount}
                                        placeholder='Amount'
                                        
                                    />
                                    <FormLabel className='mt-3'>Date</FormLabel>
                                    <TextField                                       
                                        size='small'
                                        variant='outlined'
                                        name='sale_date'
                                        value={data.sale_date}
                                        placeholder='Date'
                                        type='date'
                                        onChange={e =>handleSetPostData(e)}
                                        
                                    />

                                    <FormLabel className='mt-3'>Select Term</FormLabel>
                                    <Select
                                        fullWidth
                                        name='period'
                                        variant='outlined'
                                        value={data.period}
                                        onChange={e =>handleSetTerm(e)}
                                        style={{ height: '40px', width: '100%', margin: 'auto' }}
                                    >
                                        <option value={7}>7 Days</option>
                                        <option value={14}>14 Days</option>
                                        <option value={21}>21 Days</option>
                                        <option value={28}>28 Days</option>
                                        <option value={30}>30 Days</option>
                                        <option value={60}>60 Days</option>
                                        <option value={90}>90 Days</option>
                                        <option value={120}>120 Days</option>
                                        <option value={150}>150 Days</option>
                                        <option value={180}>180 Days</option>
                                        <option value={210}>210 Days</option>
                                        <option value={240}>240 Days</option>
                                        <option value={270}>270 Days</option>
                                        <option value={300}>300 Days</option>
                                        <option value={330}>330 Days</option>
                                        <option value={360}>360 Days</option>
                                    </Select>
                                    <FormLabel className='mt-3'>Due Date</FormLabel>
                                    <TextField
                                        disabled
                                        size='small'
                                        variant='outlined'
                                        value={new Date(data.due_date).toLocaleDateString()}
                                        placeholder='Due Date'
                                        
                                    />
                                    <div>
                                    <IconButton
                                        onClick={() =>setIsopen(true)}
                                    >
                                        <span className='fa fa-eye' />
                                    </IconButton>
                                    </div>
                                </Grid>

                                
                            }
                           
                            {
                                step ==2&&
                                <Grid item lg={6} md={6} sm={12}
                                style={{ display: 'flex',
                                    justifyContent: 'center', flexDirection: 'column',
                                       
                                    }}
                                >
                                    <div className='mt-5 p-1'
                                        style={{ color: 'white', background: '#2A3F54',
                                            display: 'flex', alignItems: 'center', height: '40px',
                                            justifyContent: 'center', width: '100%', margin: 'auto',
                                            boxSizing: 'border-box', boxShadow: '0px 0px 5px 0px #000'
                                        }}
                                    >
                                        <h6>C. CATEGORIES OF BUILDING
                                            <span className='ml-3'>
                                                <IconButton size='small'
                                                    onClick={() =>setAdd(!add)} 
                                                >
                                                    <span className='fa fa-plus-circle' style={{ color: '#20c997' }} />
                                                </IconButton>
                                            </span>
                                            
                                        </h6>
                                    </div>
                                   
                                    {
                                        add&&
                                        <div
                                            className='m-3'
                                            style={{ display: 'flex', flex: 1, justifyContent: 'center' }}
                                        >
                                            <TextField
                                            fullWidth
                                            value={body.name}
                                            placeholder='New Build Category'
                                            onChange={e =>setBody({
                                                ...body, name: e.target.value
                                            })}

                                            />
                                            <div
                                                onClick={() =>setAdd(!add)}
                                            >
                                            <Button 
                                                onClick={() =>add_BuildCategories(body)}
                                                size='small' variant='contained' 
                                                style={{background: '#2A3F54', color: 'white'}}
                                            >
                                                Save
                                            </Button>
                                            </div>
                                        </div>
                                    }
                                     <h3 className='ml-5'><b>PLease Tick Appropriately</b></h3>
                                    {
                                        buildCategories&&
                                        buildCategories.map((bcategory, index) =>{
                                            const {id, name} = bcategory
                                            return (
                                                <div className='d-flex ml-5'  key={index}>
                                                    <FormControlLabel
                                                    control={
                                                            <Checkbox
                                                                name='build_category'
                                                                checked={data.build_category ==bcategory.id}
                                                                onChange={e =>handleChange(bcategory.id)}
                                                                style={{border: '1px solid color: black', 
                                                                background: '#2A3F54'}} 
                                                            />
                                                        }
                                                    label={name}
                                                    />
                                                </div>
                                            )
                                        })
                                    }
                                </Grid>
                            }
                               </Grid>
                           </Grid>
                           
                            {
                                step ==2&&
                                <Grid item lg={9} md={9} sm={12}
                                style={{ display: 'flex', alignItems: 'center', 
                                    justifyContent: 'center', flexDirection: 'column',
                                       
                                    }}
                                >
                                    <div className='mt-5 p-1'
                                        style={{ color: 'white', background: '#2A3F54',
                                            display: 'flex', alignItems: 'center', height: '40px',
                                            justifyContent: 'center', width: '50%', margin: 'auto',
                                            boxSizing: 'border-box', boxShadow: '0px 0px 5px 0px #000'
                                        }}
                                    >
                                        <h6>D. MODE OF PAYMENT</h6>
                                    </div>

                                </Grid>
                            }
                            {
                                step ==2&&
                                <Grid item lg={12} md={12} sm={12}>
                                    <ul className='mt-3'>
                                        <li>
                                            Note That Pament should be made after the developer's approval
                                            before allocation. Each applicant is expected to pay for the follwing charges:
                                        </li>
                                        <li>
                                            All Payments should be made to Santos Estate Ltd. and evidence of payment forwarded to our corporate office for issuance of receipt.
                                        </li>
                                        <li>
                                            i have agreed that all refunds shall be limited to the deposit i made, less 10%  administrative charges.
                                        </li>
                                        <li>
                                            "Disclaimer" SANTOS ESTATE LIMITED shall not be liable for any plot re-allocated if terms and conditions are not obligated timeously.
                                        </li>
                                    </ul>
                                </Grid>
                            }
                            {
                                step ==2&&
                                <Grid item lg={9} md={9} sm={12}
                                style={{ display: 'flex', alignItems: 'center', 
                                    justifyContent: 'center', flexDirection: 'column',
                                       
                                    }}
                                >
                                    <div className='mt-5 p-1'
                                        style={{ color: 'white', background: '#2A3F54',
                                            display: 'flex', alignItems: 'center', height: '40px',
                                            justifyContent: 'center', width: '50%', margin: 'auto',
                                            boxSizing: 'border-box', boxShadow: '0px 0px 5px 0px #000'
                                        }}
                                    >
                                        <h6>D. DECLARATION</h6>
                                    </div>

                                </Grid>
                            }
                            {
                                step ==2&&
                                <Grid item lg={12} md={12} sm={12} className='mt-3'>
                                    <ul style={{listStyle: 'none'}}>
                                        <li>
                                            I/We <input readOnly value={applicant.customer_name} style={{ border: 'none', borderBottom: '1px solid black', outline: 'none' }} />
                                            whose name and address appeared above have declared that the above statements are true and correct to the best of any 
                                            knowledge, and i promise to abide by all rules and regulations given by the Developer
                                        </li>
                                    </ul>
                                    <div
                                        className='m-4'
                                        style={{ display: 'flex', flexDirection: 'row', justifyContent: 'space-between',
                                        }}
                                    >
                                        <div style={{ display: 'flex', flexDirection: 'column', alignItems: 'center' }}>
                                            <input readOnly style={{ border: 'none', borderBottom: '1px solid black',
                                                outline: 'none' }}
                                                value={user.username}
                                            />
                                            <FormLabel>Initiate By 
                                                <IconButton size='small'>
                                                <span className='fa fa-pen' style={{ color: '#1ABB9C'}}/>
                                                </IconButton>
                                            </FormLabel>
                                        </div>
                                        <div style={{ display: 'flex', flexDirection: 'column', alignItems: 'center' }}>
                                            <input type='date' style={{ border: 'none', borderBottom: '1px solid black',
                                                outline: 'none' }} 
                                                value={data.sale_date}
                                                readOnly
                                            />
                                            <FormLabel>Date</FormLabel>
                                        </div>
                                    </div>
                                </Grid>
                            }
                            <Grid item lg={12} md={12} sm={12}
                                style={{ display:'flex', justifyContent: 'center' }}
                            >
                                {applicant && step ==1&&<Button variant='contained'
                                    className='m-3'
                                    onClick={() =>setStep(2)}
                                    style={{color: 'white', background: '#2A3F54' }}
                                >
                                    Next
                                </Button>}
                                {step==2&&<Button variant='contained'
                                    className='m-3'
                                    onClick={() =>setStep(1)}
                                   color='default'
                                >
                                    Previous
                                </Button>}
                                {step ==2&&<Button variant='contained'
                                    className='m-3'
                                    onClick={e =>handlePost(e)}
                                    style={{color: 'white', background: '#2A3F54' }}
                                >
                                    Submit
                                </Button>}
                            </Grid>
                        </Grid>
                    </Paper>
                    <div className='p-2' />
                </Grid>
            </Grid>
        </div>           
    )
}

export default SaleFeed
