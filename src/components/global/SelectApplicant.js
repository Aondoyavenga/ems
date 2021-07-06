import { IconButton, Select } from '@material-ui/core'
import { Close } from '@material-ui/icons'
import { MDBModal, MDBModalBody, MDBModalFooter, MDBModalHeader } from 'mdbreact'
import React, { useEffect, useState } from 'react'
import { useSelector } from 'react-redux'
import { selectCustomers } from '../../appState/appSlice'

const SelectApplicant = ({ open, setOpen, applicant, setApplicant }) => {
    const [selected, setSelected] = useState()
    const customers = useSelector(selectCustomers)
    useEffect(() =>{
        const selectedApplicant = customers&& customers.filter(customer => parseInt(customer.id) == parseInt(selected))
        setApplicant(selectedApplicant[0])
        setOpen(!open)
        
    }, [selected])
    return (
        <div>
            <MDBModal isOpen={open} centered backdrop={false}>
                <MDBModalHeader>Select Applicant</MDBModalHeader>
                <MDBModalBody>
                   
                    <Select
                        variant='outlined'
                        name='custom_FK'
                        value={selected}
                        style={{height: '40px', width: '100%'}}
                        onChange={e =>setSelected(e.target.value)}
                    >
                        <option>Select</option>
                        {
                            customers&&
                            customers.map((customer, i) =>{
                                const {id, customer_name} = customer
                                return <option key={i} value={id}> {customer_name} </option>
                            })
                        }
                    </Select>
                                        
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
