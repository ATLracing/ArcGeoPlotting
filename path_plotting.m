% Adam Burroughs% UASC%% Path graphing script (example)clear all;close all;p_seattle = [47, -122];N = 100;  % number of points per locuspoints_arc = create_arc(p_seattle, 1, N);points_geo = create_geodesic(p_seattle, p_seattle + [0.0, 0.01], N);[x_arc, y_arc] = project_locus(points_arc, p_seattle);[x_geo, y_geo] = project_locus(points_geo, p_seattle);fig = figure('name', 'Plot Geo');plot_locus(x_arc, y_arc, fig);plot_locus(x_geo, y_geo, fig);