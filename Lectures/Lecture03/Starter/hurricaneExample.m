%% hurricaneExample.m
% This program determines what category of hurricane it is based on wind
% speed.

% Author: Andrew Bartolini
% Date: 1/17/2024

% Clear Workspace
clear

% Clear Command Window
clc

%% Generate Values
% Generate random wind speed (between 1 and 200 mph)
windSpeed = randi(200);

% Display Values
disp('Wind Speed (mph)')
disp(windSpeed)

%% Determine Hurricane Category
if windSpeed <= 73
    category = 0;
    disp('Category 0')
elseif windSpeed <= 95
    category = 1;
    disp('Category 1')
elseif windSpeed <= 110
    category = 2;
    disp('Category 2')
elseif windSpeed <= 130
    category = 3;
    disp('Category 3')
elseif windSpeed <= 155
    category = 4;
    disp('Category 4')
else
    category = 5;
    disp('Category 5')
end