## Copyright (C) 2019 Adam Burroughs
## 
## This program is free software: you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see
## <https://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} plot_locus (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Adam Burroughs <adamburroughs@Adams-MBP>
## Created: 2019-03-17

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
