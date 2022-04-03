import Search from "@material-ui/icons/Search";
import axios from "axios";
import React, { useEffect, useRef, useState } from "react";
import { Fragment } from "react";
import { useSelector } from "react-redux";
import { selectToken } from "../appState/appSlice";
import AccountList from "./global/AccountList";

const SearchWidget = () => {
  const inpuRef = useRef();
  const [search, setSearch] = useState();
  const [result, setResult] = useState([]);
  const token = useSelector(selectToken);
  const handleSearching = () => {
    if (search && search.trim().length > 0)
      return axios
        .get(`account/search/${search}`, {
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
        <div 
          id='searchBox'
          style={styles.inputWrapper} className="mt-3"
          >
          <Search style={styles.icon} />
          <input
            ref={inpuRef}
            type="text"
            name="search"
            id="search"
            autoComplete={false}
            style={styles.input}
            placeholder="Search By (Name Or Code)..."
            onChange={(e) => setSearch(e.target.value)}
          />
        </div>
      </section>
      <div style={styles.resultContainer}>
        <table className="table-hover" style={{ width: "100%" }}>
          <tbody>
            {result.length > 0 &&
              result.map((resul, index) => {
                if (resul["locked"] !== 1)
                  return <AccountList key={index} index={index} {...resul} />;
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
    borderRadius: "50px",
    boxSizing: 'border-box',
    backgroundColor: 'white',
    boxShadow: '0px 2px 2px gray'
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
  },
};

export default SearchWidget;
