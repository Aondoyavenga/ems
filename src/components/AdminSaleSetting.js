import { Button, Typography } from '@material-ui/core'
import { Check } from '@material-ui/icons'
import React from 'react'
import { useSelector } from 'react-redux'
import { Link } from 'react-router-dom'
import { selectAccounts, selectAllStaffs, 
    selectBuildCategories, 
    selectPropServices, selectSales, } from '../appState/appSlice'

const AdminSaleSetting = () => {
    const staffs = useSelector(selectAllStaffs)
    const accounts = useSelector(selectAccounts)
    const sales = useSelector(selectSales)
    const propServices = useSelector(selectPropServices)
    const buildCategories = useSelector(selectBuildCategories)
    console.log(buildCategories)
    return (
        <div>
            <div className='admin__Title'>
                <section>
                    <Typography variant='h3'>SALE</Typography>
                </section>
                <div>
                    <Link to='/' className='ml-3'>
                        <Button 
                            variant='contained'
                            startIcon={<span className='fa fa-arrow-right' />}
                            style={{background: '#2A3F54', color: 'white'}}
                        >
                            <Typography variant='caption'>
                                Sale Lists
                            </Typography>
                        </Button>
                    </Link>
                </div>
            </div>
            <div className='p-1' />
            
            <table className='mt-1 table-bordered' style={{width: '98%', margin: 'auto'}}>
                <thead>
                    <th>Sale</th>
                    <th>
                        <input
                            placeholder='Sale Id'
                            name='sale' list='items' 
                        />
                        <datalist id='items'>
                            {
                                sales&&
                                sales.map((sale, index) =>{
                                    const {uuid, property_name} = sale
                                    return <option key={index} value={uuid}> {property_name} </option>
                                })
                            }
                        </datalist>
                    </th>
                    <th>Staff Username</th>
                    <th>
                    <input
                            list='usernames'
                            name='username'
                            placeholder='Process by ?'
                        />
                        <datalist id='usernames'>
                            {
                                staffs&&
                                staffs.map((staff, index) =>{
                                    return <option key={index} value={staff.username}></option>
                                })
                            }
                        </datalist>
                    </th>
                    <th
                        style={{borderColor: 'none'}}
                    >
                        <Link to='/' className='ml-3'>
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
                        style={{background: '#2A3F54', color: 'white', paddingLeft: '5px',
                        paddingRight: '5px', border: '1px solid #000', borderBottom: 'none' }}
                    >
                       
                        General Info
                           
                    </th>
                    <th
                        style={{background: '#2A3F54', color: 'white', paddingLeft: '5px',
                        paddingRight: '5px', border: '1px solid #000', borderLeft: '1px solid white', borderBottom: 'none'}}
                    >
                       Payment History
                    </th>
                    <th
                        style={{background: '#2A3F54', color: 'white', paddingLeft: '5px',
                        paddingRight: '5px', border: '1px solid #000', borderLeft: '1px solid white', borderBottom: 'none'}}
                    >
                      Sale Report
                    </th>
                    <th
                        style={{color: 'white', paddingLeft: '5px',
                        paddingRight: '5px', border: '1px solid #000', borderLeft: '1px solid white', borderBottom: 'none',
                        borderTop: 'none', borderRight: 'none'}}
                    >
                      
                    </th>
                    {/* <th
                        style={{background: '#2A3F54', color: 'white', paddingLeft: '5px',
                        paddingRight: '5px', border: '1px solid #000', borderLeft: '1px solid white', borderBottom: 'none'}}
                    >
                       Sales
                    </th> */}
                    {/* <th
                        style={{background: '#2A3F54', color: 'white', paddingLeft: '5px',
                        paddingRight: '5px', border: '1px solid #000', borderLeft: '1px solid white', borderBottom: 'none'}}
                    >
                       Journal
                    </th> */}
                </thead>
                <tbody>
                    <div className='p-1' />
                    <tr>
                        <td>Sale Id</td>
                        <td>
                            <input
                                readOnly
                                name='uuid'
                                placeholder='Expense Id (read only)'
                            />
                        </td>
                        <td>Applicant</td>
                        <td>
                            <input 
                                name='applicant_name'
                                placeholder='Customer Name' 
                            />
                        </td>
                        <td>Amount</td>
                        <td>
                            <input
                                name='amount' 
                                placeholder='Amount'
                            />
                        </td>
                        
                    </tr>
                    <div className='p-1' />
                    <tr>
                        <td>Property</td>
                        <td>
                            <input
                                list='property'
                                name='property_name'
                                placeholder='Property' 
                            />
                            <datalist id='property'>
                                {
                                    propServices&&
                                    propServices.map((ps, index) =>{
                                        const {id, name} = ps
                                        return (
                                            <option key={index} value={id}> {name} </option>
                                        )
                                    })
                                }
                            </datalist>
                        </td>
                        <td>Building Category</td>
                        <td>
                            <input
                                list='category'
                                name='build_category'
                                placeholder='Building Category'
                            />
                            <datalist id='category'>
                                {
                                    buildCategories&&
                                    buildCategories.map((bcategory, index) =>{
                                        const { id, name } = bcategory
                                        return <option value={id} key={index} >{`${name}`}</option>
                                    })
                                }
                            </datalist>
                        </td>
                    
                        <td>Pay Method</td>
                        <td>
                            <input
                                list='paymethod'
                                name='pay_method'
                                placeholder='Payment Method'
                            />
                            <datalist id='paymethod'>
                                <option value='cash'></option>
                                <option value='cheque'></option>
                                <option value='transfer'></option>
                            </datalist>
                        </td>
                    </tr>
                    <div className='p-1' />
                    <tr>
                        <td>Term</td>
                        <td>
                            <input
                                list='period'
                                name='period'
                                placeholder='Payment Method'
                            />
                            <datalist id='period'>
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
                            </datalist>
                        </td>
                        <td>Due Date</td>
                        <input 
                            name='due_date'
                            placeholder='Sale Due Date'
                        />
                        <td>Status</td>
                        <td>
                            <input
                                list='status'
                                name='status'
                                placeholder='Select'
                            />
                            <datalist id='status'>
                                <option value='1'>Paid</option>
                                <option value='3'>Close</option>
                            </datalist>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    )
}

export default AdminSaleSetting
