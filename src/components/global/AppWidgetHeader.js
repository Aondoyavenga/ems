// MUI Stuff
import Close from "@material-ui/icons/Close";
import Tooltip from "@material-ui/core/Tooltip";
import IconButton from "@material-ui/core/IconButton";
import Typography from "@material-ui/core/Typography";

import React from "react";

const AppWidgetHeader = ({ title, isWidget, setIswidget }) => {
  return (
    <div className="app__HeaderContainer">
      <div className="app__HeaderLeft">
        <Tooltip title={`Close`}>
          <IconButton onClick={() => setIswidget(!isWidget)}>
            <Close />
          </IconButton>
        </Tooltip>
      </div>
      <aside className="app__HeaderRight">
        <Typography variant="subtitle1" className="mr-2">
          {title}
        </Typography>
      </aside>
    </div>
  );
};

export default AppWidgetHeader;
