import axios from "axios";
// MUI Stuff
import Grid from "@material-ui/core/Grid";
import Paper from "@material-ui/core/Paper";
import Button from "@material-ui/core/Button";
import Tooltip from "@material-ui/core/Tooltip";
import Container from "@material-ui/core/Container";
import IconButton from "@material-ui/core/IconButton";
import TextField from "@material-ui/core/TextField";
import Typography from "@material-ui/core/Typography";

// Icons
import FileCopy from "@material-ui/icons/FileCopy";

import React, { Fragment, useEffect, useState } from "react";
import { useSelector } from "react-redux";
import { selectAccounts, selectPendingSales, selectToken, selectUser } from "../appState/appSlice";
import AppHeader from "./global/AppHeader";
import AppSnackbar from "./global/AppSnackbar";
import { Select } from "@material-ui/core";

const RefunFeed = ({ setOpen, isWidget, setIswidget }) => {
  const token = useSelector(selectToken);
  const user = useSelector(selectUser);
  const [refun, setRefun] = useState([])
  const [salesItem, setSalesItem] = useState([])
  const sales = useSelector(selectPendingSales)
  const accounts = useSelector(selectAccounts);
  const [success, setSuccess] = useState(false);
  const [Error, setError] = useState();
  const [message, setMessage] = useState();
  const jeFormTemplate = {
    account_FK: "",
    tx_type: "",
    paid: 1,
    pay_method: "",
    amount: "",
    description: "",
  };
  const [jeForm, setJeform] = useState([]);
  const [data, setData] = useState({
    je_ID: "",
    name: "",
    total: "",
    je_date: "",
    VALUES: [],
  });
  // func
  const addJeFrom = () => {
    setJeform([...jeForm, jeFormTemplate]);
  };

  const handleRemoveJeform = (index) => {
    const filterJeform = [...jeForm];
    filterJeform.splice(index, 1);

    setJeform(filterJeform);
  };

  const calcuAmt = (data) => {
    const total = data && data.reduce((a, v) => +v.amount + a, 0);
    return total;
  };
  const calcuTotalDR = (data) => {
    const tDR = data && data.filter((dta) => dta.tx_type == "DR");
    const total = tDR && tDR.reduce((a, v) => +v.amount + a, 0);
    return total.toLocaleString();
  };
  const calcuTotalCR = (data) => {
    const tCR = data && data.filter((dta) => dta.tx_type == "CR");
    const total = tCR && tCR.reduce((a, v) => +v.amount + a, 0);
    return total.toLocaleString();
  };

  const handleChange = (e, index) => {
    const name = e.target.name;
    const value = e.target.value;
    const updatedJeform = jeForm.map((jef, i) =>
      index == i ? Object.assign(jef, { [name]: value }) : jef
    );
    setJeform(updatedJeform);

    if (name == "amount") {
      const updatedJeform = jeForm.map((jef, i) =>
        index == i
          ? Object.assign(jef, {
              rcpt_no: data.je_ID.split("-")[1],
              tx_date: data.je_date,
              postedBy_FK: user.username,
              createdAt: new Date(),
              uuid: data.je_ID,
            })
          : jef
      );
    }

    if (
      name == "pay_method" &&
      calcuTotalDR(jeForm) != calcuTotalCR(jeForm) &&
      calcuTotalCR(jeForm) != calcuTotalDR(jeForm)
    ) {
      return setJeform([...jeForm, jeFormTemplate]);
    }
  };

  useEffect(() => {
    const fdata = jeForm.map((x) => Object.values(x));
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
  }, [jeForm]);

  useEffect(() => {
    setData({
      ...data,
      total: calcuAmt(jeForm),
    });
  }, [data.VALUES]);

  // handle post

  const isDisable = (Form) => {
    const error =
      Form &&
      Form.map((jform) =>
        !jform["account_FK"].length > 0 ||
        !jform["tx_type"].length > 0 ||
        !jform["amount"].length > 0 ||
        !jform["description"].length > 0 ||
        !jform["pay_method"].length > 0
          ? true
          : false
      );
    const filterError = error && error.includes(true) ? true : false;
    
    return filterError;
  };

  const isEmpty = (input) => {
    return data[input] === "" ? true : false;
  };

  const handleSubmit = async (e) => {
    const err = await Object.keys(data).map((key) => isEmpty(key));
    const isError = err.includes(true);
    if (isError === true) {
      return setError("All field are required");
    } else {
      if (
        calcuTotalDR(jeForm) > calcuTotalCR(jeForm) ||
        calcuTotalCR(jeForm) > calcuTotalDR(jeForm)
      ) {
        return setError(
          "Debit amount and Credit must be equal, highest tolerance is 0.1"
        );
      }
      // console.log(data)
      setError("");
      setOpen(true);
      axios
        .post("/journal", data, {
          headers: {
            Authorization: `Bearer ${token}`,
          },
        })
        .then( async(result) => {
          const { status } = await axios.patch(`/sale/update_sale_item/${refun}`, {
            headers: {
              Authorization: `Bearer ${token}`,
            },
          })
          setOpen(false);
          setMessage(result.data.message);
          setSuccess(true);
          setSalesItem([])
          setRefun('')
          setData({
            je_ID: "",
            name: "",
            total: "",
            je_date: "",
            VALUES: [],
          });
        })
        .catch((error) => {
          setOpen(false);
          if (error) {
            return error.response;
          }
        });
    }
  };

  const handleGetSalesItem = async(saleId) => {
    try {
      setSalesItem([])
      const { data, status } = await axios.get(`/sale/items/${saleId}`, {
        headers: {
          Authorization: `Bearer ${token}`
        }
      })
      if(status == 200) return setSalesItem(data)
      return data
    } catch (error) {
      return error
    }
  }

  useEffect(() => {
    setData({
      ...data,
      je_ID:
        "je-" +
        new Date().getSeconds().toLocaleString() +
        new Date().getMinutes().toLocaleString() +
        new Date().getMilliseconds(),
    });
    setJeform([]);
  }, [success]);
  
  useEffect(() => {
      setSalesItem([])
      const item = sales?.length > 0 && sales?.find(item =>item.applicant_name == data.name)
      return handleGetSalesItem(item?.uuid)
  },[data.name])

  useEffect(() => {
   
   
   if(!refun > 0) return 
   const paids = salesItem?.find(p =>p.id == refun)
   const totalRefun = paids?.paid.length > 0 && paids?.paid?.reduce((a, b) =>a+b.amount, 0)
   const newForm = [
     {
       account_FK: "",
       tx_type: "",
       paid: 1,
       pay_method: "",
       amount: totalRefun,
       description: `Refun info ${data.name}`,
     },
     {
       account_FK: "",
       tx_type: "",
       paid: 1,
       pay_method: "",
       amount: totalRefun,
       description: `Refun info ${data.name}`,
     }
   ]
   if(refun > 0) return  setJeform([...newForm])
  }, [refun])

  return (
    <div className={`${isWidget ? "isapp__Feed" : "app__Feed"}`}>
      <AppHeader title="Refund" />
      <AppSnackbar setOpen={setSuccess} open={success} message={message} />
      <div className="row align-items-center justify-content-center d-flex m-1">
        <div className="col-lg-12 col-md-12">
          {/* table */}
          <h3>
            Refund Entry
            <span>
              <Tooltip title="Journal List">
                <IconButton
                  color="secondary"
                  onClick={() => setIswidget(!isWidget)}
                >
                  <FileCopy style={{ color: "#1ABB9C" }} />
                </IconButton>
              </Tooltip>
            </span>
          </h3>
          <Grid container spacing={2} alignItems="center" className="mt-3">
            <Grid item lg={6} md={6}>
                <select
                    required
                    name="name"
                    value={data.name}
                    variant="outlined"
                    style={{
                        height: 40,
                        borderRadius: 5,
                        marginBottom: 10,
                        background: 'transparent'
                    }}
                    onChange={(e) =>
                    setData({
                        ...data,
                        name: e.target.value,
                    })
                    }
                    >
                      {
                        sales?.length > 0 &&
                        sales?.map((item, index) =>{
                            const {applicant_name} = item
                            return (
                                <Fragment
                                    key={index*2328}
                                >
                                    <option value={applicant_name}> {applicant_name} </option>
                                </Fragment>
                            )
                        })
                      }
                </select>
                {
                    salesItem?.length > 0 &&
                    <select
                        required
                        name="name"
                        // value={data.name}
                        variant="outlined"
                        style={{
                            height: 40,
                            borderRadius: 5,
                            background: 'transparent'
                        }}
                        onChange={(e) =>
                          setRefun(e.target.value)
                        }
                        >
                          <option value="">Select Property</option>
                        {
                          salesItem?.length > 0 &&
                          salesItem?.map((item, index) =>{
                              const {
                                  id, 
                                  // amount,
                                  // sale_ID,
                                  // createdAt,
                                  property_name,
                                  // location_name,
                                  // building_name
                                } = item
                              return (
                                  <Fragment
                                      key={index*2328}
                                  >
                                    <option value={id}> {property_name} </option>
                                  </Fragment>
                              )
                          })
                      }
                  </select>
                }
            </Grid>
            <Grid item lg={6} md={6} justify="flex-end" className="d-flex">
              <div
                className="d-flex align-items-center"
                style={{ flexDirection: "column", justifyContent: "center" }}
              >
                <Typography variant="p" className="success">Total Refund Amount</Typography>
                <Typography variant="h5">
                  <b>
                    <s>N</s>:{calcuAmt(jeForm).toLocaleString()}
                  </b>
                </Typography>
              </div>
            </Grid>
            <Grid item lg={3} md={3}>
              <TextField
                required
                name="je_date"
                size="small"
                type="date"
                fullWidth
                value={data.je_date}
                label="Transaction Date"
                variant="outlined"
                placeholder="Journal Name"
                onChange={(e) =>
                  setData({
                    ...data,
                    je_date: e.target.value,
                  })
                }
              />
            </Grid>
            <Grid item lg={3} md={3}>
              <TextField
                required
                disabled
                fullWidth
                name="je_ID"
                size="small"
                value={data.je_ID}
                label="Journal Id"
                variant="outlined"
                placeholder="Journal Id"
              />
            </Grid>
          </Grid>
          <Typography variant="h5" className="mt-3 mb-3">
            Transaction Details
          </Typography>
          {Error && <Typography color="error">{Error}</Typography>}
          <Paper style={{ backgroundColor: "inherit" }}>
            <Container className="p-3">
              <table
                className="table-small table-hover table-bordered"
                style={{ width: "100%" }}
              >
                <thead>
                  <th>#</th>
                  <th> </th>
                  <th>Account</th>
                  <th>Tx. Type</th>
                  <th>
                    Amount (<s>N</s>)
                  </th>
                  <th>Description</th>
                  <th>Pay Method</th>
                  <th></th>
                </thead>
                <tbody id="je__Table">
                  {jeForm &&
                    jeForm.map((jef, index) => (
                      <tr>
                        <td>{index + 1} </td>
                        <td onClick={() => addJeFrom()}>
                          <Tooltip title="Add New Row">
                            <span
                              className="fa fa-plus-circle fa-1x"
                              style={{ color: "#20c997" }}
                            />
                          </Tooltip>
                        </td>
                        <td>
                          <select
                            name="account_FK"
                            value={jef.account_FK}
                            placeholder="Account"
                            style={{ border: "none" }}
                            onChange={(e) => handleChange(e, index)}
                          >
                            <option value=""></option>
                            {accounts &&
                              accounts.map((acc, index) => {
                                const { code, name, balance_type } = acc;
                                return (
                                  <option
                                    value={code}
                                    key={index}
                                  >{`${name} (${balance_type})`}</option>
                                );
                              })}
                          </select>
                        </td>
                        <td>
                          <select
                            name="tx_type"
                            value={jef.tx_type}
                            style={{ border: "none" }}
                            onChange={(e) => handleChange(e, index)}
                          >
                            <option value=""></option>
                            <option value="DR">Debit</option>
                            <option value="CR">Credit</option>
                          </select>
                        </td>
                        <td>
                          <input
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
                        <td>
                          <select
                            name="pay_method"
                            value={jef.pay_method}
                            style={{ border: "none" }}
                            onChange={(e) => handleChange(e, index)}
                          >
                            <option value=""></option>
                            <option value="cash">Cash</option>
                            <option value="cheque">Cheque</option>
                          </select>
                        </td>

                        <td onClick={() => handleRemoveJeform(index)}>
                          <Tooltip title="Delet Row">
                            <span
                              className="fa fa-trash"
                              style={{ color: "red" }}
                            />
                          </Tooltip>
                        </td>
                      </tr>
                    ))}
                  <tr>
                    <td colSpan={5}>
                      <section
                        style={{
                          display: "flex",
                          alignItems: "center",
                          justifyContent: "flex-end",
                        }}
                      >
                        <table
                          className="bordered"
                          style={{ width: "70%", marginLeft: "auto" }}
                        >
                          <thead>
                            <th>
                              Total DR (<s>N</s>)
                            </th>
                            <th>
                              Total CR (<s>N</s>)
                            </th>
                          </thead>
                          <tbody>
                            <tr>
                              <td>
                                <Typography variant="h6" color="error">
                                  <b>{calcuTotalDR(jeForm)}</b>
                                </Typography>
                              </td>
                              <td>
                                <Typography variant="h6">
                                  <b>{calcuTotalCR(jeForm)}</b>
                                </Typography>
                              </td>
                            </tr>
                          </tbody>
                        </table>
                      </section>
                    </td>
                    <td colSpan={4}>
                      <Button
                        size="medium"
                        className="m-3"
                        variant="contained"
                        onClick={(e) => handleSubmit(e)}
                        style={{
                          background: "#2A3F54",
                          color: "white",
                          width: "80%",
                          margin: "auto",
                        }}
                        disabled={isDisable(jeForm)}
                      >
                        post
                      </Button>
                    </td>
                  </tr>
                </tbody>
              </table>
            </Container>
          </Paper>
        </div>
      </div>
    </div>
  );
};

export default RefunFeed;
