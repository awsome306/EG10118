%% plotPopDensities.m
% This program plots the population densities of four states/countries from
% 1960 to 2020 in 10 year increments.

% Author: Andrew Bartolini
% Date: 1/29/2023
% Note any collaborators

%% Clear the Workspace 
% Clear Workspace
clear

% Clear the Command Window
clc

% Close figures
close all

%% Set Parameters
% Set the year vector
yearVec = 

% Set the population density vectors (choose any that you want)
popDensity_IN = [130.1, 145, 153.2, 154.8, 169.7, 181, 189.4];
popDensity_Another = 
popDensity_Another2 =

%% Plots the Data
% Method 1
figure(1)


% Method 2
figure(2)

% Method 3
figure(3)

% Bonus: Method 4 (Concatenation)
figure (4)


% Add Axis Labels
xlabel("Year")
ylabel("Population Density (people/square mile)")

% Add Figure Title
title("Population Density from 1960 - 2020","FontSize",16)

% Add Legend
legend({"Rhode Island","Indiana","Portugal","Italy"},Location="northeastoutside")

% Grid on 
grid on 