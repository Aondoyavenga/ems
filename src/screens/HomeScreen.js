import axios from "axios";
import React, { Fragment, useEffect } from "react";
import { useDispatch, useSelector } from "react-redux";
import { useHistory } from "react-router-dom/cjs/react-router-dom.min";
import {
  selectOpen,
  selectToken,
  setAccounts,
  setAllStaffs,
  setCustomers,
  setPaidOnpaySales,
  settodayTxs,
  setUser,
  setUserExpenseRaised,
} from "../appState/appSlice";
import SideBarMenu from "../components/global/SideBarMenu";
import HomeFeed from "../components/HomeFeed";
import "./homeScreen.css";

const HomeScreen = () => {
  const history = useHistory();
  const dispatch = useDispatch();
  const open = useSelector(selectOpen);
  const token = useSelector(selectToken);

  const get_Session = () => {
    axios
      .get(`/auth/active`, {
        headers: {
          Authorization: `Bearer ${token}`,
        },
      })
      .then((user) => {
        dispatch(setUser(user.data));
      })
      .catch((error) => {
        return error;
      });
  };

  const get_Paid_Onpay_Sales = async () => {
    await localStorage.clear();
    axios
      .get(`/sale/paid_onpay`, {
        headers: {
          Authorization: `Bearer ${token}`,
        },
      })
      .then((paidOnpay) => {
        dispatch(setPaidOnpaySales(paidOnpay.data));
      })
      .catch((error) => {
        return error;
      });
  };

  const get_AllAccounts = () => {
    axios
      .get("/account", {
        headers: {
          Authorization: `Bearer ${token}`,
        },
      })
      .then((accounts) => {
        dispatch(setAccounts(accounts.data));
      })
      .catch((error) => {
        if (error) {
          return error.response.statusText;
        }
      });
  };

  const getCustomers = () => {
    axios
      .get("/customer", {
        headers: {
          Authorization: `Bearer ${token}`,
        },
      })
      .then((asset) => {
        dispatch(setCustomers(asset.data));
      })
      .catch((error) => {
        return error;
      });
  };

  const get_Todays_Tx = () =>{
    axios.get('/transaction/today', {
        headers: {
            Authorization: `Bearer ${token}`
        }
    })
    .then(txs =>{
        dispatch(settodayTxs(txs.data))
    })
    .catch(error =>{
        return error
    })
  }

  const get_Staffs = () => {
    axios
      .get("/auth", {
        headers: {
          Authorization: `Bearer ${token}`,
        },
      })
      .then((staffs) => {
        localStorage.setItem("staffs", staffs.data.length);
        dispatch(setAllStaffs(staffs.data));
      })
      .catch((error) => {
        if (error) {
          return error.response.statusText;
        }
      });
  };

  const get_User_Raised_Expense = () => {
    axios
      .get("/expense/user", {
        headers: {
          Authorization: `Bearer ${token}`,
        },
      })
      .then((exps) => {
        dispatch(setUserExpenseRaised(exps.data));
      })
      .catch((error) => {
        if (error) {
          return error.response.statusText;
        }
      });
  };

  useEffect(() => {
    if (!token) {
      return history.push("/");
    }
    return (
      get_Session(),
      get_Paid_Onpay_Sales(),
      get_AllAccounts(),
      get_User_Raised_Expense(),
      getCustomers(),
      get_Staffs(),
      get_Todays_Tx()
    );
  }, [open]);

  return (
    <Fragment>
      <div className="app">
        {/* side__Bar */}
        <SideBarMenu />
        {/* feed */}
        <HomeFeed />
        {/* widget */}
      </div>
    </Fragment>
  );
};

export default HomeScreen;
