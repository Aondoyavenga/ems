// MUI Stuff
import Tooltip from '@material-ui/core/Tooltip'
import IconButton from '@material-ui/core/IconButton'
import Typography from '@material-ui/core/Typography'
// Icons
import PlusOne from '@material-ui/icons/PlusOne'

import { Fragment } from 'react'
import { useSelector } from 'react-redux'
import { selectLocations, selectPropServices } from '../appState/appSlice'
import AppHeader from './global/AppHeader'
import PropServiceList from './global/PropServiceList'

const PropertyServiceFeed = ({ isWidget, setIswidget }) => {
    const propServices = useSelector(selectPropServices)
    const locations = useSelector(selectLocations)

    const renderPs = (l) =>{
        const fPs = propServices && propServices.filter(ps =>ps.location == l);
        return (
            fPs.map((ps, index) =>(
                <PropServiceList
                    key={index}
                    index={index}
                    {...ps}
                    isWidget={isWidget}
                />
            ))
        )
    }
    return (
        <div className={`${isWidget? 'isapp__Feed': 'app__Feed'}`}>
           <AppHeader title='Property/Service' />
           <div className="row align-items-center justify-content-center d-flex m-1" >
                <div className="col-lg-12 col-md-12">
                    {/* table */}
                    <h3>Property/ Servicer List <span> 
                        <Tooltip title='Add New Property/ Service'>
                            <IconButton color='secondary'
                                onClick={() =>setIswidget(!isWidget)}
                            >
                            <PlusOne style={{ color: '#1ABB9C'}} />
                            </IconButton>
                        </Tooltip>
                        </span></h3> 
                        <div className='p-3'>
                        <table className="table-small " style={{width: '100%', }}>
                            <thead style={{position: 'sticky', top: '60px', zIndex: 222, color: 'white', background: '#2A3F54'}}>
                                <th style={{ border: '1px solid #F7F7F7F7', textAlign: 'center' }}>#</th>
                                <th style={{ border: '1px solid #F7F7F7F7', textAlign: 'center' }}>Name</th>
                                <th style={{ border: '1px solid #F7F7F7F7', textAlign: 'center' }}>Type</th>
                                <th style={{ border: '1px solid #F7F7F7F7', textAlign: 'center' }}> Description</th>
                                <th style={{ border: '1px solid #F7F7F7F7', textAlign: 'center' }}>QTY</th>
                                <th style={{ border: '1px solid #F7F7F7F7', textAlign: 'center' }}>Sale Price</th>
                                {/* <th style={{ border: '1px solid #F7F7F7F7' }}>Purchase Price</th>
                                {!isWidget&&<th style={{ border: '1px solid #F7F7F7F7' }}>Actions</th>} */}
                            </thead>
                            <tbody>
                                {
                                    locations && locations.map((l, i) =>{
                                        const {name, id} = l;
                                        return (
                                            <Fragment key={i}>
                                                <tr>
                                                    <td colSpan={5}>
                                                        <Typography style={{color: '#20c997'}}>
                                                            {name.toUpperCase()}:
                                                        </Typography>
                                                        
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colSpan={5}>
                                                    {
                                                        <table className="table-small table-hover" style={{width: '100%'}}>
                                                        <thead>
                                                            <th></th>
                                                            <th></th>
                                                            <th></th>
                                                            <th> </th>
                                                            <th></th>
                                                            
                                                        </thead>
                                                            <tbody>
                                                                {renderPs(id)}
                                                            </tbody>
                                                       </table>
                                                    }
                                                    </td>
                                                </tr>
                                            </Fragment>
                                        )
                                    })
                                }
                                
                            </tbody>
                        </table>
                        {propServices&& !propServices.length>0&&
                            <div className="alert alert-warning">
                            <h6>No Property or Service Availabe</h6>
                            </div>
                        }
                        </div>
                </div>
            </div>
        </div>
    )
}

export default PropertyServiceFeed
