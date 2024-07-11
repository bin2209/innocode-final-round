  document.addEventListener('DOMContentLoaded', function () {
            const selectElement = document.getElementById('timePeriod');
            const percentageChangeElement = document.getElementById('percentageChange');
            let chart;

            function fetchData(period) {
                const data = JSON.stringify({
                    stock: 'FPT.VN',
                    period: period,
                    region: 'VN',
                    currency: 'VND'
                });

                const xhr = new XMLHttpRequest();
                xhr.withCredentials = true;

                xhr.addEventListener('readystatechange', function () {
                    if (this.readyState === this.DONE) {
                        const response = JSON.parse(this.responseText);
                        console.log(response);

                        // Extract dates and closing prices from the response
                        const labels = response.records.map(record => new Date(record.index));
                        const prices = response.records.map(record => parseFloat(record.Close));

                        // Calculate percentage change
                        const startPrice = prices[0];
                        const endPrice = prices[prices.length - 1];
                        const percentageChange = ((endPrice - startPrice) / startPrice * 100).toFixed(2);

                        // Display percentage change
                        percentageChangeElement.innerHTML = `Percentage Change: ${percentageChange}%`;

                        // Prepare data for chart
                        const dataSets = [];
                        let trendColor = prices[1] >= prices[0] ? 'rgba(75, 192, 192, 1)' : 'rgba(255, 99, 132, 1)';

                        let currentDataSet = {
                            label: 'FPT.VN Stock Price',
                            data: [],
                            borderColor: trendColor,
                            borderWidth: 2,
                            fill: false,
                            pointRadius: 0
                        };

                        for (let i = 0; i < prices.length - 1; i++) {
                            let newTrendColor = prices[i + 1] >= prices[i] ? 'rgba(75, 192, 192, 1)' : 'rgba(255, 99, 132, 1)';

                            if (newTrendColor !== trendColor) {
                                dataSets.push(currentDataSet);
                                currentDataSet = {
                                    label: 'FPT.VN Stock Price',
                                    data: [{x: labels[i], y: prices[i]}],
                                    borderColor: newTrendColor,
                                    borderWidth: 2,
                                    fill: false,
                                    pointRadius: 0
                                };
                                trendColor = newTrendColor;
                            }

                            currentDataSet.data.push({x: labels[i + 1], y: prices[i + 1]});
                        }
                        dataSets.push(currentDataSet);

                        // Update the chart
                        if (chart) {
                            chart.data.labels = labels;
                            chart.data.datasets = dataSets;
                            chart.update();
                        } else {
                            const ctx = document.getElementById('stockChart').getContext('2d');
                            chart = new Chart(ctx, {
                                type: 'line',
                                data: {
                                    labels: labels,
                                    datasets: dataSets
                                },
                                options: {
                                    scales: {
                                        x: {
                                            type: 'time',
                                            time: {
                                                unit: 'day'
                                            }
                                        },
                                        y: {
                                            beginAtZero: false
                                        }
                                    }
                                }
                            });
                        }
                    }
                });

                xhr.open('POST', 'https://yahoo-finance160.p.rapidapi.com/history');
                xhr.setRequestHeader('x-rapidapi-key', 'f3805f8189msh1f3cd4204698d78p17388cjsn8b2a4a2e350a');
                xhr.setRequestHeader('x-rapidapi-host', 'yahoo-finance160.p.rapidapi.com');
                xhr.setRequestHeader('Content-Type', 'application/json');

                xhr.send(data);
            }

            // Fetch initial data for the default selected period
            fetchData(selectElement.value);

            // Add event listener to the select element
            selectElement.addEventListener('change', function () {
                fetchData(this.value);
            });
        });