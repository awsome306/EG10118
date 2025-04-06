%% plotParabola.m
% Create a program to tabulate values and plot the function:
% f(x) = ax^2 + bx + c
% for x on the interval [-3, 3] using 50 sample points.
%
% * Author:
% * Date: 1/30/2025
% * Note any collaborators

%% Clear the Workspace

% Clear Workspace 
clear
% Clear the Command Window
clc
% Close any figures
close all

%% Set Parameters

% a, b, and c are the coefficients of the parabolic equation to be plotted


% xMin, the minimum value of x:

% xMax, the maximum values of x:

% Nx, the number of desired points in the final x vector:

% HOW DO WE FIND THE INCREMENT? Call the increment dx


%% Create the x Vector Using a for Loop

% Initiaize the vector using the "zeros" command. 
% (What happens if we didn't do this?)


% Set the first value of the vector to be the starting value


% Use a for loop to calculate the second through last point by adding dx
% each time.


%% Alternate Approaches to Create the x Vector
% We won't use these in class today, but there are some alternative ways to
% create the vector without using a for loop. 
%
% Alternative Approach A
% x = linspace(xmin, xmax, Nx); % create x array using the linspace function
% Remember, linspace formatting is
% x = linspace(starting_value,ending_value,number_of_points)
%
% Alternative Approach B
%x = xmin:(xmax-xmin)/(Nx-1):xmax;

%% Tabulate the y vector

% Initialize y vector using the zeros command. 


% Create y array using a for loop. y = ax^2 + bx + c


%% Basic Plot:
% Plot the x and y arrays without any formatting. 


%% Advanced Plot:
% MATLAB has LOTS of plotting features. Here are a few to let you format
% the plots to your desire. There are also many more you can find in the
% MATLAB documentation. 

% Create a new figure window:


% Plot the x and y arrays. Now choose how the line looks.
% For demonstration, I chose a
% red line(r) marked with triangles(^) and a dashed line (--).

% We can also choose the name that displays in the legend using 
% 'Display Name'

% For more examples on customizing plots, in the Command Window type: 
% doc plot


% Add axis labels:


% Create title block:
% title("f(x) = ax^2 + bx + c");

% Add grid lines


% To display major and minor grid lines:
