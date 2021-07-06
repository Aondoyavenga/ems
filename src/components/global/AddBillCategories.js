
import React, { useEffect, useState } from 'react'
import { Fragment } from 'react'
import { useSelector } from 'react-redux';
import { selectToken, selectUser, selectVendors } from '../../appState/appSlice';
import { Button, IconButton, Select, TextField, Typography } from '@material-ui/core';
import { MDBBtn, MDBContainer, MDBModal, MDBModalBody, MDBModalFooter, MDBModalHeader } from 'mdbreact'
import { Close } from '@material-ui/icons';
import axios from 'axios';
import AppBackdrop from './AppBackDrop';
import AppSnackbar from './AppSnackbar';

const AddBillCategories = ({  open, setOpen }) => {
    const vendors = useSelector(selectVendors)
    const [body, setBody] = useState()
    const [Error, setError] = useState()
    const [isOpen, setIsOpen] = useState(false)
    const token = useSelector(selectToken)
    const [success, setSuccess] = useState(false)
    const [message, setMessage] = useState()
    const billCategoryFormTemplate = {name:'',  vendor_FK: '',  createdBy_FK: '', createdAt: ''  };
    const [billCategoryForm, setBillCategoryform] = useState([billCategoryFormTemplate])
    const user = useSelector(selectUser)
    const createdAt = new Date().toLocaleDateString()
    // func
    const handleChange = (e, index) =>{
        const name = e.target.name;
        const value = e.target.value
        const upbillCategoryform =  billCategoryForm.map((jef, i) => index == i ?
        Object.assign(jef, {[name]: value, 'createdBy_FK': user.id, 'createdAt': createdAt  }): jef);
        setBillCategoryform(upbillCategoryform)
    }

    const addBillCategoryFrom = () =>{
        setBillCategoryform([
            ...billCategoryForm,
            billCategoryFormTemplate
        ])
    }

    const handleRemoveform = (index) =>{
        const filterbillCategoryform = [...billCategoryForm];
        filterbillCategoryform.splice(index, 1);
        
        setBillCategoryform(filterbillCategoryform)
    }

    // handleSubmit
    const handleSubmit =e=>{
        e.preventDefault()
        setIsOpen(true)
        
        axios.post('/bill/category', body, {
            headers: {
                Authorization: `Bearer ${token}`
            }
        })
        .then(result =>{
            setIsOpen(false)
            setOpen(false)
            setBillCategoryform([billCategoryFormTemplate])
            setMessage(result.statusText)
            setSuccess(true)

        })
        .catch(error =>{
            setTimeout(() =>{
                setError('')
            }, 5000)
            setIsOpen(false)
           if(error) {
              if(error.response.status ==500){
                return  setError('Fields required')
              }
               return  setError(error.response.statusText)
           }
        })
        
    }

       
    useEffect(() =>{
        
        const fdata = billCategoryForm.map(x =>Object.values(x))
        const findal =[]
        // const data = fdata
        for(let i =0; i< fdata.length; i++){
            const element = fdata[i]
            findal.push(element)
        }
        
        return setBody(findal)
    }, [billCategoryForm])
   
    return (
        <div>
            <AppBackdrop open={isOpen} setOpen={setIsOpen} />
            <AppSnackbar open={success} 
                setOpen={setSuccess}
                message={message}
            />
            <MDBModal isOpen={open} centered backdrop={false}>
                <MDBModalHeader>Add Bill Category</MDBModalHeader>
                <MDBModalBody>
                    <table className='table table-hover'>
                      <thead>
                          <th>#</th>
                          <th></th>
                          <th>Name</th>
                          <th>Vendor/Supplier</th>
                          <th></th>
                      </thead>
                      <tbody>
                          {
                              billCategoryForm&&
                              billCategoryForm.map((form, index) =>{
                                  return(
                                      <tr key={index}>
                                        <td> {index+1} </td>
                                        <td
                                            onClick={() =>addBillCategoryFrom()}
                                        >
                                            <span className='fa fa-plus-circle' />
                                        </td>
                                        <td>
                                            <TextField
                                                size='small'
                                                name='name'
                                                label='Name'
                                                required
                                                value={form.name}
                                                variant='outlined'
                                                placeholder='Bill Name'
                                                onChange={e =>handleChange(e, index)}
                                            />
                                        </td>
                                        <td>
                                        <Select
                                            variant='outlined'
                                            name='vendor_FK'
                                            value={form.vendor_FK}
                                            style={{height: '40px', width: '100%'}}
                                            onChange={e =>handleChange(e, index)}
                                        >
                                            <option>Select</option>
                                            <option value={0}>Basic</option>
                                            {
                                                vendors&&
                                                vendors.map((vendor, i) =>{
                                                    const {id, vendor_name} = vendor
                                                    return <option key={i} value={id}> {vendor_name} </option>
                                                })
                                            }
                                        </Select>
                                        </td>
                                        <td 
                                            onClick={() =>handleRemoveform(index)}
                                        >
                                            <span className='fa fa-trash' 
                                                style={{color: 'red'}}
                                            />
                                        </td>
                                      </tr>
                                  )
                              })
                          }
                      </tbody>
                  </table>
                </MDBModalBody>
                <MDBModalFooter>
                    {
                        Error&&
                        <Typography 
                            className='mr-5'
                            variant='h6' color='error'>
                            {Error}
                        </Typography>
                    }
                    <Button
                        variant='contained'
                        onClick={e =>handleSubmit(e)}
                        style={{background: '#2A3F54', 
                        color: 'white', marginRight: '25px'}}
                        disabled={Error}
                    >
                        Save
                    </Button>
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

export default AddBillCategories
