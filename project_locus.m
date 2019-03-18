% Adam Burroughs
% UASC

% Takes an array of points and projects them into plottable x-y pairs.
%
% TYPE point  = [lan, lon] in degrees
% points = [point1; point2; ... pointN]
% center = point

function [x_array, y_array] = project_locus (points, center)
  x_array = zeros(size(points, 1), 1);
  y_array = zeros(size(points, 1), 1);
        
  for i = 1:size(points, 1)
    % Pull out current point
    point = points(i, :);
    
    % Find distance and azimuth from center 
    dist = 0;
    azimuth = 0;
    
    if (any(center ~= point))
      [dist, azimuth] = vincenty(center, point);
    endif
    
    % Plot convert to x-y coordinates using standard 2D geometry
    x_array(i) = dist * sind(azimuth(1));
    y_array(i) = dist * cosd(azimuth(1));
  end
endfunction
