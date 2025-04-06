%% nestEgg.m
% Find the balance of $1000 after N=30 years. 
% The interest compounds annually at a rate of r = 0.08
%
% * Author: Joseph Heston
% * Date: 02-05-2025

%% Clear the Workspace

clear, clc, close all

%% Set desired formatting
format bank
format compact

%% Set Parameters

INIT_BAL = 1000;
NUM_YEAR = 3;
RATE     = 0.08;

%% Compute Interest

currentBal = INIT_BAL;

for iYear = 1:NUM_YEAR
    currentBal = currentBal + currentBal*RATE
end

%% Display the Output

disp("The final balance after "+NUM_YEAR+" years is:")
disp(currentBal)