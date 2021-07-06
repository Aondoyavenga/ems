import { Button, Paper } from '@material-ui/core'
import React from 'react'
import { useSelector } from 'react-redux'
import { selectCustomers, selectPendingSales,} from '../appState/appSlice'
import AppHeader from './global/AppHeader'

const MdFeed = ({ setApplicant, setApplication, isWidget, setIswidget }) => {
    const sales = useSelector(selectPendingSales)
    const customers = useSelector(selectCustomers)

    const handleSelect = (selected, application) =>{
       
        const selectedApplicant = customers&& customers.filter(customer => parseInt(customer.id) == parseInt(selected))
        setApplicant(selectedApplicant[0])
        setApplication(application)
        setIswidget(true)
    }

    return (
        <div className={`${isWidget? 'isapp__Feed': 'app__Feed'}`}>
           
            <AppHeader title='Applications' />
            <section className='app__WidgetContainer'>
               <Paper elevation={0} className='m-2 mt-3'>
                   <table className='table table-sm table-bordered table-hover'>
                       <thead>
                           <th>Customer</th>
                          {
                            !isWidget&&
                            <th>Property</th>
                          }
                           {
                               !isWidget&&
                               <th>Due Date</th>
                           }
                           <th>Amount</th>
                           <th>Paid</th>
                           <th>Action</th>
                       </thead>
                       <tbody>
                           {
                               sales &&
                               sales.map((sale, index) =>{
                                   const {
                                        applicant_name, property_name, 
                                        due_date, amount, amount_paid, applicant
                                    } = sale
                                   return(
                                    <tr key={index}>
                                    <td style={{color: '#2A3F54'}}>
                                        {applicant_name}
                                    </td>
                                    {
                                        !isWidget&&
                                        <td style={{color: '#2A3F54'}}>
                                            {property_name}
                                        </td>
                                    }
                                   { 
                                        !isWidget&&
                                        <td> 
                                            {new Date(due_date).toLocaleDateString()} 
                                        </td>
                                    }
                                    <td> {amount} </td>
                                    <td> {amount_paid} </td>
                                    <td> 
                                        <Button
                                            onClick={() =>handleSelect(applicant, sale)}
                                            size='small' variant='contained' style={{color: 'white', 
                                            background: '#2A3F54', borderRadius: '50px'
                                        }}> <span className='fa fa-eye mr-2' /> View</Button>
                                    </td>
                                    </tr>
                                   )
                               })
                           }
                       </tbody>
                   </table>
               </Paper>
            </section>
        </div>
    )
}

export default MdFeed
