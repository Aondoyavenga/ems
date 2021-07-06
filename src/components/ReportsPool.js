import { Button, Typography } from '@material-ui/core'
import axios from 'axios'
import React, { useEffect, useState } from 'react'
import { useDispatch, useSelector } from 'react-redux'
import { Link } from 'react-router-dom'
import { selectAllStaffs, selectTransactions, selectOpen, 
    selectToken, setOpen, setfilterTx, selectCustomers,
    setFilterCus,
    selectUserExpenseRaised,
    selectSales,
} from '../appState/appSlice'
import ExpenseViewTable from './ExpenseViewTable'
import AppBackdrop from './global/AppBackDrop'
import AppSnackbar from './global/AppSnackbar'
import CustomerViewTable from './global/CustomerViewTable'
import SalesViewTable from './global/SalesViewTable'
import TxTableView from './global/TxTableView'

const ReportsPool = () => {
    const dispatch = useDispatch()
    const open = useSelector(selectOpen)
    const token = useSelector(selectToken)
    const staffs = useSelector(selectAllStaffs)
    const sales = useSelector(selectSales)
    const customers = useSelector(selectCustomers)
    const transactions = useSelector(selectTransactions)
    const userExpneses = useSelector(selectUserExpenseRaised)
    const [tab, setTab] = useState('gen')
    const [message, setMessage] = useState()
    const [success, setSuccess] = useState(false)
    const [expenses, setExpenses] = useState()
    const [filterSales, setFilterSales] = useState()
    const [filterCustomers, setFilterCustomers] = useState()
    const [data, setData] = useState({
       start_date: '',
       end_date: '',
       staff: ''
    })
    const handleChange = e =>{
        const name = e.target.name;
        const value = e.target.value;
        setData({
            ...data,
            [name]: value
        })
    }

    const calcuAmt = (data) =>{
        const total = data&& data.reduce((a, v) =>+v.amount+ a, 0)
        return total
    } 

    useEffect(() =>{
        const ftxs = transactions && transactions.filter(tx => tx.tx_date >=data.start_date && tx.tx_date <= data.end_date)
        return dispatch(setfilterTx(ftxs))
        
    },[data])

    useEffect(() =>{
        const fexps = userExpneses && userExpneses.filter(exp => exp.expense_date >=data.start_date && exp.expense_date <= data.end_date)
        return setExpenses(fexps)
        
    },[data])

    useEffect(() =>{
        const fCus = customers && customers.filter(cus => cus.createdAt >=data.start_date && cus.createdAt <= data.end_date)
        return setFilterCustomers(fCus)
        
    },[data])

    useEffect(() =>{
        const fSales = sales && sales.filter(sale => sale.createdAt >=data.start_date && sale.createdAt <= data.end_date)
        return setFilterSales(fSales)
        
    },[data])

    
    return (
        <div>
            <AppBackdrop open={open} setOpen={setOpen} />
            <AppSnackbar open={success} setOpen={setSuccess} message={message} />
            <div className='admin__Title'>
                <section>
                    <Typography variant='h3'>Reports Pool</Typography>
                </section>
                
            </div>
            <div className='p-1' />
            {/* table */}
            <table className='mt-1 table-bordered' style={{width: '98%', margin: 'auto', 
                position: 'sticky', top: 0, zIndex: 222}}>
                <thead>
                    <th>From</th>
                    <th>
                        <input
                            type='date'
                            value={data.start_date}
                            placeholder='Staff'
                            name='start_date' list='staffs'
                            onChange={e =>handleChange(e)}
                        />
                        
                    </th>
                    <th>To</th>
                    <th>
                        <input
                            name='end_date'
                            type='date'
                            value={data.end_date}
                            onChange={e =>handleChange(e)}
                            
                        />
                        
                    </th>                    
                </thead>
            </table>
            
            <div className='p-1' />
            <table className='mt-1 table-bordered' style={{width: '98%', margin: 'auto',
                position: 'sticky', top: '40px', zIndex: 222}}>
                <thead>
                    {/* <th
                        onClick={() =>setTab('gen')}
                        style={{background: tab=='gen'?'':'#2A3F54', color: tab=='gen'? '#2A3F54': 'white', paddingLeft: '5px',
                        paddingRight: '5px', border: '1px solid #000', borderBottom: 'none' }}
                    >
                       
                        General Info
                           
                    </th> */}
                    <th
                        onClick={() =>setTab('tx')}
                        style={{background: tab=='tx'?'':'#2A3F54', color: tab=='tx'? '#2A3F54': 'white', paddingLeft: '5px',
                        paddingRight: '5px', border: '1px solid #000', borderLeft: '1px solid white', borderBottom: 'none'}}
                    >
                       Transactions
                    </th>
                    <th
                        onClick={() =>setTab('cus')}
                        style={{background: tab=='cus'?'':'#2A3F54', color: tab=='cus'? '#2A3F54': 'white', paddingLeft: '5px',
                        paddingRight: '5px', border: '1px solid #000', borderLeft: '1px solid white', borderBottom: 'none'}}
                    >
                       Customers
                    </th>
                    <th
                        onClick={() =>setTab('exp')}
                        style={{background: tab=='exp'?'':'#2A3F54', color: tab=='exp'? '#2A3F54': 'white', paddingLeft: '5px',
                        paddingRight: '5px', border: '1px solid #000', borderLeft: '1px solid white', borderBottom: 'none'}}
                    >
                       Expense
                    </th>
                    <th
                        onClick={() =>setTab('sal')}
                        style={{background: tab=='sal'?'':'#2A3F54', color: tab=='sal'? '#2A3F54': 'white', paddingLeft: '5px',
                        paddingRight: '5px', border: '1px solid #000', borderLeft: '1px solid white', borderBottom: 'none'}}
                    >
                       Sales
                    </th>
                    <th
                        onClick={() =>setTab('jou')}
                        style={{background: tab=='jou'?'':'#2A3F54', color: tab=='jou'? '#2A3F54': 'white', paddingLeft: '5px',
                        paddingRight: '5px', border: '1px solid #000', borderLeft: '1px solid white', borderBottom: 'none'}}
                    >
                       Journal
                    </th>
                </thead>
                
                
            </table>
                {
                    tab =='tx' &&
                    <TxTableView
                        date={`${data.start_date} to ${data.end_date}` }
                        name={`${data.first_name} ${data.last_name}`} 
                    />
                }
                {
                    tab =='cus' &&
                    <CustomerViewTable customers={filterCustomers} />
                }
                {
                    tab=='exp' &&
                  
                        <ExpenseViewTable 
                            calcuAmt={calcuAmt}
                            userExpneses={expenses}
                        />
                  
                }
                {
                    tab=='sal' &&
                    <SalesViewTable sales={filterSales} />
                }
        </div>
    )
}

export default ReportsPool
