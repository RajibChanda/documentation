% Learn about API authentication here: plot.ly/matlab/getting-started
% Find your api_key here: plot.ly/settings/api

signin('TestBot', 'r1neazxo9w')
trace1 = struct(...
  'x', [1, 2, 3], ...
  'y', [4, 3, 2], ...
  'type', 'scatter');
trace2 = struct(...
  'x', [20, 30, 40], ...
  'y', [30, 40, 50], ...
  'xaxis', 'x2', ...
  'yaxis', 'y2', ...
  'type', 'scatter');
data = {trace1, trace2};
layout = struct(...
    'yaxis2', struct(...
      'domain', [0.6, 0.95], ...
      'anchor', 'x2'), ...
    'xaxis2', struct(...
      'domain', [0.6, 0.95], ...
      'anchor', 'y2'));
response = plotly(data, struct('layout', layout, 'filename', 'simple-inset', 'fileopt', 'overwrite'));
plot_url = response.url
