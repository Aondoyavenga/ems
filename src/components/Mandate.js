// MUI Stuff
import IconButton from "@material-ui/core/IconButton";
import Typography from "@material-ui/core/Typography";

import Close from "@material-ui/icons/Close";

// MDB Stuff
import {
  MDBModal,
  MDBModalBody,
  MDBModalFooter,
  MDBModalHeader,
} from "mdbreact";
import { Fragment } from "react";
import { useSelector } from "react-redux";
import { selectToken } from "../appState/appSlice";
import AvatarUpload from "./UploadAvatar";

const Mandate = ({ title, url, mandate, setMandate, setOpen }) => {
  const token = useSelector(selectToken);
  return (
    <Fragment>
      <MDBModal
        isOpen={mandate}
        backdrop={false}
        position="right"
        fullHeight={true}
        overflowScroll={false}
      >
        <MDBModalHeader>
          <Typography>
            Upload {mandate && mandate.split(" ")[1]}{" "}
            {title ? title : "Mandate"}
          </Typography>
        </MDBModalHeader>
        <MDBModalBody>
          {/* imported component */}
          <AvatarUpload
            title={title}
            setOpen={setOpen}
            mandate={mandate}
            token={token}
            setMandate={setMandate}
            url={url}
          />
        </MDBModalBody>
        <MDBModalFooter>
          <IconButton color="secondary" onClick={() => setMandate(!mandate)}>
            <Close color="action" />
          </IconButton>
        </MDBModalFooter>
      </MDBModal>
    </Fragment>
  );
};

export default Mandate;
