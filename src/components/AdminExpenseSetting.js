import { Button, Typography } from '@material-ui/core'
import { Check } from '@material-ui/icons'
import React from 'react'
import { useSelector } from 'react-redux'
import { Link } from 'react-router-dom'
import { selectAccounts, selectAllStaffs, selectUserExpenseRaised } from '../appState/appSlice'

const AdminExpenseSetting = () => {
    const staffs = useSelector(selectAllStaffs)
    const accounts = useSelector(selectAccounts)
    const expenses = useSelector(selectUserExpenseRaised)
   
    return (
        <div>
            <div className='admin__Title'>
                <section>
                    <Typography variant='h3'>EXPENSE</Typography>
                </section>
                <div>
                    <Link to='/' className='ml-3'>
                        <Button 
                            variant='contained'
                            startIcon={<span className='fa fa-arrow-right' />}
                            style={{background: '#2A3F54', color: 'white'}}
                        >
                            <Typography variant='caption'>
                                Expense Lists
                            </Typography>
                        </Button>
                    </Link>
                </div>
            </div>
            <div className='p-1' />
            
            <table className='mt-1 table-bordered' style={{width: '98%', margin: 'auto'}}>
                <thead>
                    <th>Expense</th>
                    <th>
                        <input
                            placeholder='Expense Id'
                            name='expense' list='items' 
                        />
                        <datalist id='items' name='expense'>
                            {
                                expenses&&
                                expenses.map((expense, index) =>{
                                    const {uuid} = expense
                                    return <option key={index} value={uuid}> #Expense</option>
                                })
                            }
                        </datalist>
                    </th>
                    <th>Staff Username</th>
                    <th>
                    <input
                            list='usernames'
                            name='username'
                            placeholder='Expesne Raised by ?'
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
                       Expense Details
                    </th>
                    <th
                        style={{background: '#2A3F54', color: 'white', paddingLeft: '5px',
                        paddingRight: '5px', border: '1px solid #000', borderLeft: '1px solid white', borderBottom: 'none'}}
                    >
                      Expense Report
                    </th>
                    <th
                        style={{color: 'white', paddingLeft: '5px',
                        paddingRight: '5px', border: '1px solid #000', borderLeft: '1px solid white', borderBottom: 'none',
                        borderTop: 'none', borderRight: 'none'}}
                    >
                      
                    </th>
                    
                </thead>
                <tbody>
                    <div className='p-1' />
                    <tr>
                        <td>Expense Id</td>
                        <td>
                            <input
                                readOnly
                                name='uuid'
                                placeholder='Expense Id (read only)'
                            />
                        </td>
                        <td>Date</td>
                        <td>
                            <input 
                                name='expense_date'
                                placeholder='Expense Date' 
                            />
                        </td>
                        <td>Amount</td>
                        <td>
                            <input
                                name='amount' 
                                placeholder='Expense Amount'
                            />
                        </td>
                        
                    </tr>
                    <div className='p-1' />
                    <tr>
                        <td>Account Receivable</td>
                        <td>
                            <input
                                list='payee'
                                name='payee_account'
                                placeholder='Account Receivable' 
                            />
                            <datalist id='payee'>
                                {
                                    accounts&&
                                    accounts.map((acc, index) =>{
                                        const { name, code, balance_type } = acc
                                        return <option value={code} key={index} >{`${name} (${balance_type})`}</option>
                                    })
                                }
                            </datalist>
                        </td>
                        <td>Account Payable</td>
                        <td>
                            <input
                                list='payable'
                                name='payment_account'
                                placeholder='Account Payable'
                            />
                            <datalist id='payable'>
                                {
                                    accounts&&
                                    accounts.map((acc, index) =>{
                                        const { name, code, balance_type } = acc
                                        return <option value={code} key={index} >{`${name} (${balance_type})`}</option>
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
                                <option value='cash'>Cash</option>
                                <option value='cheque'>Cheque</option>
                                <option value='transfer'>Transfer</option>
                            </datalist>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    )
}

export default AdminExpenseSetting
