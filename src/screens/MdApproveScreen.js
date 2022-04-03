import axios from "axios";
import React, { useEffect, useState } from "react";
import { useDispatch, useSelector } from "react-redux";
import { useHistory } from "react-router-dom/cjs/react-router-dom.min";
import {
  selectToken,
  setBuildCategories,
  setCustomers,
  setpendingSales,
  setPropServices,
  setUser,
} from "../appState/appSlice";
import AppBackdrop from "../components/global/AppBackDrop";
import SideBarMenu from "../components/global/SideBarMenu";
import MdFeed from "../components/MdFeed";
import MdWidget from "../components/MdWidget";

const MdApproveScreen = () => {
  const history = useHistory();
  const dispacth = useDispatch();
  const token = useSelector(selectToken);
  const [open, setOpen] = useState(false);
  const [isWidget, setIswidget] = useState(false);
  const [applicant, setApplicant] = useState();
  const [application, setApplication] = useState();

  // func
  const getProp_Services = () => {
    axios
      .get("/prop_service", {
        headers: {
          Authorization: `Bearer ${token}`,
        },
      })
      .then((ps) => {
        dispacth(setPropServices(ps.data));
      })
      .catch((error) => {
        return error;
      });
  };

  // func
  //   const getCustomers = () => {
  //     axios
  //       .get("/customer", {
  //         headers: {
  //           Authorization: `Bearer ${token}`,
  //         },
  //       })
  //       .then((customer) => {
  //         dispacth(setCustomers(customer.data));
  //       })
  //       .catch((error) => {
  //         return error;
  //       });
  //   };

  const getBuildCategories = () => {
    axios
      .get("/build_category", {
        headers: {
          Authorization: `Bearer ${token}`,
        },
      })
      .then((categories) => {
        dispacth(setBuildCategories(categories.data));
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
        dispacth(setpendingSales(sales.data));
      })
      .catch((error) => {
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
        dispacth(setUser(user.data));
      })
      .catch((error) => {
        return error;
      });
  };

  useEffect(() => {
    if (!token) {
      return history.push("/");
    }
    return getProp_Services(), getBuildCategories(), get_Session();
  }, []);
  useEffect(() => {
    return get_PendingSales();
  }, [open]);
  return (
    <div className="app">
      <AppBackdrop open={open} />
      <SideBarMenu />
      {/* feed */}
      <MdFeed
        setOpen={setOpen}
        isWidget={isWidget}
        applicant={applicant}
        setIswidget={setIswidget}
        setApplicant={setApplicant}
        setApplication={setApplication}
      />
      {/* widget */}
      {isWidget && (
        <MdWidget
          open={open}
          setOpen={setOpen}
          isWidget={isWidget}
          applicant={applicant}
          application={application}
          setIswidget={setIswidget}
        />
      )}
    </div>
  );
};

export default MdApproveScreen;
