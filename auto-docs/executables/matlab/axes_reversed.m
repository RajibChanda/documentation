% Learn about API authentication here: plot.ly/matlab/getting-started
% Find your api_key here: plot.ly/settings/api

signin('TestBot', 'r1neazxo9w')
data = {...
  struct(...
    'x', [1, 2], ...
    'y', [1, 2], ...
    'type', 'scatter')...
};
layout = struct('xaxis', struct('autorange', 'reversed'));
response = plotly(data, struct('layout', layout, 'filename', 'axes-reversed', 'fileopt', 'overwrite'));
plot_url = response.url
