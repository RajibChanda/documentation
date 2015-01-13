# Learn about API authentication here: plot.ly/r/getting-started
# Find your api_key here: plot.ly/settings/api

library(plotly)

py <- plotly(username='TestBot', key='r1neazxo9w')
trace1 <- list(
  x = c(0, 1, 2, 3, 4, 5, 6, 7, 8), 
  y = c(8, 7, 6, 5, 4, 3, 2, 1, 0), 
  type = "scatter"
)
trace2 <- list(
  x = c(0, 1, 2, 3, 4, 5, 6, 7, 8), 
  y = c(0, 1, 2, 3, 4, 5, 6, 7, 8), 
  type = "scatter"
)
data <- list(trace1, trace2)
layout <- list(
  xaxis = list(
    type = "log", 
    autorange = TRUE
  ), 
  yaxis = list(
    type = "log", 
    autorange = TRUE
  )
)
response <- py$plotly(data, kwargs=list(layout=layout, filename="axes-range-type", fileopt="overwrite"))
url <- response$url
