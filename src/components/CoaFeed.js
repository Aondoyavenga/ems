import { useSelector } from "react-redux";
import AppHeader from "./global/AppHeader";
// MUI Stuff
import Tooltip from "@material-ui/core/Tooltip";
import Container from "@material-ui/core/Container";
import IconButton from "@material-ui/core/IconButton";

import "./coaFeed.css";
import { PlusOne } from "@material-ui/icons";
import {
  selectAssetAccount,
  selectEquityAccount,
  selectLiabilityAccount,
} from "../appState/appSlice";
import AccountList from "./global/AccountList";
const CoaFeed = ({ isWidget, setIswidget, searchWidget, setSearchWidget }) => {
  const assets = useSelector(selectAssetAccount);
  const equitys = useSelector(selectEquityAccount);
  const liabilitys = useSelector(selectLiabilityAccount);
  return (
    <div className={`${isWidget ? "isapp__Feed" : "app__Feed"}`}>
      <AppHeader
        title="Chart Of Account"
        search
        searchWidget={searchWidget}
        setSearchWidget={setSearchWidget}
      />

      <div
        style={{ overflow: "auto" }}
        className="row align-items-center justify-content-center d-flex m-1"
      >
        <div className="col-lg-12 col-md-12">
          {/* table */}
          <h3>
            Asset Accounts{" "}
            <span>
              <Tooltip title="Add New Account">
                <IconButton
                  color="secondary"
                  onClick={() => setIswidget(!isWidget)}
                >
                  <PlusOne style={{ color: "#1ABB9C" }} />
                </IconButton>
              </Tooltip>
            </span>
          </h3>
          <>
            <Container>
              <table className=" table-hover" style={{ width: "100%" }}>
                <thead>
                  <th
                    style={{
                      border: "1px solid #F7F7F7F7",
                      textAlign: "center",
                    }}
                  >
                    #
                  </th>
                  <th
                    style={{
                      border: "1px solid #F7F7F7F7",
                      textAlign: "center",
                    }}
                  >
                    Code
                  </th>
                  <th
                    style={{
                      border: "1px solid #F7F7F7F7",
                      textAlign: "center",
                    }}
                  >
                    Account Name
                  </th>
                  <th
                    style={{
                      border: "1px solid #F7F7F7F7",
                      textAlign: "center",
                    }}
                  >
                    Active
                  </th>
                  <th
                    style={{
                      border: "1px solid #F7F7F7F7",
                      textAlign: "center",
                    }}
                  >
                    Lock
                  </th>
                  <th
                    style={{
                      border: "1px solid #F7F7F7F7",
                      textAlign: "center",
                    }}
                  >
                    Actions
                  </th>
                </thead>
                <tbody>
                  {assets &&
                    assets.map((asset, index) => {
                      return <AccountList index={index} {...asset} />;
                    })}
                </tbody>
              </table>
              {assets && !assets.length > 0 && (
                <div className="alert alert-warning">
                  <h6>No Asset Accounts Availabe</h6>
                </div>
              )}
            </Container>
          </>
          {/* liability */}
          <h3>
            Liability Accounts{" "}
            <span>
              <Tooltip title="Add New Account">
                <IconButton
                  color="secondary"
                  onClick={() => setIswidget(!isWidget)}
                >
                  <PlusOne style={{ color: "#1ABB9C" }} />
                </IconButton>
              </Tooltip>
            </span>
          </h3>
          <>
            <Container>
              <table className=" table-hover" style={{ width: "100%" }}>
                <thead>
                  <th
                    style={{
                      border: "1px solid #F7F7F7F7",
                      textAlign: "center",
                    }}
                  >
                    #
                  </th>
                  <th
                    style={{
                      border: "1px solid #F7F7F7F7",
                      textAlign: "center",
                    }}
                  >
                    Code
                  </th>
                  <th
                    style={{
                      border: "1px solid #F7F7F7F7",
                      textAlign: "center",
                    }}
                  >
                    Account Name
                  </th>
                  <th
                    style={{
                      border: "1px solid #F7F7F7F7",
                      textAlign: "center",
                    }}
                  >
                    Active
                  </th>
                  <th
                    style={{
                      border: "1px solid #F7F7F7F7",
                      textAlign: "center",
                    }}
                  >
                    Lock
                  </th>
                  <th
                    style={{
                      border: "1px solid #F7F7F7F7",
                      textAlign: "center",
                    }}
                  >
                    Actions
                  </th>
                </thead>
                <tbody>
                  {liabilitys &&
                    liabilitys.map((liability, index) => {
                      return <AccountList index={index} {...liability} />;
                    })}
                </tbody>
              </table>
              {liabilitys && !liabilitys.length > 0 && (
                <div className="alert alert-warning">
                  <h6>No Liability Accounts Availabe</h6>
                </div>
              )}
            </Container>
          </>
          {/* Equity */}
          <h3>
            Expense Accounts{" "}
            <span>
              <Tooltip title="Add New Account">
                <IconButton
                  color="secondary"
                  onClick={() => setIswidget(!isWidget)}
                >
                  <PlusOne style={{ color: "#1ABB9C" }} />
                </IconButton>
              </Tooltip>
            </span>
          </h3>
          <>
            <Container>
              <table className=" table-hover" style={{ width: "100%" }}>
                <thead>
                  <th
                    style={{
                      border: "1px solid #F7F7F7F7",
                      textAlign: "center",
                    }}
                  >
                    #
                  </th>
                  <th
                    style={{
                      border: "1px solid #F7F7F7F7",
                      textAlign: "center",
                    }}
                  >
                    Code
                  </th>
                  <th
                    style={{
                      border: "1px solid #F7F7F7F7",
                      textAlign: "center",
                    }}
                  >
                    Account Name
                  </th>
                  <th
                    style={{
                      border: "1px solid #F7F7F7F7",
                      textAlign: "center",
                    }}
                  >
                    Active
                  </th>
                  <th
                    style={{
                      border: "1px solid #F7F7F7F7",
                      textAlign: "center",
                    }}
                  >
                    Lock
                  </th>
                  <th
                    style={{
                      border: "1px solid #F7F7F7F7",
                      textAlign: "center",
                    }}
                  >
                    Actions
                  </th>
                </thead>
                <tbody>
                  {equitys &&
                    equitys.map((equity, index) => {
                      return <AccountList index={index} {...equity} />;
                    })}
                </tbody>
              </table>
              {equitys && !equitys.length > 0 && (
                <div className="alert alert-warning">
                  <h6>No Liability Accounts Availabe</h6>
                </div>
              )}
            </Container>
          </>
        </div>
      </div>
    </div>
  );
};

export default CoaFeed;
