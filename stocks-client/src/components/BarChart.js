import React, { useEffect } from "react";
import Chart from "chart.js";

const BarChart = () => {

    useEffect( () => {
        const makeAPICall = async () => {
          try {
          const res = await fetch('http://localhost:3000/stocks/1')  
          const json = await res.json()
          const formattedData = prepareData(json)
          createChart(formattedData)
          console.log('BarChart - json'. json)
          } catch (err) {
             console.error(err)
          }
        }
        makeAPICall()
      }, []);

      const prepareData = (data) => {
          const chartData = {
            labels: [],
            datasets: [{ label: "average price", data: [] },
            { label: "change in price", data: [] } ]
         }

         data.average_prices.forEach(average_price => {
            chartData.labels.push(average_price.id);
            chartData.datasets[0].data.push(average_price.price);
            chartData.datasets[1].data.push(average_price.change_in_price);
         });
         console.log(chartData);
         return chartData;

      }

      const createChart = (data) => {
        const ctx = document.querySelector('#stocks')
        const tempsChart = new Chart(ctx, {
            type: 'line',
            // type: 'bar',
            data: data
        })
    }

    return (
        <>
        <h1>Stocks</h1>
        <canvas id="stocks" width="300" height="100"></canvas>
        </>
    )
}

export default BarChart;