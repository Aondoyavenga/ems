import React, { useState } from 'react'
import { Fragment } from 'react'
import Mandate from '../Mandate'
import CustomerList from './CustomerList'

const CustomerViewTable = ({customers}) => {
    const [open, setOpen] = useState(false)
    const [mandate, setMandate] = useState(false)
    
    return (
        <Fragment>
            <Mandate
                open={open} 
                setOpen={setOpen}
                mandate={mandate}
                setMandate={setMandate}
                url={mandate && `/customer/avatar/${mandate.split(' ')[0]}`}
            />
            <table className='table-hover'
                style={{width: '98%', margin: 'auto'}}
            >
                <thead>
                    <th style={{ border: '1px solid #F7F7F7F7' }}>#</th>
                    <th style={{ border: '1px solid #F7F7F7F7' }}>Name</th>
                    <th style={{ border: '1px solid #F7F7F7F7' }}>Contact</th>
                    <th style={{ border: '1px solid #F7F7F7F7' }}>Email</th>
                    <th style={{ border: '1px solid #F7F7F7F7' }}>Code</th>
                    <th style={{ border: '1px solid #F7F7F7F7' }}>Photo</th>
                    <th style={{ border: '1px solid #F7F7F7F7' }}>Active</th>
                    <th style={{ border: '1px solid #F7F7F7F7' }}>Lock</th>
                    <th style={{ border: '1px solid #F7F7F7F7' }}>Action</th>
                   
                </thead>
                <tbody>
                    
                    {
                        customers&&
                        customers.map((customer, index) =>{
                            return <CustomerList key={index}
                                index={index}
                                {...customer}
                                
                                open={open}
                                setOpen={setOpen}
                                mandate={mandate}
                                setMandate={setMandate}
                            />
                        })

                    }
                        
                </tbody>
            </table>
            {customers && customers.length <= 0 &&
                <div className="alert alert-warning">
                    <h6>No Customer Availabe</h6>
                </div>
            }
        </Fragment>
    )
}

export default CustomerViewTable
