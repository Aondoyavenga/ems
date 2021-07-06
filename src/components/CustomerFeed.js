import { Container, IconButton, Paper } from '@material-ui/core'
import { PlusOne } from '@material-ui/icons'
import React from 'react'
import { useSelector } from 'react-redux'
import { selectCustomers } from '../appState/appSlice'
import AppHeader from './global/AppHeader'
import CustomerList from './global/CustomerList'

const CustomerFeed = ({ open, setOpen, 
    isWidget, setIswidget, mandate, setMandate
}) => {
    const customers = useSelector(selectCustomers)
    return (
        <div className={`${isWidget? 'isapp__Feed': 'app__Feed'}`}>
           <AppHeader title='Customers' />
           <div className="row align-items-center justify-content-center d-flex m-1" >
                <div className="col-lg-12 col-md-12">
                    {/* table */}
                    <h3>Customer List <span> 
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
                                <th>Name</th>
                                <th>Contact</th>
                                <th>Email</th>
                                <th>Code</th>
                                <th>Photo</th>
                                <th>Active</th>
                                <th>Lock</th>
                                {!isWidget&&<th>Actions</th>}
                            </thead>
                            <tbody>
                                
                                {
                                   customers&&
                                   customers.map((customer, index) =>{
                                        return <CustomerList
                                            index={index}
                                            {...customer}
                                            isWidget={isWidget}
                                            open={open}
                                            setOpen={setOpen}
                                            mandate={mandate}
                                            setMandate={setMandate}
                                        />
                                    })

                                }
                                    
                            </tbody>
                        </table>
                        {customers&& !customers.length>0&&
                            <div className="alert alert-warning">
                            <h6>No Customer Availabe</h6>
                            </div>
                        }
                        </Container>
                    </Paper>
                </div>
            </div>
        </div>
    )
}

export default CustomerFeed
