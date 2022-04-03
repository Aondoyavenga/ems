// MUI Stuff
import Grid from "@material-ui/core/Grid";
import Button from "@material-ui/core/Button";
import Select from "@material-ui/core/Select";
import TextField from "@material-ui/core/TextField";
import IconButton from "@material-ui/core/IconButton";
import Typography from "@material-ui/core/Typography";
import FormLabel from "@material-ui/core/FormLabel";
import Tooltip from "@material-ui/core/Tooltip";

// Icons
import Undo from "@material-ui/icons/Undo";
import FileCopy from "@material-ui/icons/FileCopy";

import axios from "axios";
import React, { useState } from "react";
import { useSelector } from "react-redux";
import { useHistory } from "react-router-dom/cjs/react-router-dom.min";
import { selectToken } from "../appState/appSlice";
import AppHeader from "./global/AppHeader";
import AppSnackbar from "./global/AppSnackbar";

const StaffFeed = ({ setOpen, isWidget, setIswidget }) => {
  const history = useHistory();
  const token = useSelector(selectToken);
  const [success, setSuccess] = useState(false);
  const [message, setMessage] = useState();
  const [Error, setError] = useState();
  const [Exist, setExist] = useState();
  const [data, setData] = useState({
    password: "",
    password2: "",
    is_superuser: "",
    first_name: "",
    last_name: "",
    email: "",
    md: "",
    entries: "",
    sales: "",
    expense: "",
    accountant: "",
    date_joined: "",
  });
  // func
  const handleChange = (e) => {
    const name = e.target.name;
    const value = e.target.value;

    setData({
      ...data,
      [name]: value,
    });
  };

  const isEmpty = () => {
    let userData = data;
    let error = {};
    Object.keys(userData).forEach((v, i) => {
      return !userData[v].toString().length > 0
        ? (error[v] = "Is required")
        : (error = error);
    });

    return setError(error), Object.keys(error).length > 0 ? true : false;
  };

  const handleSubmit = (e) => {
    isEmpty();
    e.preventDefault();

    if (isEmpty()) return console.log(Error);
    setOpen(true);

    axios
      .post("/auth", data, {
        headers: {
          Authorization: `Bearer ${token}`,
        },
      })
      .then((result) => {
        setOpen(false);
        setMessage(result.data.message);
        setSuccess(true);
        setData({
          password: "",
          password2: "",
          is_superuser: "",
          first_name: "",
          last_name: "",
          email: "",
          mobile: "",
          md: "",
          entries: "",
          sales: "",
          expense: "",
          accountant: "",
          date_joined: "",
        });
      })
      .catch((error) => {
        setOpen(false);
        if (error) {
          if (error.status == 500) {
            return setExist(error.response.statusText);
          }
          const err = error.response.data.split(":")[1];
          setExist(err);
        }
      });
  };

  return (
    <div className={`${isWidget ? "isapp__Feed" : "app__Feed"}`}>
      <AppSnackbar setOpen={setSuccess} open={success} message={message} />
      <AppHeader title="Staff" />
      <div className="row align-items-center justify-content-center">
        <div className="col-lg-11 col-md-11 col-sm=12 col-xs-12">
          {/* table */}
          <h3 className="ml-3">
            Staff Entry
            <span>
              <Tooltip title="View Staff List">
                <IconButton
                  color="secondary"
                  onClick={() => setIswidget(!isWidget)}
                >
                  <FileCopy style={{ color: "#1ABB9C" }} />
                </IconButton>
              </Tooltip>
            </span>
          </h3>
          {Exist && (
            <Typography className="ml-3" color="error" variant="h6">
              {Exist}
            </Typography>
          )}
          {/* to do make it a component */}
          <Grid
            container
            alignItems="center"
            spacing={1}
            justify="center"
            className="p-2"
          >
            <Grid item lg={6} md={6} sm={12} xs={12}>
              <TextField
                required
                fullWidth
                size="small"
                name="first_name"
                variant="outlined"
                label="First Name"
                placeholder="First Name"
                value={data.first_name}
                onChange={(e) => handleChange(e)}
                helperText={Error && Error.first_name}
                error={Error && Error.first_name ? true : false}
              />
            </Grid>
            <Grid item lg={6} md={6} sm={12} xs={12}>
              <TextField
                required
                fullWidth
                size="small"
                name="last_name"
                variant="outlined"
                label="Last Name"
                placeholder="Last Name"
                value={data.last_name}
                onChange={(e) => handleChange(e)}
                helperText={Error && Error.last_name}
                error={Error && Error.last_name ? true : false}
              />
            </Grid>
            <Grid item lg={6} md={6} sm={12} xs={12}>
              <TextField
                fullWidth
                size="small"
                name="mobile"
                variant="outlined"
                label="Mobile No"
                value={data.mobile}
                onChange={(e) => handleChange(e)}
                placeholder="Mobile Number 08010000900"
                helperText={Error && Error.mobile}
                error={Error && Error.mobile ? true : false}
              />
            </Grid>
            <Grid item lg={6} md={6} sm={12} xs={12}>
              <TextField
                fullWidth
                size="small"
                name="email"
                label="Email"
                variant="outlined"
                value={data.email}
                onChange={(e) => handleChange(e)}
                helperText={Error && Error.email}
                error={Error && Error.email ? true : false}
                placeholder="Email Address(example@gmail.com)"
              />
            </Grid>
            <Grid item lg={6} md={6} sm={12} xs={12}>
              <TextField
                fullWidth
                size="small"
                name="password"
                type="password"
                variant="outlined"
                label="Password"
                placeholder="Password"
                value={data.password}
                onChange={(e) => handleChange(e)}
                helperText={Error && Error.password}
                error={Error && Error.password ? true : false}
              />
            </Grid>
            <Grid item lg={6} md={6} sm={12} xs={12}>
              <TextField
                fullWidth
                size="small"
                name="password2"
                type="password"
                variant="outlined"
                label="Confirm Password"
                placeholder="Confirm Password"
                value={data.password2}
                onChange={(e) => handleChange(e)}
                helperText={Error && Error.password2}
                error={Error && Error.password2 ? true : false}
              />
            </Grid>
            <Grid item lg={12} md={12}>
              <Typography>System Rights</Typography>
            </Grid>
            <Grid item lg={6} md={6} sm={12} xs={12}>
              <FormLabel>Entries</FormLabel>
              <Select
                variant="outlined"
                name="entries"
                value={data.entries}
                onChange={(e) => handleChange(e)}
                style={{
                  width: "100%",
                  outline: "none",
                  border: "none",
                  height: "40px",
                }}
                defaultValue=""
                error={Error && Error.entries}
              >
                <option></option>
                <option value="entries">Yes</option>
                <option value="no">No</option>
              </Select>
              {Error && Error.entries && (
                <small style={{ color: "red" }} className="ml-3">
                  {Error.entries}
                </small>
              )}
            </Grid>
            <Grid item lg={6} md={6} sm={12} xs={12}>
              <FormLabel>Sales</FormLabel>
              <Select
                variant="outlined"
                name="sales"
                value={data.sales}
                onChange={(e) => handleChange(e)}
                style={{
                  width: "100%",
                  outline: "none",
                  border: "none",
                  height: "40px",
                }}
                error={Error && Error.sales ? true : false}
              >
                <option></option>
                <option value="sales">Yes</option>
                <option value="no">No</option>
              </Select>
              {Error && Error.sales && (
                <small style={{ color: "red" }} className="ml-3">
                  {Error.sales}
                </small>
              )}
            </Grid>
            <Grid item lg={6} md={6} sm={12} xs={12}>
              <FormLabel>Expense</FormLabel>
              <Select
                variant="outlined"
                name="expense"
                value={data.expense}
                onChange={(e) => handleChange(e)}
                style={{
                  width: "100%",
                  outline: "none",
                  border: "none",
                  height: "40px",
                }}
                error={Error && Error.expense}
              >
                <option></option>
                <option value="expense">Yes</option>
                <option value="no">No</option>
              </Select>
              {Error && Error.expense && (
                <small style={{ color: "red" }} className="ml-3">
                  {Error.expense}
                </small>
              )}
            </Grid>
            <Grid item lg={6} md={6} sm={12} xs={12}>
              <FormLabel>Accountant</FormLabel>
              <Select
                variant="outlined"
                name="accountant"
                value={data.accountant}
                onChange={(e) => handleChange(e)}
                style={{
                  width: "100%",
                  outline: "none",
                  border: "none",
                  height: "40px",
                }}
                error={Error && Error.accountant ? true : false}
              >
                <option></option>
                <option value="accountant">Yes</option>
                <option value="no">No</option>
              </Select>
              {Error && Error.accountant && (
                <small style={{ color: "red" }} className="ml-3">
                  {Error.accountant}
                </small>
              )}
            </Grid>
            <Grid item lg={6} md={6} sm={12} xs={12}>
              <FormLabel>Administrator</FormLabel>
              <Select
                variant="outlined"
                name="is_superuser"
                value={data.is_superuser}
                onChange={(e) => handleChange(e)}
                style={{
                  width: "100%",
                  outline: "none",
                  border: "none",
                  height: "40px",
                }}
                error={Error && Error.is_superuser ? true : false}
              >
                <option></option>
                <option value="1">Yes</option>
                <option value="0">No</option>
              </Select>
              {Error && Error.is_superuser && (
                <small style={{ color: "red" }} className="ml-3">
                  {Error.is_superuser}
                </small>
              )}
            </Grid>
            <Grid item lg={6} md={6} sm={12} xs={12}>
              <FormLabel>MD</FormLabel>
              <Select
                variant="outlined"
                name="md"
                value={data.md}
                onChange={(e) => handleChange(e)}
                style={{
                  width: "100%",
                  outline: "none",
                  border: "none",
                  height: "40px",
                }}
                error={Error && Error.md}
              >
                <option></option>
                <option value="md">Yes</option>
                <option value="no">No</option>
              </Select>
              {Error && Error.md && (
                <small style={{ color: "red" }} className="ml-3">
                  {Error.md}
                </small>
              )}
            </Grid>

            <Grid item lg={6} md={6} sm={12} xs={12}>
              <FormLabel>Date Joined</FormLabel>
              <TextField
                fullWidth
                size="small"
                name="date_joined"
                type="date"
                variant="outlined"
                value={data.date_joined}
                onChange={(e) => handleChange(e)}
                error={Error && Error.date_joined ? true : false}
                helperText={Error && Error.date_joined}
              />
            </Grid>
            <Grid
              item
              lg={6}
              md={6}
              sm={12}
              xs={12}
              style={{
                display: "flex",
                justifyContent: "center",
                alignItems: "center",
              }}
            >
              <Button
                onClick={(e) => handleSubmit(e)}
                variant="contained"
                size="medium"
                style={{
                  background: "#2A3F54",
                  color: "white",
                  marginTop: "10px",
                }}
              >
                Create
              </Button>
              <Button
                className="ml-5"
                onClick={(e) => history.goBack()}
                startIcon={<Undo color="error" />}
                color="secondary"
                variant="outlined"
                size="medium"
                style={{ color: "#73879c", marginTop: "10px" }}
              >
                Return
              </Button>
            </Grid>
          </Grid>
        </div>
      </div>
    </div>
  );
};

export default StaffFeed;
