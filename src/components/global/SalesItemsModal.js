import { Button, IconButton, Typography } from '@material-ui/core'
import { Close, Edit } from '@material-ui/icons'
import { MDBModal, MDBModalBody, MDBModalFooter, MDBModalHeader } from 'mdbreact'
import { Link } from 'react-router-dom'


const SalesItemsModal = ({ items, open, setOpen }) => {

    const calcuAmt = (data) =>{
        const total = data&& data.reduce((a, v) =>+v.amount+ a, 0)
        return total
    }
  
    return (
        <div>
            <MDBModal 
                backdrop={false}
                isOpen={open} size='lg' 
                centered overflowScroll={false} 
            >
                <div
                    style={{
                        paddingLeft: 25,
                        color: '#FFF',
                        width: '100%',
                        display: 'flex',
                        flexDirection: 'row',
                        alignItems: 'center',
                        backgroundColor: '#2a3f54',
                        justifyContent: 'space-between'
                    }}
                > 
                    <Typography>
                    Sale Items
                    </Typography>
                    <Link to={`/sales/${items[0]?.sale_ID}`} >
                        <IconButton>
                        <Edit
                            style={{
                                color: '#20c997'
                            }} 
                        />
                        </IconButton>
                    </Link>
                </div>
                        
                <MDBModalBody>
                   
                <table className='table-hover'
                style={{width: '98%', margin: 'auto'}}
            >
                <thead style={{top: '60px', color: '#2a3f54', position: 'sticky', backgroundColor: '#F7F7F7'}}>
                    <th style={{ border: '1px solid #F7F7F7F7' }}>#</th>
                    <th style={{ border: '1px solid #F7F7F7F7' }}>Property</th>
                    <th style={{ border: '1px solid #F7F7F7F7' }}> Location </th>
                    <th style={{ border: '1px solid #F7F7F7F7' }}> Building </th>
                    <th style={{ border: '1px solid #F7F7F7F7' }}>Quantity</th>
                    <th style={{ border: '1px solid #F7F7F7F7' }}>Date</th>
                    <th style={{ border: '1px solid #F7F7F7F7' }}>Amt (<s>N</s>)</th>
                </thead>
                <tbody>
                    {
                        items &&
                        items.map((item, index) =>{
                            const { qty,
                                amount,
                                sale_ID,
                                createdAt,
                                property_name,
                                location_name,
                                building_name} = item
                            return (
                                <tr key={index}>
                                    <td
                                         style={{display: 'flex', alignItems: 'center', justifyContent: 'center'}}
                                    > {index+1} </td>
                                    <td style={{textAlign: 'left', margin: '5px'}}>
                                    
                                        {property_name}
                                    
                                    </td>
                                    <td style={{textAlign: 'left', margin: '5px'}}>
                                    
                                        {location_name}
                                    
                                    </td>
                                    <td style={{textAlign: 'left', margin: '5px'}}>
                                    
                                        {building_name}
                                    
                                    </td>
                                    <td style={{textAlign: 'center', margin: '5px'}}>
                                    
                                        {qty}
                                    
                                    </td>
                                    <td>
                                        {new Date(createdAt).toLocaleDateString()} 
                                    </td>
                                    <td>
                                        
                                        <Typography
                                            style={{color: '#20c997'}}
                                        >
                                         { amount.toLocaleString() }
                                        </Typography>
                                    </td>                                    
                                </tr>
                            )
                        })
                    }
                 <tr>
                     <td colSpan={4}>
                        <Button 
                            variant='contained'
                            style={{
                                width: '40%',
                                color: 'white',
                                backgroundColor: '#2a3f54'}}
                        >
                            Total
                        </Button>
                     </td>
                     <td colSpan={3}>
                        <Typography
                            style={{
                                float: 'right',
                                alignSelf: 'flex-end'
                            }}
                        >
                           <strong>
                           <s>N</s>: {calcuAmt(items).toLocaleString()}
                           </strong>
                        </Typography>
                     </td>
                 </tr>
               
            </tbody>
                
            </table>
            

                </MDBModalBody>
                <MDBModalFooter>
                   
                    <IconButton color='secondary'
                        onClick={() =>setOpen(!open)}
                    >
                        <Close color='action' />
                    </IconButton>
                </MDBModalFooter>
            </MDBModal>
        </div>
    )
}

export default SalesItemsModal




