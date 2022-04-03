// MUI Stuff
import { IconButton } from "@material-ui/core";
import Button from "@material-ui/core/Button";
import Tooltip from "@material-ui/core/Tooltip";
import Typography from "@material-ui/core/Typography";

import axios from "axios";
import React, { useState } from "react";
import { useSelector } from "react-redux";
import { selectPendingSales, selectToken } from "../appState/appSlice";
import AppBackdrop from "./global/AppBackDrop";
import AppHeader from "./global/AppHeader";

const MdFeed = ({ setApplicant, setApplication, isWidget, setIswidget }) => {
  const sales = useSelector(selectPendingSales);
  const token = useSelector(selectToken);

  const [open, setOpen] = useState(false);

  const getCustomerById = (id, applicant) => {
    setOpen(true);
    axios
      .get(`/customer/${parseInt(id)}`, {
        headers: {
          Authorization: `Bearer ${token}`,
        },
      })
      .then((customer) => {
        setOpen(false);
        return (
          setApplicant(customer.data[0]),
          setApplication(applicant),
          setIswidget(true)
        );
      })
      .catch((error) => {
        setOpen(false);
        return error;
      });
  };

  return (
    <div className={`${isWidget ? "isapp__Feed" : "app__Feed"}`}>
      <AppBackdrop open={open} setOpen={setOpen} />
      <AppHeader title="Applications" />
      <section className="app__WidgetContainer">
        <div className="m-2 mt-3">
          <table
            className="table-hover table-bordered"
            style={{ width: "100%" }}
          >
            <thead>
              <th
                style={{ border: "1px solid #F7F7F7F7", textAlign: "center" }}
              >
                #
              </th>
              <th
                style={{ border: "1px solid #F7F7F7F7", textAlign: "center" }}
              >
                Customer
              </th>
              {!isWidget && (
                <th
                  style={{ border: "1px solid #F7F7F7F7", textAlign: "center" }}
                >
                  Property
                </th>
              )}
              {!isWidget && (
                <th
                  style={{ border: "1px solid #F7F7F7F7", textAlign: "center" }}
                >
                  Due Date
                </th>
              )}
              <th
                style={{ border: "1px solid #F7F7F7F7", textAlign: "center" }}
              >
                Amount
              </th>
              <th
                style={{ border: "1px solid #F7F7F7F7", textAlign: "center" }}
              >
                Paid
              </th>
              <th
                style={{ border: "1px solid #F7F7F7F7", textAlign: "center" }}
              >
                Action
              </th>
            </thead>
            <tbody>
              {sales &&
                sales.map((sale, index) => {
                  const {
                    applicant_name,
                    property_name,
                    due_date,
                    amount,
                    amount_paid,
                    applicant,
                  } = sale;
                  return (
                    <tr key={index}>
                      <td> {index + 1} </td>
                      <td style={{ color: "#2A3F54" }}>{applicant_name}</td>
                      {!isWidget && (
                        <td style={{ color: "#2A3F54" }}>{property_name}</td>
                      )}
                      {!isWidget && (
                        <td>{new Date(due_date).toLocaleDateString()}</td>
                      )}
                      <td>
                        <Typography style={{ color: "2A3F54" }}>
                          {parseInt(amount).toLocaleString()}
                        </Typography>
                      </td>
                      <td>
                        <Typography style={{ color: "#20c997" }}>
                          {parseInt(amount_paid).toLocaleString()}
                        </Typography>
                      </td>
                      <td
                        style={{
                          display: "flex",
                          alignItems: "center",
                          justifyContent: "center",
                        }}
                      >
                        <div>
                          <Tooltip title={`View ${applicant_name}`}>
                            <IconButton
                              onClick={() => getCustomerById(applicant, sale)}
                              size="small"
                            >
                              {" "}
                              <span className="fa fa-eye fa-1x p-1" />
                            </IconButton>
                          </Tooltip>
                        </div>
                      </td>
                    </tr>
                  );
                })}
            </tbody>
          </table>
        </div>
      </section>
    </div>
  );
};

export default MdFeed;
