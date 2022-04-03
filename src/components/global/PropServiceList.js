import React from 'react'
import { Fragment } from 'react'

const PropServiceList = ({ index, sale_price, 
        description, name, ps_type,cost, quantity, 
        active, isWidget
    }) => {
    return (
        <Fragment>
            <tr>
                <td className='p-2'>{index+1} </td>
                <td className='p-2'> {name} </td>
                <td className='p-2'> {ps_type} </td>
                <td className='p-2'> {description} </td>
                <td className='p-2'> {quantity} </td>
                <td className='p-2'> {sale_price.toLocaleString()} </td>
                
            </tr>
        </Fragment>
    )
}

export default PropServiceList
