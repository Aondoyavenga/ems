import axios from "axios";
import React, { useEffect, useState } from "react";
import { useDispatch, useSelector } from "react-redux";
import { useHistory } from "react-router-dom/cjs/react-router-dom.min";
import {
  selectPendingSales,
  selectToken,
  setBuildCategories,
  setCustomers,
  setpendingSales,
  setPropServices,
  setUser,
} from "../appState/appSlice";
import AppBackdrop from "../components/global/AppBackDrop";
import SideBarMenu from "../components/global/SideBarMenu";
import SaleFeed from "../components/SaleFeed";
import SaleWidget from "../components/SaleWidget";

const SaleScreen = () => {
  const history = useHistory();
  const dispatch = useDispatch();
  const token = useSelector(selectToken);
  const [open, setOpen] = useState(false);
  const [isWidget, setIswidget] = useState(false);
  const sales = useSelector(selectPendingSales)

  // func
  const getProp_Services = () => {
    axios
      .get("/prop_service", {
        headers: {
          Authorization: `Bearer ${token}`,
        },
      })
      .then((ps) => {
        dispatch(setPropServices(ps.data));
      })
      .catch((error) => {
        return error;
      });
  };

  // func
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

  const getBuildCategories = () => {
    axios
      .get("/build_category", {
        headers: {
          Authorization: `Bearer ${token}`,
        },
      })
      .then((categories) => {
        dispatch(setBuildCategories(categories.data));
      })
      .catch((error) => {
        return error;
      });
  };

  // func
  const get_PendingSales = () => {
    axios
      .get(`/sale`, {
        headers: {
          Authorization: `Bearer ${token}`,
        },
      })
      .then((sales) => {
        dispatch(setpendingSales(sales.data));
      })
      .catch((error) => {
        return error;
      });
  };

  const add_BuildCategories = (body) => {
    setOpen(true);
    axios
      .post("/build_category", body, {
        headers: {
          Authorization: `Bearer ${token}`,
        },
      })
      .then((categories) => {
        setOpen(false);
      })
      .catch((error) => {
        setOpen(false);
        return error;
      });
  };

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

  useEffect(() => {
    if (!token) {
      return history.push("/");
    }
    return getCustomers(), get_Session(), getProp_Services();
  }, []);
  useEffect(() => {
    return getBuildCategories(), get_PendingSales();
  }, [open]);
  return (
    <div className="app">
      <AppBackdrop open={open} />
      <SideBarMenu />
      {/* feed */}
      <SaleFeed
        setOpen={setOpen}
        isWidget={isWidget}
        setIswidget={setIswidget}
        add_BuildCategories={add_BuildCategories}
      />
      {/* widget */}
      {isWidget && (
        <SaleWidget
          open={open}
          sales={sales}
          setOpen={setOpen}
          isWidget={isWidget}
          setIswidget={setIswidget}
        />
      )}
    </div>
  );
};

export default SaleScreen;
