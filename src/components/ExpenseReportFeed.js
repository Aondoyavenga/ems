// MUI Stuff
import Grid from "@material-ui/core/Grid";
import Button from "@material-ui/core/Button";
import Typography from "@material-ui/core/Typography";

import Search from "@material-ui/icons/Search";

import axios from "axios";
import React, { Fragment, useState, useEffect } from "react";
import { useSelector } from "react-redux";
import {
  selectToken,
  selectExpenseItems,
  selectExpenseCategories,
  selectAccounts,
  selectExpenseHeadings,
} from "../appState/appSlice";
import { DownloadExpenseReport } from "./ExcelDownload";
import AppHeader from "./global/AppHeader";
import { Tooltip } from "@material-ui/core";
import ExpenseAnalysis from "./ExpenseAnalysis";
import RenderPeriodicTable from "./global/RenderPeriodicTable";
import ExpenseAnalysisReport from "./ExpenseAnalysisReport";
import CONSTANTS from "../constants";

const RenderHead = ({ title, exphead, setExpHead, expCategories}) =>{
  return (
    <Fragment>
      <th> {title? title : "Heading"} </th>
        <th>
        <select
          name="heanding"
          value={exphead}
          placeholder="Account"
          style={{ border: "none" }}
          onChange={e => setExpHead(e.target.value)}
        >
          <option value=""></option>
          {expCategories &&
            expCategories.map((exps, index) => {
              const { id, name } = exps;
              return (
                <Fragment key={index}>
                  <option
                    value={id}
                    key={index}
                  >{`${name}`}</option>
                </Fragment>
              );
            })}
        </select>
        </th>
    </Fragment>
  )
}

