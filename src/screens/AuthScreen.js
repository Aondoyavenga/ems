import React, { Fragment } from "react";
import { useSelector } from "react-redux";
import { useHistory } from "react-router-dom/cjs/react-router-dom.min";
import { selectToken } from "../appState/appSlice";
import "../components/auth/auth.css";
import CreateStaff from "../components/auth/CreateStaff";

export const AuthScreen = () => {
  const token = useSelector(selectToken);
  const history = useHistory();

  if (token) {
    history.push("/home");
  }
  return (
    <Fragment>
      <div className="auth__Container">
        <CreateStaff />
      </div>
    </Fragment>
  );
};
