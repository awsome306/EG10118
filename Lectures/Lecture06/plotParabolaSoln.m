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

% Calculating the time step
dx = (xmax-xmin)/(Nx-1);

%% Create the x Vector Using a for Loop

% Initiaize the vector
x = zeros(1,Nx);

% Set the first value of the vector to be the starting value
x(1) = xmin;

% Use a for loop to calculate the second through last point by adding dx
% each time.
for ix = 1:Nx-1
    x(ix+1) = x(ix)+dx;
end

%% Alternate Approaches to Create the x Vector
% Alternative Approach
% x = linspace(xmin, xmax, Nx); % create x array using the linspace function
% Remember, linspace formatting is
% x = linspace(starting_value,ending_value,number_of_points)

% Alternative Approach
%x = xmin:(xmax-xmin)/(Nx-1):xmax;

%% Tabulate the y vector
% Initialize y vector
y = zeros(1,Nx);

% Create y array using for loop
for ix = 1:Nx
    y(ix) = a*x(ix)^2+b*x(ix)+c;
end

%% Plot values
% Plot the x and y arrays.  Theoretical data plotted as a line
plot(x,y)

% In addition, show plot with some of the other options
% plot(x,y, "-ro") for example

% Show axis tool here
% Show help plot here

% Add axis labels
xlabel("x")
ylabel("y")

% Create title block
title("f(x) = ax^2 + bx + c");

% Add grid
grid on