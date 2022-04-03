import axios from "axios";
// MUI Stuff
import Grid from "@material-ui/core/Grid";
import Paper from "@material-ui/core/Paper";
import ToolTip from "@material-ui/core/ToolTip";
import Button from "@material-ui/core/Button";
import TextField from "@material-ui/core/TextField";
import IconButton from "@material-ui/core/IconButton";
import Container from "@material-ui/core/Container";
import FormLabel from "@material-ui/core/FormLabel";
import Typography from "@material-ui/core/Typography";
// Icons
import FileCopy from "@material-ui/icons/FileCopy";

import React, { Fragment, useEffect, useState } from "react";
import { useSelector } from "react-redux";
import {
  selectAccounts,
  selectExpenseCategories,
  selectToken,
} from "../appState/appSlice";
import AppHeader from "./global/AppHeader";
import AppSnackbar from "./global/AppSnackbar";

const ExpenseFeed = ({ setOpen, isWidget, setIswidget }) => {
  const token = useSelector(selectToken);
  const accounts = useSelector(selectAccounts);
  const [success, setSuccess] = useState(false);
  const [message, setMessage] = useState();
  const [add, setAdd] = useState(false);
  const [isHead, setisHead] = useState(false);
  const [error, setError] = useState();
  const [head, setHead] = useState({
    name: ''
  })
  const [body, setbody] = useState({
    name: "",
  });
  const [epHeads, setEpesnseHead] = useState()
  const expenseCategories = useSelector(selectExpenseCategories);
  const expenseFormTemplate = { account: "", amount: "", description: "" };
  const [expenseForm, setExpenseform] = useState([expenseFormTemplate]);
  const [data, setData] = useState({
    expense_date: "",
    payee_account: "",
    payment_account: "",
    pay_method: "",
    description: "",
    tx_date: "",
    VALUES: [],
    head: '',
    uuid: "",
    total: "",
  });
  // func
  const addExpenseFrom = () => {
    setExpenseform([...expenseForm, expenseFormTemplate]);
  };
  const handleChange = (e, index) => {
    const name = e.target.name;
    const value = e.target.value;
    const updatedexpenseform = expenseForm.map((jef, i) =>
      index == i ? Object.assign(jef, { [name]: value }) : jef
    );
    setExpenseform(updatedexpenseform);
    if (name == "amount") {
      const updatedexpenseform = expenseForm.map((jef, i) =>
        index == i
          ? Object.assign(jef, {
              expense_ID: data.uuid,
              createdAt: data.expense_date,
            })
          : jef
      );
      setData({
        ...data,
        tx_date: data.expense_date,
      });
    }
    if (name == "description")
      return setData({
        ...data,
        description: value,
      });
  };
  const handleRemoveexpenseform = (index) => {
    const filterexpenseform = [...expenseForm];
    filterexpenseform.splice(index, 1);

    setExpenseform(filterexpenseform);
  };

  const calcuAmt = (data) => {
    const total = data && data.reduce((a, v) => +v.amount + a, 0);
    return total;
  };

  useEffect(() => {
    const fdata = expenseForm.map((x) => Object.values(x));
    const findal = [];
    // const data = fdata
    for (let i = 0; i < fdata.length; i++) {
      const element = fdata[i];
      findal.push(element);
    }

    setData({
      ...data,
      VALUES: findal,
    });
  }, [expenseForm]);

  useEffect(() => {
    setData({
      ...data,
      total: calcuAmt(expenseForm),
    });
  }, [data.VALUES]);

  // add expense category
  const handle_Add_ExpCategory = (e) => {
    setOpen(true);
    axios
      .post("/expense/category", body, {
        headers: {
          Authorization: `Bearer ${token}`,
        },
      })
      .then((result) => {
        setOpen(false);
        setMessage(result.data.message);
        setSuccess(true);
        setAdd(!add);
      })
      .catch((error) => {
        setOpen(false);
        if (error) {
          return error.response.statusText;
        }
      });
  };
   // add expense head
const get_ExpenseHeadings =() =>{
  axios.get('/expense/heads', {
      headers: {
          Authorization: `Bearer ${token}`
      }
  })
  .then(exps =>{
      setEpesnseHead(exps.data)
  })
  .catch(error =>{
      if(error){
          return error
      }
  })
}

   const handle_Add_Exphead = (e) => {
    setOpen(true);
    axios
      .post("/expense/heads", head, {
        headers: {
          Authorization: `Bearer ${token}`,
        },
      })
      .then((result) => {
        setOpen(false);
        setMessage(result.data.message);
        setSuccess(true);
        setisHead(!isHead);
      })
      .catch((error) => {
        setOpen(false);
        if (error) {
          return error.response.statusText;
        }
      });
  };
  //   handle error / post
  const isDisable = (Form) => {
    const error =
      Form &&
      Form.map((exform) =>
        !exform["account"].length > 0 ||
        !exform["amount"].length > 0 ||
        !exform["description"].length > 0
          ? true
          : false
      );

    const filterError = error && error.includes(true) ? true : false;
    // console.log(filterError);
    return filterError;
  };

  const isEmpty = (input) => {
    return data[input] === "" ? true : false;
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    const err = Object.keys(data).map((key) => isEmpty(key));
    const isError = err.includes(true);
    if (isError == true) return setError("All field are required")
      setError("");
      setOpen(true);
      axios
        .post("/expense", data, {
          headers: {
            Authorization: `Bearer ${token}`,
          },
        })
        .then((result) => {
          setOpen(false);
          setMessage(result.data.message);
          setExpenseform([expenseFormTemplate]);
          setSuccess(true);
          setData({
            expense_date: "",
            payee_account: "",
            payment_account: "",
            pay_method: "",
            description: "",
            tx_date: "",
            VALUES: [],
            uuid: "",
            head: '',
            total: "",
          });
        })
        .catch((error) => {
          setOpen(false);
          if (error) {
            return error.response.statusText;
          }
        });
    
  };

  useEffect(() => {
    setData({
      ...data,
      uuid:
        new Date().getSeconds().toLocaleString() +
        new Date().getMinutes().toLocaleString() +
        new Date().getMilliseconds(),
    });
    return get_ExpenseHeadings()
  }, [success]);
  return (
    <div className={`${isWidget ? "isapp__Feed" : "app__Feed"}`}>
      <AppSnackbar setOpen={setSuccess} open={success} message={message} />
      <AppHeader title="Expense" />
      <div className="row align-items-center justify-content-center d-flex m-1">
        <div className="col-lg-12 col-md-12">
          {/* table */}
          <h3>
            Expense Entry
            <span>
              <ToolTip title="Expense List">
                <IconButton
                  color="secondary"
                  onClick={() => setIswidget(!isWidget)}
                >
                  <FileCopy style={{ color: "#1ABB9C" }} />
                </IconButton>
              </ToolTip>
            </span>
          </h3>
          {/* to do make it a component */}
          <Grid container spacing={2} className="p-3">
            <Grid item lg={4} md={4}>
              <FormLabel>Account Receivable</FormLabel>
              <select
                name="payee_account"
                placeholder="Account"
                style={{ border: "none" }}
                value={data.payee_account}
                onChange={(e) =>
                  setData({
                    ...data,
                    payee_account: e.target.value,
                  })
                }
              >
                <option value=""></option>
                {accounts &&
                  accounts.filter(acc => acc.cusID ==null).map((accs, index) => {
                    const { name, code, balance_type } = accs;
                    return (
                      <option
                        value={code}
                        key={index}
                      >{`${name} (${balance_type})`}</option>
                    );
                  })}
              </select>
            </Grid>
            <Grid item lg={4} md={4}>
              <FormLabel>Account Payable</FormLabel>
              <select
                name="payment_account"
                placeholder="Account"
                style={{ border: "none" }}
                value={data.payment_account}
                onChange={(e) =>
                  setData({
                    ...data,
                    payment_account: e.target.value,
                  })
                }
              >
                <option value=""></option>
                {accounts &&
                  accounts.filter(acc => acc.cusID == null).map((acc, index) => {
                    const { code, name, balance_type } = acc;
                    return (
                      <option
                        value={code}
                        key={index}
                      >{`${name} (${balance_type})`}</option>
                    );
                  })}
              </select>
            </Grid>
            <Grid
              item
              lg={4}
              md={4}
              style={{
                display: "flex",
                justifyContent: "flex-end",
                alignItems: "flex-end",
                flexDirection: "column",
              }}
            >
              <FormLabel>Amount</FormLabel>
              <Typography variant="h5">
                <s>N</s>:{" "}
                {expenseForm && calcuAmt(expenseForm).toLocaleString()}
              </Typography>
            </Grid>
            <Grid item lg={4} md={4}>
              <FormLabel>Payment Date</FormLabel>
              <input
                name="expense_date"
                type="date"
                value={data.expense_date}
                onChange={(e) =>
                  setData({
                    ...data,
                    expense_date: e.target.value,
                  })
                }
                style={{
                  width: "100%",
                  outline: "none",
                  border: "none",
                  height: "30px",
                }}
              />
            </Grid>
            <Grid item lg={4} md={4}>
              <FormLabel>Payment Method</FormLabel>
              <select
                name="pay_method"
                value={data.pay_method}
                onChange={(e) =>
                  setData({
                    ...data,
                    pay_method: e.target.value,
                  })
                }
                style={{
                  width: "100%",
                  outline: "none",
                  border: "none",
                  height: "30px",
                }}
              >
                <option></option>
                <option value="cash">Cash</option>
                <option value="cheque">Cheque</option>
                <option value="transfer">Transfer</option>
              </select>
            </Grid>
            <Grid item lg={8} md={8}>
              <FormLabel>Heading</FormLabel>
              <span>
                  <ToolTip title="Add New Heanding">
                    <IconButton size="small" onClick={() => setisHead(!isHead)}>
                      <span
                        className="fa fa-plus-circle"
                        style={{ color: "#20c997" }}
                      />
                    </IconButton>
                  </ToolTip>
                </span>
                {isHead && (
                  <div style={{ display: "flex" }}>
                    <TextField
                      size="small"
                      label="Name"
                      value={head.name}
                      variant="outlined"
                      placeholder="Category Name"
                      onChange={(e) =>
                        setHead({
                          ...head,
                         name: e.target.value,
                        })
                      }
                    />
                    <Button
                      onClick={(e) => handle_Add_Exphead(e)}
                      variant="contained"
                      size="small"
                      style={{ background: "#2A3F54", color: "white" }}
                    >
                      Save
                    </Button>
                  </div>
                )}
              <select
                name="head"
                value={data.head}
                onChange={(e) =>
                  setData({
                    ...data,
                    head: e.target.value,
                  })
                }
                style={{
                  width: "100%",
                  outline: "none",
                  border: "none",
                  height: "30px",
                }}
              >
                <option></option>
                {
                  epHeads &&
                  epHeads.map((exh, index) =>(
                   <Fragment key={index}>
                      <option value={exh.id}>{exh.name}</option>
                   </Fragment>
                  ))
                }                
              </select>
            </Grid>
          </Grid>
          <h5>Details</h5>
          <Paper style={{ backgroundColor: "inherit" }}>
            <Container>
              <table
                className="table-small table-hover table-bordered"
                style={{ width: "100%" }}
              >
                <thead>
                  <th>#</th>
                  <th> </th>
                  <th>
                    Category
                    <span>
                      <ToolTip title="Add New">
                        <IconButton size="small" onClick={() => setAdd(!add)}>
                          <span
                            className="fa fa-plus-circle"
                            style={{ color: "#20c997" }}
                          />
                        </IconButton>
                      </ToolTip>
                    </span>
                    {add && (
                      <div style={{ display: "flex" }}>
                        <TextField
                          size="small"
                          label="Name"
                          value={body.name}
                          variant="outlined"
                          placeholder="Category Name"
                          onChange={(e) =>
                            setbody({
                              ...body,
                              name: e.target.value,
                            })
                          }
                        />
                        <Button
                          onClick={(e) => handle_Add_ExpCategory(e)}
                          variant="contained"
                          size="small"
                          style={{ background: "#2A3F54", color: "white" }}
                        >
                          Save
                        </Button>
                      </div>
                    )}
                  </th>
                  <th>Amount</th>
                  <th>Description</th>

                  <th></th>
                </thead>
                <tbody id="je__Table">
                  {expenseForm.map((jef, index) => (
                    <Fragment key={index}>
                      <tr>
                        <td>{index + 1} </td>
                        <td onClick={() => addExpenseFrom()}>
                          <ToolTip title="Add New Row">
                            <span
                              className="fa fa-plus-circle fa-1x"
                              style={{ color: "#20c997" }}
                            />
                          </ToolTip>
                        </td>
                        <td>
                          <select
                            name="account"
                            value={jef.account}
                            placeholder="Account"
                            style={{ border: "none" }}
                            onChange={(e) => handleChange(e, index)}
                          >
                            <option value=""></option>
                            {expenseCategories &&
                              expenseCategories.map((exps, index) => {
                                const { id, name } = exps;
                                return (
                                  <option
                                    value={id}
                                    key={index}
                                  >{`${name}`}</option>
                                );
                              })}
                          </select>
                        </td>
                        <td>
                          <input
                            min={100}
                            name="amount"
                            type="number"
                            placeholder="Amount"
                            value={jef.amount}
                            onChange={(e) => handleChange(e, index)}
                          />
                        </td>

                        <td>
                          <input
                            name="description"
                            placeholder="Description"
                            value={jef.description}
                            onChange={(e) => handleChange(e, index)}
                          />
                        </td>

                        <td onClick={() => handleRemoveexpenseform(index)}>
                          <ToolTip title="Delete Row">
                            <span
                              className="fa fa-trash"
                              style={{ color: "red" }}
                            ></span>
                          </ToolTip>
                        </td>
                      </tr>
                    </Fragment>
                  ))}
                </tbody>
              </table>

              <div
                style={{
                  display: "flex",
                  justifyContent: "flex-end",
                }}
              >
                {error && (
                  <Button
                    size="small"
                    variant="contained"
                    style={{ color: "white", background: "red" }}
                  >
                    {error}
                  </Button>
                )}
                <Button
                  className="m-3"
                  variant="contained"
                  disabled={isDisable(expenseForm)}
                  onClick={(e) => handleSubmit(e)}
                  style={{ background: "#2A3F54", color: "white" }}
                >
                  Post
                </Button>
              </div>
            </Container>
          </Paper>
        </div>
      </div>
    </div>
  );
};

export default ExpenseFeed;
