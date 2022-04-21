// MUI Stuff
import Tooltip from "@material-ui/core/Tooltip";
import IconButton from "@material-ui/core/IconButton";
import Typography from "@material-ui/core/Typography";

// Icons
import Search from "@material-ui/icons/Search";
import Settings from "@material-ui/icons/Settings";
import MoreVert from "@material-ui/icons/MoreVert";
import Dashboard from "@material-ui/icons/Dashboard";

import React, { useState } from "react";
import { useHistory } from "react-router-dom/cjs/react-router-dom.min";
import "./appHeader.css";
import { Fragment } from "react";
import ProfileSetting from "./ProfileSetting";

const AppHeader = ({ title, search, searchWidget, setSearchWidget }) => {
  const history = useHistory();
  const [open, setOpen] = useState(false);

  return (
    <Fragment>
      <div className="app__HeaderContainer hide-on-print">
        <div className="app__HeaderLeft">
          {title && (
            <Typography variant="subtitle1" className="ml-2">
              {title}
            </Typography>
          )}
        </div>
        <aside className="app__HeaderRight">
          <Tooltip title="Go To Dashboard">
            <IconButton onClick={() => history.push("/home")}>
              <Dashboard />
            </IconButton>
          </Tooltip>
          {search ? (
            <Tooltip title={`Search ${title}`}>
              <IconButton onClick={() => setSearchWidget(!searchWidget)}>
                <Search />
              </IconButton>
            </Tooltip>
          ) : (
            <Tooltip title={`Setting`}>
              <IconButton onClick={() => setOpen(!open)}>
                <Settings />
              </IconButton>
            </Tooltip>
          )}
          <IconButton>
            <MoreVert />
          </IconButton>
        </aside>
      </div>
      {/* Profile setting component */}
      <ProfileSetting open={open} setOpen={setOpen} />
    </Fragment>
  );
};

export default AppHeader;
