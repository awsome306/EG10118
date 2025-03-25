%% plotPopDensities.m
% This program plots the population densities of four states/countries from
% 1960 to 2020 in 10 year increments.

% Author: Andrew Bartolini
% Date: 1/29/2023
% Note any collaborators

% Clear Workspace
clear

% Clear the Command Window
clc

%% Set Parameters
% Set the year vector
yearVec = [1960, 1970, 1980, 1990, 2000, 2010, 2020];

% Set the population density vectors (choose any that you want)
popDensity_RI = [831.4, 915.8, 916.2, 970.6, 1014.00, 1018.10, 1061.40];
popDensity_IN = [130.1, 145, 153.2, 154.8, 169.7, 181, 189.4];
popDensity_POR = [97.1, 95.0, 107.1, 108.7, 113.1, 116.3, 112.4];
popDensity_ITA = [169.1, 182.2, 191.8, 194.2, 194.8, 203.1, 201.6];

%% Plots the Data
% Method 1
figure(1)
plot(yearVec,popDensity_RI,"k--*", yearVec,popDensity_IN,"r--o", ...
    yearVec,popDensity_POR,"b-s", yearVec,popDensity_ITA,"m-.^")

% Method 2
figure(2)
plot(yearVec,popDensity_RI,"k--*", ...
    yearVec,popDensity_IN,"r--o", ...
    yearVec,popDensity_POR,"b-s", ...
    yearVec,popDensity_ITA,"m-.^")

% Method 3
figure(3)
plot(yearVec,popDensity_RI,"k--*")
hold on
plot(yearVec,popDensity_IN,"r--o")
plot(yearVec,popDensity_POR,"b-s")
plot(yearVec,popDensity_ITA,"m-.^")
hold off

% Bonus: Method 4 (Concatenation)
figure (4)
popDensity = [popDensity_RI;popDensity_IN;popDensity_POR;popDensity_ITA];
plot(yearVec,popDensity)

% Add Axis Labels
xlabel("Year")
ylabel("Population Density (people/square mile)")

% Add Figure Title
title("Population Density from 1960 - 2020","FontSize",16)

% Add Legend
legend({"Rhode Island","Indiana","Portugal","Italy"},Location="northeastoutside")

% Grid on 
grid on 