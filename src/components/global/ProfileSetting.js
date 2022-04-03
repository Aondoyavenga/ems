// MUI Stuff
import List from "@material-ui/core//List";
import Avatar from "@material-ui/core//Avatar";
import Button from "@material-ui/core/Button";
import Tooltip from "@material-ui/core/Tooltip";
import ListItem from "@material-ui/core//ListItem";
import IconButton from "@material-ui/core/IconButton";
import TextField from "@material-ui/core/TextField";
import ListItemIcon from "@material-ui/core/ListItemIcon";
import Typography from "@material-ui/core/Typography";
import Container from "@material-ui/core/Container";
import FormGroup from "@material-ui/core/FormGroup";
import ListItemText from "@material-ui/core/ListItemText";
import ListItemAvatar from "@material-ui/core/ListItemAvatar";

// Icons
import Close from "@material-ui/icons/Close";
import Phone from "@material-ui/icons/Phone";
import Email from "@material-ui/icons/Email";
import EditRounded from "@material-ui/icons/EditRounded";

import AttachFile from "@material-ui/icons/AttachFile";
// MDB Stuff
import {
  MDBModal,
  MDBModalBody,
  MDBModalFooter,
  MDBModalHeader,
} from "mdbreact";
import React, { useEffect, useState } from "react";
import { Fragment } from "react";
import { useDispatch, useSelector } from "react-redux";
import {
  setOpen as dispatchOpen,
  selectUser,
  selectToken,
  setUser,
  setToken,
  selectOpen,
} from "../../appState/appSlice";

import Mandate from "../Mandate";

import axios from "axios";
import AppBackdrop from "./AppBackDrop";
import AppSnackbar from "./AppSnackbar";

