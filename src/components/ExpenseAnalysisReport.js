
import React, { Fragment, useState, useEffect } from 'react'
import Grid from '@material-ui/core/Grid';
import Button from '@material-ui/core/Button';
import Tooltip from '@material-ui/core/Tooltip';
import Typography from '@material-ui/core/Typography';

import { selectExpenseCategories, selectToken } from '../appState/appSlice';
import { useSelector } from 'react-redux';
import axios from 'axios';
import RenderPeriodicTable from './global/RenderPeriodicTable';
import { MultiExcelDownload } from './MultiExcelDownload';

const RenderButtonTab = ({ id, tab, title, setTab, tabIndex, setSelected}) =>{
    return (
        <div 
            key={id}
            onClick={() =>setSelected(id)}
        >
            <Tooltip title={title}>                     
            <Button
                style={{
                    
                    marginLeft: 10,
                    color: tab == tabIndex ?  '#20c997' :'#2a3f54' ,
                    boxSizing: 'border-box',
                    backgroundColor: tab == tabIndex ?  '#2a3f54'  : '#F7F7F7F7',
                    boxShadow: '0px 2px 2px gray'
                }}
                onClick={() =>setTab(tabIndex)}
                > 
                {title?.slice(0,5)}
                </Button>
            </Tooltip>
        </div>
    )
}

const ExpenseAnalysisReport = ({data, setData, handleChange}) => {
    const token = useSelector(selectToken)
    const [tab, setTab] = useState()
    const [reports, setReports]  = useState('')
    const [expenses, setExpenses] = useState('')
    const [selected, setSelected] = useState()
    const expCategories = useSelector(selectExpenseCategories);

    // func
    const calcuAmt = (data) => {
        const total = data && data.reduce((a, v) => +v.amount + a, 0);
        return total ? total.toLocaleString() : null;
    };

    // func
    const handle_Get_analytic_periodic_Report =() => {
   
        return axios
            .get(`/expense/analytic/${data.start_date}/${data.end_date}`, {
            headers: {
                Authorization: `Bearer ${token}`,
            },
            })
            .then((result) => {
                setExpenses(result.data);
            })
            .catch((error) => {
                if (error) {
                    return error;
                }
            });
    }
    const renderExpCategory = (id) => {
        const expCat =
          expCategories && expCategories.find((category) => category.id == id);
        return expCat ? (expCat.name ? expCat.name : null) : null;
      };

    const handleFilterExpense = () =>{
        const filterExp = expenses && expenses.filter(exp => exp.expense_FK === selected)
        return setReports(filterExp)
      
    }

    useEffect(() =>{
        return handleFilterExpense()
    }, [selected])
    return (
        <Fragment>
            <RenderPeriodicTable
                data={data}
                setData={setData}
                handleChange={handleChange}
                handleSearch={handle_Get_analytic_periodic_Report}
            />
            {
                expenses && 
                <div
                    style={{
                        padding: 5,
                        width: '99%',
                        margin: 'auto',
                        display: 'flex',
                        overflowX: 'auto',
                        boxSizing: 'border-box',
                        boxShadow: '0px 1px 2px gray',
                        borderBottom: '1px solid #edededed',
                    }}
                >
                
                {
                    expCategories?.map((item, index) =>{
                        const {id, name} = item
                        return (
                            <RenderButtonTab
                                id={id}
                                tab={tab}
                                key={index}
                                title={name}
                                setTab={setTab}
                                tabIndex={index}
                                setSelected={setSelected}
                            />
                        )
                    })
                }
            </div>
            }
           {/* component */}
           {
               reports && 
               <Grid container spacing={2}>
                    <Grid item lg={12} md={12} sm={12}>
                    <div className="p-1" />
                    {/* Expense Tableview */}
                    
                    <table
                        className="table-hover table-bordered"
                        style={{ width: "98%", margin: "auto" }}
                    >
                       <Fragment>
                            <thead
                            style={{
                                top: 35,
                                color: "#2A3F54",
                                position: "sticky",
                                background: "#EDEDEDED",
                            }}
                                >
                                <th style={{ border: "1px solid #F7F7F7F7" }}>#</th>
                                <th style={{ border: "1px solid #F7F7F7F7" }}>Item</th>
                                <th style={{ border: "1px solid #F7F7F7F7" }}>Description</th>
                                <th style={{ border: "1px solid #F7F7F7F7" }}>
                                    Amt (<s>N</s>)
                                </th>
                                <th style={{ border: "1px solid #F7F7F7F7" }}>Date</th>
                            </thead>
                       </Fragment>
                        <tbody>
                        {reports &&
                            reports?.map((exp, index) => {
                            const {
                                amount,
                                createdAt,
                                expense_FK,
                                description,                          
                            } = exp;
                            return (
                                <Fragment key={index}>
                                <tr key={index}>
                                    <td style={{ textAlign: "center" }}>
                                    {index + 1}
                                    </td>
                                    {
                                        index == 0 ?
                                        <td style={{ textAlign: "left", paddingLeft: 10 }}> {renderExpCategory(expense_FK)} </td>
                                        :
                                        <td></td>
                                    }
                                    <td style={{ textAlign: "left", paddingLeft: 10 }}> {description} </td>
                                    <td>
                                    <Typography color="error">
                                        {amount.toLocaleString()}
                                    </Typography>
                                    </td>
                                    <td>
                                    {new Date(createdAt).toLocaleDateString()}
                                    </td>
                                </tr>
                                </Fragment>
                            );
                            })}
                        {reports && reports.length > 0 && (
                            <tr style={{ background: "#2A3F54", color: "white" }}>
                            <td colSpan={1}>
                                <Typography
                                variant="subtitle1"
                                style={{ color: "white" }}
                                >
                                <b>Total:</b>
                                </Typography>
                            </td>
                            <td colSpan={3}>
                                <Typography
                                variant="subtitle1"
                                style={{ color: "white" }}
                                >
                                <b>{calcuAmt(reports)}</b>
                                </Typography>
                            </td>
                            <td colSpan={2}></td>
                            </tr>
                        )}
                        </tbody>
                    </table>
                    {!reports && (
                        <div
                        className="alert alert-warning"
                        style={{ width: "98%", margin: "auto" }}
                        >
                        {`Ops!!! No Transaction History`}
                        </div>
                    )}
                    {reports && reports.length > 0 && (
                        <table className="table hide-on-print">
                        <tbody>
                            <tr>
                            <td>
                                <MultiExcelDownload data={expenses} />
                            </td>
                            <td>
                                <button
                                onClick={() => window.print()}
                                variant="contained"
                                color="inherit"
                                >
                                Print
                                </button>
                            </td>
                            </tr>
                        </tbody>
                        </table>
                    )}
                    </Grid>
            </Grid>
           }
        </Fragment>
    )
}

export default ExpenseAnalysisReport

