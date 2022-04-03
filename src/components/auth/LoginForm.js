import TextField from "@material-ui/core/TextField";
import FormGroup from "@material-ui/core/FormGroup";

import axios from "axios";
import { useDispatch } from "react-redux";
import { setToken } from "../../appState/appSlice";
import { useState } from "react";

const LoginForm = ({ setSuccess, setError, setOpen, user, setUser }) => {
  const dispatch = useDispatch();
  const [invalid, setInvalid] = useState({
    username: "",
    password: "",
  });
  const handle_Login = (e) => {
    e.preventDefault();
    if (user.username.trim().length <= 0)
      return setInvalid({
        ...invalid,
        username: "Is required",
      });

    setInvalid({
      ...invalid,
      username: " ",
    });
    if (user.password.trim().length <= 0)
      return setInvalid({
        ...invalid,
        password: "Is required",
      });
    setInvalid({
      ...invalid,
      username: "",
      password: "",
    });
    setOpen(true);
    axios
      .post("/auth/login", user)

      .then((result) => {
        setSuccess(false);
        return dispatch(setToken(result.data));
      })
      .catch((error) => {
        setOpen(false);
        setSuccess(true);
        if (error.status == 500) {
          setSuccess(true);
          return setError(error.response.statusText);
        }
        setSuccess(true);
        setError(error.response.data.message);
      });
  };
  return (
    <div className="row">
      <div className="col-lg-12 col-md-12 col-sm-12">
        <FormGroup>
          <TextField
            name="User Id"
            value={user.username}
            placeholder="Example (SA@2021)"
            label="User ID"
            onChange={(e) =>
              setUser({
                ...user,
                username: e.target.value,
              })
            }
            error={invalid && invalid.username.length > 0}
            helperText={invalid && invalid.username}
          />
        </FormGroup>
      </div>
      <div className="p-1" />
      <div className="col-lg-12 col-md-12 col-sm-12">
        <FormGroup>
          <TextField
            type="password"
            name="password"
            label="Password"
            value={user.password}
            placeholder="Password"
            onChange={(e) =>
              setUser({
                ...user,
                password: e.target.value,
              })
            }
            error={invalid && invalid.password.length > 0}
            helperText={invalid && invalid.password}
          />
        </FormGroup>
      </div>

      <div className="col-lg-12 col-md-12">
        <div className="btn__Container">
          <button
            onClick={(e) => handle_Login(e)}
            type="submit"
            className="p-1"
          >
            Log In
          </button>
        </div>
      </div>
    </div>
  );
};

export default LoginForm;
