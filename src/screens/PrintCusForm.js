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
import { Fragment } from "react";
import SelectApplicant from "../components/global/SelectApplicant";
import AppHeader from "../components/global/AppHeader";
import { Typography } from "@material-ui/core";

const PrintCusForm = ({  isWidget, setIswidget, add_BuildCategories }) => {
  const user = useSelector(selectUser);
  const token = useSelector(selectToken);
  const propServices = useSelector(selectPropServices);
  const [success, setSuccess] = useState(false);
  const [select, setSelect] = useState(false);
  const [applicant, setApplicant] = useState();
  const [open, setOpen] = useState(false)
  const [step, setStep] = useState(1);
  
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

const handlePrint = () =>{
    window.print()
}
 
  return (
    <div className={`${isWidget ? "isapp__Feed" : "app__Feed"}`} id="step2">
      <SelectApplicant
        open={select}
        setOpen={setSelect}
        applicant={applicant}
        setApplicant={setApplicant}
      />
      <AppHeader title="Application Form" />
      
      <Grid container alignItems="center" justify="center" className="mt-3">
        <Grid item lg={10} md={10} sm={12}>
          <Paper className="p-2" style={{ backgroundColor: "inherit" }}>
            <Grid item lg={12} md={12} sm={12}>
              <Grid container alignItems="center" justify="center">
                <Grid
                item
                lg={9}
                md={9}
                sm={9}
                style={{
                    display: "flex",
                    alignItems: "center",
                    justifyContent: "center",
                    flexDirection: "column",
                }}
                >
                {/* <Avatar
                    style={{
                    width: "100px",
                    height: "100px",
                    boxSizing: "border-box",
                    boxShadow: "0px 0px 1px 0px #000",
                    }}
                /> */}
                 <div style={{ 
                    display: 'flex',
                    alignItems: 'center',
                    flexDirection: 'column',
                    justifyContent: 'center'
                }}>
                    <Typography variant='h3'>
                        SANTOS ESTATE LTD.
                    </Typography>
                    <Typography variant='p'>
                        Suite B22 AJB Mall, Gudu District, Abuja
                    </Typography>
                    <Typography variant='caption'>
                        Tel: 08036488807, 08023058629
                    </Typography>
                   
                </div>

                {applicant?.customer_name && (
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

                <Grid
                    item
                    lg={3}
                    md={3}
                    sm={3}
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
                    <IconButton 
                        className='hide-on-print'
                        onClick={() => setSelect(!select)}
                    >
                        <span
                        className="fa fa-plus-circle"
                        style={{ color: "#1ABB9C" }}
                        />
                    </IconButton>
                    </Tooltip>
                </div>
                </Grid>
              </Grid>
            { applicant && step == 1 &&
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
                    <Grid item lg={6} md={6} sm={6}>
                    <TextField
                        fullWidth
                        disabled
                        size="small"
                        variant="outlined"
                        value={applicant && applicant.phone_no}
                        label="Phone No."
                    />
                    </Grid>
                    <Grid item lg={6} md={6} sm={6}>
                    <TextField
                        fullWidth
                        disabled
                        size="small"
                        variant="outlined"
                        value={applicant && applicant.customer_email}
                        label="Email Address:"
                    />
                    </Grid>
                    <Grid item lg={6} md={6} sm={6}>
                    <TextField
                        fullWidth
                        disabled
                        size="small"
                        variant="outlined"
                        value={applicant && applicant.customer_sex}
                        label="Gender"
                    />
                    </Grid>
                    <Grid item lg={6} md={6} sm={6}>
                    <TextField
                        fullWidth
                        disabled
                        size="small"
                        variant="outlined"
                        value={applicant && applicant.customer_marital}
                        label="Marital Status"
                    />
                    </Grid>
                    <Grid item lg={6} md={6} sm={6}>
                    <TextField
                        fullWidth
                        disabled
                        size="small"
                        variant="outlined"
                        value={applicant && applicant.country}
                        label="Nationality:"
                    />
                    </Grid>
                    <Grid item lg={6} md={6} sm={6}>
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
                    <Grid item lg={6} md={6} sm={6}>
                    <TextField
                        fullWidth
                        disabled
                        size="small"
                        variant="outlined"
                        value={applicant && applicant.occupation}
                        label="Occupation:"
                    />
                    </Grid>
                    <Grid item lg={6} md={6} sm={6}>
                    <TextField
                        fullWidth
                        disabled
                        size="small"
                        variant="outlined"
                        value={applicant && applicant.place_work}
                        label="Place of Work:"
                    />
                    </Grid>

                    <Grid item lg={6} md={6} sm={6}>
                    <TextField
                        fullWidth
                        disabled
                        size="small"
                        variant="outlined"
                        value={applicant && applicant.next_kin_name}
                        label="Name of Next Kin:"
                    />
                    </Grid>
                    <Grid item lg={6} md={6} sm={6}>
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
              
            }
              {(
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
                    className=" p-1 mt-3"
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
              { (
                <Grid item lg={12} md={12} sm={12} className="mt-3">
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
              { (
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
              { (
                <Grid item lg={12} md={12} sm={12} className="mt-3">
                  <ul style={{ listStyle: "none" }}>
                    <li>
                      I/We{" "}
                      <input
                        readOnly
                        value={applicant?.customer_name}
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
                        Printed By
                        <IconButton 
                            size="small"
                            className='hide-on-print'
                        >
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
                      
                        style={{
                          border: "none",
                          borderBottom: "1px solid black",
                          outline: "none",
                        }}
                        value={new Date(applicant?.createdAt).toLocaleDateString()}
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
               
                <Button
                    variant="contained"
                    className="m-3 hide-on-print"
                    style={{
                        color: "white",
                        background: "#2A3F54",
                    }}
                    onClick={handlePrint}
                >
                    Print
                </Button>
                {/* <Button
                    onClick={() =>setStep(2)}
                    variant="contained"
                    className="m-3 hide-on-print"
                    style={{
                        color: "white",
                        background: "#2A3F54",
                    }}
                >
                    Next {`>>`}
                </Button> */}
              </Grid>
            </Grid>
          </Paper>
          <div className="p-2" />
        </Grid>
      </Grid>
    </div>
  );
};

export default PrintCusForm;
