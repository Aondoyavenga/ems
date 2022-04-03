import { Tooltip } from '@material-ui/core';
import Grid from '@material-ui/core/Grid';
import axios from 'axios';
import React, { Fragment, useEffect, useState } from 'react'
import { useSelector } from 'react-redux';
import { selectExpenseCategories, selectToken } from '../appState/appSlice';
import RenderPeriodicTable from './global/RenderPeriodicTable';

const ExpenseAnalysis = ({
    data, 
    setData, 
    handleChange, 
    handle_Get_Report
}) => {
    const token = useSelector(selectToken);
    const expCategories = useSelector(selectExpenseCategories);
    const [expenses, setReports] = useState('')
    const [reportSums, setReportSums] = useState([])

//   func
    const calcuAmt = (data) => {
        const total = data && data.reduce((a, v) => +v.amount + a, 0);
        return total ? total.toLocaleString() : null;
    };
    const renderItem = (id) =>{
        
        // console.warn(id)
        const filterItem = expenses?.find(item =>item.expense_FK == id) 
           
        return filterItem ? filterItem.amount : ''
    }

    const handleFilter = () =>{
        let rows = []
        expCategories?.forEach(element => {
            let res = expenses && expenses?.find(exp =>exp.expense_FK == element.id)
            rows.push({...res})
        });
        return setReportSums(rows)
    }

    const handle_Get_analytic_periodic_Report =() => {
   
        return axios
          .get(`/expense/analytic/${data.start_date}/${data.end_date}`, {
            headers: {
              Authorization: `Bearer ${token}`,
            },
          })
          .then((result) => {
              console.log(result.data)
            setReports(result.data);
          })
          .catch((error) => {
            if (error) {
              return error;
            }
          });
      }

      useEffect(() =>{
          handleFilter()
      },[expenses])
    
    // date func
    // useEffect(() =>{
        // let start = data?.start_date ? new Date(data?.start_date) : new Date();
        // const end = new Date(data.end_date);
        // const rows = [];
        // const monthLists = ['Jan', 'Feb', 'Mar', 'April', 'May', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
        // while (start <= end) {
        //     let stringDate = start.setDate(new Date(data.start_date).setDate()+1)
        //     rows.push(stringDate);
        //     start = new Date(stringDate)
        // }
        //   let loop = new Date(start);
        //   const division = data.period / 30;
        //   while (loop <= end) {
        //     const newDate = loop.setDate(data.period + 1);
        //     loop = new Date(newDate);
        //     rows.push({
        //       date: new Date(newDate)
        //     });
        //   }
        //   return console.warn(rows)
    // },[reports])

    return (
        <Grid container className='p-2'>
            <Grid item lg={12} md={12} sm={12}>
                <div className='p-1' />
                {/* Table View */}
                <RenderPeriodicTable
                    data={data}
                    setData={setData}
                    handleChange={handleChange}
                    handleSearch={handle_Get_analytic_periodic_Report}
                />
                <div className='p-1' />
                <table
                    style={{
                        top: 0,
                        zIndex: 222,
                        width: '100%',
                        position: "sticky",
                        
                    }}
                    className="mt-1 table-sm table-responsive table-bordered hide-on-print"
                >
                   <thead
                        style={{
                            
                            color: "#2A3F54",
                            position: "sticky",
                            overflow: 'auto',
                            background: "#EDEDEDED",
                        }}
                   >
                        <th style={{ border: "1px solid #F7F7F7F7" }}>Date</th>
                        <th style={{ border: "1px solid #F7F7F7F7" }}>Desc</th>
                        <th style={{ border: "1px solid #F7F7F7F7" }}>Ref</th>
                        <th style={{ border: "1px solid #F7F7F7F7" }}>Total</th>
                        {
                            expCategories?.map((expCat, index) =>{
                                return (
                                    <Fragment key={index}>
                                        <Tooltip title={expCat.name} >
                                            <th style={{
                                                    padding: 2, 
                                                    border: "1px solid #F7F7F7F7" 
                                                }}
                                            >
                                                {`${expCat.name.slice(0, 4)}`}
                                            </th>
                                        </Tooltip>
                                    </Fragment>
                                )
                            })
                        }
                    </thead>
                    {
                        expenses.length > 0 &&
                        expenses.map((exp, index) =>{
                            return (
                                <thead>
                                    <th style={{ border: "1px solid #F7F7F7F7" }}>Date</th>
                                        <th style={{ border: "1px solid #F7F7F7F7" }}>Desc</th>
                                        <th style={{ border: "1px solid #F7F7F7F7" }}>Ref</th>
                                        <th style={{ border: "1px solid #F7F7F7F7" }}>Total</th>
                                        {
                                            expCategories?.map((expCat, index) =>{
                                                return (
                                                    <Fragment key={index}>
                                                        <Tooltip title={expCat.name} >
                                                            <th style={{
                                                                    padding: 2, 
                                                                    border: "1px solid #F7F7F7F7" 
                                                                }}
                                                            >
                                                                {renderItem(expCat.id)}
                                                            </th>
                                                        </Tooltip>
                                                    </Fragment>
                                                )
                                            })
                                        }
                                </thead>
                            )
                        })
                    }
                    

                    <tbody>
                        {
                            expenses.length> 0 &&

                           expenses.map((report, index) =>{
                                const {
                                    expense_FK,
                                    description,
                                    amount,
                                    createdAt,
                                    payee_account,
                                    payment_account,
                                  } = report;
                                return (
                                    <Fragment key={index}>
                                        {/* <th> {report.amount} </th> */}
                                        {/* <tr key={index}>
                                            <td> {new Date(createdAt).toLocaleDateString()} </td>
                                            <Tooltip title={description}>
                                                <td> {description.slice(0,7)} </td>
                                            </Tooltip>
                                            <Tooltip title='Expense account Code'>
                                                <td> </td>
                                            </Tooltip>
                                           
                                            <Tooltip title='Total Amount'>
                                                <td> {amount} </td>
                                            </Tooltip>
                                           <td colSpan={expCategories?.length}>
                                                {
                                                    expenses.length> 0 &&
                                                    expenses.map((exp, index)=>{
                                                        return (
                                                            <th>3</th>
                                                        )
                                                    })
                                                }
                                           </td>
                                           
                                        </tr> */}
                                       
                                    </Fragment>
                                )
                            })
                        }
                        
                    </tbody>
                </table>
            </Grid>
        </Grid>
    )
}

export default ExpenseAnalysis
