import { IconButton, Typography } from '@material-ui/core'
import { MoreHoriz } from '@material-ui/icons'
import React from 'react'
import { Fragment } from 'react'

const SalesViewTable = ({sales}) => {
    const calcuAmt = (data) =>{
        const total = data&& data.reduce((a, v) =>+v.amount+ a, 0)
        return total.toLocaleString()
    }
    return (
        <Fragment>
            <table className='table-hover'
                style={{width: '98%', margin: 'auto'}}
            >
                <thead style={{top: '60px', position: 'sticky', background: '#EDEDED'}}>                    
                    <th style={{ border: '1px solid #F7F7F7F7' }}>#</th>
                    <th style={{ border: '1px solid #F7F7F7F7' }}>Customer</th>
                    <th style={{ border: '1px solid #F7F7F7F7' }}>Due Date</th>
                    <th style={{ border: '1px solid #F7F7F7F7' }}>Amount (<s>N</s>)</th>
                    <th style={{ border: '1px solid #F7F7F7F7' }}> </th>
                </thead>
                <tbody>
                    {
                        sales &&
                        sales.map((sale, index) =>{
                            const {applicant_name, sale_date, due_date, amount } = sale
                            return(
                            <Fragment key={index}>
                                <tr>
                                    <td style={{textAlign: 'center'}}>
                                    <Typography
                                        style={{
                                             
                                              color: '#20c997'
                                          }}
                                        > {index+1} </Typography>
                                    </td>
                                    <td style={{textAlign: 'left'}}>
                                        {applicant_name}
                                    </td>
                                    <td> {new Date(due_date).toLocaleDateString()} </td>
                                    <td> {amount} </td>
                                    <td style={{display: 'flex', alignItems: 'center', justifyContent: 'center'}}>
                                        <div>
                                        <IconButton size='small'>
                                            <MoreHoriz style={{color: '#20c997'}} />
                                        </IconButton>
                                        </div>
                                    </td>
                                </tr>
                            </Fragment>
                            )
                        })
                    }
                    
                    {
                    sales && sales.length >0 &&
                    <tr
                    style={{background: '#2A3F54', color: 'white'}} 
                    >
                        <td colSpan={3}>
                            <Typography variant='subtitle1'
                            style={{color: 'white'}}
                            >
                                <b>Total:</b>
                            </Typography>
                        </td>
                        <td>
                            <Typography variant='subtitle1'
                            style={{color: 'white'}}
                            >
                            <b>{
                                calcuAmt(sales)
                            }</b>
                            </Typography>
                        </td>
                        <td colSpan={2}></td>
                    </tr>
                }
                </tbody>
            </table>
            {sales && sales.length <= 0 &&
                <div className="alert alert-warning">
                    <h6>No Sales Availabe</h6>
                </div>
            }
        </Fragment>
    )
}

export default SalesViewTable
