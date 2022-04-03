import Search from "@material-ui/icons/Search";
import axios from "axios";
import React, { useEffect, useRef, useState } from "react";
import { Fragment } from "react";
import { useSelector } from "react-redux";
import { selectToken } from "../appState/appSlice";
import CustomerList from "./global/CustomerList";

const CusSearchWidget = ({ setMandate }) => {
  const inpuRef = useRef();
  const [search, setSearch] = useState();
  const [result, setResult] = useState([]);
  const token = useSelector(selectToken);
  const handleSearching = () => {
    if (search && search.trim().length > 0)
      return axios
        .get(`customer/search/${search}`, {
          headers: {
            Authorization: `Bearer ${token}`,
          },
        })
        .then((result) => {
          setResult(result.data);
        })
        .catch((err) => {
          return err;
        });
  };

  useEffect(() => {
    inpuRef.current.focus();
  }, []);
  useEffect(() => {
    handleSearching();
  }, [search]);
  return (
    <Fragment>
      <section style={styles.section}>
        <div style={styles.inputWrapper} className="mt-3">
          <Search style={styles.icon} />
          <input
            ref={inpuRef}
            type="text"
            name="search"
            id="search"
            autoComplete={false}
            style={styles.input}
            placeholder="Search..."
            onChange={(e) => setSearch(e.target.value)}
          />
        </div>
      </section>
      <div style={styles.resultContainer}>
        <table className="table-hover" style={{ width: "100%" }}>
          <tbody>
            {result !== [] &&
              result.map((resul, index) => {
                return (
                  <CustomerList
                    setMandate={setMandate}
                    search
                    key={index}
                    index={index}
                    {...resul}
                  />
                );
              })}
          </tbody>
        </table>

        {!result.length > 0 && (
          <h6 style={{ alignSelf: "center" }}>Search for an account</h6>
        )}
      </div>
    </Fragment>
  );
};

const styles = {
  section: {
    margin: 10,
  },
  error: {
    width: "100%",
  },
  inputWrapper: {
    margin: 5,
    padding: 6,
    display: "flex",
    background: "white",
    borderRadius: "50px",
    boxSizing: "border-box",
    boxShadow: "0px 2px 3px 0px #ccc",
  },
  icon: {
    color: "#EDEDED",
  },

  input: {
    flex: 1,
    border: "none",
    outline: "none",
  },
  resultContainer: {
    flex: 1,
    padding: 5,
    height: "82vh",
    display: "flex",
    overflow: "auto",
    position: "sticky",
    flexDirection: "column",
    alignItems: "flex-start",
    backgroundColor: "inherit",
  },
};

export default CusSearchWidget;
