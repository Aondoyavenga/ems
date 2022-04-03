import { Button, Typography } from "@material-ui/core";
import axios from "axios";
import React, { useEffect, useState } from "react";
import { useDispatch, useSelector } from "react-redux";
import { Link } from "react-router-dom";
import {
  selectAllStaffs,
  selectTransactions,
  selectOpen,
  selectToken,
  setOpen,
  setfilterTx,
  selectCustomers,
  setFilterCus,
} from "../appState/appSlice";
import AppBackdrop from "./global/AppBackDrop";
import AppSnackbar from "./global/AppSnackbar";
import CustomerViewTable from "./global/CustomerViewTable";
import TxTableView from "./global/TxTableView";

const AdminStaffSetting = () => {
  const dispatch = useDispatch();
  const open = useSelector(selectOpen);
  const token = useSelector(selectToken);
  const staffs = useSelector(selectAllStaffs);
  const customers = useSelector(selectCustomers);
  const transactions = useSelector(selectTransactions);
  const [tab, setTab] = useState();
  const [message, setMessage] = useState();
  const [success, setSuccess] = useState(false);
  const [data, setData] = useState({
    id: "",
    staff: "",
    change: false,
    first_name: "",
    last_name: "",
    password: "",
    email: "",
    mobile: "",
    is_active: "",
    username: "",
    md: "",
    entries: "",
    sales: "",
    expense: "",
    accountant: "",
  });
  const handleChange = (e) => {
    const name = e.target.name;
    const value = e.target.value;
    setData({
      ...data,
      [name]: value,
    });
    setTab("gen");
  };

  const handleUpdate = () => {
    dispatch(setOpen(true));
    axios
      .post(`/auth/edit/${data.username}`, data, {
        headers: {
          Authorization: `Bearer ${token}`,
        },
      })
      .then((res) => {
        setMessage(res.data.message);
        setSuccess(true);
        dispatch(setOpen(false));
        setData({
          staff: "",
        });
      })
      .catch((error) => {
        if (error) {
          setMessage(error.response.statusText);
          dispatch(setOpen(false));
        }
      });
  };
  useEffect(() => {
    const fstaff =
      staffs && staffs.filter((staf) => staf.username == data.staff)[0];
    if (fstaff) {
      setData({
        ...data,
        change: true,
        id: fstaff.id,
        md: fstaff.md,
        sales: fstaff.sales,
        email: fstaff.email,
        mobile: fstaff.mobile,
        entries: fstaff.entries,
        expense: fstaff.expense,
        username: fstaff.username,
        last_name: fstaff.last_name,
        first_name: fstaff.first_name,
        is_active: fstaff.is_active,
        accountant: fstaff.accountant,
      });
    }
    const ftxs =
      transactions &&
      transactions.filter((tx) => tx.postBy_FK == `${data.username}`);
    const fcus = customers && customers.filter((cus) => cus.rm == data.id);
    dispatch(setfilterTx(ftxs));
    dispatch(setFilterCus(fcus));
    return;
  }, [data.staff, data.username]);

  return (
    <div>
      <AppBackdrop open={open} setOpen={setOpen} />
      <AppSnackbar open={success} setOpen={setSuccess} message={message} />
      <div className="admin__Title">
        <section>
          <Typography variant="h3">STAFF</Typography>
        </section>
        <div>
          <Link to="/staffs" className="ml-3">
            <Button
              variant="contained"
              startIcon={<span className="fa fa-arrow-right" />}
              style={{ background: "#2A3F54", color: "white" }}
            >
              <Typography variant="caption">Staff Lists</Typography>
            </Button>
          </Link>
        </div>
      </div>
      <div className="p-1" />
      {/* table */}
      <table
        className="mt-1 table-bordered"
        style={{
          width: "98%",
          margin: "auto",
          position: "sticky",
          top: 0,
          zIndex: 222,
        }}
      >
        <thead>
          <th>Select</th>
          <th>
            <input
              value={data.staff}
              placeholder="Staff"
              name="staff"
              list="staffs"
              onChange={(e) => handleChange(e)}
            />
            <datalist id="staffs">
              {staffs &&
                staffs.map((staff, index) => {
                  const { username, first_name, last_name } = staff;
                  return (
                    <option key={index} value={username}>
                      {" "}
                      {`${first_name} ${last_name}`}{" "}
                    </option>
                  );
                })}
            </datalist>
          </th>
          <th>Staff Username</th>
          <th>
            <input
              list="usernames"
              name="staff"
              value={data.staff}
              onChange={(e) => handleChange(e)}
            />
            <datalist id="usernames">
              {staffs &&
                staffs.map((staff, index) => {
                  return <option key={index} value={staff.username}></option>;
                })}
            </datalist>
          </th>
          <th style={{ borderColor: "none" }}>
            <Link to="/staffs" className="ml-3">
              <Button
                variant="contained"
                startIcon={<span className="fa fa-plus" />}
                style={{ background: "#2A3F54", color: "white" }}
              >
                <Typography variant="caption">Add New</Typography>
              </Button>
            </Link>
          </th>
          <th style={{ border: "none", outline: "none" }}>
            <Button
              onClick={() => handleUpdate()}
              disabled={tab !== "gen" || data.change === false ? true : false}
              startIcon={<span className="fa fa-check />" />}
              variant="contained"
              style={{ background: "#2A3F54", color: "white" }}
            >
              <Typography variant="caption">Update</Typography>
            </Button>
          </th>
          <th style={{ border: "none", outline: "none" }}>
            <Button
              startIcon={<span className="fa fa-trash />" />}
              variant="contained"
              style={{ background: "#2A3F54", color: "white", width: "100%" }}
            >
              <Typography variant="caption">Delete</Typography>
            </Button>
          </th>
        </thead>
      </table>

      <div className="p-1" />
      <table
        className="mt-1 table-bordered"
        style={{
          width: "98%",
          margin: "auto",
          position: "sticky",
          top: "40px",
          zIndex: 222,
        }}
      >
        <thead>
          <th
            onClick={() => setTab("gen")}
            style={{
              background: tab == "gen" ? "" : "#2A3F54",
              color: tab == "gen" ? "#2A3F54" : "white",
              paddingLeft: "5px",
              paddingRight: "5px",
              border: "1px solid #000",
              borderBottom: "none",
            }}
          >
            General Info
          </th>
          <th
            onClick={() => setTab("tx")}
            style={{
              background: tab == "tx" ? "" : "#2A3F54",
              color: tab == "tx" ? "#2A3F54" : "white",
              paddingLeft: "5px",
              paddingRight: "5px",
              border: "1px solid #000",
              borderLeft: "1px solid white",
              borderBottom: "none",
            }}
          >
            Transactions
          </th>
          <th
            onClick={() => setTab("cus")}
            style={{
              background: tab == "cus" ? "" : "#2A3F54",
              color: tab == "cus" ? "#2A3F54" : "white",
              paddingLeft: "5px",
              paddingRight: "5px",
              border: "1px solid #000",
              borderLeft: "1px solid white",
              borderBottom: "none",
            }}
          >
            Customers
          </th>
          <th
            onClick={() => setTab("exp")}
            style={{
              background: tab == "exp" ? "" : "#2A3F54",
              color: tab == "exp" ? "#2A3F54" : "white",
              paddingLeft: "5px",
              paddingRight: "5px",
              border: "1px solid #000",
              borderLeft: "1px solid white",
              borderBottom: "none",
            }}
          >
            Expense
          </th>
          <th
            onClick={() => setTab("sal")}
            style={{
              background: tab == "sal" ? "" : "#2A3F54",
              color: tab == "sal" ? "#2A3F54" : "white",
              paddingLeft: "5px",
              paddingRight: "5px",
              border: "1px solid #000",
              borderLeft: "1px solid white",
              borderBottom: "none",
            }}
          >
            Sales
          </th>
          <th
            onClick={() => setTab("jou")}
            style={{
              background: tab == "jou" ? "" : "#2A3F54",
              color: tab == "jou" ? "#2A3F54" : "white",
              paddingLeft: "5px",
              paddingRight: "5px",
              border: "1px solid #000",
              borderLeft: "1px solid white",
              borderBottom: "none",
            }}
          >
            Journal
          </th>
        </thead>
        {data.username && tab == "gen" ? (
          <tbody>
            <div className="p-1" />
            <tr>
              <td>First Name</td>
              <td>
                <input
                  name="first_name"
                  value={data.first_name}
                  placeholder="First Name"
                  onChange={(e) => handleChange(e)}
                />
              </td>
              <td>Last Name</td>
              <td>
                <input
                  name="last_name"
                  value={data.last_name}
                  placeholder="Last Name"
                  onChange={(e) => handleChange(e)}
                />
              </td>
              <td>User Name</td>
              <td>
                <input
                  readOnly
                  name="username"
                  value={data.username}
                  placeholder="Staff Username (read only)"
                />
              </td>
            </tr>
            <div className="p-1" />
            <tr>
              <td>Mobile</td>
              <td>
                <input
                  name="mobile"
                  value={data.mobile}
                  placeholder="Staff Phone Number"
                  onChange={(e) => handleChange(e)}
                />
              </td>
              <td>Email</td>
              <td colSpan={3}>
                <input
                  name="email"
                  value={data.email}
                  onChange={(e) => handleChange(e)}
                  placeholder="Staff Email Address (example@mail.com)"
                />
              </td>
            </tr>
            <div className="p-1" />
            <tr>
              <td>Entries</td>
              <td>
                <select
                  name="entries"
                  value={data.entries}
                  onChange={(e) => handleChange(e)}
                >
                  <option value="">Select</option>
                  <option value="entries">Yes</option>
                  <option value="no">No</option>
                </select>
              </td>
              <td>Expense</td>
              <td>
                <select
                  name="expense"
                  value={data.expense}
                  onChange={(e) => handleChange(e)}
                >
                  <option value="">Select</option>
                  <option value="expense">Yes</option>
                  <option value="no">No</option>
                </select>
              </td>
              <td>Sales</td>
              <td>
                <select
                  name="sales"
                  value={data.sales}
                  onChange={(e) => handleChange(e)}
                >
                  <option value="">Select</option>
                  <option value="sales">Yes</option>
                  <option value="no">No</option>
                </select>
              </td>
            </tr>
            <div className="p-1" />
            <tr>
              <td>Accountant</td>
              <td>
                <select
                  name="accountant"
                  value={data.accountant}
                  onChange={(e) => handleChange(e)}
                >
                  <option value="">Select</option>
                  <option value="accountant">Yes</option>
                  <option value="no">No</option>
                </select>
              </td>
              <td>MD</td>
              <td>
                <select
                  name="md"
                  value={data.md}
                  onChange={(e) => handleChange(e)}
                >
                  <option value="">Select</option>
                  <option value="md">Yes</option>
                  <option value="no">No</option>
                </select>
              </td>
              <td>Active</td>
              <td>
                <select
                  name="is_active"
                  value={data.is_active}
                  onChange={(e) => handleChange(e)}
                >
                  <option value="">Select</option>
                  <option value={1}>Yes</option>
                  <option value={0}>No</option>
                </select>
              </td>
            </tr>
          </tbody>
        ) : null}
      </table>
      {tab == "tx" && (
        <TxTableView name={`${data.first_name} ${data.last_name}`} />
      )}
      {tab == "cus" && <CustomerViewTable />}
    </div>
  );
};

export default AdminStaffSetting;
