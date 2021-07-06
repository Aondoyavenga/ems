import React from 'react'
import { Fragment } from 'react'
import { Link } from 'react-router-dom'

const VendorList = ({ index, hidden, customer_sex, 
        email, vendor_name, phone, balance_type, 
        active, isWidget
    }) => {
    return (
        <Fragment>
            <tr>
                <td>{index+1} </td>
                <td> {vendor_name} </td>
                <td> {phone} </td>
                <td> {email} </td>
                <td>
                    {
                        active ==1?
                        <span className="fa fa-check-circle fa-1x"></span>
                        :
                        <span></span>
                    }
                </td>
                <td>
                    {
                        hidden ==1?
                        <span className="fa fa-lock fa-1x" style={{color: 'red'}}></span>
                    :
                        <span className="fa fa-unlock-alt fa-1x" style={{color: '#1ABB9C'}}></span>
                    }
                </td>
                {!isWidget&& <td id="btn">
                    <button>Actions</button>
                    <div className="btn__poper">
                        <Link to='#' rel="noopener noreferrer">View register</Link>
                        <Link to='#' rel="noopener noreferrer">Update</Link>
                    </div>
                </td> }                      
            </tr>
        </Fragment>
    )
}

export default VendorList
