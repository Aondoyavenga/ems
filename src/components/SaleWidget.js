import { IconButton, Paper, Typography } from '@material-ui/core'
import { MoreHoriz } from '@material-ui/icons'
import React from 'react'
import { Fragment } from 'react'
import { useSelector } from 'react-redux'
import { selectPendingSales,} from '../appState/appSlice'
import AppWidgetHeader from './global/AppWidgetHeader'

const SaleWidget = ({ isWidget, setIswidget }) => {
    const sales = useSelector(selectPendingSales)
    const calcuAmt = (data) =>{
        const total = data&& data.reduce((a, v) =>+v.amount+ a, 0)
        return total
    }
    return (
        <div className='app__Widget'>
            <AppWidgetHeader
                isWidget={isWidget}
                setIswidget={setIswidget}
                title='Sales List' 
            />
            <table className='table table-sm table-striped table-hover mt-3'>
                <thead>
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
                                    <td> {index+1} </td>
                                    <td>
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
                    sales&&
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
        </div>
    )
}

export default SaleWidget
