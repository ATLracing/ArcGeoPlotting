% Adam Burroughs
% UASC

function points = create_geodesic (pt1, pt2, num_points)
  points = zeros(num_points, 2);
  points(1, :) = pt1;
  points(num_points, :) = pt2;
  
  [dist, az] = vincenty(pt1, pt2);
  
  for i = 2:(num_points - 1)
    [latr, lonr] = vincentyDirect(deg2rad(pt1(1)), deg2rad(pt1(2)), dist * (i - 1) / (num_points - 1), deg2rad(az(1)), 'length');
    points(i, :) = [rad2deg(latr), rad2deg(lonr)];
  end
endfunction
