import React from 'react'
import { Fragment } from 'react'
import { Link } from 'react-router-dom'

const AccountList = ({ index, code, name, balance_type, active, locked }) => {
    return (
        <Fragment>
            <tr>
                <td>{index+1} </td>
                <td> {code} </td>
                <td> {name} </td>
                <td>
                    {
                        active ==0?
                        <span className="fa fa-check-circle fa-1x"></span>
                        :
                        <span></span>
                    }
                </td>
                <td>
                    {
                        locked ==1?
                        <span className="fa fa-lock fa-1x" style={{color: 'red'}}></span>
                    :
                        <span className="fa fa-unlock-alt fa-1x" style={{color: '#1ABB9C'}}></span>
                    }
                </td>
                <td id="btn"  className='p-2'>
                    <button>Actions</button>
                    <div className="btn__poper">
                        <Link to={`/coa/${name}/${code}`} rel="noopener noreferrer">View register</Link>
                        <Link to='#' rel="noopener noreferrer">Update</Link>
                    </div>
                </td>                       
            </tr>
        </Fragment>
    )
}

export default AccountList
