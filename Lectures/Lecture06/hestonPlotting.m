%% Plotting Starter Code
% A block of code you can use to get started with using plots in MATLAB.
%
% * Author: Joseph Heston
% * Date: 1/29/2025

%% Clear the Workspace
% Clear the Workspace of old variables, 
% Clear the Command Window of old lines of code,
% Close all previous figures

clear, clc, close all
%% Create sample data
% Replace this with the data you want to plot.

% Create the x array
minX    = -10;
dX      = 0.01;
maxX    = +10;

x = minX:dX:maxX;

% Create the y array(s)
y1 = (1/2)*x.^2;
y2 = sin(x);
y3 = sind(x);
%% Plotting!

% Choose one of the following lines to open a new figure:

%figure()
%figure('Name','This is the name of the figure')

% Plot the functions
plot(x,y1,'bo-','LineWidth',0.5,'DisplayName','This is y1')
hold on
plot(x,y2,'rx--','LineWidth',0.5,'DisplayName','This is y2')

% Create a title
exampleTitle = sprintf('Fancy title with Greek letters \\alpha, \\beta')
title(exampleTitle)

% Add other nice features:
xlabel('x label [unit]')
ylabel('y label [unit]')
% xlim([xMin xMax])
% ylim([yMin yMax])

grid on % Add gridlines
legend('Location','best')