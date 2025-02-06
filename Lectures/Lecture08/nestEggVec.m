%% nestEggVec.m
% In this version, store the history of the account over time. 
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
% This time, we will use a vector to store the history of the amount of
% money each year. 

% Initialize the vector. This is a good habit to form. 

currentBal = zeros(1,NUM_YEAR+1); % Remember the "Fencepost problem"!

% MATLAB begins indexing at 1, but the first entry takes place after zero
% years. 
currentBal(1)= INIT_BAL;

% This offset-by-one problem can be fixed in two different ways:

% iY is shorthand for iYear
for iY = 2:NUM_YEAR+1
    currentBal(iY) = currentBal(iY-1) + currentBal(iY-1)*RATE;
end

% OR: 

% iY is shorthand for iYear
for iY = 1:NUM_YEAR
    currentBal(iY+1) = currentBal(iY) + currentBal(iY)*RATE;
end

%% Display the Output
disp("The final balance after "+NUM_YEAR+" years is:")
disp(currentBal(end))