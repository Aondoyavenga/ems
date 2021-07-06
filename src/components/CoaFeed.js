import React from 'react'
import { useDispatch, useSelector } from 'react-redux'
import AppHeader from './global/AppHeader'
import { Container, IconButton, Paper } from '@material-ui/core'
import './coaFeed.css'
import { PlusOne } from '@material-ui/icons'
import { selectAssetAccount, selectEquityAccount, selectLiabilityAccount } from '../appState/appSlice'
import AccountList from './global/AccountList'
const CoaFeed = ({ isWidget, setIswidget }) => {
    const assets = useSelector(selectAssetAccount)
    const equitys = useSelector(selectEquityAccount)
    const liabilitys = useSelector(selectLiabilityAccount)
    return (
        <div className={`${isWidget? 'isapp__Feed': 'app__Feed'}`}>
           <AppHeader title='Chart Of Account' />
          
            <div className="row align-items-center justify-content-center d-flex m-1" >
                <div className="col-lg-12 col-md-12">
                    {/* table */}
                    <h3>Asset Accounts <span> 
                        <IconButton color='secondary'
                            onClick={() =>setIswidget(!isWidget)}
                        >
                        <PlusOne style={{ color: '#1ABB9C'}} />
                        </IconButton></span></h3> 
                    <Paper>
                        <Container className='p-3'>
                        <table className="table-small table-hover table-bordered" style={{width: '100%'}}>
                            <thead>
                                <th>#</th>
                                <th>Code</th>
                                <th>Account Name</th>
                                <th>Active</th>
                                <th>Lock</th>
                                <th>Actions</th>
                            </thead>
                            <tbody>
                                
                                {
                                    assets&&
                                    assets.map((asset, index) =>{
                                        return <AccountList 
                                            index={index}
                                            {...asset}
                                        />
                                    })

                                }
                                    
                            </tbody>
                        </table>
                        { assets&& !assets.length>0&&
                            <div className="alert alert-warning">
                            <h6>No Asset Accounts Availabe</h6>
                            </div>
                        }
                        </Container>
                    </Paper>
                    {/* liability */}
                    <h3 className='p-2'>Liability Accounts </h3> 
                    <Paper>
                        <Container className='p-3'>
                        <table className="table-small table-hover table-bordered" style={{width: '100%'}}>
                            <thead>
                                <th>#</th>
                                <th>Code</th>
                                <th>Account Name</th>
                                <th>Active</th>
                                <th>Lock</th>
                                <th>Actions</th>
                            </thead>
                            <tbody>
                                
                                {
                                    liabilitys&&
                                    liabilitys.map((liability, index) =>{
                                        return <AccountList 
                                            index={index}
                                            {...liability}
                                        />
                                    })

                                }
                                    
                            </tbody>
                        </table>
                        {
                           liabilitys&& !liabilitys.length>0&&
                            <div className="alert alert-warning">
                            <h6>No Liability Accounts Availabe</h6>
                        </div>
                        }
                        </Container>
                    </Paper>
                    {/* Equity */}
                    <h3 className='p-2'>Expense Accounts <span> 
                        <IconButton color='secondary'
                            onClick={() =>setIswidget(!isWidget)}
                        >
                        <PlusOne style={{ color: '#1ABB9C'}} />
                        </IconButton></span></h3> 
                    <Paper>
                        <Container className='p-3'>
                        <table className="table-small table-hover table-bordered" style={{width: '100%'}}>
                            <thead>
                                <th>#</th>
                                <th>Code</th>
                                <th>Account Name</th>
                                <th>Active</th>
                                <th>Lock</th>
                                <th>Actions</th>
                            </thead>
                            <tbody>
                                
                                {
                                    equitys&&
                                    equitys.map((equity, index) =>{
                                        return <AccountList 
                                            index={index}
                                            {...equity}
                                        />
                                    })

                                }
                                    
                            </tbody>
                        </table>
                        {
                            equitys&&!equitys.length >0&&
                            <div className="alert alert-warning">
                            <h6>No Liability Accounts Availabe</h6>
                        </div>
                        }
                        </Container>
                    </Paper>
                </div>
            </div>
        </div>
    )
}

export default CoaFeed
