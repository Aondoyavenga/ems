import React, { useEffect, useState } from "react";
import { Doughnut, } from "react-chartjs-2";
import { MDBContainer } from "mdbreact";
import { useSelector } from "react-redux";
import { selectAccounts, selectAllStaffs, selectCustomers, selectUserExpenseRaised } from "../../appState/appSlice";

const MultipleChart = () => {
  const userExpneses = useSelector(selectUserExpenseRaised)
  const customers = useSelector(selectCustomers)
  const accounts = useSelector(selectAccounts)
  const [dataPolar, setDataPolar] = useState({
      datasets: '',
      labels: ["Expenses", "Staffs", "Customers", "Accounts"]
  })

  useEffect(() =>{
    const custotal = customers&&customers.length
    const acctotal = accounts && accounts.length
    const staffs = localStorage.getItem('staffs')
    const calcuAmt = (data) =>{
      const total = data&& data.reduce((a, v) =>+v.amount+ a, 0)
      return total
  }
    setDataPolar({
      ...dataPolar,
      datasets: [
        {
          data: [calcuAmt(userExpneses), +staffs, +custotal, +acctotal],
          backgroundColor: [
            "rgba(247, 70, 74, 0.5)",
            "#20c997",
            "#111d29",
            "rgba(148, 159, 177, 0.5)",
            "#2A3F54"
          ],
          label: "Dataset" // for legend
        }
      ],
    })
  },[])

    return (
      <div>
        <h3 className="mt-5">Data </h3>
        <Doughnut data={dataPolar} options={{ responsive: true }} />
      </div>
    );
  }

export default MultipleChart;