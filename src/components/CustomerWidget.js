import React from "react";
import { Fragment } from "react";
import CusSearchWidget from "./CusSearchWidget";
import CustomerCreationForm from "./form/CustomerCreationForm";
import AppWidgetHeader from "./global/AppWidgetHeader";

const CustomerWidget = ({
  open,
  add,
  setOpen,
  mandate,
  setMandate,
  isWidget,
  setIswidget,
}) => {
  return (
    <Fragment>
      {add === false ? (
        <div className="app__Widget">
          <AppWidgetHeader
            isWidget={isWidget}
            setIswidget={setIswidget}
            title="Search Customer"
          />

          <CusSearchWidget mandate={mandate} setMandate={setMandate} />
        </div>
      ) : (
        <div className="app__Widget">
          <AppWidgetHeader
            isWidget={isWidget}
            setIswidget={setIswidget}
            title="Create Customer"
          />

          <CustomerCreationForm open={open} setOpen={setOpen} />
        </div>
      )}
    </Fragment>
  );
};

export default CustomerWidget;
