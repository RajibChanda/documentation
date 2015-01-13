// Learn about API authentication here: plot.ly/nodejs/getting-started
// Find your api_key here: plot.ly/settings/api

var plotly = require('plotly')('TestBot', 'r1neazxo9w');
var data = [
  {
    z: [[1, 20, 30], [20, 1, 60], [30, 60, 1]], 
    type: "heatmap"
  }
];
var graphOptions = {filename: "basic-heatmap", fileopt: "overwrite"};
plotly.plot(data, graphOptions, function (err, msg) {
    console.log(msg);
});
