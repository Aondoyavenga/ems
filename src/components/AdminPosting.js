import { Button, Typography } from '@material-ui/core'
import { Check } from '@material-ui/icons'
import React from 'react'
import { useSelector } from 'react-redux'
import { Link } from 'react-router-dom'
import { selectAccounts, selectAllStaffs, 
    selectBuildCategories, 
    selectPropServices, selectSales, } from '../appState/appSlice'

const AdminPostingSetting = () => {
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
                    <Typography variant='h3'>POST</Typography>
                </section>
                <div>
                    <Link to='/' className='ml-3'>
                        <Button 
                            variant='contained'
                            startIcon={<span className='fa fa-arrow-right' />}
                            style={{background: '#2A3F54', color: 'white'}}
                        >
                            <Typography variant='caption'>
                                Post Lists
                            </Typography>
                        </Button>
                    </Link>
                </div>
            </div>
            <div className='p-1' />
            
            <table className='mt-1 table-bordered' style={{width: '98%', margin: 'auto'}}>
                <thead>
                    <th>Posts</th>
                    <th>
                        <input
                            placeholder='Receipt No'
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
                       Post History
                    </th>
                    <th
                        style={{background: '#2A3F54', color: 'white', paddingLeft: '5px',
                        paddingRight: '5px', border: '1px solid #000', borderLeft: '1px solid white', borderBottom: 'none'}}
                    >
                      Post Report
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
                        <td>Receipt No</td>
                        <td>
                            <input
                                readOnly
                                name='rcpt_no'
                                placeholder='Receipt No(read only)'
                            />
                        </td>
                        <td>Account</td>
                        <td>
                            <input
                                list='account'
                                name='account_FK'
                                placeholder='Customer Name' 
                            />
                            <datalist id='account'>
                            {
                                accounts&&
                                accounts.map((account, index) =>{
                                    const {code, name} = account
                                    return (
                                        <option key={index} value={code}> {name} </option>
                                    )
                                })
                            }
                        </datalist>
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
                        <td>Transaction Type</td>
                        <td>
                            <input
                                list='txtype'
                                name='tx_type'
                                placeholder='Payment Method'
                            />
                            <datalist id='txtype'>
                                <option value='CR'></option>
                                <option value='DR'></option>
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
                        <td>Status</td>
                        <td>
                            <input
                                list='status'
                                name='status'
                                placeholder='Select'
                            />
                            <datalist id='status'>
                                <option value='0'>Not Paid</option>
                                <option value='1'>Paid</option>
                            </datalist>
                        </td>
                    </tr>
                    <div className='p-1' />
                    <tr>
                        <td>Narration</td>
                        <td colSpan={5}>
                            <input
                                name='description'
                                placeholder='Transaction Narration'
                            />
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    )
}

export default AdminPostingSetting
