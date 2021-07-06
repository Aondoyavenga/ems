
import React, { useState } from 'react'
import { useSelector } from 'react-redux'
import { selectUserExpenseRaised } from '../appState/appSlice'
import ExpenseViewTable from './ExpenseViewTable'
import AppWidgetHeader from './global/AppWidgetHeader'

const ExpenselWidget = ({ isWidget, setIswidget }) => {
    const calcuAmt = (data) =>{
        const total = data&& data.reduce((a, v) =>+v.amount+ a, 0)
        return total
    }
    const userExpneses = useSelector(selectUserExpenseRaised)
    return (
        <div className='app__Widget'>
            <AppWidgetHeader
                isWidget={isWidget}
                setIswidget={setIswidget}
                title='Expense List' 
            />
            <ExpenseViewTable
                calcuAmt={calcuAmt} 
                userExpneses={userExpneses}
            />
        </div>
    )
}

export default ExpenselWidget
