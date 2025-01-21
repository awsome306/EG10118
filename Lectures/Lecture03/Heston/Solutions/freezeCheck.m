%% Check Freezing (freezeCheck.m)
% This program asks the user for the temperature in degF, 
% compares the value to to 32, and displays the appropriate message.
%
% * Authors: Joseph Heston
% * January 14, 2025

%% Clearing the Workspace
% It is good practice to write the following line of code at the start of
% each script. This removes old variables and closes any figures. 

% Clear Workspace
clear
% Clear the Command Window
clc
% Close any open figures
close all

%% Get User Input:
% Ask the user for the temperature as a "double", not a string. 
% (That's why there's no 's' in the input command)

temperatureValue = input("What is the temperature(degF)? ");

%% Compare the input to 32:

if temperatureValue < 32
    disp("Below Freezing")
elseif temperatureValue == 32
    disp("Exactly Freezing")
elseif temperatureValue > 32
    disp("Above Freezing")
else
    disp("Error in computation.")
end
