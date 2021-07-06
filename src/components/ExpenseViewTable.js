import React, { useState } from 'react'
import { Fragment } from 'react'
import { useSelector } from 'react-redux'
import { Typography } from '@material-ui/core'
import { More } from '@material-ui/icons'
import ExpenseItemsView from './global/ExpenseItemsView'

const ExpenseViewTable = ({ userExpneses, calcuAmt}) => {
    const [open, setOpen] = useState(false)

    return (
        <Fragment>
            <table className='table-hover'
                style={{width: '98%', margin: 'auto'}}
            >
                <thead style={{top: '60px', position: 'sticky', background: '#EDEDED'}}>
                    <th style={{ border: '1px solid #F7F7F7F7' }}>#</th>
                    <th style={{ border: '1px solid #F7F7F7F7' }}>Expense</th>
                    <th style={{ border: '1px solid #F7F7F7F7' }}>Amount (<s>N</s>)</th>
                    <th style={{ border: '1px solid #F7F7F7F7' }}>Date</th>
                    <th style={{ border: '1px solid #F7F7F7F7' }}></th>
                </thead>
                <tbody>
                    {
                        userExpneses&&
                        userExpneses.map((exps, index) =>{
                            const { uuid, amount, expense_date } = exps
                            return (
                                <Fragment key={index} >
                                    <tr
                                        onClick={() =>setOpen(index)}
                                    >
                                        <td style={{textAlign: 'center'}}> {index+1} </td>
                                        <td style={{textAlign: 'left'}}> 
                                            <Typography variant='p'
                                                style={{color: '#20C997', cursor: 'pointer'}}
                                            >
                                            {`Expense #${uuid}`}
                                            </Typography>
                                        </td>
                                        <td> {amount} </td>
                                        <td> {new Date(expense_date).toLocaleDateString()} </td>
                                        <td>
                                                <More style={{color: '#20c997'}} />
                                        </td>
                                    </tr>
                                    {/* imported component  */}
                                    {
                                        open ===index &&
                                        <ExpenseItemsView expID={uuid} />
                                    }
                                </Fragment>
                                
                                
                            )
                        })
                        
                    }
                    {
                        userExpneses &&
                        <tr
                        style={{background: '#2A3F54', color: 'white'}} 
                        >
                            <td colSpan={2}>
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
                                    calcuAmt(userExpneses)
                                }</b>
                                </Typography>
                            </td>
                            <td colSpan={2}></td>
                        </tr>
                    }
                </tbody>
            </table>
        </Fragment>
    )
}

export default ExpenseViewTable
