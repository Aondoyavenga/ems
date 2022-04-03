import { Button, Tooltip } from '@material-ui/core'
import Typography from '@material-ui/core/Typography'
import { MDBFooter, MDBModal, MDBModalBody } from 'mdbreact'
import React, { Fragment } from 'react'
import { useState } from 'react'
import CustomerProfile from './CustomerProfile'
import Receipt from './Receipt'

const RenderReceipt = ({ data, open, setOpen}) =>(
    <Fragment>
        <MDBModal
            centered
            size='lg'
            isOpen={open}
            backdrop={false}
            overflowScroll={false}
        >
            <MDBModalBody>
                <Receipt 
                    data={data}
                    setOpen={setOpen} 
                />
            </MDBModalBody>
        </MDBModal>
    </Fragment>
)

const SalePaidHistoryView = ({paymentHistorys}) => {
    const [open, setOpen] = useState(false)
    const [data, setData] = useState()
    const handleClick = (data) =>{
        setData(data)
        setOpen(!open)
    }
    return (
        <Fragment>
            <RenderReceipt 
                open={open}
                data={data}
                setOpen={setOpen}
            />
            {
                paymentHistorys?.repayment?.length > 0 && (
                    <CustomerProfile 
                        data={paymentHistorys}
                    />
                )
            }
            <h3 className='text-center hide-on-print'>REPAYMENT</h3>
            <table className='table table-sm  table-hover hide-on-print'>
                <thead>
                    <th style={{ border: '1px solid #F7F7F7F7' }}>#</th>
                    <th style={{ border: '1px solid #F7F7F7F7' }}>Description</th>
                    <th style={{ border: '1px solid #F7F7F7F7' }}>Date</th>
                    <th style={{ border: '1px solid #F7F7F7F7' }}>RCPT. NO.</th>
                    {/* <th style={{ border: '1px solid #F7F7F7F7' }}>Name</th> */}
                    <th style={{ border: '1px solid #F7F7F7F7' }}>Amount (<s>N</s>)</th>
                    <th style={{ border: '1px solid #F7F7F7F7' }}> Pay Method </th>
                    <th style={{ border: '1px solid #F7F7F7F7' }}> Status </th>
                </thead>
                <tbody>
                    {
                        paymentHistorys &&
                        paymentHistorys.repayment?.map((pay, index) =>{
                            const { tx_date, description, tx_amount, rcpt_no, pay_method, account_FK, paid } = pay
                            return (
                                <Fragment key={index}>
                                    <tr>
                                        <td
                                            style={{
                                                textAlign: 'center', color: '#20c997'
                                            }}
                                        >
                                            <Typography
                                                style={{
                                                    color: '#20c997'
                                                }}
                                            >
                                            {index+1}
                                            </Typography>
                                        </td>
                                        <td>
                                        
                                            {description}
                                        
                                        </td>
                                        <td> {new Date(tx_date).toLocaleDateString()} </td>
                                        <td
                                            onClick={() =>handleClick(pay)}
                                        >
                                            <Tooltip title='View Invoice'>
                                                <Typography
                                                    style={{
                                                        cursor: 'pointer',
                                                        color: '#20c997',
                                                        textUnderlinePosition: 'auto',
                                                        

                                                    }}
                                                >
                                                    {rcpt_no} 
                                                </Typography>
                                            </Tooltip>
                                            
                                        </td>
                                        {/* <td> {account_FK} </td> */}
                                        <td>
                                            <Typography color='error'>
                                            { tx_amount.toLocaleString() }
                                            </Typography>
                                        </td>
                                        <td> {pay_method} </td>
                                        <td>
                                            {
                                                paid === 0 ?(
                                                    <Typography>
                                                        Posted
                                                    </Typography>
                                                ):
                                                (
                                                    <Typography>
                                                        Credited
                                                    </Typography>
                                                )
                                            }
                                        </td>
                                    </tr>
                                </Fragment>
                            )
                        })
                    }
                    {paymentHistorys && paymentHistorys.repayment?.length > 0 &&
                        <tr
                        style={{background: '#2A3F54', color: 'white'}}
                        >
                            <td  colSpan={2}>
                                <Typography
                                    style={{
                                        color: '#20c997',
                                        fontWeight: '500'
                                    }}
                                >
                                <span style={{color: 'lightgray'}} >Amount:</span> <s>N</s>: {paymentHistorys?.repayment[0].amount.toLocaleString()}  
                                </Typography>
                            </td>
                            <td colSpan={2}>
                                <Typography >
                                    Outstanding Bal:
                                </Typography>
                            </td>
                        {
                            paymentHistorys && paymentHistorys?.repayment.length>0&&
                            <td colSpan={3}>
                                <div style={{display: 'flex', justifyContent: 'center'}}>
                                    <Typography
                                            style={{color: 'red', alignSelf: 'normal'}}
                                        >
                                            <s>N</s>: 
                                        {
                                            parseInt(parseInt(paymentHistorys.repayment[0]?.amount) -parseInt(paymentHistorys.repayment[0]?.amount_paid))
                                            .toLocaleString()
                                        }
                                    </Typography>
                                </div>
                                
                                
                            </td>
                        }
                            <td colSpan={1} />
                        </tr>
                    }
                </tbody>
                
            </table>
        </Fragment>
    )
}

export default SalePaidHistoryView
