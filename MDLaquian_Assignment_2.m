% Math 111-01: MATLAB (Summer 2019)
% Maria Deanna Laquian
% mlaquian2@student.ohlone.edu
%
% Homework Assignment #2
%
% PROGRAM OBJECTIVE
%
% This program determines the optimal trajectory (or angle (theta)) for
% maximizing the range of an object, launched at three given initial 
% velocities of 50 m/sec, 100 m/sec and 200 m/sec, respectively.
%
% The purpose of this exercise is to exemplify comprehensive MATLAB skills 
% including but not limited to plotting, and animated plotting of data.
%
% VARIABLES
%
% V1 - the first initial velocity of 50 (in m/sec)
% V2 - the second initial velocity of 100 (in m/sec)
% V3 - the third initial velocity of 200 (in m/sec)
% g - gravitational constant of 9.9 (in m/sec^2)
% theta - a set of angles from 0 to 90 (in degrees), with increments of 1 degree each
% R1 - Calculated ranges (in meters) of first initial velocity (50 m/sec). 
%      Range is a function of angle(theta)
% R2 - Calculated ranges (in meters) of second initial velocity (100 m/sec)
% R3 - Calculated ranges (in meters )of third initial veloity (200 m/sec)
%
% x1 - x-coordinates of theta angles (in degrees)
% y1 - y-coordinates of first range (R1)(in meters)
% y2 - y-coordinates of second range (R2)(in meters)
% y3 - y-coordinates of third range (R3)(in meters)
%
% The following are in reverse order based on how the data points are 
% sequenced in the animation, wherein the largest max is animated first, 
% then are displayed in descending order...
% R3_max - the maximum of the curve of the third Range (R3)
% R2_max - the maximum of the curve of the second Range (R2)
% R1_max - the maximum of the curve of the first Range (R1)
%
% For the output display of the table...
% V - contains the the 3 initial velocities, V1, V2, V3
% theta - a different version of the first 'theta' variable, this extracts
%         the corresponding theta (data point on x-axis) from the maxima of 
%         the curve (R1_max) derived by using the 'islocalmax' MATLAB
%         function.
% theta_radians - theta data points of maxima in degrees are converted to
%                 radians.
% Optimal_ranges - maxima of curves, R1, R2, R3, respectively in ascending
%                  order.
% Range_table - a concatenation of the V, theta, theta_radians, and
%               Optimal_ranges data, whereby each are transposed to columns 
%               for required output format.
%
% OUTPUTS
%
% 1) A labeled and formatted table with the resulting maxima ranges for
%    the initial velocities and their corresponding angles in
%    radians and degrees.
% 2) An animated plot of the 3 trajectories  of each of the launches.
%    All 3 are animated in the same coordinate plane, animated sequentially. 
%    The angles (in degrees) will be the x-axis versus the range (in meters) as 
%    the y-axis. The graph will have a title, x and y-axis labels, and the maxima or optimal
%    range data points of the ranges denoted with a circle, labeled with
%    its proper initial velocity.
% 3) 3 graphs from the finished animated plots in the same coordinate plane.
%
% ---- START OF PROGRAM ----
%
clear, clc         % Clears Command and Workspace windows for program execution
format compact     % Diminishes spaces for cleaner output

V1 = 50;           % Initializes variable for first velocity at 50 m/sec
V2 = 100;          % Initializes variable for second velocity at 100 m/sec
V3 = 200;          % Initializes variable for third velocity at 200 m/sec

g = 9.9;           % Assigns gravitational constant at 9.9 m/sec^2
theta = 0:90;      % Creates a vector of angles (in degrees) from 0 to 90
                   % degrees, with increments of 1 degree

R1 = (V1^2)*sind(2.*theta)/g;    % Calculates first range as a function of theta
                                 % with first initial velocity of 50 m/sec
R2 = (V2^2)*sind(2.*theta)/g;    % Calculates second range as a function of theta
                                 % with the second initial velocity of 100
                                 % m/sec
R3 = (V3^2)*sind(2.*theta)/g;    % Calculates third range as a function of theta
                                 % with the third initial velocity of 200
                                 % m/sec

x1 = theta;         % Assigns angles (theta) as the x-coordinates of the plane 
y1 = R1;            % Assigns the ranges of the first initial velocity as the y1
                    % coordinates of the plane
y2 = R2;            % Assigns the ranges of the second initial velocity as the y2
                    % coordinates of the plane            
y3 = R3;            % Assigns the ranges of the third initial velocity as the y3
                    % coordinates of the plane
%
% Plots are animated in a descending manner, thus the third range (R3) or 
% the y3 coordinate is coded first...
% For the first animated plot, the largest initial velocity of 200 m/sec or
% the third range is used...
comet(x1,y3)                % Animates the curve of the third range on a 2D plane
axis([0 90 0 4500])         % Axes are set at 0 to 90 for the x-axis and 
                            % 0 to 4500 for the y-axis
