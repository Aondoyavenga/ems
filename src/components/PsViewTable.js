import { Typography } from '@material-ui/core'
import React, { Fragment } from 'react'
import { useSelector } from 'react-redux'
import { selectBuildCategories, selectPsSold } from '../appState/appSlice'

const PsViewTable = () => {
    const psSolds = useSelector(selectPsSold)
    const buildCategories = useSelector(selectBuildCategories)
    const returnBuildCategory = (id) =>{
        console.log(id)
        const bCategory = buildCategories && 
            buildCategories.filter(cat =>cat.id == id)[0].name;
            console.log(bCategory, buildCategories)
        return bCategory 
    }
    return (
        <Fragment>
            <table className='table-hover'
                style={{width: '98%', margin: 'auto'}}
            >
                <thead>
                    <th style={{ border: '1px solid #F7F7F7F7', textAlign: 'center' }}>#</th>
                    <th style={{ border: '1px solid #F7F7F7F7', textAlign: 'center' }}>Client</th>
                    <th style={{ border: '1px solid #F7F7F7F7', textAlign: 'center' }}>Build Category</th>
                    <th style={{ border: '1px solid #F7F7F7F7', textAlign: 'center' }}>Date Sold</th>
                    <th style={{ border: '1px solid #F7F7F7F7', textAlign: 'center' }}>Due Date</th>
                    <th style={{ border: '1px solid #F7F7F7F7', textAlign: 'center' }}>Amount</th>
                    <th style={{ border: '1px solid #F7F7F7F7', textAlign: 'center' }}>Amount Paid</th>
                    <th style={{ border: '1px solid #F7F7F7F7', textAlign: 'center' }}>Status</th>
                    <th style={{ border: '1px solid #F7F7F7F7', textAlign: 'center' }}></th>
                   
                </thead>
                <tbody>
                    {
                        psSolds &&
                        psSolds.map((psSold, index) =>{
                            const { amount, amount_paid, applicant_name, 
                                build_category, sale_date, due_date, status } = psSold;
                            return
                                <Fragment key={index}>
                                    <tr>
                                        <td
                                            style={{textAlign: 'center'}}
                                        > {index+1} </td>
                                        <td
                                            style={{textAlign: 'left'}}
                                        > {applicant_name} </td>
                                        <td> {returnBuildCategory(build_category)} </td>
                                        <td> {new Date(sale_date).toLocaleDateString()} </td>
                                        <td>
                                            <Typography color='error'>
                                            {new Date(due_date).toLocaleDateString()}
                                            </Typography>
                                        </td>
                                        <td> {amount} </td>
                                        <td>
                                            <Typography style={{color: '#20c997'}}>
                                                {amount_paid}
                                            </Typography>
                                        </td>
                                        <td>  </td>
                                    </tr>
                                </Fragment>
                        })
                    }
                </tbody>
            </table>
        </Fragment>
    )
}

export default PsViewTable
