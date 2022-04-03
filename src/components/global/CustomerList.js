import Avatar from "@material-ui/core/Avatar";
import More from "@material-ui/icons/More";
import { Fragment } from "react";
import { Link } from "react-router-dom";
import Tooltip from "@material-ui/core/Tooltip";
import Typography from "@material-ui/core/Typography";
import { CheckBoxRounded } from "@material-ui/icons";

const CustomerList = ({
  search,
  id,
  index,
  hidden,
  customer_email,
  customer_name,
  phone_no,
  code,
  active,
  isWidget,
  setMandate,
  avatar,
}) => {
  return (
    <Fragment key={index}>
      <tr>
        <td style={{ textAlign: "center" }}>
          <Typography
              style={{
                  paddingRight: 2,
                  color: '#20c997'
              }}
          > {index+1} </Typography>
        </td>
        <td style={{ textAlign: "left" }}>{customer_name}</td>
        <td> {phone_no} </td>
        {!search && !isWidget && <td> {customer_email} </td>}
        <td> {code} </td>
        <td
          style={{
            display: "flex",
            alignItems: "center",
            justifyContent: "center",
          }}
        >
          {avatar && <Avatar alt={customer_name[0]} src={avatar} />}
        </td>
        <td>
          {active == 1 ? (
            <span className="fa fa-check-circle fa-1x"></span>
          ) : (
            <span></span>
          )}
        </td>
        <td>
          {hidden == 1 ? (
            <span className="fa fa-lock" style={{ color: "red" }}></span>
          ) : (
            <span
              className="fa fa-unlock-alt"
              style={{ color: "#1ABB9C" }}
            ></span>
          )}
        </td>
        {!isWidget && (
          <td onClick={() => setMandate(`${id} ${customer_name}`)}>
            {!avatar ? (
              <Tooltip title={`Upload ${customer_name} Mandate`}>
                <More
                  style={{ color: "#2A3F54", fontSize: 20, marginLeft: 20 }}
                />
              </Tooltip>
            ) : (
              <Tooltip title={`${customer_name} Mandate uploaded`}>
                <CheckBoxRounded
                  style={{ color: "#20c997", fontSize: 20, marginLeft: 20 }}
                />
              </Tooltip>
            )}
          </td>
        )}
      </tr>
    </Fragment>
  );
};

export default CustomerList;
