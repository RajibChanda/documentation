var data = [
  {
    x: [0, 1, 2], 
    y: [6, 10, 2], 
    error_y: {
      type: "percent", 
      value: 50, 
      visible: true
    }, 
    type: "scatter"
  }
];
Plotly.plot(divid, data);
