import { Button, Typography } from '@material-ui/core'
import { Check } from '@material-ui/icons'
import React, { useEffect, useState } from 'react'
import { useDispatch, useSelector } from 'react-redux'
import { Link } from 'react-router-dom'
import { selectAccounts, selectAllStaffs, 
    selectBuildCategories, 
    selectLocations, 
    selectPropServices,
    selectSales,
    selectTransactions,
    setfilterTx, } from '../appState/appSlice'
import TxTableView from './global/TxTableView'

const AdminAccountSetting = () => {
    const dispatch = useDispatch()
    const staffs = useSelector(selectAllStaffs)
    const accounts = useSelector(selectAccounts)
    const transactions = useSelector(selectTransactions)
    const [tab, setTab] = useState('gen')
        const [accData, setAccdata] = useState({
        name: '',
        code: '',
        active: '',
        locked: '',
        acc_type: '',
        account: '',
        balance_type: ''

    })
    // func
    const handleChange = e =>{
        const name = e.target.name;
        const value = e.target.value;

        setAccdata({
            ...accData,
            [name]: value
        })
    }
    useEffect(() =>{
        const facc = accounts && accounts.filter(acc => acc.code == accData.account)[0];
        if(facc) {
            return setAccdata({
                ...accData,
                name: facc.name,
                code: facc.code,
                active: facc.active,
                locked: facc.locked,
                acc_type: facc.acc_type,
                balance_type: facc.balance_type
            })
        }
    }, [accData.account])

    useEffect(() =>{
        const ftxs = transactions && transactions.filter(tx =>tx.account_FK ==accData.code);
       
        dispatch(setfilterTx(ftxs))

       return
    }, [accData])

    return (
        <div>
            <div className='admin__Title'>
                <section>
                    <Typography variant='h3'>ACCOUNT</Typography>
                </section>
                <div>
                    <Link to='/' className='ml-3'>
                        <Button 
                            variant='contained'
                            startIcon={<span className='fa fa-arrow-right' />}
                            style={{background: '#2A3F54', color: 'white'}}
                        >
                            <Typography variant='caption'>
                                Account Lists
                            </Typography>
                        </Button>
                    </Link>
                </div>
            </div>
            <div className='p-1' />
            
            <table className='mt-1 table-bordered' style={{width: '98%', margin: 'auto', 
                position: 'sticky', top: 0, zIndex: 222}}>
                <thead>
                    <th>Account</th>
                    <th>
                        <input
                            placeholder='Select'
                            value={accData.account}
                            name='account' list='account'
                            onChange={e =>handleChange(e)}
                        />
                        <datalist id='account'>
                            {
                                accounts&&
                                accounts.map((account, index) =>{
                                    const {id, code, name} = account
                                    return <option key={index} value={code}> {name} </option>
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
            <table className='mt-1 table-bordered' style={{width: '98%', margin: 'auto',
                position: 'sticky', top: '40px', zIndex: 222}}>
                <thead>
                    <th
                        onClick={() =>setTab('gen')}
                        style={{background: tab=='gen'?'':'#2A3F54', color: tab=='gen'? '#2A3F54': 'white',  paddingLeft: '5px',
                        paddingRight: '5px', border: '1px solid #000', borderLeft: '1px solid white', borderBottom: 'none'}}
                    >
                       
                        General Info
                           
                    </th>
                    <th
                        onClick={() =>setTab('tx')}
                        style={{background: tab=='tx'?'':'#2A3F54', color: tab=='tx'? '#2A3F54': 'white',  paddingLeft: '5px',
                        paddingRight: '5px', border: '1px solid #000', borderLeft: '1px solid white', borderBottom: 'none'}}
                    >
                       Transaction
                    </th>
                    <th
                        onClick={() =>setTab('rep')}
                        style={{background: tab=='rep'?'':'#2A3F54', color: tab=='rep'? '#2A3F54': 'white',  paddingLeft: '5px',
                        paddingRight: '5px', border: '1px solid #000', borderLeft: '1px solid white', borderBottom: 'none'}}
                    >
                      Report
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
                {accData.code && tab=='gen' && <tbody>
                    <div className='p-1' />
                    <tr>
                        <td>Code</td>
                        <td>
                            <input
                                name='code'
                                readOnly
                                value={accData.code}
                                placeholder='Select'
                            />
                        </td>
                        <td>Name</td>
                        <td>
                            <input
                                name='name'
                                value={accData.name}
                                placeholder='Account Name'
                                onChange={e =>handleChange(e)}
                            />
                        </td>
                        <td>Account Type</td>
                        <td>
                            
                            <select 
                                id='acctype' 
                                name='acc_type'
                                value={accData.acc_type}
                                onChange={e =>handleChange(e)}
                            >
                            <option value=''>Select</option>
                            <optgroup label="Assets">
                                <option value="asset_ca_cash">Current Asset</option>
                                <option value="asset_ca_mkt_sec">Marketable Securities</option>
                                <option value="asset_ca_recv">Receivables</option>
                                <option value="asset_ca_inv">Inventory</option>
                                <option value="asset_ca_uncoll">Uncollectibles</option>
                                <option value="asset_ca_prepaid">Prepaid</option>
                                <option value="asset_ca_other">Other Liquid Assets</option>
                                <option value="asset_lti_notes">Notes Receivable</option>
                                <option value="asset_lti_land">Land</option>
                                <option value="asset_lti_sec">Securities</option>
                                <option value="asset_ppe">Property Plant &amp; Equipment</option>
                                <option value="asset_ia">Intangible Assets</option>
                                <option value="asset_adjustment">Other Assets</option>
                            </optgroup>

                            <optgroup label="Liabilities">
                                <option value="lia_cl_acc_pay">Accounts Payable</option>
                                <option value="lia_cl_wage_pay">Wages Payable</option>
                                <option value="lia_cl_wage_pay">Interest Payable</option>
                                <option value="lia_cl_st_notes_payable">Notes Payable</option>
                                <option value="lia_cl_ltd_mat">Current Maturities of Long Tern Debt</option>
                                <option value="lia_cl_def_rev">Deferred Revenue</option>
                                <option value="lia_cl_other">Other Liabilities</option>
                                <option value="lia_ltl_notes">Notes Payable</option>
                                <option value="lia_ltl_bonds">Bonds Payable</option>
                                <option value="lia_ltl_mortgage">Mortgage Payable</option>
                            </optgroup>
                            <optgroup label="Equity">
                                <option value="eq_capital">Capital</option>
                                <option value="eq_stock_c">Common Stock</option>
                                <option value="eq_stock_p">Preferred Stock</option>
                                <option value="eq_adjustment">Other Equity Adjustments</option>
                                <option value="in_sales">Sales Income</option>
                                <option value="in_pass">Passive Income</option>
                                <option value="in_other">Other Income</option>
                                <option value="ex_cogs">Cost of Goods Sold</option>
                                <option value="ex_op">Operational Expense</option>
                                <option value="ex_interest">Interest Expense</option>
                                <option value="ex_taxes">Tax Expense</option>
                                <option value="ex_cap">Capital Expense</option>
                                <option value="ex_other">Other Expense</option>
                            </optgroup>
                            </select>
                        </td>
                    </tr>
                    <div className='p-1' />
                    <tr>
                        <td>Balance Type</td>
                        <td>
                            
                            <select id='accbalance'
                                name='balance_type'
                                value={accData.balance_type}
                                onChange={e =>handleChange(e)}
                                
                            >
                                <option value='CR'>Credit</option>
                                <option value='DR'>Debit</option>
                            </select>
                        </td>
                        <td>Active</td>
                        <td>
                            <select
                                name='active'
                                placeholder='Select'
                                value={accData.active}
                                onChange={e =>handleChange(e)}
                            >
                                <option value=''>Select</option>
                                <option value={1}>Yes</option>
                                <option value={0}>No</option>
                            </select>
                            
                        </td>
                        <td>Locked</td>
                        <td>
                            <select
                                list='locked'
                                name='locked'
                                placeholder='Select'
                                value={accData.locked}
                                onChange={e =>handleChange(e)}
                            >
                                <option value=''>Select</option>
                                <option value={1}>Yes</option>
                                <option value={0}>No</option>
                            </select>
                            
                        </td>
                    </tr>
                    
                </tbody>}
            </table>
           {
               tab =='tx' &&
               <TxTableView />
           }
        </div>
    )
}

export default AdminAccountSetting
