import { ArrowDownward } from '@material-ui/icons'
import React from 'react'
import { Fragment } from 'react'
import { useSelector } from 'react-redux'
import IconButton from '@material-ui/core/IconButton'
import Typography from '@material-ui/core/Typography'
import Close from '@material-ui/icons/Close'
import { MDBModal, MDBModalBody, MDBModalFooter, MDBModalHeader } from 'mdbreact'

import { selectExpenseCategories, selectExpenseItems } from '../../appState/appSlice'

const ExpenseItemsView = ({open, setOpen, expID}) => {
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
                                <td>{amount.toLocaleString()}</td>
                            </tr>
                        </Fragment>
                    )
                })
            )
        }
    }

    return (
    <Fragment>
        <MDBModal 
            backdrop={false}
            isOpen={open} size='lg' 
            centered overflowScroll={false} 
        >
            <div
                style={{
                    paddingLeft: 25,
                    color: '#FFF',
                    width: '100%',
                    display: 'flex',
                    flexDirection: 'row',
                    alignItems: 'center',
                    backgroundColor: '#2a3f54',
                    justifyContent: 'space-between'
                }}
            > 
                <Typography 
                    className='p-2'
                    style={{color: 'white'}} 
                >
                    Voucher {expID}
                    
                </Typography>
            </div>
                
            <MDBModalBody>
            <Fragment>
          
              
            <table className='table-hover'
                style={{width: '100%', margin: 'auto'}}
            >
                
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
        </Fragment>
                
            </MDBModalBody>
            <MDBModalFooter>
            
                <IconButton color='secondary'
                    onClick={() =>setOpen(!open)}
                >
                    <Close color='action' />
                </IconButton>
            </MDBModalFooter>
        </MDBModal>
    </Fragment>
    )
}

export default ExpenseItemsView
