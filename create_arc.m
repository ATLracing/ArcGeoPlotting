% Adam Burroughs
% UASC

% Creates a locus of points representing an arc.
%
% TYPE point = [lat, lon] in degrees
% center = point
% radius = arc radius in km
% num_points = number of points to compute along arc (more = slower performance/
% prettier graph)
function points = create_arc(center, radius, num_points)
  points = zeros(num_points, 2);
  
  for i = 1:num_points
    azimuth = (i - 1) / num_points * 2 * pi;
    [latr, lonr] = vincentyDirect(deg2rad(center(1)), deg2rad(center(2)), radius, azimuth, "length");
    points(i, :) = [rad2deg(latr), rad2deg(lonr)];
  end
endfunction
