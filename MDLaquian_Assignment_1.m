%% Math 111-01: MATLAB (Summer 2019)
% Maria Deanna Laquian
% mlaquian2@student.ohlone.edu
%
% Homework Assignment #1: Chapter 2
%
%
%% Problem 2.11 Carbon emissions
%
%
% PROBLEM:
% The purpose of this program is to create a comparative table of car names
% with their corresponding Carbon Dioxide emmissions per year. The 
% standard given for all cars was that 1 gallon of gas burned emits 
% 19.4 lbs of CO2 and that each car traveled 12,000 miles per year. 
%
% INPUTS:
% cars = Smart Car FortwoEV, Honda Civic, Honda Fit, Chevrolet Malibu
% (Hybrid), Toyota Prius (Hybrid), Toyota Yaris
%
% CO2 = 19.4 lbs (emitted per gallon of gas)
% mpg = 107 35 35 46 56 32 (miles per gallon for each car)
%
% OUTPUT:
% A table of single array with 2 columns wherein the first column will 
% consist of car names and the second column will consist of corresponding 
% CO2 emmisions of cars per year.
%
% SOLUTION:
% To solve the problem, the amount of Carbon Dioxide (CO2) per gallon needs 
% to be converted to the miles per gallon (mpg) efficiency of each of the 
% cars, and to the amount of CO2 emmitted in 12,000 miles, the distance 
% traveled by each car per year to find the final amount of CO2 burned 
% per year for each of the cars.
%
% ***** START OF THE PROGRAM *****
%
% Program set-up...
clear, clc         % Clear Command and Workspace Windows
format shortg;     % Allow MATLAB to choose which format is best for output
%
% INPUTS:
cars = ["Smart_Car_FortwoEV";       % car names placed in a 6 x 1 array
    "Honda_Civic";
    "Honda_Fit";
    "Chevrolet_Malibu_Hybrid";
    "Toyota_Prius_Hybrid";
    "Toyota_Yaris"]
%
mpg = [107; 35; 35; 46; 56; 32];    % corresponding mpg efficiencies 
                                    % for each of the cars
%
% SOLVE for CO2 emmissions per year
% In one statement, conversions CO2 emmisions per gallon and miles traveled 
% per year are divided with mpg's of cars in the matrix...
CO2 = (19.4 * 12000) ./mpg
%
% Display table with 2 columns illustrating cars with corresponding CO2 emmisions
% per year...
table = [cars, CO2]
%
% ***** END OF PROGRAM *****
%
%
%% Problem 2.13 Conversion tables
%
%
% PROBLEM:
% Create tables of conversions of first, from feet to meters, second, from 
% radians to degrees, third, miles per hour to feet per second, and fourth, 
% from concentrations of Hydronium ions to pH values or acidity.
%
%% Problem 2.13 a) Table of conversion from feet to meters...
%
% PROBLEM: Create table of conversion from feet to meters.
%
% INPUT:
% A feet matrix from 0 to 10, with 1 foot increments.
%
% OUTPUT:
% A Table with 2 columns wherein the 1st column will consist of feet values
% and the 2nd column will contain converted meters values.
%
% SOLUTION:
% Multiply conversion rate of 0.3048 meters per foot to each of the values 
% in the feet matrix 
% 
%  ***** START OF PROGRAM *****
%
% Prep for program by clearing Command and Workspace window
clear, clc
format short    % Set format of values to default 4 digits after decimal.
%
% Input feet values...
feet = 0:10     % Set up matrix of feet values starting from 0 and ending 
                % in 10 feet. Default increments is 1, so there's no need
                % to define.
