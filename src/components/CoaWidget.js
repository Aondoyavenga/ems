import { Paper } from "@material-ui/core";
import React from "react";
import { Fragment } from "react";
import AccountCreationForm from "./form/AccountCreationForm";
import AppWidgetHeader from "./global/AppWidgetHeader";
import SearchWidget from "./SearchWidget";

const CoaWidget = ({
  open,
  add,
  setOpen,
  isWidget,
  setIswidget,
  searchWidget,
  setSearchWidget,
}) => {
  return (
    <Fragment>
      {add === false ? (
        <div className="app__Widget">
          <AppWidgetHeader
            isWidget={searchWidget}
            setIswidget={setSearchWidget}
            title="Search Account"
          />
          <section className="app__WidgetContainer">
            <SearchWidget />
          </section>
        </div>
      ) : (
        <div className="app__Widget">
          <AppWidgetHeader
            isWidget={isWidget}
            setIswidget={setIswidget}
            title="Create Account"
          />
          <section className="app__WidgetContainer">
            <AccountCreationForm open={open} setOpen={setOpen} />
          </section>
        </div>
      )}
    </Fragment>
  );
};

export default CoaWidget;
