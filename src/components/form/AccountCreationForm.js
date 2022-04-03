import {
  Button,
  FormControl,
  FormLabel,
  Select,
  TextField,
  Typography,
} from "@material-ui/core";
import axios from "axios";
import React, { useState } from "react";
import { useSelector } from "react-redux";
import { selectToken } from "../../appState/appSlice";
import AppSnackbar from "../global/AppSnackbar";

const AccountCreationForm = ({ open, setOpen }) => {
  const token = useSelector(selectToken);
  const [success, setSuccess] = useState();
  const [snackbar, setSnackbar] = useState(false);
  const [Error, setError] = useState("");
  const [accData, setAccdata] = useState({
    name: "",
    code: "",
    active: "",
    locked: "",
    acc_type: "",
    balance_type: "",
  });
  // func
  const handleChange = (e) => {
    const value = e.target.value;
    const name = e.target.name;
    setAccdata({
      ...accData,
      [name]: value,
    });
  };

  const handle_Post = (e) => {
    e.preventDefault();

    if (
      !accData.name.trim().length > 3 ||
      !accData.acc_type.trim().length > 0
    ) {
      setTimeout(() => {
        setError("");
      }, 5000);
      return setError("Invalid Form");
    }
    setOpen(!open);

    axios
      .post("/account", accData, {
        headers: {
          Authorization: `Bearer ${token}`,
        },
      })
      .then((result) => {
        if (result.status == 201) {
          setAccdata({
            name: "",
            code: "",
            active: "",
            locked: "",
            acc_type: "",
            balance_type: "",
          });
          setError("");
          setOpen(false);
          setSuccess(result.data.message);
          return setSnackbar(true);
        }
      })
      .catch((error) => {
        setOpen(false);
        if (error) {
          setError(error.response.statusText);
          console.log(error.response.statusText);
        }
      });
  };
  return (
    <div className="form__container">
      <AppSnackbar open={snackbar} setOpen={setSnackbar} message={success} />
      <form action="" method="post" className="p-3">
        <TextField
          name="name"
          label="Name"
          size="small"
          fullWidth
          required
          variant="outlined"
          value={accData.name}
          placeholder="Full name"
          onChange={(e) => handleChange(e)}
        />
        {/* <TextField
          name="code"
          label="code"
          className="mt-2"
          size="small"
          fullWidth
          variant="outlined"
          value={accData.code}
          onChange={(e) => handleChange(e)}
        /> */}
        <FormLabel>Account Type</FormLabel>
        <Select
          fullWidth
          name="acc_type"
          className="mt-2"
          value={accData.acc_type}
          onChange={(e) => handleChange(e)}
          variant="outlined"
          size="small"
          label="Type"
          native
          defaultValue=""
          id="grouped-native-select"
          style={{ height: "40px" }}
        >
          <option aria-label="None" value="">
            Select
          </option>
          <optgroup label="Assets">
            <option value="asset_ca_cash">Current Asset</option>
            <option value="asset_ca_mkt_sec">Marketable Securities</option>
            <option value="asset_ca_recv">Receivables</option>
            <option value="asset_ca_inv">Inventory</option>
            <option value="asset_ca_uncoll">Uncollectibles</option>
            <option value="asset_ca_prepaid">Prepaid</option>
            <option value="asset_ca_other">Other Liquid Assets</option>
            <option value="asset_lti_notes">Notes Receivable</option>
            <option value="asset_lti_land">Land</option>
            <option value="asset_lti_sec">Securities</option>
            <option value="asset_ppe">Property Plant &amp; Equipment</option>
            <option value="asset_ia">Intangible Assets</option>
            <option value="asset_adjustment">Other Assets</option>
          </optgroup>

          <optgroup label="Liabilities">
            <option value="lia_cl_acc_pay">Accounts Payable</option>
            <option value="lia_cl_wage_pay">Wages Payable</option>
            <option value="lia_cl_wage_pay">Interest Payable</option>
            <option value="lia_cl_st_notes_payable">Notes Payable</option>
            <option value="lia_cl_ltd_mat">
              Current Maturities of Long Tern Debt
            </option>
            <option value="lia_cl_def_rev">Deferred Revenue</option>
            <option value="lia_cl_other">Other Liabilities</option>
            <option value="lia_ltl_notes">Notes Payable</option>
            <option value="lia_ltl_bonds">Bonds Payable</option>
            <option value="lia_ltl_mortgage">Mortgage Payable</option>
          </optgroup>
          <optgroup label="Equity">
            <option value="eq_capital">Capital</option>
            <option value="eq_stock_c">Common Stock</option>
            <option value="eq_stock_p">Preferred Stock</option>
            <option value="eq_adjustment">Other Equity Adjustments</option>
            <option value="in_sales">Sales Income</option>
            <option value="in_pass">Passive Income</option>
            <option value="in_other">Other Income</option>
            <option value="ex_cogs">Cost of Goods Sold</option>
            <option value="ex_op">Operational Expense</option>
            <option value="ex_interest">Interest Expense</option>
            <option value="ex_taxes">Tax Expense</option>
            <option value="ex_cap">Capital Expense</option>
            <option value="ex_other">Other Expense</option>
          </optgroup>
        </Select>
        <FormLabel>Balance Type</FormLabel>
        <Select
          fullWidth
          className="mt-2"
          name="balance_type"
          style={{ height: "40px" }}
          value={accData.balance_type}
          onChange={(e) => handleChange(e)}
          variant="outlined"
          size="small"
          label="Type"
          native
          defaultValue=""
          id="grouped-native-select"
        >
          <option value="">Select</option>
          <option value="CR">Credit</option>
          <option value="DR">Debit</option>
        </Select>
        <FormLabel>Account Status</FormLabel>
        <Select
          fullWidth
          name="active"
          className="mt-2"
          value={accData.active}
          onChange={(e) => handleChange(e)}
          variant="outlined"
          size="small"
          label="Type"
          native
          defaultValue=""
          id="grouped-native-select"
          style={{ height: "40px" }}
        >
          <option value="">Active</option>
          <option value={0}>Yes</option>
          <option value={1}>No</option>
        </Select>
        <FormLabel>Restriction</FormLabel>
        <Select
          fullWidth
          name="locked"
          className="mt-2"
          value={accData.locked}
          onChange={(e) => handleChange(e)}
          variant="outlined"
          size="small"
          label="Lock"
          native
          defaultValue=""
          style={{ height: "40px" }}
        >
          <option value="">Locked</option>
          <option value={1}>Yes</option>
          <option value={0}>No</option>
        </Select>
        <FormControl className="mt-2"
          style={{
            display: 'flex',
            alignItems: 'center',
            justifyContent: 'center'
          }}
        >
          {Error && (
            <Typography variant="caption" color="error">
              {Error}
            </Typography>
          )}
          <Button
            type="submit"
            variant="contained"
            color="default"
            onClick={(e) => handle_Post(e)}
            style={{ background: "#2A3F54", color: "white", }}
          >
            Create
          </Button>
        </FormControl>
      </form>
    </div>
  );
};

export default AccountCreationForm;
