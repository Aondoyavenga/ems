// MUI Stuff
import Tooltip from "@material-ui/core/Tooltip";
import IconButton from "@material-ui/core/IconButton";
// Icons
import AttachFile from "@material-ui/icons/AttachFile";
import CheckCircle from "@material-ui/icons/CheckCircle";

import React, { useState } from "react";
import { useSelector } from "react-redux";
import { selectAllStaffs } from "../appState/appSlice";
import Mandate from "./Mandate";
import AppWidgetHeader from "./global/AppWidgetHeader";
import { Fragment } from "react";

const StaffWidget = ({ open, setOpen, isWidget, setIswidget }) => {
  const [mandate, setMandate] = useState(false);

  const staffs = useSelector(selectAllStaffs);
  return (
    <div className="app__Widget">
      <Mandate
        open={open}
        setOpen={setOpen}
        mandate={mandate}
        setMandate={setMandate}
        url={
          mandate &&
          `/auth/signature/${mandate.split(" ")[0]}/${mandate.split(" ")[1]}`
        }
      />
      <AppWidgetHeader
        isWidget={isWidget}
        setIswidget={setIswidget}
        title="Staff List"
      />
      <table className="table-hover mt-3" style={{ width: "100%" }}>
        <thead>
          <th style={{ border: "1px solid #F7F7F7F7" }}>#</th>
          <th style={{ border: "1px solid #F7F7F7F7" }}>Name</th>
          <th style={{ border: "1px solid #F7F7F7F7" }}>Mobile</th>
          {/* <th style={{ border: "1px solid #F7F7F7F7" }}>Email</th> */}
          <th style={{ border: "1px solid #F7F7F7F7" }}>Sign</th>
        </thead>
        <tbody>
          {staffs &&
            staffs.map((staff, index) => {
              const { id, first_name, last_name, email, mobile, signature } =
                staff;
              return (
                <Fragment key={index}>
                  <tr>
                    <td> {index + 1} </td>
                    <td>{`${first_name} ${last_name}`}</td>
                    <td> {mobile} </td>
                    {/* <td> {email} </td> */}
                    <td
                      style={{
                        display: "flex",
                        alignItems: "center",
                        justifyContent: "center",
                      }}
                    >
                      {signature ? (
                        <Tooltip title={`${first_name} signature uploaded`}>
                          <CheckCircle style={{ color: "#20c997" }} />
                        </Tooltip>
                      ) : (
                        <div className="p-1">
                          <Tooltip title={`Upload ${first_name} signature`}>
                            <IconButton
                              size="small"
                              onClick={() => setMandate(id + " " + first_name)}
                            >
                              <AttachFile />
                            </IconButton>
                          </Tooltip>
                        </div>
                      )}
                    </td>
                  </tr>
                </Fragment>
              );
            })}
        </tbody>
      </table>
    </div>
  );
};

export default StaffWidget;
