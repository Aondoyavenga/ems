// MUI Stuff
import Paper from "@material-ui/core/Paper";
import Avatar from "@material-ui/core/Avatar";
import logo from '../../assets/logo.png'
import React, { useState } from "react";
import AppBackdrop from "../global/AppBackDrop";
import AppSnackbar from "../global/AppSnackbar";
import LoginForm from "./LoginForm";
import { Typography } from "@material-ui/core";
const CreateStaff = () => {
  const [Error, setError] = useState();
  const [open, setOpen] = useState(false);
  const [success, setSuccess] = useState(false);
  const [user, setUser] = useState({
    username: "",
    password: "",
  });
  return (
    <div className="auth__FormContainer">
      <AppBackdrop setOpen={setOpen} open={open} />
      <AppSnackbar message={Error} open={success} setOpen={setSuccess} />
      <form method="post">
        <div className="row align-items-center justify-content-center">
          <Paper className="col-lg-6 col-md-6 col-sm-12 p-4">
            <div
              className="align-items-center justify-content-center d-flex"
              style={{ flexDirection: "column" }}
            >
              <Avatar variant="rounded" src={logo} style={{ width: 200, height: 200 }} />
              <Typography style={{ color: "#2a3f54", padding: 5 }}>
                <b>USER</b>
              </Typography>
            </div>
            <LoginForm
              user={user}
              open={open}
              Error={Error}
              setOpen={setOpen}
              setUser={setUser}
              setError={setError}
              setSuccess={setSuccess}
            />
          </Paper>
        </div>
      </form>
    </div>
  );
};

export default CreateStaff;
// password, is_superuser, username,
// first_name, last_name, email, is_staff, is_active, date_joined
