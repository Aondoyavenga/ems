import axios from "axios";
// MUI Stuff
import Grid from "@material-ui/core/Grid";
import Paper from "@material-ui/core/Paper";
import Avatar from "@material-ui/core/Avatar";
import Button from "@material-ui/core/Button";
import Select from "@material-ui/core/Select";
import Tooltip from "@material-ui/core/Tooltip";
import IconButton from "@material-ui/core/IconButton";
import TextField from "@material-ui/core/TextField";
import Checkbox from "@material-ui/core/Checkbox";
import FormLabel from "@material-ui/core/FormLabel";
import FormControlLabel from "@material-ui/core/FormControlLabel";
import FileCopy from "@material-ui/icons/FileCopy";
import React, { useEffect, useRef, useState } from "react";
import { useDispatch, useSelector } from "react-redux";

import {
  selectBuildCategories,
  selectLocations,
  selectPropServices,
  selectToken,
  selectUser,
  setLocations,
} from "../appState/appSlice";
import AppHeader from "./global/AppHeader";
import AppSnackbar from "./global/AppSnackbar";
import SelectApplicant from "./global/SelectApplicant";
import { Fragment } from "react";
import SaleMultipleFeed from "./SaleMultipleFeed";

const SaleFeed = ({ setOpen, isWidget, setIswidget, add_BuildCategories }) => {
  const dispatch = useDispatch();
  const user = useSelector(selectUser);
  const token = useSelector(selectToken);
  const propServices = useSelector(selectPropServices);
  const [success, setSuccess] = useState(false);
  const [message, setMessage] = useState();
  const [select, setSelect] = useState(false);
  const [applicant, setApplicant] = useState();
  const [step, setStep] = useState(1);
  const [error, setError] = useState();
  const [Exist, setExist] = useState();
  const [body, setBody] = useState({
    name: "",
  });
  const [add, setAdd] = useState(false);
  const [data, setData] = useState({
    uuid: "",
    tx_date: "",
    applicant_name: "",
    due_date: "",
    period: "",
    sale_date: "",
    applicant: "",
    VALUES: [],
    total: "",
  });

  //   const handleChange = (index) => {
  //     setData({ ...data, build_category: index });
  //   };

  //   const handleSetTerm = (e) => {
  //     const d = new Date();
  //     const sd = new Date();
  //     const value = e.target.value;
  //     const duedate = d.setDate(sd.getDate() + parseInt(value));
  //     return setData({
  //       ...data,
  //       period: value,
  //       due_date: new Date(duedate),
  //     });
  //   };

  //   const start = data.sale_date ? new Date(data.sale_date) : new Date();
  //   const end = new Date(data.due_date);
  //   const rows = [];
  //   const handleDate = () => {
  //     let loop = new Date(start);
  //     const division = data.period / 30;
  //     while (loop <= end) {
  //       const newDate = loop.setDate(
  //         data.period <= 28 ? loop.getDate() + data.period : loop.getDate() + 31
  //       );
  //       loop = new Date(newDate);
  //       rows.push({
  //         sale_uuid: data.uuid,
  //         applicant_name: applicant && applicant.customer_name,
  //         amount:
  //           data.period <= 28
  //             ? parseInt(data.amount) / 1
  //             : parseInt(data.amount) / Math.round(division),
  //         period: data.period,
  //         date: new Date(newDate),
  //         property_name: data.property_name,
  //       });
  //     }
  //   };
  //   const handleSetValues = (d) => {
  //     const fdata = d.map((x) => Object.values(x));
  //     const findal = [];
  //     for (let i = 0; i < fdata.length; i++) {
  //       const element = fdata[i];
  //       findal.push(element);
  //     }
  //     // console.log(findal)
  //     return setData({
  //       ...data,
  //       VALUES: findal,
  //     });
  //   };

  // handle post
  const isEmpty = (input) => {
    return data[input] === "" ? true : false;
  };

  const handlePost = async (e) => {
    e.preventDefault();
    const err = await Object.keys(data).map((key) => isEmpty(key));
    //console.log("hello", data);
    const isError = err.includes(true);
    if (isError === true) {
      return setError("All field are required");
    } else {
      setError("");
      // console.log(data.VALUES);
      setOpen(true);
      axios
        .post("/sale", data, {
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

  //   useEffect(() => {
  //     handleDate();
  //     setPlans(rows);
  //     handleSetValues(rows);
  //   }, [data.property, data.due_date]);

  const handleGet_Locations = () => {
    axios
      .get("/location", {
        headers: {
          Authorization: `Bearer ${token}`,
        },
      })
      .then((locations) => {
        dispatch(setLocations(locations.data));
      })
      .catch((error) => {
        if (error) {
          return error;
        }
      });
  };

  useEffect(() => {
    if (data.property) {
      const prop = parseInt(data.property);
      const filterProperty = propServices
        ? propServices.filter((ps) => parseInt(ps.id) == prop)
        : null;

      setData({
        ...data,
        property_name: filterProperty ? filterProperty[0].name : null,
        property: filterProperty ? filterProperty[0].id : null,
        amount: filterProperty ? filterProperty[0].sale_price : 0,
      });
    }
  }, [data.property]);

  useEffect(() => {
    setData({
      ...data,
      applicant: applicant && applicant.id,
      applicant_name: applicant && applicant.customer_name,
    });
  }, [applicant]);

  useEffect(() => {
    setData({
      ...data,
      uuid:
        new Date().getSeconds().toLocaleString() +
        new Date().getMinutes().toLocaleString() +
        new Date().getMilliseconds(),
    });
    return handleGet_Locations();
  }, ["", success]);

  return (
    <div className={`${isWidget ? "isapp__Feed" : "app__Feed"}`} id="step2">
      <SelectApplicant
        open={select}
        setOpen={setSelect}
        applicant={applicant}
        setApplicant={setApplicant}
      />
      <AppSnackbar open={success} setOpen={setSuccess} message={message} />
      <AppHeader title="Application Form" />
      <div className="row align-items-center justify-content-center d-flex m-1"
      >
        <div className="col-lg-12 col-md-12">
          {/* table */}
          <h3 style={{ marginLeft: 80 }}>
            Application Entry
            <span>
              <Tooltip title="Application List">
                <IconButton
                  color="secondary"
                  onClick={() => setIswidget(!isWidget)}
                >
                  <FileCopy style={{ color: "#1ABB9C" }} />
                </IconButton>
              </Tooltip>
            </span>
          </h3>
        </div>
      </div>
      <Grid container alignItems="center" justify="center">
        <Grid item lg={11} md={11} sm={12}>
          <Paper className="p-2" style={{ backgroundColor: "inherit" }}>
            <Grid item lg={12} md={12} sm={12}>
              <Grid container alignItems="center" justify="center">
                {step == 1 && (
                  <Grid
                    item
                    lg={9}
                    md={9}
                    sm={12}
                    style={{
                      display: "flex",
                      alignItems: "center",
                      justifyContent: "center",
                      flexDirection: "column",
                    }}
                  >
                    <Avatar
                      style={{
                        width: "100px",
                        height: "100px",
                        boxSizing: "border-box",
                        boxShadow: "0px 0px 1px 0px #000",
                      }}
                    />

                    {applicant && (
                      <Fragment>
                        <div
                          className="mt-2 p-1"
                          style={{
                            color: "white",
                            background: "#2A3F54",
                            display: "flex",
                            alignItems: "center",
                            height: "40px",
                            justifyContent: "center",
                            width: "50%",
                            margin: "auto",
                            boxSizing: "border-box",
                            boxShadow: "0px 0px 1px 0px #000",
                          }}
                        >
                          <h6>APPLICATION FORM</h6>
                        </div>
                        <div
                          className="mt-5 p-1"
                          style={{
                            color: "white",
                            background: "#2A3F54",
                            display: "flex",
                            alignItems: "center",
                            height: "40px",
                            justifyContent: "center",
                            width: "50%",
                            margin: "auto",
                            boxSizing: "border-box",
                            boxShadow: "0px 0px 5px 0px #000",
                          }}
                        >
                          <h6>A. PERSONAL DATA</h6>
                        </div>{" "}
                      </Fragment>
                    )}
                  </Grid>
                )}

                {step === 1 && (
                  <Grid
                    item
                    lg={3}
                    md={3}
                    sm={12}
                    style={{ display: "flex", justifyContent: "center" }}
                  >
                    <Avatar
                      variant="square"
                      alt={applicant && applicant.customer_name[0]}
                      src={applicant && applicant.avatar}
                      style={{
                        width: "150px",
                        height: "150px",
                        boxSizing: "border-box",
                        boxShadow: "0px 0px 1px 0px #000",
                      }}
                    />
                    <div
                      style={{
                        position: "absolute",
                        marginTop: "100px",
                        marginLeft: "10px",
                      }}
                    >
                      <Tooltip title="Select New Applicant">
                        <IconButton onClick={() => setSelect(!select)}>
                          <span
                            className="fa fa-plus-circle"
                            style={{ color: "#1ABB9C" }}
                          />
                        </IconButton>
                      </Tooltip>
                    </div>
                  </Grid>
                )}
              </Grid>

              {applicant && step == 1 && (
                <Grid container spacing={2} className="mt-3">
                  <Grid item lg={6} md={6} sm={12}>
                    <TextField
                      fullWidth
                      disabled
                      size="small"
                      value={applicant && applicant.customer_name}
                      variant="outlined"
                      label="Name of Applicant"
                    />
                  </Grid>
                  <Grid item lg={6} md={6} sm={12}>
                    <TextField
                      fullWidth
                      disabled
                      size="small"
                      variant="outlined"
                      value={applicant && applicant.business_employer_name}
                      label="Business Name & RC. No Corporate Body"
                    />
                  </Grid>
                  <Grid item lg={12} md={12} sm={12}>
                    <TextField
                      fullWidth
                      disabled
                      size="small"
                      variant="outlined"
                      value={applicant && applicant.address_1}
                      label="Residential Address:"
                    />
                  </Grid>
                  <Grid item lg={6} md={6} sm={12}>
                    <TextField
                      fullWidth
                      disabled
                      size="small"
                      variant="outlined"
                      value={applicant && applicant.phone_no}
                      label="Phone No."
                    />
                  </Grid>
                  <Grid item lg={6} md={6} sm={12}>
                    <TextField
                      fullWidth
                      disabled
                      size="small"
                      variant="outlined"
                      value={applicant && applicant.customer_email}
                      label="Email Address:"
                    />
                  </Grid>
                  <Grid item lg={6} md={6} sm={12}>
                    <TextField
                      fullWidth
                      disabled
                      size="small"
                      variant="outlined"
                      value={applicant && applicant.customer_sex}
                      label="Gender"
                    />
                  </Grid>
                  <Grid item lg={6} md={6} sm={12}>
                    <TextField
                      fullWidth
                      disabled
                      size="small"
                      variant="outlined"
                      value={applicant && applicant.customer_marital}
                      label="Marital Status"
                    />
                  </Grid>
                  <Grid item lg={6} md={6} sm={12}>
                    <TextField
                      fullWidth
                      disabled
                      size="small"
                      variant="outlined"
                      value={applicant && applicant.country}
                      label="Nationality:"
                    />
                  </Grid>
                  <Grid item lg={6} md={6} sm={12}>
                    <TextField
                      fullWidth
                      disabled
                      size="small"
                      variant="outlined"
                      value={applicant && applicant.customer_state}
                      label="State of Origin:"
                    />
                  </Grid>
                  <Grid item lg={12} md={12} sm={12}>
                    <TextField
                      fullWidth
                      disabled
                      size="small"
                      variant="outlined"
                      value={applicant && applicant.customer_address}
                      label="Permanent Home Address"
                    />
                  </Grid>
                  <Grid item lg={12} md={12} sm={12}>
                    <TextField
                      fullWidth
                      disabled
                      size="small"
                      variant="outlined"
                      value={applicant && applicant.postal_address}
                      label="Postal Address:"
                    />
                  </Grid>
                  <Grid item lg={6} md={6} sm={12}>
                    <TextField
                      fullWidth
                      disabled
                      size="small"
                      variant="outlined"
                      value={applicant && applicant.occupation}
                      label="Occupation:"
                    />
                  </Grid>
                  <Grid item lg={6} md={6} sm={12}>
                    <TextField
                      fullWidth
                      disabled
                      size="small"
                      variant="outlined"
                      value={applicant && applicant.place_work}
                      label="Place of Work:"
                    />
                  </Grid>

                  <Grid item lg={6} md={6} sm={12}>
                    <TextField
                      fullWidth
                      disabled
                      size="small"
                      variant="outlined"
                      value={applicant && applicant.next_kin_name}
                      label="Name of Next Kin:"
                    />
                  </Grid>
                  <Grid item lg={6} md={6} sm={12}>
                    <TextField
                      fullWidth
                      disabled
                      size="small"
                      variant="outlined"
                      value={applicant && applicant.next_kin_relate}
                      label="Relationship With Next of Kin:"
                    />
                  </Grid>
                  <Grid item lg={12} md={12} sm={12}>
                    <TextField
                      fullWidth
                      disabled
                      size="small"
                      variant="outlined"
                      value={applicant && applicant.next_kin_addrss}
                      label="Next of Kin Address"
                    />
                  </Grid>
                </Grid>
              )}
              {step == 2 && (
                <SaleMultipleFeed
                  data={data}
                  add={add}
                  body={body}
                  error={error}
                  setBody={setBody}
                  setData={setData}
                  success={success}
                  Exist={Exist}
                  setAdd={setAdd}
                  handlePost={handlePost}
                  add_BuildCategories={add_BuildCategories}
                />
              )}

              {step == 2 && (
                <Grid
                  item
                  lg={9}
                  md={9}
                  sm={12}
                  style={{
                    display: "flex",
                    alignItems: "center",
                    justifyContent: "center",
                    flexDirection: "column",
                  }}
                >
                  <div
                    className=" p-1"
                    style={{
                      color: "white",
                      background: "#2A3F54",
                      display: "flex",
                      alignItems: "center",
                      height: "40px",
                      justifyContent: "center",
                      width: "50%",
                      margin: "auto",
                      boxSizing: "border-box",
                      boxShadow: "0px 0px 5px 0px #000",
                    }}
                  >
                    <h6>D. MODE OF PAYMENT</h6>
                  </div>
                </Grid>
              )}
              {step == 2 && (
                <Grid item lg={12} md={12} sm={12}>
                  <ul className="mt-3">
                    <li>
                      Note That Pament should be made after the developer's
                      approval before allocation. Each applicant is expected to
                      pay for the follwing charges:
                    </li>
                    <li>
                      All Payments should be made to Santos Estate Ltd. and
                      evidence of payment forwarded to our corporate office for
                      issuance of receipt.
                    </li>
                    <li>
                      i have agreed that all refunds shall be limited to the
                      deposit i made, less 10% administrative charges.
                    </li>
                    <li>
                      "Disclaimer" SANTOS ESTATE LIMITED shall not be liable for
                      any plot re-allocated if terms and conditions are not
                      obligated timeously.
                    </li>
                  </ul>
                </Grid>
              )}
              {step == 2 && (
                <Grid
                  item
                  lg={9}
                  md={9}
                  sm={12}
                  style={{
                    display: "flex",
                    alignItems: "center",
                    justifyContent: "center",
                    flexDirection: "column",
                  }}
                >
                  <div
                    className=" p-1"
                    style={{
                      color: "white",
                      background: "#2A3F54",
                      display: "flex",
                      alignItems: "center",
                      height: "40px",
                      justifyContent: "center",
                      width: "50%",
                      margin: "auto",
                      boxSizing: "border-box",
                      boxShadow: "0px 0px 5px 0px #000",
                    }}
                  >
                    <h6>E. DECLARATION</h6>
                  </div>
                </Grid>
              )}
              {step == 2 && (
                <Grid item lg={12} md={12} sm={12} className="mt-3">
                  <ul style={{ listStyle: "none" }}>
                    <li>
                      I/We{" "}
                      <input
                        readOnly
                        value={applicant.customer_name}
                        style={{
                          border: "none",
                          borderBottom: "1px solid black",
                          outline: "none",
                        }}
                      />
                      whose name and address appeared above have declared that
                      the above statements are true and correct to the best of
                      any knowledge, and i promise to abide by all rules and
                      regulations given by the Developer
                    </li>
                  </ul>
                  <div
                    className="m-4"
                    style={{
                      display: "flex",
                      flexDirection: "row",
                      justifyContent: "space-between",
                    }}
                  >
                    <div
                      style={{
                        display: "flex",
                        flexDirection: "column",
                        alignItems: "center",
                      }}
                    >
                      <input
                        readOnly
                        style={{
                          border: "none",
                          borderBottom: "1px solid black",
                          outline: "none",
                        }}
                        value={user.username}
                      />
                      <FormLabel>
                        Initiate By
                        <IconButton size="small">
                          <span
                            className="fa fa-pen"
                            style={{ color: "#1ABB9C" }}
                          />
                        </IconButton>
                      </FormLabel>
                    </div>
                    <div
                      style={{
                        display: "flex",
                        flexDirection: "column",
                        alignItems: "center",
                      }}
                    >
                      <input
                        type="date"
                        style={{
                          border: "none",
                          borderBottom: "1px solid black",
                          outline: "none",
                        }}
                        value={data.sale_date}
                        readOnly
                      />
                      <FormLabel>Date</FormLabel>
                    </div>
                  </div>
                </Grid>
              )}
              <Grid
                item
                lg={12}
                md={12}
                sm={12}
                style={{ display: "flex", justifyContent: "center" }}
              >
                {applicant && step == 1 && (
                  <Button
                    variant="contained"
                    className="m-3"
                    onClick={() => setStep(2)}
                    style={{
                      color: "white",
                      background: "#2A3F54",
                    }}
                  >
                    Next
                  </Button>
                )}
                {step == 2 && (
                  <Button
                    variant="contained"
                    className="m-3"
                    onClick={() => setStep(1)}
                    color="default"
                  >
                    Previous
                  </Button>
                )}
                {/* {step == 2 && (
                  <Button
                    variant="contained"
                    className="m-3"
                    onClick={(e) => handlePost(e)}
                    style={{ color: "white", background: "#2A3F54" }}
                    disabled={
                      !data.due_date ||
                      !data.build_category ||
                      !data.property ||
                      !data.amount ||
                      !data.sale_date
                    }
                  >
                    Submit
                  </Button>
                )} */}
              </Grid>
            </Grid>
          </Paper>
          <div className="p-2" />
        </Grid>
      </Grid>
    </div>
  );
};

export default SaleFeed;
