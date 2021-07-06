import { Button, Typography } from '@material-ui/core'
import axios from 'axios'
import React, { useEffect, useState } from 'react'
import { useDispatch, useSelector } from 'react-redux'
import { Link } from 'react-router-dom'
import { selectAllStaffs, selectCustomers, selectSales, selectToken, selectTransactions, setFilterSale, setfilterTx, setOpen } from '../appState/appSlice'
import AppSnackbar from './global/AppSnackbar'
import TxTableView from './global/TxTableView'
import SaleViewTable from './SaleViewTable'

const AdminCustomerSetting = () => {
    const dispatch = useDispatch()
    const token = useSelector(selectToken)
    const staffs = useSelector(selectAllStaffs)
    const sales = useSelector(selectSales)
    const customers = useSelector(selectCustomers)
    const transactions = useSelector(selectTransactions)
    const [success, setSuccess] = useState(false)
    const [message, setMessage] = useState()
    const [tab, setTab] = useState('gen')
    const [cusData, setCusdata] = useState({
        rm:'',
        active: '',
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
        customer: ''
    })

    // func

    const handleChange = e =>{
        const name = e.target.name;
        const value = e.target.value;
        
        setCusdata({
            ...cusData,
            [name]: value
        })
    }

    const handleUpdate = () =>{
        dispatch(setOpen(true))
        axios.post(`/customer/${cusData.customer}`, cusData, {
            headers: {
                Authorization: `Bearer ${token}`
            }
        })
        .then(result =>{
            setMessage(result.data.message)
            dispatch(setOpen(false))
            setSuccess(true)
            setCusdata({
                customer: ''
            })
        })
        .catch(error =>{
            dispatch(setOpen(false))
            if(error) {
                setMessage(error.response.statusText)
                setSuccess(true)
            }
        })
    }

    useEffect(() =>{
        const fcus = customers && customers.filter(cus =>cus.id == cusData.customer)[0];
        if(fcus) {
            return setCusdata({
                ...cusData,
                rm:fcus.rm,
                code: fcus.code,
                country: fcus.country,
                phone_no: fcus.phone_no,
                address_1: fcus.address_1,
                occupation: fcus.occupation,
                place_work: fcus.place_work,
                next_kin_name: fcus.next_kin_name,
                customer_sex: fcus.customer_sex,
                customer_name: fcus.customer_name,
                customer_email: fcus.customer_email,
                customer_state: fcus.customer_state,
                postal_address: fcus.postal_address,
                customer_marital: fcus.customer_marital,
                customer_address: fcus.customer_address,
                next_kin_addrss: fcus.next_kin_addrss,
                next_kin_relate: fcus.next_kin_relate,
                business_employer_name: fcus.business_employer_name
            })
        }
    }, [cusData.customer])

    useEffect(() =>{
        const ftxs = transactions && transactions.filter(tx =>tx.account_FK == cusData.code);
        const fsales = sales && sales.filter(sale =>sale.applicant == cusData.customer);
       
        dispatch(setfilterTx(ftxs))

        dispatch(setFilterSale(fsales))
       return
    }, [cusData])
    

    return (
        <div>
            <AppSnackbar open={success} setOpen={setSuccess} message={message} />
            <div className='admin__Title'>
                <section>
                    <Typography variant='h3'>CUSTOMER</Typography>
                </section>
                <div>
                    <Link to='/customers' className='ml-3'>
                        <Button 
                            variant='contained'
                            startIcon={<span className='fa fa-arrow-right' />}
                            style={{background: '#2A3F54', color: 'white'}}
                        >
                            <Typography variant='caption'>
                                Customer Lists
                            </Typography>
                        </Button>
                    </Link>
                </div>
            </div>
            <div className='p-1' />
            
            <table className='mt-1 table-bordered' style={{width: '98%', margin: 'auto', 
                position: 'sticky', top: 0, zIndex: 222}}>
                <thead>
                    <th>Select</th>
                    <th>
                       
                        <select 
                            name='customer'
                            value={cusData.customer}
                            onChange={e =>handleChange(e)}
                            >
                                <option value=''></option>
                            {
                                customers&&
                                customers.map((cus, index) =>{
                                    return <option key={index} value={cus.id}> {cus.customer_name} </option>
                                })
                            }
                        </select>
                    </th>
                    <th>Customer Id</th>
                    <th>
                        <input
                            value={cusData.customer}
                            placeholder='Customer'
                            onChange={e =>handleChange(e)}
                            name='customer' list='customers' 
                        />
                        <datalist id='customers'>
                            {
                                customers&&
                                customers.map((cus, index) =>{
                                    return <option key={index} value={cus.id}> {cus.customer_name} </option>
                                })
                            }
                        </datalist>
                    </th>
                    <th
                        style={{borderColor: 'none'}}
                    >
                        <Link to='/customers' className='ml-3'>
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
                            onClick={() =>handleUpdate()}
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
            <table className='mt-1 table-bordered' style={{width: '98%', margin: 'auto',
                position: 'sticky', top: '40px', zIndex: 222}}>
                <thead>
                    <th
                        onClick={() =>setTab('gen')}
                        style={{background: tab=='gen'?'':'#2A3F54', color: tab=='gen'? '#2A3F54': 'white',  paddingLeft: '5px',
                        paddingRight: '5px', border: '1px solid #000', borderBottom: 'none' }}
                    >
                       
                        General Info
                           
                    </th>
                    <th
                        onClick={() =>setTab('tx')}
                        style={{background: tab=='tx'?'':'#2A3F54', color: tab=='tx'? '#2A3F54': 'white',  paddingLeft: '5px',
                        paddingRight: '5px', border: '1px solid #000', borderLeft: '1px solid white', borderBottom: 'none'}}
                    >
                       Transactions
                    </th>
                    <th
                        onClick={() =>setTab('pur')}
                        style={{background: tab=='pur'?'':'#2A3F54', color: tab=='pur'? '#2A3F54': 'white',  paddingLeft: '5px',
                        paddingRight: '5px', border: '1px solid #000', borderLeft: '1px solid white', borderBottom: 'none'}}
                    >
                       Purchase
                    </th>
                    <th
                        onClick={() =>setTab('bal')}
                        style={{background: tab=='bal'?'':'#2A3F54', color: tab=='bal'? '#2A3F54': 'white',  paddingLeft: '5px',
                        paddingRight: '5px', border: '1px solid #000', borderLeft: '1px solid white', borderBottom: 'none'}}
                    >
                       Balance
                    </th>
                    <th
                        onClick={() =>setTab('man')}
                        style={{background: tab=='man'?'':'#2A3F54', color: tab=='man'? '#2A3F54': 'white',  paddingLeft: '5px',
                        paddingRight: '5px', border: '1px solid #000', borderLeft: '1px solid white', borderBottom: 'none'}}
                    >
                       Mandate
                    </th>
                    <th
                        onClick={() =>setTab('jou')}
                        style={{background: tab=='jou'?'':'#2A3F54', color: tab=='jou'? '#2A3F54': 'white',  paddingLeft: '5px',
                        paddingRight: '5px', border: '1px solid #000', borderLeft: '1px solid white', borderBottom: 'none'}}
                    >
                       Journal
                    </th>
                    
                </thead>
                {
                    cusData.customer && tab=='gen' &&
                    <tbody>
                        <div className='p-1' />
                        <tr>
                            <td>Name</td>
                            <td>
                                <input
                                    name='customer_name'
                                    value={cusData.customer_name}
                                    onChange={e =>handleChange(e)}
                                />
                            </td>
                            <td>Contact</td>
                            <td>
                                <input 
                                    name='phone_no' 
                                    value={cusData.phone_no}
                                    onChange={e =>handleChange(e)}
                                />
                            </td>
                            <td>Email</td>
                            <td>
                                <input 
                                    name='customer_email' 
                                    value={cusData.customer_email}
                                    onChange={e =>handleChange(e)}
                                />
                            </td>
                            
                        </tr>
                        <div className='p-1' />
                        <tr>
                            <td>Nationality</td>
                            <td>
                                <input 
                                    name='country'
                                    value={cusData.country}
                                    onChange={e =>handleChange(e)}
                                />
                            </td>
                            <td>Address</td>
                            <td colSpan={3}>
                                <input 
                                    name='customer_address'
                                    style={{width: '100%'}} 
                                    placeholder='Customer Address'
                                    value={cusData.customer_address}
                                    onChange={e =>handleChange(e)}
                                   
                                />
                            </td>
                        </tr>
                        <div className='p-1' />
                        <tr>
                            <td>Marital Status</td>
                            <td>
                                <select 
                                    name='customer_marital'
                                    onChange={e =>handleChange=(e)}
                                    value={cusData.customer_marital}
                                >
                                    <option value='Single'>Single</option>
                                    <option value='Married'>Married</option>
                                    <option value='Widow'>Widow</option>
                                    <option value='Divorce'>Divorce</option>
                                </select>
                            </td>
                            <td>Gender</td>
                            <td>
                                <select 
                                    name='customer_sex'
                                    onChange={e =>handleChange(e)}
                                    value={cusData.customer_sex}
                                >
                                    <option value='male'>Male</option>
                                    <option value='female'>Female</option>
                                </select>
                            </td>
                            <td>State</td>
                            <td>
                                <select 
                                    name='customer_state'
                                    onChange={e =>handleChange(e)}
                                    value={cusData.customer_state}
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
                                </select>
                            </td>
                        </tr>
                        <div className='p-1' />
                        <tr>
                            <td>Occupation</td>
                            <td>
                                <input 
                                    name='occupation'
                                    value={cusData.occupation}
                                    onChange={e =>handleChange(e)}
                                />
                            </td>
                            <td>Address</td>
                            <td colSpan={3}>
                                <input 
                                    name='postal_address'
                                    placeholder='Post Address'
                                    style={{width: '100%'}}
                                    onChange={e =>handleChange(e)}
                                    value={cusData.postal_address}
                                />
                            </td>
                        </tr>
                        <div className='p-1' />
                        <tr>
                            <td>Business/Employer's</td>
                            <td colSpan={3}>
                                <input
                                    style={{width: '100%'}}
                                    onChange={e =>handleChange(e)}
                                    name='business_employer_address'
                                    placeholder="Business/Employer's Name"
                                    value={cusData.business_employer_name}
                                />
                            </td>
                            <td>Place of work</td>
                            <td>
                                <input 
                                    name='place_work'
                                    value={cusData.place_work}
                                    onChange={e =>handleChange(e)}
                                    placeholder='Name of place of work'
                                />
                            </td>
                        </tr>
                        <div className='p-1' />
                        <tr>
                        <td>Next Kin name</td>
                            <td>
                                <input 
                                    name='next_kin_name'
                                    onChange={e =>handleChange(e)}
                                    value={cusData.next_kin_name}
                                    placeholder='Name of next of kin'
                                />
                            </td>
                            <td>Kin Address</td>
                            <td colSpan={3}>
                                <input 
                                    name='next_kin_addrss'
                                    style={{width: '100%'}}
                                    onChange={e =>handleChange(e)}
                                    placeholder='Next of kin address'
                                    value={cusData.next_kin_addrss}
                                />
                            </td>
                        </tr>
                        <div className='p-1' />
                        <tr>
                            <td>Relationship</td>
                            <td>
                                <select 
                                    name='next_kin_relate'
                                    onChange={e =>handleChange(e)}
                                    value={cusData.next_kin_relate}
                                >
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
                                </select>
                            </td>
                            <td>(RM)</td>
                            <td>
                                <select 
                                    name='rm'
                                    value={cusData.rm}
                                    onChange={e =>handleChange(e)}
                                >
                                    <option value=''>Relationship Manager</option>
                                    {
                                        staffs &&
                                        staffs.map((staff, index) =>{
                                            const {id, first_name, last_name} = staff
                                            return (
                                                <option value={index}> {`${first_name} ${last_name}`} </option>
                                            )
                                        })
                                    }
                                </select>
                            </td>
                            <td>Active</td>
                            <td>
                                <select 
                                    name='active'
                                    value={cusData.active}
                                    onChange={e =>handleChange(e)}
                                >
                                    <option value={1}>Yes</option>
                                    <option value={0}>No</option>
                                </select>
                            </td>
                            
                        </tr>
                        
                    </tbody>
                }
            </table>
            {
                tab == 'tx' &&
                <TxTableView
                    date={cusData.customer_name}
                    name={cusData.customer_name} 
                    />
            }
            {
                tab == 'pur' &&
                <SaleViewTable />
            }
        </div>
    )
}

export default AdminCustomerSetting
