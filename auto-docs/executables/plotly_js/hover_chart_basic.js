var data = [
  {
    x: [0, 1, 2], 
    y: [1, 3, 2], 
    mode: "markers", 
    text: ["Text A", "Text B", "Text C"], 
    type: "scatter"
  }
];
var layout = {title: "Hover over the points to see the text"};
Plotly.plot(divid, data, layout);