R3_max = islocalmax(R3);    % Finds the maximum of the curve of the third range (R3)
                            % and places in variable, R3_max
plot(x1, R3, x1(R3_max), y3(R3_max), 'o')  % Denotes the maximum of the third range
                            % function with an 'o', by plotting the x-axis
                            % (x1 or the theta angles in degrees), the y-axis
                            % (R3 or the distances of third range), then the x-coordinate
                            % of the maximum of R3, x1(R3_max) and the y-coordinate of
                            % R3_max
hold on             % The plot is kept on the graphical interface while the next
                    % plot is executed.
%
% For the second animated plot, the second initial velocity of 100  m/sec
% or second range is used...
comet(x1,y2)                % Animates the curve of the second range on a 2D plane
R2_max = islocalmax(R2);    % Finds the maximum of the curve of the second range (R2)
                            % and places in variable, R2_max
plot(x1, R2, x1(R2_max), y2(R2_max), 'o')   % Denotes the maximum of the second range
                            % function with an 'o', by plotting the x-axis
                            % (x1 or the theta angles in degrees), the y-axis
                            % (R2 or the distances of third range), then the x-coordinate
                            % of the maximum of R2, x1(R2_max) and the y-coordinate of
                            % R2_max
hold on             % The plot is kept on the graphical interface while the next
                    % plot is executed.


% For the third animated plot, the smallest initial velocity of 50 m/sec
% or first range is used...
comet(x1,y1)                % Animates the curve of the first range on a 2D plane
R1_max = islocalmax(R1);    % Finds the maximum of the curve of the first range (R1)
                            % and places in variable, R1_max
plot(x1, R1, x1(R1_max), y1(R1_max), 'o') % Denotes the maximum of the first range
                            % function with an 'o', by plotting the x-axis
                            % (x1 or the theta angles in degrees), the y-axis
                            % (R1 or the distances of first range), then the x-coordinate
                            % of the maximum of R1, x1(R1_max) and the y-coordinate of
                            % R1_max
%
% Labels for the maxima of the curves...
% Labels are subtracted by 11 on the x-axis, and added 200 for the y-axis
% for proper placement of label centered and above the maxima data
% points...
text(x1(R3_max)-11, y3(R3_max)+200, 'Velocity = 200 m/s')
text(x1(R2_max)-11, y2(R2_max)+200, 'Velocity = 100 m/s')
text(x1(R1_max)-11, y1(R1_max)+200, 'Velocity = 50 m/s')
% 
% Title of the graph, and labels for the x and y-axes...
title('Range of Projectile, Given Angle of Departure')
xlabel('Angle of Departure (Degrees)')
ylabel('Rnage of Projectile (Meters)')
%
% The hold is turned off for the graphical interface...
hold off

% Output display of program title and author information...
fprintf('%10s %25s \n', 'Math 111: ', 'MATLAB for Engineers')
fprintf('%10s %25s \n', 'Your Name:', 'Maria Deanna Laquian')
fprintf('%10s %29s \n', 'Email address:', 'mlaquian2@student.ohlone.edu')
fprintf('%5s %31s \n', 'Assignment #2:', 'Animated Two-Dimensional Plots')
fprintf('%5s %34s \n \n \n', '    ','and Identifying Extremes')
%
% Output display introducing the table...
disp('The following table displays the optimum firing angles and')
disp('associated maximum ranges for each given initial velocity...')
%
% Variables for table...
V = [V1,V2,V3];    % The 3 initial velocities are placed in variable, V
theta = [theta(R1_max) theta(R2_max) theta(R3_max)];  % Extraction of corresponding
                   % theta information (x-axis data point) from maxima of
                   % curves
theta_radians = theta .* (pi/180);  % Conversion of theta data points from 
                                    % degrees to radians
Optimal_Ranges = [max(R1), max(R2), max(R3)];  % The 3 maxima of each of the curves 
                                    % are place in the variable,
                                    % Optimal_Ranges
Range_table = [V',theta_radians', theta', Optimal_Ranges'];  % A table of 
                                    % concatenated information of V, theta,
                                    % theta_radians, and Optimal_Ranges are
                                    % arranged in columns by transposing
                                    % the data.                                  
%
% Printing of the table...
% Sets up string spaces for table headers and corresponding string
% titles...
fprintf('\n %10s %25s %10s', 'Velocity', '-- Optimal Angles --', 'Optimal')
fprintf('\n %9s %13s %11s %12s', '(m/s)', 'Radians','Degrees', 'Range(m)')
fprintf('\n %9s %13s %11s %12s', '--------', '--------','--------', '--------')
%
% Sets up floating number spaces, with decimal point precisions as per required
% and places the table which consists of the 3 maxima points of the Range function
% curves or simply, the range of distance at which the initial velocities could 
% be maximized, and their optimal trajectories in radians and degrees...
fprintf('\n %8.0f %13.5f %12.5f %12.2f', Range_table')
fprintf('\n')
%
% ---- END OF PROGRAM ----
%