import React from 'react'
import { Fragment } from 'react'
import { Link } from 'react-router-dom'

const PropServiceList = ({ index, sale_price, 
        description, name, ps_type,cost, 
        active, isWidget
    }) => {
    return (
        <Fragment>
            <tr>
                <td>{index+1} </td>
                <td> {name} </td>
                <td> {ps_type} </td>
                <td> {description} </td>
                <td> {sale_price} </td>
                <td> {cost} </td>
                
                {!isWidget&& <td id="btn"  className='p-2'>
                    <button>Actions</button>
                    <div className="btn__poper">
                        <Link to='#' rel="noopener noreferrer">Details</Link>
                        <Link to='#' rel="noopener noreferrer">Edit</Link>
                    </div>
                </td> }                      
            </tr>
        </Fragment>
    )
}

export default PropServiceList
