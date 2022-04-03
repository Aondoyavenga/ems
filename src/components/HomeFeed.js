import { Grid, Paper } from "@material-ui/core";
import React, { useEffect, useState } from "react";
import { Fragment } from "react";
import { useSelector } from "react-redux";
import { selectPaidOnpaySales, selectTodayTxs } from "../appState/appSlice";
import MultipleChart from "./charts/MultipleChart";
import SalesChart from "./charts/SalesChart";
import AppHeader from "./global/AppHeader";
import TransactionList from './TransactionList'

const HomeFeed = () => {
  const todayTxs = useSelector(selectTodayTxs)
  const paidOnpaySales = useSelector(selectPaidOnpaySales);
  const [paid, setPaid] = useState();
  const [onpaid, setOnPaid] = useState();
  // const data = [65, 59, 80, 81, 56, 55, 40]
  useEffect(() => {
    const paiddata =
      paidOnpaySales &&
      paidOnpaySales.filter(
        (paid, i) => paid && paid.amount == 2
      );

    const paiddataValues = paiddata && paiddata.map((x) => Object.values(x));
    const completedPaid = [];
    // set completed data

    for (let i = 0; i < paiddataValues.length; i++) {
      const pelement = paiddataValues[i][5];
      completedPaid.push(pelement);
    }

    // set on pay data
    // console.log(completedPaid)
    const onpaiddata =
      paidOnpaySales &&
      paidOnpaySales.filter(
        (paid, i) => paid && paid.status == 0
      );
    const onpaiddataValues =
      onpaiddata && onpaiddata.map((x) => Object.values(x));
    const onPaid = [];
    // set completed data

    for (let i = 0; i < onpaiddataValues.length; i++) {
      const onpelement = onpaiddataValues[i][4];
      onPaid.push(onpelement);
    }

    return (
      setPaid(completedPaid),
      setOnPaid(onPaid),
      localStorage.setItem("paid", completedPaid),
      localStorage.setItem("onPaid", onPaid)
    );
  }, [paidOnpaySales]);

  return (
    <Fragment>
      <div className="app__Feed">
        <AppHeader title="Dashboard" />

        <div className="m-3">
          <Grid container spacing={2}>
            <Grid item lg={11} md={11}
              style={{
                top: 0,
                position: 'sticky',
                backgroundColor: '#ededed'
              }}
            >
              <Grid container spacing={2} alignItems="center" justify="center">
                <Grid item lg={9} md={9}>
                  
                     <SalesChart 
                      data={paid} 
                      onpaid={onpaid}
                    />
                </Grid>
                <Grid item lg={3} md={3}>
                  <MultipleChart />
                </Grid>
                
              </Grid>
            </Grid>
            <Grid container spacing={2} alignItems="center" justify="center">
              <Grid item lg={12} md={12} sm={12}>
                {
                  todayTxs &&
					<Paper
						elevation={0}
						className='p-3'
						style={{
							backgroundColor: 'inherit'
						}}
					>
						<TransactionList 
              styles={{
                top: '69%',
                position: 'sticky',
                backgroundColor: '#ededed'
              }}
            />
					</Paper>
                }
              </Grid>
            </Grid>
          </Grid>

        </div>
      </div>
    </Fragment>
  );
};



export default HomeFeed;
