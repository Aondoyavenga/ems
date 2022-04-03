import { Typography } from '@material-ui/core'
import React, { Fragment } from 'react'
import { useSelector } from 'react-redux'
import { selectTodayTxs } from '../appState/appSlice'

const rendeTxList = (data) =>{
    return (
        <Fragment>
            {
                data && data.map((tx, index) =>{
                    const {
                        pay_method, amount, name, code, tx_type, tx_date, ticket_no
                        } = tx
                    return (
                        <Fragment key={index}>
                            <tr>
                                <td> {index+1} </td>
                                <td>{name}</td>
                                <td> {code} </td>
                                <td>{new Date(tx_date).toLocaleDateString()}</td>
                                <td>
                                    {
                                        tx_type == 'CR'&&
                                        <Typography
                                            style={{
                                                color: '#20c997'
                                            }}
                                        > {amount.toLocaleString()} </Typography>
                                    }
                                </td>
                                <td>
                                    {
                                        tx_type == 'DR'&&
                                        <Typography
                                            style={{
                                                color: '#F00'
                                            }}
                                        > {amount.toLocaleString()} </Typography>
                                    }
                                </td>
                                <td> {pay_method} </td>
                            </tr>
                        </Fragment>
                    )
                })
            }
        </Fragment>
    )
}

const TransactionList = ({styles}) => {
    const todayTxs = useSelector(selectTodayTxs)
    return (
        <>
            <Typography
                variant='h4'
                style={{
                    color: '#2a3f54'
                }}
                className='mb-2'
            >
                Current Transaction
            </Typography>
            <table 
                style={{
                    width: '100%'
                }}
                className='table-hover table-bordered'
            >
                <thead
                    style={styles}
                >
                    <th>#</th>
                    <th>Acc. Name</th>
                    <th>Acc. Code</th>
                    <th>TX Date</th>
                    <th>CR</th>
                    <th>DR</th>
                    <th>Pay Method</th>
                </thead>
                <tbody>
                {rendeTxList(todayTxs)}
                </tbody>
            </table>
        </>
    )
}

export default TransactionList
