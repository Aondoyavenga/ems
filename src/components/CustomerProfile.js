import { Avatar, ListItemAvatar, Typography} from '@material-ui/core'
import React, { Fragment } from 'react'
import Currency from 'react-currency-formatter'

const RenderItems = ({id, index, property, buildCategory, location, avatar, amount}) =>{
    return (
       <tr disablePadding   
            sx={{ width: '100%',
            maxWidth: '100%', 
            bgcolor: 'background.paper' }}
        >
           <td button className='p-1'
            >
                {property}
            </td>
            <td button className='p-1'
            >
                {location}
            </td>
            <td button className='p-1'
            >
                {buildCategory}
            </td>
            <td button className='p-1'
            >
               <Typography 
                    style={{
                        color: '#20c997'
                    }}
                >
                    <Currency 
                        currency='NGN'
                        quantity={amount}
                    />
                </Typography>
            </td>
       </tr>
    )
}

const CustomerProfile = ({ data: {item, repayment}}) => {
    
    // const { item, avatar, applicant_name, account_FK } =data
    return (
        <Fragment>
            
            <div style={{
                gap: 2,
                display: 'flex',
                alignItems: 'center',
               
            }}
            className='hide-on-print'
            >
                <div >
                    <ListItemAvatar>
                        <Avatar variant='rounded'  style={{
                            width: 150, 
                            height: 150,
                        }}
                        src={repayment[0]?.avatar}
                    />
                    </ListItemAvatar>
                </div>
                <div style={{
                        width: '90%',
                        margin: 'auto'
                    }}
                >
                    <h3 className='text-center'
                        style={{color: '#20c997', fontWeight: 'bold' }}
                    > {repayment[0]?.customer_name} </h3>
               
                    <table className='table-sm border table-hovered' style={{
                        width: '100%'
                    }}>
                        <thead>
                            <th>Property</th>
                            <th>Location</th>
                            <th>Building Category</th>
                            <th>Amount</th>
                        </thead>
                        <tbody>
                        { item &&
                            item.map((propty, index) =>(
                                <RenderItems
                                    index={index}
                                    {...propty} 
                                    avatar={repayment[0]?.avatar} />
                            ))
                        }
                        </tbody>
                    </table>
                 </div>
            </div>
        </Fragment>
    )
}

export default CustomerProfile