const ProfileSetting = ({ open, setOpen }) => {
  const dispatch = useDispatch();
  const [url, setUrl] = useState();
  const user = useSelector(selectUser);
  const [title, setTitle] = useState();
  const token = useSelector(selectToken);
  const isOpen = useSelector(selectOpen);
  const [message, setMessage] = useState();
  const [Error, setError] = useState();
  const [mandate, setMandate] = useState(false);
  const [isMandate, setIsMandate] = useState(false);

  const [password, setPassword] = useState({
    Error: "",
    password: "",
    password2: "",
  });
  const handleValidation = () => {
    if (password.password != password.password2)
      return setPassword({
        ...password,
        Error: "Password must match",
      });
    setPassword({
      ...password,
      Error: "",
    });
  };

  //   func

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

  const handleDispatch = () => {
    get_Session();
    setIsMandate(false);
    dispatch(dispatchOpen());
  };

  const handleSignature = () => {
    setTitle("Signature");
    setUrl(`/auth/signature/${user && user.id}/${user.username}`);
    setMandate(user && user.id + " " + user.first_name);
  };

  const handleAvatar = () => {
    setTitle("Profile Picture");
    setUrl(`/auth/avatar/${user && user.id}/${user.username}`);
    setMandate(user && user.id + " " + user.first_name);
  };

  const handleChange = (e) => {
    setPassword({
      ...password,
      [e.target.name]: e.target.value,
    });
  };
  const handleClose = () => {
    setOpen(false);
    setPassword({
      ...password,
      Error: "",
      password: "",
      password2: "",
    });
  };

  const handleChangePassword = () => {
    if(!password.password || !password.password2) return setError('No Changes')
    dispatch(dispatchOpen());
    axios
      .post("/auth/pwd", password, {
        headers: {
          Authorization: `Bearer ${token}`,
        },
      })
      .then((result) => {
        setTimeout(() => {
          dispatch(setToken(""));
        }, 5000);
        setMessage(result.data.message);
      })
      .catch((error) => {
        if (error) return setError(error.response.data);
      });
  };
  useEffect(() => {
    return handleValidation();
  }, [password.password, password.password2]);

  return (
    <Fragment>
      <Mandate
        title={title}
        open={isMandate}
        mandate={mandate}
        setOpen={handleDispatch}
        setMandate={setMandate}
        url={mandate && url}
      />
      <AppBackdrop open={isOpen} />
      <AppSnackbar open={message} setOpen={setMessage} message={message} />
      <Container>
        <MDBModal
          centered
          size="md"
          isOpen={open}
          backdrop={false}
          overflowScroll={false}
        >
          <MDBModalHeader>
            <Typography variant="subtitle1">Profile Settings</Typography>
          </MDBModalHeader>
          <MDBModalBody>
            {Error && <Typography color="error"> {Error} </Typography>}
            <section>
              <List>
                <ListItem>
                  <ListItemAvatar>
                    <Avatar
                      src={user && user.avatar}
                      style={{ width: 70, height: 70 }}
                    />
                    {user && !user.avatar && (
                      <Tooltip title="Upload Profile Picture">
                        <IconButton
                          size="medium"
                          style={{
                            position: "absolute",
                            top: 45,
                            marginLeft: 25,
                          }}
                          onClick={() => handleAvatar()}
                        >
                          <EditRounded style={{ color: "#20c997" }} />
                        </IconButton>
                      </Tooltip>
                    )}
                  </ListItemAvatar>
                  <ListItemText
                    primary={
                      user &&
                      `${user.first_name} 
                      ${user.last_name}`
                    }
                    className="ml-2"
                    secondary={user && user.username}
                  />
                  <div>
                    <ListItemText
                      secondary={
                        user && user.signature ? (
                          <Tooltip title="Signature">
                            <Avatar variant="square" src={user.signature} />
                          </Tooltip>
                        ) : (
                          <Tooltip title="Upload Signature">
                            <IconButton
                              size="medium"
                              onClick={() => handleSignature()}
                            >
                              <AttachFile />
                            </IconButton>
                          </Tooltip>
                        )
                      }
                    />
                  </div>
                </ListItem>
                <ListItem>
                  <ListItemIcon>
                    <IconButton>
                      <Phone />
                    </IconButton>
                  </ListItemIcon>
                  <ListItemText
                    primary="Contact"
                    secondary={user && user.mobile}
                  />
                  <ListItemIcon>
                    <IconButton>
                      <Email />
                    </IconButton>
                  </ListItemIcon>
                  <ListItemText
                    primary="Email Address"
                    secondary={user && user.email}
                  />
                </ListItem>
              </List>
            </section>
            <>
              <Typography
                variant="body1"
                style={{
                  color: "#20c997",
                  alignSelf: "center",
                  textAlign: "center",
                }}
              >
                Change Password
              </Typography>
              <form action="" method="post">
                <FormGroup className="p-3">
                  <TextField
                    fullWidth
                    size="small"
                    type="password"
                    name="password"
                    label="Password"
                    variant="outlined"
                    placeholder="New Password"
                    value={password.password}
                    onChange={(e) => handleChange(e)}
                    error={password && password.Error ? true : false}
                    helperText={password && password.Error}
                  />
                </FormGroup>
                <FormGroup className="p-3">
                  <TextField
                    fullWidth
                    size="small"
                    type="password"
                    name="password2"
                    variant="outlined"
                    label="Confirm Password"
                    value={password.password2}
                    placeholder="New Password"
                    onChange={(e) => handleChange(e)}
                    error={password && password.Error ? true : false}
                    helperText={password && password.Error}
                  />
                </FormGroup>
              </form>
            </>
          </MDBModalBody>
          <MDBModalFooter>
            <Button
              size="small"
              variant="contained"
              onClick={() => handleChangePassword()}
              style={{ color: "white", backgroundColor: "#2a3f54" }}
            >
              Change
            </Button>
            <Tooltip title="Close">
              <IconButton
                size="medium"
                color="secondary"
                className="ml-3"
                onClick={() => handleClose()}
              >
                <Close color="error" />
              </IconButton>
            </Tooltip>
          </MDBModalFooter>
        </MDBModal>
      </Container>
    </Fragment>
  );
};

export default ProfileSetting;
