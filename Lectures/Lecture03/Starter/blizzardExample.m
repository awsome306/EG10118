%% blizzardExample.m
% This program determines if the criteria for a blizzard are met.

% Author: Andrew Bartolini
% Date: 1/17/2024

% Clear Workspace
clear

% Clear Command Window
clc

%% Generate Values
% Generate random wind speed (between 1 and 50 mph)
windSpeed = randi(50);

% Generate number of hours visibility is less than 1/4 mile (between 1 and
% 10 hours)
timeLowVisibility = randi(10);

% Display Values
disp('Wind Speed (mph)')
disp(windSpeed)

disp('Time Visibility is Less than 1/4 mile')
disp(timeLowVisibility)

%% Determine Blizzard
if windSpeed >= 35 && timeLowVisibility >= 3
    blizzard = 1;
    disp('It is a blizzard!')
else
    blizzard = 0;
    disp('Not quite a blizzard')
end