%
% Convert feet values in matrix to meters values...
meters = 0.3048 .*feet  
%
% Display table with 2 columns of feet and meters values respectively...
table = [feet', meters']
%
% ***** END OF PROGRAM *****
%
%% Problem 2.13 b) Table of conversion from radians to degrees...
%
% PROBLEM: Create table of conversion from radians to degrees.
%
% INPUT:
% A radians matrix from 0 to pi, with 0.1 times pi increments.
% 
% OUTPUT:
% A table with 2 columns wherein the 1st column will consist of radians 
% values and the 2nd column will contain converted degrees values.
%
% SOLUTION:
% Multiply conversion rate of 57.298 degrees per radian to each of the 
% values in the radians matrix.
% 
%  ***** START OF PROGRAM *****
%
% Prep program by clearing Command and Workspace windows...
clear, clc
format short;
%
% Input radians values by setting up matrix...
radians = 0: 0.1 * pi: pi
%
% Convert radians to degrees...
degrees = 57.2958 .* radians
%
% Display table with 2 columns with radians and converted degrees values
% respectively...
table = [radians', degrees']
%
% ***** END OF PROGRAM *****
%
%
%% Problem 2.13 c) Table of conversion from miles per hour to feet per sec
%
% PROBLEM: Create table of conversion from mph to feet per second.
%
% INPUT:
% A mph matrix from 0 to 100, with exactly 15 values.
% 
% OUTPUT:
% A Table with 2 columns wherein the 1st column will consist of mph
% values and the 2nd column will contain converted feet per second values.
%
% SOLUTION:
% Multiply conversion rate of 5200 feet per mile and 1 hr per 3600 seconds
% to each of the values in the mph matrix.
% 
%  ***** START OF PROGRAM *****
%
% Prep program by clearing Command and Workspace windows...
clear, clc
format short;
%
% Input mph values by setting up matrix...
miles_per_hr = linspace (0, 100, 15)
%
% Convert mph to feet per second...
feet_per_sec = (5200/3600) .*miles_per_hr
%
% Display table with 2 columns with mph and converted feet per second
% values respectively...
table = [miles_per_hr', feet_per_sec']
%
% ***** END OF PROGRAM *****
%
%% Problem 2.13 d) Table of Conversion from concentrations to pH values...
%
% PROBLEM: Create table of conversion from concentrations of Hyrdronium
% ions to pH or acidity.
%
% INPUT:
% A Hydronium ions matrix from .001 to 0.1 mol/liter values, with evenly spaced 
% logarithmic increments and exactly 10 values.
% 
% OUTPUT:
% A Table with 2 columns wherein the 1st column will consist of concentration 
% values and the 2nd column will contain converted pH values.
%
% SOLUTION:
% Multiply conversion rate of -log10 to to each of the concentration
% values in the matrix to gain the pH corresponding values.
% 
%  ***** START OF PROGRAM *****
%
% Prep program by clearing Command and Workspace windows...
clear, clc
format short;
%
% Input Hydronium concentration values by setting up matrix...
H_conc = logspace(-3,-1, 10)
%
% Convert concentrations to pH values...
pH = -log10(H_conc)
%
% Display table with 2 columns with concentrations and converted pH values
% respectively...
table = [H_conc', pH']
%
% ***** END OF PROGRAM *****
%
%% Problem 2.17 Newton's Law of Universal Gravitation...
%
% PROBLEM: Using Newton's Law of Universal Gravitation, find Force (F)
% exerted by Earth on the Moon.
% 
% Newton's Law of Universal Gravitation formula:
% F = G (m1m2/r^2)
%
% INPUTS:
% Universal Gravitational constant = 6.673 x 10^11 Nm^2/kg^2
% mass of Earth = 6 x 10^24 kg
% mass of Moon = 7.4 x 10^22 kg 
% distance between Earth and moon = 3.9 x 10^8 kg m
% 
% VARIABLES:
% F - force
% G - Universal Gravitational constant
% m_Earth - mass of Earth
% m_Moon - mass of Moon
% r - distance between Earth and moon
% 
% OUTPUT:
% Force in Newtons
%
% SOLUTION:
% Solve for Force
% 
%  ***** START OF PROGRAM *****
%
% Prep program by clearing Command and Workspace windows...
clear, clc
format shortg;
%
% Input variables...
G = 6.673e-11;
m_Earth = 6e24;
m_Moon = 7.4e22;
r = 3.9e8;
%
% Solve for Force using Newton's Law of Universal Gravitational formula...
F = (G * m_Earth * m_Moon)/ (r^2)
%
% ***** END OF PROGRAM *****
%
%% Problem 2.19 Van der Waals modification of Ideal Gas Law...
%
% PROBLEM: Use Van Der Waals modification formula to determine Temperature 
% (T) in Kelvin of various pressures from 0 to 400 (for 1 liter volume) and a 
% variety of volumes from 0.1 to 10 liters (for 220 bar pressure).
%
% Van der Waals formula:
% (P + n^2a/V^2)(V - nb) = nRT
%
% INPUTS:
% Pressure P = 220 bar
% Moles n = 2 mol
% Volume V = 1 L
% gas under study a = 5.536 L^2 bar/mol^2
% gas under study b = 0.03049 L/mol
% Ideal Gas Constant R = 0.08314472 L bar/Kmol
% 
% OUTPUT:
% Temperature values in Kelvin corresponding to pressure values from 0 to 
% 400 bar for 1 liter volume, and Temperature values corresponding to 
% volume values from 0.1 L to 10 L for 220 bar pressure.
%
% SOLUTION:
% Solve for Temperature (T) from the Van der Waals formula which results
% to:
%
% T = ((P + n^2a/V^2)(V - nb))/(nR)
% 
% to gain the standard T with 220 bar pressure and 1 Liter volume, then
% multiply result to values in the matrix of different pressure values. To 
% determine volume values, revert pressure back to a single value of 
% 220 bar and calculate T by multiplying original T result with 
% varying volume values in matrix to view corresponging changes in 
% temperature. 
% 
%  ***** START OF PROGRAM *****
%
% Prep program by clearing Command and Workspace windows...
clear, clc
format shortg;
%
% INPUTS:
P = 220;
n = 2;
V = 1;
a = 5.536;
b = 0.03049;
R = 0.08314472;
%
% Solve for T from the Van der Waals modified Ideal Gas Law formula...
T = ((P + ((n^2*a)/(V^2)))*(V - n*b))/(n*R)
%
% Create matrices of pressures and volumes to view changing temperatures...
% For pressure, a matrix from 0 to 400 with total of 10 values only...
P = linspace (0,400,10)
%
% For every pressure value in matrix, calculate differing values of T. 
% Volume is already 1 Liter for the calculation...
T = ((P + ((n^2*a)/(V^2)))*(V - n*b))/(n*R)
% 
% Display pressures and corresponding temperatures in table...
pressure_temp_table = [P', T']
% 
% Revert pressure back to 220 bar...
P = linspace (220,220,1)
%
% Create matrix of volume values from 0.1 to 10 with total 10 values...
V = linspace (0.1,10,10)
%
% Calculate new T values for differing volume values in matrix...
T = ((P + ((n^2*a)./(V.^2))).*(V - n*b))/(n*R)
%
% Display volumes and corresponding temperatures in table...
volume_temp_table = [V', T']
%
% ***** END OF PROGRAM *****
%

