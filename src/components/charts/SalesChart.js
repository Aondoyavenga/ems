import React, { useEffect, useState } from "react";
import { Line } from "react-chartjs-2";
import { MDBContainer } from "mdbreact";
import { useSelector } from "react-redux";
import { selectPaidOnpaySales } from "../../appState/appSlice";

const SalesChart =() =>{
  const data = localStorage.getItem('paid')
  const ondata = localStorage.getItem('onPaid')
  
  const paidOnpaySales = useSelector(selectPaidOnpaySales)
  const [dataLine, setDataLine] = useState({
    labels: '',
      datasets: [
        {
          label: "Sales on progress",
          fill: true,
          lineTension: 0.3,
          backgroundColor: "rgba(225, 204,230, .3)",
          borderColor: "rgb(205, 130, 158)",
          borderCapStyle: "butt",
          borderDash: [],
          borderDashOffset: 0.0,
          borderJoinStyle: "miter",
          pointBorderColor: "rgb(205, 130,1 58)",
          pointBackgroundColor: "rgb(255, 255, 255)",
          pointBorderWidth: 10,
          pointHoverRadius: 5,
          pointHoverBackgroundColor: "rgb(0, 0, 0)",
          pointHoverBorderColor: "rgba(220, 220, 220,1)",
          pointHoverBorderWidth: 2,
          pointRadius: 1,
          pointHitRadius: 10,
          data: ondata && [...ondata]
        },
        {
          label: "Completed Sales",
          fill: true,
          lineTension: 0.3,
          backgroundColor: "rgba(184, 185, 210, .3)",
          borderColor: "rgb(35, 26, 136)",
          borderCapStyle: "butt",
          borderDash: [],
          borderDashOffset: 0.0,
          borderJoinStyle: "miter",
          pointBorderColor: "rgb(35, 26, 136)",
          pointBackgroundColor: "rgb(255, 255, 255)",
          pointBorderWidth: 10,
          pointHoverRadius: 5,
          pointHoverBackgroundColor: "rgb(0, 0, 0)",
          pointHoverBorderColor: "rgba(220, 220, 220, 1)",
          pointHoverBorderWidth: 2,
          pointRadius: 1,
          pointHitRadius: 10,
          data: data && [...data]
        }
      ]
  })

  useEffect(() =>{
        
    const labels = paidOnpaySales&&paidOnpaySales.map(x =>Object.values(x))
    
    const flabels =[]
    
    for(let i =0; i< labels.length; i++){
        const element = labels[i][10]
        flabels.push(new Date(element).toUTCString().split(' ')[2])
    }
    setDataLine({
      ...dataLine,
      labels: flabels,
    })

  }, [])

    return (
      <MDBContainer>
        <h3 className="mt-5">Sales</h3>
        <Line data={dataLine} options={{ responsive: true }} />
      </MDBContainer>
    );
}

export default SalesChart;