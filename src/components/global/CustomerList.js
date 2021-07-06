import { Avatar } from '@material-ui/core'
import { More } from '@material-ui/icons'
import React from 'react'
import { Fragment } from 'react'
import { Link } from 'react-router-dom'

const CustomerList = ({ id, index, hidden, 
        customer_email, customer_name, phone_no, code, 
        active, isWidget, setMandate, avatar
    }) => {
    return (
        <Fragment>
            <tr>
                <td>{index+1} </td>
                <td> 
                    {customer_name}
                    
                </td>
                <td> {phone_no} </td>
                <td> {customer_email} </td>
                <td> {code} </td>
                <td
                    style={{display: 'flex', alignItems: 'center', justifyContent:'center'}}
                >
                    {
                        avatar&&
                        <Avatar alt={customer_name[0]} src={avatar} />
                    }
                </td>
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
                        <span className="fa fa-lock" style={{color: 'red'}}></span>
                    :
                        <span className="fa fa-unlock-alt" style={{color: '#1ABB9C'}}></span>
                    }
                </td>
                {!isWidget&& <td id="btn"  className='p-2'>
                    <button>
                        <More
                            style={{color: '#2A3F54'}}
                        />
                    </button>
                    <div className="btn__poper">
                        <Link to='#' role='button' rel="noopener noreferrer"
                            onClick={() =>setMandate(`${id} ${customer_name}`)}
                        >Mandate</Link>
                        
                    </div>
                </td> }                      
            </tr>
        </Fragment>
    )
}

export default CustomerList
