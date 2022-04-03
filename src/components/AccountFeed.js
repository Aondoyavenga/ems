import { Button, Grid, Typography } from "@material-ui/core";
import { UndoRounded } from "@material-ui/icons";
import React, { useEffect, useState } from "react";
import { Fragment } from "react";
import { useSelector } from "react-redux";
import {
  useHistory,
  useParams,
} from "react-router-dom/cjs/react-router-dom.min";
import { selectAccounts, selectAccountTxs } from "../appState/appSlice";
import AppHeader from "./global/AppHeader";
import AppBackdrop from "./global/AppBackDrop";

const AccountFeed = () => {
const params = useParams();
const { name } = params;
const history = useHistory();
const [open, setOpen] = useState(true)
const accountTxs = useSelector(selectAccountTxs);
const accounts = useSelector(selectAccounts)

const calcuTotalDR = (data) => {
  const tDR = data && data.filter((dta) => dta.tx_type == "DR");
  const total = tDR && tDR.reduce((a, v) => +v.amount + a, 0);
  return total;
};
  const calcuTotalCR = (data) => {
    const tCR = data && data.filter((dta) => dta.tx_type == "CR");
    const total = tCR && tCR.reduce((a, v) => +v.amount + a, 0);
    return total;
  };

  const renderAccountDetails = (account_FK) =>{
        
    const account = accounts && accounts.find(acc =>acc.code == account_FK )
    return account && account.balance_type
  }

  useEffect(() =>{
    setTimeout(() => {
        setOpen(!open)
    }, 500);
    
  }, [])

  return (
    <div className="app__Feed">
       <AppBackdrop open={open} setOpen={setOpen} />
      <AppHeader title="Posting" />
      <div className="m-3">
        <Grid container spacing={2}>
          <Grid item lg={12} md={12}>
            <table className="table table-sm table-hover">
              <thead>
                <th style={{ border: "1px solid #F7F7F7F7" }}>#</th>
                <th style={{ border: "1px solid #F7F7F7F7" }}>Description</th>
                <th style={{ border: "1px solid #F7F7F7F7" }}>Date</th>
                <th style={{ border: "1px solid #F7F7F7F7" }}>
                  DR (<s>N</s>)
                </th>
                <th style={{ border: "1px solid #F7F7F7F7" }}>
                  CR (<s>N</s>)
                </th>
                <th style={{ border: "1px solid #F7F7F7F7" }}> Pay Method </th>
                {/* <th style={{ border: '1px solid #F7F7F7F7' }}> Status </th> */}
              </thead>
              <tbody>
                {accountTxs &&
                  accountTxs.map((pay, index) => {
                    const {
                      tx_date,
                      tx_type,
                      description,
                      amount,
                      account_FK,
                      pay_method,
                    } = pay;
                    return (
                      <tr key={index}>
                        <td>
                            <Typography
                                style={{
                                    color: '#20c997'
                                }}
                            > {index+1} </Typography>
                        </td>
                        <td>{description}</td>
                        <td> {new Date(tx_date).toLocaleDateString()} </td>
                        <td>
                          <Typography variant="p" color='error'>
                            {tx_type == "DR" ? amount.toLocaleString() : null}
                          </Typography>
                        </td>
                        <td>
                          <Typography variant="p" style={{ color: "#20c997" }}>
                            {tx_type == "CR" ? amount.toLocaleString() : null}
                          </Typography>
                        </td>
                        <td> {pay_method} </td>
                      </tr>
                    );
                  })}

                {accountTxs && (
                  <tr style={{ background: "none" }}>
                    <td colSpan={1}></td>
                    <td colSpan={1}>
                      <Button
                        variant="contained"
                        style={{ color: "white", 
                          background: "red", width: '50%' }}
                      >
                        <b>Total Debit :</b>
                      </Button>
                    </td>
                    <td colSpan={1}></td>
                    <td colSpan={1}>
                      <Typography variant="h5">
                        <b>
                          <s>N</s>:{calcuTotalDR(accountTxs).toLocaleString()}
                        </b>
                      </Typography>
                    </td>
                    <td colSpan={2}></td>
                  </tr>
                )}

                {accountTxs && (
                  <tr style={{ background: "none" }}>
                    <td colSpan={1}></td>
                    <td colSpan={1}>
                      <Button
                        variant="contained"
                        style={{ color: "white", 
                          background: "#2A3F54", width: '50%' }}
                      >
                        <b>Total Credit :</b>
                      </Button>
                    </td>

                    <td colSpan={2}></td>
                    <td colSpan={1}>
                      <Typography variant="h5" style={{ color: "#20c997" }}>
                        <b>
                          <s>N</s>:{calcuTotalCR(accountTxs).toLocaleString()}
                        </b>
                      </Typography>
                    </td>
                    <td colSpan={1}></td>
                  </tr>
                )}

                {accountTxs && (
                  <tr style={{ background: "none" }}>
                    <td colSpan={1}></td>
                    <td>
                      <Button
                        variant="contained"
                        style={{ color: "white", 
                          background: "#20c997", width: '50%' }}
                      >
                        <b>Close Balance :</b>
                      </Button>
                    </td>
                    {
                      accountTxs.length >0 && <td
                      colSpan={
                        accountTxs[0].balance_type == "DR" ? 1 : 2
                      }
                    ></td>
                    }
                    <td ccolSpan={2}>
                      <Typography variant="h5" style={{ color: "#20c997" }}>
                        <b>
                          <s>N</s>:
                          {calcuTotalDR(accountTxs) > 0
                            ?parseInt(calcuTotalCR(accountTxs) -
                              calcuTotalDR(accountTxs)).toLocaleString()
                            : calcuTotalCR(accountTxs).toLocaleString()}
                        </b>
                      </Typography>
                    </td>
                    {
                      accountTxs.length >0 &&
                      <td
                      colSpan={
                        accountTxs[0].balance_type == "DR" ? 2 : 1
                      }
                    ></td>
                    }
                  </tr>
                )}
              </tbody>
            </table>
            {!accountTxs.length > 0 && (
              <Fragment>
                <div className="alert alert-warning">
                  {`Ops!!! ${name} have no transaction history`}
                </div>
              </Fragment>
            )}
            <section
              className="mt-5"
              style={{
                display: "flex",
                alignItems: "center",
                justifyContent: "center",
              }}
            >
              <Button
                size="medium"
                variant="contained"
                onClick={() => history.goBack()}
                style={{ background: "#2A3F54", color: "white" }}
                endIcon={<UndoRounded style={{ color: "#20c997" }} />}
              >
                Back
              </Button>
            </section>
          </Grid>
        </Grid>
      </div>
    </div>
  );
};

export default AccountFeed;
