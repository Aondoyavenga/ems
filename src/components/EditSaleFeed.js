import axios from "axios";
// MUI Stuff
import Grid from "@material-ui/core/Grid";
import Paper from "@material-ui/core/Paper";
import ToolTip from "@material-ui/core/ToolTip";
import Button from "@material-ui/core/Button";
import TextField from "@material-ui/core/TextField";
import Container from "@material-ui/core/Container";
import FormLabel from "@material-ui/core/FormLabel";
import Typography from "@material-ui/core/Typography";

import React, { useEffect, useState } from "react";
import { useSelector } from "react-redux";
import {
  selectLocations,
  selectPropServices,
  selectBuildCategories,
} from "../appState/appSlice";
import { Fragment } from "react";
import AppHeader from "./global/AppHeader";
import Close from "@material-ui/icons/Close";
import { useHistory } from "react-router-dom/cjs/react-router-dom.min";
import AppSnackbar from "./global/AppSnackbar";

const EditSaleFeed = ({
  open,
  sale,
  data,
  body,
  token,
  setBody,
  error,
  setOpen,
  setData,
  success,
  setError,
  setSuccess,
  add_BuildCategories
}) => {
  const history = useHistory()
  const locations = useSelector(selectLocations);
  const buildCategories = useSelector(selectBuildCategories);
  const [add, setAdd] = useState(false)
  const [message, setMessage] = useState();
  const [Exist, setExist] = useState();
  const properties = useSelector(selectPropServices);
  const saleFormTemplate = {
    id: null,
    qty: "",
    amount: "",
    plot_number: '',
    sale_ID: "",
    property: "",
    location: "",
    createdAt: "",
    build_category: "",
  };
  const [saleForm, setSaleForm] = useState([saleFormTemplate]);

  // func
  const isEmpty = (input) => {
    return data[input] === "" ? true : false;
  };

  const addSaleFrom = () => {
    setSaleForm([...saleForm, saleFormTemplate]);
  };
  const handleChange = (e, index) => {
    const name = e.target.name;
    const value = e.target.value;
    const updatedsaleform = saleForm.map((salef, i) =>
      index == i ? Object.assign(salef, { [name]: value }) : salef
    );
    setSaleForm(updatedsaleform);

    if (name == "qty" || name == "property") {
      const updatedsaleform = saleForm.map((salef, i) =>
        index == i
          ? Object.assign(salef, {
              sale_ID: data.uuid,
              createdAt: data.sale_date,
              amount: renderAmount(
                saleForm[index].property,
                index,
                saleForm[index].qty
              ),
            })
          : salef
      );
      return setData({
        ...data,

        tx_date: data.sale_date,
        total: calcuAmt(saleForm),
      });
    }
  };

  const renderAmount = (pro, formIndex, qty) => {
    const proExist = properties && properties.find((prop) => prop.id == pro);

    const total = proExist && parseInt(proExist.sale_price) * parseInt(qty);
    return total;
  };
  const handleRemovesaleform = (index) => {
    const filtersaleform = [...saleForm];
    filtersaleform.splice(index, 1);

    setSaleForm(filtersaleform);
  };

  const calcuAmt = (data) => {
    const total = data?.reduce((a, v) => +v.amount + a, 0);
    return total;
  };

  useEffect(() => {
    const fdata = saleForm.map((x) => Object.values(x));
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
  }, [saleForm]);

  useEffect(() => {
    setData({
      ...data,
      total: calcuAmt(saleForm),
    });
  }, [data.VALUES]);

  const handleEdit = async (e) => {
    e.preventDefault();
    const err = await Object.keys(data).map((key) => isEmpty(key));
    console.log("hello", data);
    const isError = err.includes(true);
    if (isError === true) {
      return setError("All field are required");
    } else {
      setError("");
      console.log(data.VALUES);
      setOpen(true);
      axios
        .post("/sale/edit", data, {
          headers: {
            Authorization: `Bearer ${token}`,
          },
        })
        .then((result) => {
          setOpen(false);
          setMessage(result.data.message);
          setSuccess(true);
          setData({
            uuid: "",
            applicant_name: "",
            build_category: "",
            property: "",
            due_date: "",
            period: "",
            amount: "",
            sale_date: "",
            applicant: "",
            property_name: "",
            VALUES: [],
            total: "",
          });
        })
        .catch((error) => {
          setOpen(false);
          if (error && error.response.status == 401) {
            return setExist(error.response.data.message);
          }
          setError(error.response.data.message);
        });
    }
  };

  const handleSetTerm = (e) => {
    const d = new Date();
    const sd = new Date();
    const value = e.target.value;
    const duedate = d.setDate(sd.getDate() + parseInt(value));
    return setData({
      ...data,
      period: value,
      due_date: new Date(duedate),
    });
  };

  useEffect(() => {
    return setSaleForm([saleFormTemplate]);
  }, [success]);
  useEffect(() =>{
      const form = []
        if(sale && sale.items) {
            for (let i = 0; i < sale.items.length; i++ ) {
                form.push(
                  {
                    id: sale && sale.items[i].id,
                    qty: sale && sale.items[i].qty,
                    amount: sale && sale.items[i].amount,
                    plot_number: sale && sale.items[i].plot_number,
                    sale_ID: sale && sale.items[i].sale_ID,
                    property: sale && sale.items[i].property_id,
                    location: sale && sale.items[i].location_id,
                    createdAt: sale && sale.items[i].createdAt,
                    build_category: sale && sale.items[i].building_id, 
                  }
                )
            }
        }
        if(form.length >0) {
          return setSaleForm(form)
        }
        setSaleForm([saleFormTemplate]);
  }, [sale])
  return (
    <div className="app__Feed">
        <AppHeader
            title="Edit / Add Sale"
           
        />
        <AppSnackbar setOpen={setSuccess} open={success} message={message} />
      <div className="row align-items-center justify-content-center d-flex m-1">
        <div className="col-lg-12 col-md-12">
           <Typography variant='h4' className='m-3'>
                <strong style={{
                    color: '#20c997'
                }}><small>{sale?.applicant_name}</small> </strong>
                <small
                    style={{color: 'gray'}}
                >
                    <Typography>Purchase Information</Typography>
                </small>
           </Typography>
          {/* to do make it a component */}
          <Grid container spacing={2} className="p-3">
            <Grid item lg={4} md={4}>
              <FormLabel>Date</FormLabel>
              <input
                name="sale_date"
                // type="date"
                disabled
                value={new Date(data.sale_date).toLocaleDateString()}
                onChange={(e) =>
                  setData({
                    ...data,
                    sale_date: e.target.value,
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
              <FormLabel>Term</FormLabel>
              <select
                name="period"
                style={{ border: "none" }}
                value={data.period}
                onChange={(e) => handleSetTerm(e)}
              >
                <option value=""></option>
                <option value={7}>7 Days</option>
                <option value={14}>14 Days</option>
                <option value={21}>21 Days</option>
                <option value={28}>28 Days</option>
                <option value={30}>30 Days</option>
                <option value={60}>60 Days</option>
                <option value={90}>90 Days</option>
                <option value={120}>120 Days</option>
                <option value={150}>150 Days</option>
                <option value={180}>180 Days</option>
                <option value={210}>210 Days</option>
                <option value={240}>240 Days</option>
                <option value={270}>270 Days</option>
                <option value={300}>300 Days</option>
                <option value={330}>330 Days</option>
                <option value={360}>360 Days</option>
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
              <Typography variant="h5" style={{ color: "#20c997" }}>
                <s>N</s>: {saleForm && calcuAmt(saleForm).toLocaleString()}
              </Typography>
            </Grid>

            <Grid item lg={4} md={4}>
              <TextField
                disabled
                size="small"
                variant="outlined"
                label="Due Date"
                value={new Date(data.due_date).toLocaleDateString()}
                placeholder="Due Date"
              />
            </Grid>
          </Grid>
          <Typography className='m-3' variant='h5'>
            Item Details
          </Typography>
          <Paper elevation={0} style={{ backgroundColor: "inherit" }}>
            <Container>
              <table
                className="table-small table-hover"
                style={{ width: "100%" }}
              >
                <thead>
                  <th>#</th>
                  <th> </th>
                  <th>Location</th>
                  <th>Property</th>
                  <th>Quantity</th>
                  <th>Amount</th>
                  <th>Plot No</th>
                  <th>
                    Building Category
                    {/* <span className="ml-3">
                      <IconButton size="small" onClick={() => setAdd(!add)}>
                        <span
                          className="fa fa-plus-circle"
                          style={{ color: "#20c997" }}
                        />
                      </IconButton>
                    </span> */}
                    {add && (
                      <div
                        className="m-3"
                        style={{
                          display: "flex",
                          flex: 1,
                          justifyContent: "center",
                        }}
                      >
                        <TextField
                          fullWidth
                          size="small"
                          value={body.name}
                          variant="outlined"
                          label="Build Category"
                          placeholder="New..."
                          onChange={(e) =>
                            setBody({
                              ...body,
                              name: e.target.value,
                            })
                          }
                        />
                        <div
                          onClick={() => setAdd(!add)}
                          className="d-flex align-items-center"
                        >
                          <Button
                            onClick={() => add_BuildCategories(body)}
                            size="medium"
                            variant="contained"
                            style={{ background: "#2A3F54", color: "white" }}
                          >
                            Save
                          </Button>
                        </div>
                      </div>
                    )}
                  </th>

                  <th></th>
                </thead>
                <tbody id="je__Table">
                  {saleForm.map((salef, index) => (
                    <Fragment key={index}>
                      <tr>
                        <td>{index + 1} </td>
                        <td onClick={() => addSaleFrom()}>
                          <ToolTip title="Add New Row">
                            <span
                              className="fa fa-plus-circle fa-1x"
                              style={{ color: "#20c997" }}
                            />
                          </ToolTip>
                        </td>
                        <td>
                          <select
                            name="location"
                            value={salef.location}
                            style={{ border: "none" }}
                            onChange={(e) => handleChange(e, index)}
                          >
                            <option value=""></option>
                            {locations &&
                              locations.map((locat, index) => {
                                const { id, name } = locat;
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
                        </td>
                        <td>
                          <select
                            name="property"
                            value={salef.property}
                            placeholder="Property"
                            style={{ border: "none" }}
                            onChange={(e) => handleChange(e, index)}
                          >
                            <option value=""></option>
                            {properties &&
                              properties.map((ps) => {
                                const { id, name, location } = ps;
                                if (location == salef.location)
                                  return (
                                    <Fragment key={id}>
                                      <option key={id} value={id}>
                                        {" "}
                                        {name}{" "}
                                      </option>
                                    </Fragment>
                                  );
                              })}
                          </select>
                        </td>
                        <td>
                          <input
                            name="qty"
                            type="number"
                            placeholder="Quantity"
                            value={salef.qty}
                            onChange={(e) => handleChange(e, index)}
                          />
                        </td>
                        <td>
                          <input
                            name="amount"
                            type="number"
                            placeholder="Amount"
                            value={salef.amount}
                            onChange={(e) => handleChange(e, index)}
                          />
                        </td>
                        <td>
                          <input
                            name="plot_number"
                            placeholder="Plot Number"
                            value={salef.plot_number}
                            onChange={(e) => handleChange(e, index)}
                          />
                        </td>

                        <td>
                          <select
                            name="build_category"
                            value={salef.build_category}
                            style={{ border: "none" }}
                            onChange={(e) => handleChange(e, index)}
                          >
                            <option value=""></option>
                            {buildCategories &&
                              buildCategories.map((building, index) => {
                                const { id, name } = building;
                                return (
                                  <option
                                    value={id}
                                    key={index}
                                  >{`${name}`}</option>
                                );
                              })}
                          </select>
                        </td>

                        <td onClick={() => handleRemovesaleform(index)}>
                          <ToolTip title="Delete Row">
                            <span
                              className="fa fa-trash"
                              style={{ color: "red" }}
                            />
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
                {Exist && (
                  <Typography variant="body2" color="error">
                    {" "}
                    {Exist}{" "}
                  </Typography>
                )}
                {error && (
                  <div
                    style={{ 
                      height: 40,
                      display: 'flex',
                      color: "white", 
                      background: "red",
                      flexDirection: 'row',
                      alignItems: 'center',
                      alignSelf: 'center',
                      borderRadius: 5,
                      padding: '0 5px 0 5px',
                      justifyContent: 'center',
                      boxSizing: 'border-box',
                      boxShadow: '0 2px 3px 0 gray'
                  }}
                  >
                    {error}
                  </div>
                )}
                <Button
                  className="m-3"
                  variant="outlined"
                  //   disabled={isDisable(saleForm)}
                  onClick={(e) => history.goBack()}
                  endIcon={
                      <Close color='action' />
                  }
                >
                  Close
                </Button>
                <Button
                  className="m-3"
                  variant="contained"
                  //   disabled={isDisable(saleForm)}
                  onClick={(e) => handleEdit(e)}
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

export default EditSaleFeed;
