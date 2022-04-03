import { IconButton, Select } from '@material-ui/core'
import { Close } from '@material-ui/icons'
import Search from '@material-ui/icons/Search'
import { MDBModal, MDBModalBody, MDBModalFooter, MDBModalHeader } from 'mdbreact'
import React, { useEffect, useState } from 'react'
import { useSelector } from 'react-redux'
import { selectCustomers } from '../../appState/appSlice'

const SelectApplicant = ({ open, setOpen, applicant, setApplicant }) => {
    const [selected, setSelected] = useState()
    const customers = useSelector(selectCustomers)
    const handle_application =() =>{
        const selectedApplicant = customers&& customers.filter(customer => parseInt(customer.id) == parseInt(selected))
        setApplicant(selectedApplicant[0])
        setOpen(!open)
        
    }
    useEffect(() =>{
        setOpen(true)
    },[])
    return (
        <div>
            <MDBModal isOpen={open} centered backdrop={false} overflowScroll={false}>
                <header
                    style={{
                        padding: 5,
                        color: 'white',
                        width: '100%',
                        backgroundColor: '#2a3f54'
                    }}
                >Select Applicant</header>
                <MDBModalBody>
                    <div
                        style={{
                            padding: 10,
                            width: '90%',
                            height: '35px',
                            margin: 'auto',
                            display: 'flex',
                            borderRadius: 35,
                            alignItems: 'center',
                            justifyContent: 'center',
                            backgroundColor: 'white',
                            boxSizing: 'border-box',
                            backgroundColor: 'white',
                            boxShadow: '0px 2px 2px gray'
                        }}
                    >
                        <input 
                            list='customFK'
                            name='selected'
                            value={selected}
                            placeholder='Select Applicant'
                            onChange={(e) =>setSelected(e.target.value)}
                            style={{
                                flex: 1,
                                border: 'none',
                                outline: 'none',
                                paddingLeft: 10
                            }}
                        />
                        <IconButton size='small'
                            onClick={() =>handle_application()}
                        >
                            <Search color='action' />
                        </IconButton>
                  </div>
                    <datalist id="customFK">
                        {customers &&
                        customers.map((cus, index) => {
                        return (
                            <option key={index} value={`${cus.id} ${cus.customer_name}`}>
                            {cus.customer_name}
                            </option>
                        );
                        })}
                    </datalist>
                                        
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

export default SelectApplicant