const ExpenseReportFeed = () => {
  const token = useSelector(selectToken);
  const [reports, setReports] = useState();
  const accounts = useSelector(selectAccounts);
  const expItems = useSelector(selectExpenseItems);
  const groupHeads = useSelector(selectExpenseHeadings)
  
  const expCategories = useSelector(selectExpenseCategories);
  const [headreports, setHeadReports] = useState();
  const [headingsreports, setHeadingsReports] = useState();
  const [groupHeadreports, setGroupHeadreports] = useState([])

  const [swap, setSwap] = useState(1)
  const [exphead, setExpHead] = useState()
  const [groupHead, setGroupHead] = useState()
  const [subGroupHead, setSubGroupHead] = useState()

  const [data, setData] = useState({
    start_date: CONSTANTS.createdAt,
    end_date: CONSTANTS.createdAt,
  });

  const handleChange = (e) => {
    const name = e.target.name;
    const value = e.target.value;
    setData({
      ...data,
      [name]: value,
    });
  };
  const calcuAmt = (data) => {
    const total = data && data.reduce((a, v) => +v.amount + a, 0);
    return total.toLocaleString();
  };

  const renderExpCategory = (id) => {
    const expCat =
      expCategories && expCategories.find((category) => category.id == id);
    return expCat ? (expCat.name ? expCat.name : null) : null;
  };

  const renderAccount = (code) => {
    const acc = accounts && accounts.find((acc) => acc.code == code);
    return acc?.name;
  };

  const handle_Get_Report = () => {
    if (data.start_date && data.end_date)
      return axios
        .get(`/expense/report/${data.start_date}/${data.end_date}`, {
          headers: {
            Authorization: `Bearer ${token}`,
          },
        })
        .then((result) => {
         setReports(result.data);
        })
        .catch((error) => {
          if (error) {
            return error;
          }
        });
  };

  const handle_Get_Ex_Head_periodic_Report =() => {
   
    return axios
      .get(`/expense/head/${exphead}/${data.start_date}/${data.end_date}`, {
        headers: {
          Authorization: `Bearer ${token}`,
        },
      })
      .then((result) => {
        setHeadingsReports(result.data);
      })
      .catch((error) => {
        if (error) {
          return error;
        }
      });
  }
  const get_Ex_Raised_Head_periodic_Report =() => {
    return axios
      .get(`/expense/group_head/${groupHead}/${data.start_date}/${data.end_date}`, {
        headers: {
          Authorization: `Bearer ${token}`,
        },
      })
      .then((result) => {
       if(result.data) return  setGroupHeadreports(result.data);
      })
      .catch((error) => {
        if (error) {
          return error;
        }
      });
  }

  const get_Ex_Raised_Heading_Subcategory_periodic_Report =() => {
    return axios
      .get(`/expense/group_head_subhead/${groupHead}/${subGroupHead}/${data.start_date}/${data.end_date}`, {
        headers: {
          Authorization: `Bearer ${token}`,
        },
      })
      .then((result) => {
       if(result.data) return  setGroupHeadreports(result.data);
      })
      .catch((error) => {
        if (error) {
          return error;
        }
      });
  }

  const handle_Get_Ex_Head_Report = () => {
    if (exphead)
      return axios
        .get(`/expense/headings/${exphead}`, {
          headers: {
            Authorization: `Bearer ${token}`,
          },
        })
        .then((result) => {
         setHeadReports(result.data);
        })
        .catch((error) => {
          if (error) {
            return error;
          }
        });
  };

  useEffect(() => {
    return handle_Get_Report()
  }, [data]);

  useEffect(() =>{
    return handle_Get_Ex_Head_Report()
  }, [exphead])
  


  const renderTabs =() =>{
    switch (swap) {
      case 1:
        return (
          <Fragment>
             <Grid container spacing={2}>
                <Grid item lg={12} md={12} sm={12}>
                  <div className="p-1" />
                  {/* Expense Tableview */}
                  <table
                    style={{
                      top: 0,
                      zIndex: 222,
                      width: "98%",
                      margin: "auto",
                      position: "sticky",
                    }}
                    className="mt-1 table-bordered hide-on-print"
                  >
                    <thead>
                      
                      <RenderHead 
                        exphead={exphead}
                        setExpHead={setExpHead}
                        expCategories={expCategories}
                      />
                      <th>
                        <Button
                          size="small"
                          endIcon={<Search />}
                          onClick={() => handle_Get_Report()}
                          style={{
                            background: "#2a3f54",
                            color: "white",
                            width: "100%",
                          }}
                        >
                          Search
                        </Button>
                      </th>
                    </thead>
                  </table>
    
                  <table
                    className="table-hover table-bordered"
                    style={{ width: "98%", margin: "auto" }}
                  >
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
                        Acc. Payable
                      </th>
                      <th style={{ border: "1px solid #F7F7F7F7" }}>
                        Acc. Receivable
                      </th>
                      <th style={{ border: "1px solid #F7F7F7F7" }}>
                        Amt (<s>N</s>)
                      </th>
                      <th style={{ border: "1px solid #F7F7F7F7" }}>Date</th>
                      <th style={{ border: "1px solid #F7F7F7F7" }}>Pay Method</th>
                    </thead>
                    <tbody>
                      {headreports &&
                        headreports.map((exp, index) => {
                          const {
                            expense_FK,
                            description,
                            amount,
                            pay_method,
                            expense_date,
                            payee_account,
                            payment_account,
                          } = exp;
                          return (
                            <Fragment key={index}>
                              <tr>
                                <td style={{ textAlign: "center" }}>
                                  
                                  {index + 1}
                                </td>
                                {
                                  index == 0 ?
                                  <td style={{ textAlign: "left" }}>
                                    {renderExpCategory(expense_FK)}
                                  </td>
                                  :
                                  <td> {' '} </td>
                                }
                                <td style={{ textAlign: "left" }}>
                                  
                                  {description}
                                </td>
                                <td style={{ textAlign: "left" }}>
                                  
                                  {renderAccount(payment_account)}
                                </td>
                                <td style={{ textAlign: "left" }}>
                                  
                                  {renderAccount(payee_account)}
                                </td>
                                <td>
                                  <Typography color="error">
                                    {amount.toLocaleString()}
                                  </Typography>
                                </td>
                                <td>
                                  
                                  {new Date(expense_date).toLocaleDateString()}
                                </td>
                                <td> {pay_method} </td>
                              </tr>
                            </Fragment>
                          );
                        })}
                      {headreports && headreports.length > 0 && (
                        <tr style={{ background: "#2A3F54", color: "white" }}>
                          <td colSpan={3}>
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
                              <b>{calcuAmt(headreports)}</b>
                            </Typography>
                          </td>
                          <td colSpan={2}></td>
                        </tr>
                      )}
                    </tbody>
                  </table>
                  {!expItems && (
                    <div
                      className="alert alert-warning"
                      style={{ width: "98%", margin: "auto" }}
                    >
                      {`Ops!!! No Transaction History`}
                    </div>
                  )}
                  {headreports && headreports.length > 0 && (
                    <table className="table hide-on-print">
                      <tbody>
                        <tr>
                          <td>
                            <DownloadExpenseReport
                              dataSet1={headreports}
                              renderAccount={renderAccount}
                              renderExpCategory={renderExpCategory}
                              date={data.start_date + "-" + data.end_date}
                            />
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
            
          </Fragment>
        )
      case 2:
        return (
          <Fragment>
             <Grid container spacing={2}>
                <Grid item lg={12} md={12} sm={12}>
                  <div className="p-1" />
                  {/* Expense Tableview */}
                  <table
                    className="mt-1 table-bordered hide-on-print"
                    style={{
                      width: "98%",
                      margin: "auto",
                      position: "sticky",
                      top: 0,
                      zIndex: 222,
                    }}
                  >
                    <thead>
                      <RenderHead 
                        exphead={exphead}
                        setExpHead={setExpHead}
                        expCategories={expCategories}
                      />
                      <th>From</th>
                      <th>
                      <input
                        type='date'
                        value={data.start_date}
                        onChange={(e) =>
                          setData({
                            ...data,
                            start_date: e.target.value,
                          })
                        }
                        style={{
                          width: "100%",
                          outline: "none",
                          border: "none",
                          height: "30px",
                        }}
                      />
                      </th>
                      <th>To</th>
                      <th>
                        <input
                          name="end_date"
                          type="date"
                          value={data.end_date}
                          onChange={(e) => handleChange(e)}
                        />
                      </th>
                      <th>
                        <Button
                          size="small"
                          endIcon={<Search />}
                          onClick={() => handle_Get_Ex_Head_periodic_Report()}
                          style={{
                            background: "#2a3f54",
                            color: "white",
                            width: "100%",
                          }}
                          disabled={!data.start_date && data.end_date}
                        >
                          Search
                        </Button>
                      </th>
                    </thead>
                  </table>
    
                  <table
                    className="table-hover table-bordered"
                    style={{ width: "98%", margin: "auto" }}
                  >
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
                        Acc. Payable
                      </th>
                      <th style={{ border: "1px solid #F7F7F7F7" }}>
                        Acc. Receivable
                      </th>
                      <th style={{ border: "1px solid #F7F7F7F7" }}>
                        Amt (<s>N</s>)
                      </th>
                      <th style={{ border: "1px solid #F7F7F7F7" }}>Date</th>
                      <th style={{ border: "1px solid #F7F7F7F7" }}>Pay Method</th>
                    </thead>
                    <tbody>
                      {headingsreports &&
                        headingsreports?.map((exp, index) => {
                          const {
                            expense_FK,
                            description,
                            amount,
                            pay_method,
                            expense_date,
                            payee_account,
                            payment_account,
                          } = exp;
                          return (
                            <Fragment key={index}>
                              <tr>
                                <td style={{ textAlign: "center" }}>
                                  
                                  {index + 1}
                                </td>
                                {
                                  index == 0 ?
                                  <td style={{ textAlign: "left" }}>
                                    {renderExpCategory(expense_FK)}
                                  </td>
                                  :
                                  <td> {' '} </td>
                                }
                                <td style={{ textAlign: "left" }}>
                                  
                                  {description}
                                </td>
                                <td style={{ textAlign: "left" }}>
                                  
                                  {renderAccount(payment_account)}
                                </td>
                                <td style={{ textAlign: "left" }}>
                                  
                                  {renderAccount(payee_account)}
                                </td>
                                <td>
                                  <Typography color="error">
                                    {amount.toLocaleString()}
                                  </Typography>
                                </td>
                                <td>
                                  
                                  {new Date(expense_date).toLocaleDateString()}
                                </td>
                                <td> {pay_method} </td>
                              </tr>
                            </Fragment>
                          );
                        })}
                      {headingsreports && headingsreports.length > 0 && (
                        <tr style={{ background: "#2A3F54", color: "white" }}>
                          <td colSpan={3}>
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
                              <b>{calcuAmt(headingsreports)}</b>
                            </Typography>
                          </td>
                          <td colSpan={2}></td>
                        </tr>
                      )}
                    </tbody>
                  </table>
                  {!expItems && (
                    <div
                      className="alert alert-warning"
                      style={{ width: "98%", margin: "auto" }}
                    >
                      {`Ops!!! No Transaction History`}
                    </div>
                  )}
                  {headingsreports && headingsreports.length > 0 && (
                    <table className="table hide-on-print">
                      <tbody>
                        <tr>
                          <td>
                            <DownloadExpenseReport
                              dataSet1={headingsreports}
                              renderAccount={renderAccount}
                              renderExpCategory={renderExpCategory}
                              date={data.start_date + "-" + data.end_date}
                            />
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
            
          </Fragment>
        )
        case 3:
        return (
          <Fragment>
             <Grid container spacing={2}>
                <Grid item lg={12} md={12} sm={12}>
                  <div className="p-1" />
                  {/* Expense Tableview */}
                  <RenderPeriodicTable 
                    data={data}
                    setData={setData}
                    handleChange={handleChange}
                    handleSearch={handle_Get_Report}
                  />
                  <table
                    className="table-hover table-bordered"
                    style={{ width: "98%", margin: "auto" }}
                  >
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
                        Acc. Payable
                      </th>
                      <th style={{ border: "1px solid #F7F7F7F7" }}>
                        Acc. Receivable
                      </th>
                      <th style={{ border: "1px solid #F7F7F7F7" }}>
                        Amt (<s>N</s>)
                      </th>
                      <th style={{ border: "1px solid #F7F7F7F7" }}>Date</th>
                      <th style={{ border: "1px solid #F7F7F7F7" }}>Pay Method</th>
                    </thead>
                    <tbody>
                      {reports &&
                        reports?.map((exp, index) => {
                          const {
                            expense_FK,
                            description,
                            amount,
                            pay_method,
                            expense_date,
                            payee_account,
                            payment_account,
                          } = exp;
                          return (
                            <Fragment key={index}>
                              <tr>
                                <td style={{ textAlign: "center" }}>
                                  
                                  {index + 1}
                                </td>
                                <td style={{ textAlign: "left" }}>
                                  
                                  {expense_FK}
                                </td>
                                <td style={{ textAlign: "left" }}>
                                  
                                  {description}
                                </td>
                                <td style={{ textAlign: "left" }}>
                                  
                                  {renderAccount(payment_account)}
                                </td>
                                <td style={{ textAlign: "left" }}>
                                  
                                  {renderAccount(payee_account)}
                                </td>
                                <td>
                                  <Typography color="error">
                                    {amount.toLocaleString()}
                                  </Typography>
                                </td>
                                <td>
                                  
                                  {new Date(expense_date).toLocaleDateString()}
                                </td>
                                <td> {pay_method} </td>
                              </tr>
                            </Fragment>
                          );
                        })}
                      {reports && reports.length > 0 && (
                        <tr style={{ background: "#2A3F54", color: "white" }}>
                          <td colSpan={3}>
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
                  {!expItems && (
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
                            <DownloadExpenseReport
                              dataSet1={reports}
                              renderAccount={renderAccount}
                              renderExpCategory={renderExpCategory}
                              date={data.start_date + "-" + data.end_date}
                            />
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
            
          </Fragment>
        )
        case 4:
          // return <ExpenseAnalysis 
          //   data={data}
          //   setData={setData}
          //   handleChange={handleChange}
          // />
          return <ExpenseAnalysisReport
            data={data}
            setData={setData}
            handleChange={handleChange}
          />
        case 5: 
        return (
          <Fragment>
             <Grid container spacing={2}>
                <Grid item lg={12} md={12} sm={12}>
                  <div className="p-1" />
                  {/* Expense Tableview */}
                  <table
                    className="mt-1 table-bordered hide-on-print"
                    style={{
                      width: "98%",
                      margin: "auto",
                      position: "sticky",
                      top: 0,
                      zIndex: 222,
                    }}
                  >
                    <thead>
                      <RenderHead 
                        exphead={groupHead}
                        setExpHead={setGroupHead}
                        expCategories={groupHeads}
                      />
                      <th>From</th>
                      <th>
                      <input
                        type='date'
                        value={data.start_date}
                        onChange={(e) =>
                          setData({
                            ...data,
                            start_date: e.target.value,
                          })
                        }
                        style={{
                          width: "100%",
                          outline: "none",
                          border: "none",
                          height: "30px",
                        }}
                      />
                      </th>
                      <th>To</th>
                      <th>
                        <input
                          name="end_date"
                          type="date"
                          value={data.end_date}
                          onChange={(e) => handleChange(e)}
                        />
                      </th>
                      <th>
                        <Button
                          size="small"
                          endIcon={<Search />}
                          onClick={get_Ex_Raised_Head_periodic_Report}
                          style={{
                            background: "#2a3f54",
                            color: "white",
                            width: "100%",
                          }}
                          disabled={!data.start_date && data.end_date}
                        >
                          Search
                        </Button>
                      </th>
                    </thead>
                  </table>
    
                  <table
                    className="table-hover table-bordered"
                    style={{ width: "98%", margin: "auto" }}
                  >
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
                        Acc. Payable
                      </th>
                      <th style={{ border: "1px solid #F7F7F7F7" }}>
                        Acc. Receivable
                      </th>
                      <th style={{ border: "1px solid #F7F7F7F7" }}>
                        Amt (<s>N</s>)
                      </th>
                      <th style={{ border: "1px solid #F7F7F7F7" }}>Date</th>
                      <th style={{ border: "1px solid #F7F7F7F7" }}>Pay Method</th>
                    </thead>
                    <tbody>
                      {groupHeadreports?.length > 0 &&
                        groupHeadreports?.map((exp, index) => {
                          const {
                            expense_FK,
                            description,
                            amount,
                            pay_method,
                            expense_date,
                            payee_account,
                            payment_account,
                          } = exp;
                          return (
                            <Fragment key={index}>
                              <tr>
                                <td style={{ textAlign: "center" }}>
                                  
                                  {index + 1}
                                </td>
                                <td style={{ textAlign: "left" }}>
                                 
                                 {expense_FK}
                                </td>
                                <td style={{ textAlign: "left" }}>
                                  
                                  {description}
                                </td>
                                <td style={{ textAlign: "left" }}>
                                  
                                  {renderAccount(payment_account)}
                                </td>
                                <td style={{ textAlign: "left" }}>
                                  
                                  {renderAccount(payee_account)}
                                </td>
                                <td>
                                  <Typography color="error">
                                    {amount.toLocaleString()}
                                  </Typography>
                                </td>
                                <td>
                                  
                                  {new Date(expense_date).toLocaleDateString()}
                                </td>
                                <td> {pay_method} </td>
                              </tr>
                            </Fragment>
                          );
                        })}
                      {groupHeadreports && groupHeadreports.length > 0 && (
                        <tr style={{ background: "#2A3F54", color: "white" }}>
                          <td colSpan={3}>
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
                              <b>{calcuAmt(groupHeadreports)}</b>
                            </Typography>
                          </td>
                          <td colSpan={2}></td>
                        </tr>
                      )}
                    </tbody>
                  </table>
                  {!expItems && (
                    <div
                      className="alert alert-warning"
                      style={{ width: "98%", margin: "auto" }}
                    >
                      {`Ops!!! No Transaction History`}
                    </div>
                  )}
                  {groupHeadreports && groupHeadreports.length > 0 && (
                    <table className="table hide-on-print">
                      <tbody>
                        <tr>
                          <td>
                            <DownloadExpenseReport
                              dataSet1={groupHeadreports}
                              renderAccount={renderAccount}
                              renderExpCategory={renderExpCategory}
                              date={data.start_date + "-" + data.end_date}
                            />
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
            
          </Fragment>
        )
        case 6: 
        return (
          <Fragment>
             <Grid container spacing={2}>
                <Grid item lg={12} md={12} sm={12}>
                  <div className="p-1" />
                  {/* Expense Tableview */}
                  <table
                    className="mt-1 table-bordered hide-on-print"
                    style={{
                      width: "98%",
                      margin: "auto",
                      position: "sticky",
                      top: 0,
                      zIndex: 222,
                    }}
                  >
                    <thead>
                      <RenderHead 
                        exphead={groupHead}
                        setExpHead={setGroupHead}
                        expCategories={groupHeads}
                      />
                      <RenderHead 
                        title='Sub-Heading'
                        exphead={subGroupHead}
                        setExpHead={setSubGroupHead}
                        expCategories={expCategories}
                      />
                      <th>From</th>
                      <th>
                      <input
                        type='date'
                        value={data.start_date}
                        onChange={(e) =>
                          setData({
                            ...data,
                            start_date: e.target.value,
                          })
                        }
                        style={{
                          width: "100%",
                          outline: "none",
                          border: "none",
                          height: "30px",
                        }}
                      />
                      </th>
                      <th>To</th>
                      <th>
                        <input
                          name="end_date"
                          type="date"
                          value={data.end_date}
                          onChange={(e) => handleChange(e)}
                        />
                      </th>
                      <th>
                        <Button
                          size="small"
                          endIcon={<Search />}
                          onClick={get_Ex_Raised_Heading_Subcategory_periodic_Report}
                          style={{
                            background: "#2a3f54",
                            color: "white",
                            width: "100%",
                          }}
                          disabled={!data.start_date && data.end_date}
                        >
                          Search
                        </Button>
                      </th>
                    </thead>
                  </table>
    
                  <table
                    className="table-hover table-bordered"
                    style={{ width: "98%", margin: "auto" }}
                  >
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
                        Acc. Payable
                      </th>
                      <th style={{ border: "1px solid #F7F7F7F7" }}>
                        Acc. Receivable
                      </th>
                      <th style={{ border: "1px solid #F7F7F7F7" }}>
                        Amt (<s>N</s>)
                      </th>
                      <th style={{ border: "1px solid #F7F7F7F7" }}>Date</th>
                      <th style={{ border: "1px solid #F7F7F7F7" }}>Pay Method</th>
                    </thead>
                    <tbody>
                      {groupHeadreports?.length > 0 &&
                        groupHeadreports?.map((exp, index) => {
                          const {
                            expense_FK,
                            description,
                            amount,
                            pay_method,
                            expense_date,
                            payee_account,
                            payment_account,
                          } = exp;
                          return (
                            <Fragment key={index}>
                              <tr>
                                <td style={{ textAlign: "center" }}>
                                  
                                  {index + 1}
                                </td>
                                <td style={{ textAlign: "left" }}>
                                 
                                 {expense_FK}
                                </td>
                                <td style={{ textAlign: "left" }}>
                                  
                                  {description}
                                </td>
                                <td style={{ textAlign: "left" }}>
                                  
                                  {renderAccount(payment_account)}
                                </td>
                                <td style={{ textAlign: "left" }}>
                                  
                                  {renderAccount(payee_account)}
                                </td>
                                <td>
                                  <Typography color="error">
                                    {amount.toLocaleString()}
                                  </Typography>
                                </td>
                                <td>
                                  
                                  {new Date(expense_date).toLocaleDateString()}
                                </td>
                                <td> {pay_method} </td>
                              </tr>
                            </Fragment>
                          );
                        })}
                      {groupHeadreports && groupHeadreports.length > 0 && (
                        <tr style={{ background: "#2A3F54", color: "white" }}>
                          <td colSpan={3}>
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
                              <b>{calcuAmt(groupHeadreports)}</b>
                            </Typography>
                          </td>
                          <td colSpan={2}></td>
                        </tr>
                      )}
                    </tbody>
                  </table>
                  {!expItems && (
                    <div
                      className="alert alert-warning"
                      style={{ width: "98%", margin: "auto" }}
                    >
                      {`Ops!!! No Transaction History`}
                    </div>
                  )}
                  {groupHeadreports && groupHeadreports.length > 0 && (
                    <table className="table hide-on-print">
                      <tbody>
                        <tr>
                          <td>
                            <DownloadExpenseReport
                              dataSet1={groupHeadreports}
                              renderAccount={renderAccount}
                              renderExpCategory={renderExpCategory}
                              date={data.start_date + "-" + data.end_date}
                            />
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
            
          </Fragment>
        )
      default:
       return
    }
  }

  return (
    <Fragment>
      <div className="app__Feed" style={{overflowX: 'hidden'}}>
        <AppHeader title="Expenses Report" />
        <div className="admin__FeedContainer">
          <div className="admin__Title">
            <section>
              <Typography variant="h3">Reports Pool {}</Typography>
            </section>
          </div>

          <div style={{
              padding: 5,
              borderBottom: '1px solid #edededed',
              boxSizing: 'border-box',
              boxShadow: '0px 1px 2px gray'
            }}
            className='mb-3'
          >
          <Tooltip title='Pool Expense Report By Heandings'>                     
            <Button
              style={{
                  width: 100,
                  color: swap == 1 ?  '#20C997' : 'white',
                  boxSizing: 'border-box',
                  backgroundColor: swap == 1 ?  '#F7F7F7F7' : '#2a3f54',
                  boxShadow: '0px 2px 2px gray'
              }}
              onClick={() =>setSwap(1)}
            > 
              Headings
            </Button>
          </Tooltip>

          <Tooltip title='Pool Expense Report With Heading Periodic'>                     
          <Button
              style={{
                  width: 'auto',
                  marginLeft: 10,
                  color: swap == 2 ?  '#20C997' : 'white',
                  boxSizing: 'border-box',
                  backgroundColor: swap == 2 ?  '#F7F7F7F7' : '#2a3f54',
                  boxShadow: '0px 2px 2px gray'
              }}
              onClick={() =>setSwap(2)}
            > 
              Periodic & Heading
            </Button>
          </Tooltip>

          <Tooltip title='Pool Expense Report With All Headings Periodic'>                     
          <Button
              style={{
                  width: 'auto',
                  marginLeft: 10,
                  color: swap == 3 ?  '#20C997' : 'white',
                  boxSizing: 'border-box',
                  backgroundColor: swap == 3 ?  '#F7F7F7F7' : '#2a3f54',
                  boxShadow: '0px 2px 2px gray'
              }}
              onClick={() =>setSwap(3)}
            > 
              Periodic / all headings
            </Button>
          </Tooltip>
          <Tooltip title='Pool Expense Analysis Report'>                     
          <Button
              style={{
                  width: 'auto',
                  marginLeft: 10,
                  color: swap == 4 ?  '#20C997' : 'white',
                  boxSizing: 'border-box',
                  backgroundColor: swap == 4 ?  '#F7F7F7F7' : '#2a3f54',
                  boxShadow: '0px 2px 2px gray'
              }}
              onClick={() =>setSwap(4)}
            > 
              Expense Analysis
            </Button>
          </Tooltip>
          <Tooltip title='Pool Expense Report'>                     
          <Button
              style={{
                  width: 'auto',
                  marginLeft: 10,
                  color: swap == 5 ?  '#20C997' : 'white',
                  boxSizing: 'border-box',
                  backgroundColor: swap == 5 ?  '#F7F7F7F7' : '#2a3f54',
                  boxShadow: '0px 2px 2px gray'
              }}
              onClick={() =>setSwap(5)}
            > 
              Group Headings
            </Button>
          </Tooltip>
          <Tooltip title='Pool Expense Report'>                     
          <Button
              style={{
                  width: 'auto',
                  marginLeft: 10,
                  color: swap == 6 ?  '#20C997' : 'white',
                  boxSizing: 'border-box',
                  backgroundColor: swap == 6 ?  '#F7F7F7F7' : '#2a3f54',
                  boxShadow: '0px 2px 2px gray'
              }}
              onClick={() =>setSwap(6)}
            > 
              Group Headings/ Sub-Heads
            </Button>
          </Tooltip>
          </div>
          {/* heanding report */}
            {renderTabs()}
        </div>
      </div>
    </Fragment>
  );
};

export default ExpenseReportFeed;
