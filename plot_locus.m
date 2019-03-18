% Adam Burroughs
% UASC

% Wraps the MATLAB/Octave scatter function. Creates square aspect ratio plots on 
% the figure provided.
%
% x = array of x points
% y = array of y points
% fig = figure handle

function [] = plot_locus (x, y, fig)
  figure(fig);
  
  % Limits
  current_x_lim = xlim;
  current_y_lim = ylim;
  
  % Get minimum limits
  current_x_lim(1) = min(current_x_lim(1), min(x));
  current_x_lim(2) = max(current_x_lim(2), max(x));
  
  current_y_lim(1) = min(current_y_lim(1), min(y));
  current_y_lim(2) = max(current_y_lim(2), max(y));
  
  % Make limits square
  total_lim = [0, 0];
  
  total_lim(1) = min(min(current_x_lim, current_y_lim));
  total_lim(2) = max(max(current_x_lim, current_y_lim));
   
  xlim(total_lim);
  ylim(total_lim);
  
  % Plot
  hold on;
  scatter(x, y, ".")
  
  % Set aspect ratio
  pbaspect([1 1 1])
endfunction
