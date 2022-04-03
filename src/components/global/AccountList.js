import { Fragment } from "react";
import { Link } from "react-router-dom";

// MUI Stuff
import Tooltip from "@material-ui/core/Tooltip";
import IconButton from "@material-ui/core/IconButton";
import Typography from "@material-ui/core/Typography";

const AccountList = ({ index, code, name, active, locked }) => {
  return (
    <Fragment key={index}>
      <tr>
        <td style={{ textAlign: "center" }}>
          <Typography
            style={{
               
                color: '#20c997'
            }}
          > {index+1} </Typography>
        </td>
        <td> {code} </td>
        <td> {name} </td>
        <td>
          {active == 0 ? (
            <span className="fa fa-check-circle fa-1x"></span>
          ) : (
            <span></span>
          )}
        </td>
        <td>
          {locked == 1 ? (
            <span className="fa fa-lock fa-1x" style={{ color: "red" }}></span>
          ) : (
            <span
              className="fa fa-unlock-alt fa-1x"
              style={{ color: "#1ABB9C" }}
            ></span>
          )}
        </td>

        <td
          style={{
            display: "flex",
            alignItems: "center",
            justifyContent: "center",
          }}
        >
          {locked !== 1 ? (
            <Link to={`/coa/${name}/${code}`} rel="noopener noreferrer">
              <Tooltip title={`View ${name} Register`}>
                <IconButton size="small">
                  {" "}
                  <span className="fa fa-eye fa-1x p-1" />
                </IconButton>
              </Tooltip>
            </Link>
          ) : (
            <div>
              <Tooltip title={`${name} is locked can not be view`}>
                <IconButton size="small">
                  {" "}
                  <span
                    className="fa fa-eye fa-1x p-1"
                    style={{ color: "red" }}
                  />
                </IconButton>
              </Tooltip>
            </div>
          )}
        </td>
      </tr>
    </Fragment>
  );
};

export default AccountList;
