import IconButton from "@material-ui/core/IconButton";
import Paper from "@material-ui/core/Paper";
import Tooltip from "@material-ui/core/Tooltip";
import Container from "@material-ui/core/Container";

import PlusOne from "@material-ui/icons/PlusOne";
import { useSelector } from "react-redux";
import { selectCustomers } from "../appState/appSlice";
import AppHeader from "./global/AppHeader";
import CustomerList from "./global/CustomerList";

const CustomerFeed = ({
  open,
  setOpen,
  isWidget,
  setIswidget,
  setMandate,
  searchWidget,
  setSearchWidget,
}) => {
  const customers = useSelector(selectCustomers);

  return (
    <div className={`${isWidget ? "isapp__Feed" : "app__Feed"}`}>
      <AppHeader
        title="Customers"
        search
        searchWidget={searchWidget}
        setSearchWidget={setSearchWidget}
      />
      <div className="row align-items-center justify-content-center d-flex m-1">
        <div className="col-lg-12 col-md-12">
          {/* table */}
          <h3>
            Customer List{" "}
            <span>
              <Tooltip title="Add Customer">
                <IconButton
                  color="secondary"
                  onClick={() => setIswidget(!isWidget)}
                >
                  <PlusOne style={{ color: "#1ABB9C" }} />
                </IconButton>
              </Tooltip>
            </span>
          </h3>
          <Paper style={{ backgroundColor: "inherit" }}>
            <Container className="p-3">
              <table className="table-hover" style={{ width: "100%" }}>
                <thead style={{ position: "sticky", top: "60px", zIndex: 222 }}>
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
                    Name
                  </th>
                  <th
                    style={{
                      border: "1px solid #F7F7F7F7",
                      textAlign: "center",
                    }}
                  >
                    Contact
                  </th>
                  {!isWidget && (
                  <th
                    style={{
                      border: "1px solid #F7F7F7F7",
                      textAlign: "center",
                    }}
                  >
                    Email
                  </th>
                  )}
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
                    Photo
                  </th>
                  <th
                    style={{
                      border: "1px solid #F7F7F7F7",
                      textAlign: "center",
                    }}
                  >
                    Active
                  </th>
                  {!isWidget && (
                  <th
                    style={{
                      border: "1px solid #F7F7F7F7",
                      textAlign: "center",
                    }}
                  >
                    Lock
                  </th>
                  )}
                  {!isWidget && (
                    <th
                      style={{
                        border: "1px solid #F7F7F7F7",
                        textAlign: "center",
                      }}
                    >
                      Actions
                    </th>
                  )}
                </thead>
                <tbody>
                  {customers &&
                    customers
						
                    .map((customer, index) => {
                      return (

                        <CustomerList
                          key={index}
                          index={index}
                          {...customer}
                          isWidget={isWidget}
                          open={open}
                          setOpen={setOpen}
                          setMandate={setMandate}
                        />
                      );
                    })}
                </tbody>
              </table>
              {customers && !customers.length > 0 && (
                <div className="alert alert-warning">
                  <h6>No Customer Availabe</h6>
                </div>
              )}
            </Container>
          </Paper>
        </div>
      </div>
    </div>
  );
};

export default CustomerFeed;
