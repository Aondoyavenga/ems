import {
  Avatar,
  Button,
  Checkbox,
  FormControlLabel,
  FormLabel,
  Grid,
  IconButton,
  Paper,
  Select,
  TextField,
  Typography,
} from "@material-ui/core";
import axios from "axios";
import React, { useEffect, useState } from "react";
import { Fragment } from "react";
import { useSelector } from "react-redux";
import {
  selectBuildCategories,
  selectPropServices,
  selectToken,
  selectUser,
} from "../appState/appSlice";
import AppSnackbar from "./global/AppSnackbar";
import AppWidgetHeader from "./global/AppWidgetHeader";
import CashReceipt from "./global/CashReceipt";

const MdWidget = ({
  applicant,
  application,
  open,
  setOpen,
  isWidget,
  setIswidget,
}) => {
  const user = useSelector(selectUser);
  const token = useSelector(selectToken);
  const propServices = useSelector(selectPropServices);
  const buildCategories = useSelector(selectBuildCategories);
  const [success, setSuccess] = useState(false);
  const [message, setMessage] = useState();
  const [isOpen, setIsopen] = useState(false);
  const [step, setStep] = useState(1);
  const [plans, setPlans] = useState();

  // handle post
  const handleApproval = (e) => {
    e.preventDefault();
    setOpen(true);
    const body = {
      id: application.id,
    };
    axios
      .post(`/sale/update`, body, {
        headers: {
          Authorization: `Bearer ${token}`,
        },
      })
      .then((result) => {
        setMessage(result.data.message);
        setSuccess(true);
        setOpen(false);
        setIswidget(!isWidget);
      })
      .catch((error) => {
        setOpen(false);
        if (error) {
          return error.response.statusText;
        }
      });
  };

  // func
  const get_Sales_Scheldules = (uuid) => {
    axios
      .get(`/sale/scheldule/${uuid}`, {
        headers: {
          Authorization: `Bearer ${token}`,
        },
      })
      .then((scheluls) => {
        setPlans(scheluls.data);
      })
      .catch((error) => {
        return error;
      });
  };

  useEffect(() => {
    return get_Sales_Scheldules(application.uuid);
  }, [applicant, application]);

  return (
    <Fragment>
      {!applicant && (
        <div className="app__Widget">
          <Typography color="error" variant="h6">
            Invalid Customer
          </Typography>
        </div>
      )}
      {applicant && (
        <div className="app__Widget">
          <AppWidgetHeader
            isWidget={isWidget}
            setIswidget={setIswidget}
            title="Application Form"
          />

          <CashReceipt rows={plans} isOpen={isOpen} setIsOpen={setIsopen} />
          <AppSnackbar open={success} setOpen={setSuccess} message={message} />

          <div className="row align-items-center justify-content-center d-flex m-1"></div>
          <Grid container alignItems="center" justify="center">
            <Grid item lg={11} md={11} sm={12}>
              <Paper className="p-2">
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
                            width: "80px",
                            height: "80px",
                            boxSizing: "border-box",
                            boxShadow: "0px 0px 1px 0px #000",
                          }}
                        />

                        <div
                          className="mt-1 p-1"
                          style={{
                            color: "white",
                            background: "#2A3F54",
                            display: "flex",
                            alignItems: "center",
                            height: "40px",
                            justifyContent: "center",
                            width: "80%",
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
                            width: "80%",
                            margin: "auto",
                            boxSizing: "border-box",
                            boxShadow: "0px 0px 5px 0px #000",
                          }}
                        >
                          <h6>A. PERSONAL DATA</h6>
                        </div>
                      </Grid>
                    )}

                    {step == 1 && (
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
                            width: "100px",
                            height: "100px",
                            boxSizing: "border-box",
                            boxShadow: "0px 0px 1px 0px #000",
                          }}
                        />
                      </Grid>
                    )}
                  </Grid>

                  {step == 1 && (
                    <Grid container spacing={1} className="mt-3">
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
                          label="Business Name/ RC. No"
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
                          label="Related:"
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
                  <Grid item lg={12} md={12} sm={12}>
                    <Grid container>
                      {step == 2 && (
                        <Grid
                          item
                          lg={12}
                          md={12}
                          sm={12}
                          style={{
                            display: "flex",
                            justifyContent: "center",
                            flexDirection: "column",
                          }}
                        >
                          <div
                            className="mt-2 p-1"
                            style={{
                              color: "white",
                              background: "#2A3F54",
                              display: "flex",
                              height: "40px",
                              justifyContent: "center",
                              width: "100%",
                              boxSizing: "border-box",
                              boxShadow: "0px 0px 5px 0px #000",
                            }}
                          >
                            <h6>B.SELECT PROPERTY</h6>
                          </div>
                          <div className="mt-3" />
                          <FormLabel>Select Property</FormLabel>
                          <Select
                            fullWidth
                            name="property"
                            variant="outlined"
                            value={application.property}
                            onChange={(e) => {}}
                            style={{ height: "40px", width: "100%" }}
                          >
                            {propServices &&
                              propServices.map((ps, index) => {
                                const { id, name } = ps;
                                return (
                                  <option key={index} value={id}>
                                    {" "}
                                    {name}{" "}
                                  </option>
                                );
                              })}
                          </Select>
                          <FormLabel className="mt-3">Amount</FormLabel>
                          <TextField
                            disabled
                            size="small"
                            variant="outlined"
                            value={application.amount}
                            placeholder="Amount"
                          />
                          <FormLabel className="mt-3">Date</FormLabel>
                          <TextField
                            size="small"
                            variant="outlined"
                            name="sale_date"
                            value={new Date(
                              application.sale_date
                            ).toLocaleDateString()}
                            placeholder="Date"
                            disabled
                          />

                          <FormLabel className="mt-3">Select Term</FormLabel>
                          <Select
                            fullWidth
                            name="period"
                            variant="outlined"
                            value={application.period}
                            style={{
                              height: "40px",
                              width: "100%",
                              margin: "auto",
                            }}
                          >
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
                          </Select>
                          <FormLabel className="mt-3">Due Date</FormLabel>
                          <TextField
                            disabled
                            size="small"
                            variant="outlined"
                            value={new Date(
                              application.due_date
                            ).toLocaleDateString()}
                            placeholder="Due Date"
                          />
                          <div>
                            <IconButton onClick={() => setIsopen(true)}>
                              <span className="fa fa-eye" />
                            </IconButton>
                          </div>
                        </Grid>
                      )}

                      {step == 2 && (
                        <Grid
                          item
                          lg={12}
                          md={12}
                          sm={12}
                          style={{
                            display: "flex",
                            justifyContent: "center",
                            flexDirection: "column",
                          }}
                        >
                          <div
                            className="mt-2 mb-2 p-1"
                            style={{
                              color: "white",
                              background: "#2A3F54",
                              display: "flex",
                              alignItems: "center",
                              height: "40px",
                              justifyContent: "center",
                              width: "100%",
                              margin: "auto",
                              boxSizing: "border-box",
                              boxShadow: "0px 0px 5px 0px #000",
                            }}
                          >
                            <h6>C. CATEGORIES OF BUILDING</h6>
                          </div>

                          {buildCategories &&
                            buildCategories.map((bcategory, index) => {
                              const { id, name } = bcategory;
                              return (
                                <div className="d-flex ml-5" key={index}>
                                  <FormControlLabel
                                    control={
                                      <Checkbox
                                        name="build_category"
                                        checked={
                                          application.build_category ==
                                          bcategory.id
                                        }
                                        style={{
                                          border: "1px solid color: black",
                                          background: "#2A3F54",
                                        }}
                                      />
                                    }
                                    label={name}
                                  />
                                </div>
                              );
                            })}
                        </Grid>
                      )}
                    </Grid>
                  </Grid>

                  {step == 2 && (
                    <Grid
                      item
                      lg={12}
                      md={12}
                      sm={12}
                      style={{
                        display: "flex",
                        alignItems: "center",
                        justifyContent: "center",
                        flexDirection: "column",
                      }}
                    >
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
                        <h6>D. MODE OF PAYMENT</h6>
                      </div>
                    </Grid>
                  )}
                  {step == 2 && (
                    <Grid item lg={12} md={12} sm={12}>
                      <ul className="mt-3">
                        <li>
                          Note That Pament should be made after the developer's
                          approval before allocation. Each applicant is expected
                          to pay for the follwing charges:
                        </li>
                        <li>
                          All Payments should be made to Santos Estate Ltd. and
                          evidence of payment forwarded to our corporate office
                          for issuance of receipt.
                        </li>
                        <li>
                          i have agreed that all refunds shall be limited to the
                          deposit i made, less 10% administrative charges.
                        </li>
                        <li>
                          "Disclaimer" SANTOS ESTATE LIMITED shall not be liable
                          for any plot re-allocated if terms and conditions are
                          not obligated timeously.
                        </li>
                      </ul>
                    </Grid>
                  )}
                  {step == 2 && (
                    <Grid
                      item
                      lg={12}
                      md={12}
                      sm={12}
                      style={{
                        display: "flex",
                        alignItems: "center",
                        justifyContent: "center",
                        flexDirection: "column",
                      }}
                    >
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
                        <h6>D. DECLARATION</h6>
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
                          whose name and address appeared above have declared
                          that the above statements are true and correct to the
                          best of any knowledge, and i promise to abide by all
                          rules and regulations given by the Developer
                        </li>
                      </ul>
                      <div
                        className="m-4"
                        style={{
                          display: "flex",
                          flexDirection: "column",
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
                            Application Checked By
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
                            style={{
                              border: "none",
                              borderBottom: "1px solid black",
                              outline: "none",
                            }}
                            value={new Date(
                              application.sale_date
                            ).toLocaleDateString()}
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
                    {step == 1 && (
                      <Button
                        variant="contained"
                        className="m-3"
                        onClick={() => setStep(2)}
                        style={{ color: "white", background: "#2A3F54" }}
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
                    {step == 2 && (
                      <Button
                        variant="contained"
                        className="m-3"
                        onClick={(e) => handleApproval(e)}
                        style={{ color: "white", background: "#2A3F54" }}
                      >
                        Approve
                      </Button>
                    )}
                  </Grid>
                </Grid>
              </Paper>
              <div className="p-2" />
            </Grid>
          </Grid>
        </div>
      )}
    </Fragment>
  );
};

export default MdWidget;
