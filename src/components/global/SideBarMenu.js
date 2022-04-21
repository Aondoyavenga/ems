// MUI Stuff
import List from "@material-ui/core//List";
import Button from "@material-ui/core/Button";
import Avatar from "@material-ui/core//Avatar";
import Tooltip from "@material-ui/core/Tooltip";
import ListItem from "@material-ui/core//ListItem";
import IconButton from "@material-ui/core/IconButton";
import Typography from "@material-ui/core/Typography";
import ListItemText from "@material-ui/core/ListItemText";
import ListItemAvatar from "@material-ui/core/ListItemAvatar";

// MUI Icons
import Power from "@material-ui/icons/Power";
import Settings from "@material-ui/icons/Settings";
import Fullscreen from "@material-ui/icons/Fullscreen";

import React, { useEffect, Fragment, useState } from "react";
import { useDispatch, useSelector } from "react-redux";
import { useHistory } from "react-router-dom/cjs/react-router-dom.min";
import { selectToken, selectUser, setToken } from "../../appState/appSlice";
import SideBarNavigation from "./SideBarNavigation";
import ProfileSetting from "./ProfileSetting";
import AsyncStorage from "@react-native-async-storage/async-storage";

const SideBarMenu = () => {
  const history = useHistory();
  const dispatch = useDispatch();
  const token = useSelector(selectToken);
  const user = useSelector(selectUser);
  const [open, setOpen] = useState(false);
  // useEffect(() => {
  //   if (!token) {
  //     return history.push("/");
  //   }
  // }, [token]);

  // useEffect( async() =>{
  //   const token = await AsyncStorage.getItem('token')
  //   dispatch(setToken(token))
  // }, [])
  return (
    <Fragment>
      <div className="side__BarContainer p-1 hide-on-print">
        {/* Profile Setting Component */}
        <ProfileSetting open={open} setOpen={setOpen} />
        <section
          className="p-3"
          style={{
            position: "sticky",
            top: 0,
            zIndex: 2,
            backgroundColor: "inherit",
          }}
        >
          <div className="side__BarHeader p-2">
            <Typography variant="subtitle1">EMS</Typography>
          </div>
          <List>
            <ListItem>
              <ListItemAvatar>
                <Avatar
                  src={user && user.avatar}
                  style={{ width: 70, height: 70 }}
                />
              </ListItemAvatar>
              <ListItemText
                primary={
                  user &&
                  `${user.first_name} 
                      ${user.last_name}`
                }
                className="ml-2"
                secondary={
                  user && (
                    <Typography
                      variant="subtitle1"
                      style={{ color: "#20c997" }}
                    >
                      {`${user.username}`}
                    </Typography>
                  )
                }
              />
            </ListItem>
          </List>

          <Button
            variant="contained"
            size="small"
            style={{ background: "#2A3F54", width: "100%", color: "white" }}
          >
            System Right
          </Button>
        </section>

        <section className="side__BarMenuContainer">
          <SideBarNavigation user={user} />
        </section>
        <div className="side__BarFooter">
          {user && (
            <Tooltip title="Settings">
              <IconButton onClick={() => setOpen(!open)}>
                <Settings />
              </IconButton>
            </Tooltip>
          )}
          <IconButton>
            <Fullscreen />
          </IconButton>
          <Tooltip title="Log out">
            <IconButton onClick={() => dispatch(setToken(""))}>
              <Power />
            </IconButton>
          </Tooltip>
        </div>
      </div>
    </Fragment>
  );
};

export default SideBarMenu;
