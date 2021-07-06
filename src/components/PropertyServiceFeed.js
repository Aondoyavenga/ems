import { Container, IconButton, Paper } from '@material-ui/core'
import { PlusOne } from '@material-ui/icons'
import React from 'react'
import { useSelector } from 'react-redux'
import { selectPropServices } from '../appState/appSlice'
import AppHeader from './global/AppHeader'
import PropServiceList from './global/PropServiceList'

const PropertyServiceFeed = ({ isWidget, setIswidget }) => {
    const propServices = useSelector(selectPropServices)
    return (
        <div className={`${isWidget? 'isapp__Feed': 'app__Feed'}`}>
           <AppHeader title='Property/Service' />
           <div className="row align-items-center justify-content-center d-flex m-1" >
                <div className="col-lg-12 col-md-12">
                    {/* table */}
                    <h3>Property/ Servicer List <span> 
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
                                <th>Type</th>
                                <th> Description</th>
                                <th>Sale Price</th>
                                <th>Purchase Price</th>
                                {!isWidget&&<th>Actions</th>}
                            </thead>
                            <tbody>
                                
                                {
                                   propServices&&
                                   propServices.map((ps, index) =>{
                                        return <PropServiceList
                                            index={index}
                                            {...ps}
                                            isWidget={isWidget}
                                        />
                                    })

                                }
                                    
                            </tbody>
                        </table>
                        {propServices&& !propServices.length>0&&
                            <div className="alert alert-warning">
                            <h6>No Property or Service Availabe</h6>
                            </div>
                        }
                        </Container>
                    </Paper>
                </div>
            </div>
        </div>
    )
}

export default PropertyServiceFeed
