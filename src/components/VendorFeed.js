import { Container, IconButton, Paper } from '@material-ui/core'
import { PlusOne } from '@material-ui/icons'
import React from 'react'
import { useSelector } from 'react-redux'
import { selectVendors } from '../appState/appSlice'
import AppHeader from './global/AppHeader'
import VendorList from './VendorList'

const VendorFeed = ({ isWidget, setIswidget }) => {
    const vendors = useSelector(selectVendors)
    return (
        <div className={`${isWidget? 'isapp__Feed': 'app__Feed'}`}>
           <AppHeader title='Vendors' />
           <div className="row align-items-center justify-content-center d-flex m-1" >
                <div className="col-lg-12 col-md-12">
                    {/* table */}
                    <h3>Vendor List <span> 
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
                                <th>Active</th>
                                <th>Lock</th>
                                {!isWidget&&<th>Actions</th>}
                            </thead>
                            <tbody>
                                
                                {
                                   vendors&&
                                   vendors.map((vendor, index) =>{
                                        return <VendorList
                                            index={index}
                                            {...vendor}
                                            isWidget={isWidget}
                                        />
                                    })

                                }
                                    
                            </tbody>
                        </table>
                        {vendors&& !vendors.length>0&&
                            <div className="alert alert-warning">
                            <h6>No Asset Accounts Availabe</h6>
                            </div>
                        }
                        </Container>
                    </Paper>
                </div>
            </div>
        </div>
    )
}

export default VendorFeed
