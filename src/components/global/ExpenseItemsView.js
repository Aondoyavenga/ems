import { Typography } from '@material-ui/core'
import { ArrowDownward } from '@material-ui/icons'
import React from 'react'
import { Fragment } from 'react'
import { useSelector } from 'react-redux'
import { selectExpenseCategories, selectExpenseItems } from '../../appState/appSlice'

const ExpenseItemsView = ({expID}) => {
    const expenseItems = useSelector(selectExpenseItems);
    const expenseCategories = useSelector(selectExpenseCategories)

    const returnCategory = (id) =>{
        const cat = expenseCategories && expenseCategories
        .find(category =>category.id === id)

        if(cat) {
            return cat.name
        }
    }
    const itemList = (id) => {
        const expItems = expenseItems && expenseItems
            .filter(exp =>exp.expense_ID == id)
        
        if(expItems) {
            return (
                expItems.map((expitem, i) =>{
                    const {expense_FK, amount, description} = expitem
                    return (
                        <Fragment>
                            <tr key={i}>
                                <td> {i+1} </td>
                                <td>{returnCategory(expense_FK)}</td>
                                <td>{description}</td>
                                <td>{amount}</td>
                            </tr>
                        </Fragment>
                    )
                })
            )
        }
    }

    return (
        <Fragment>
            <tr style={{background: '#2A3F54', borderLeft: '2px solid #20C997' }}>
                <td colSpan={5}>
                    <Typography style={{color: 'white'}} >
                        Voucher {expID}
                        <span style={{float: 'right', marginTop: -30}}>
                        <ArrowDownward style={{ color: '#20C997', fontSize: '25px'}} />
                        </span>
                    </Typography>
                    
                </td>
            </tr>
            <tr style={{borderLeft: '2px solid #20C997'}}>
                <td colSpan={5} >
                    <table className='table table-bordered table-hover'>
                        <thead>
                            <th>#</th>
                            <th>Expense Head</th>
                            <th>Description</th>
                            <th>Amount</th>
                        </thead>
                        <tbody>
                            {/* return */}
                            {itemList(expID)}
                        </tbody>
                    </table>
                </td>
            </tr>
        </Fragment>
    )
}

export default ExpenseItemsView
