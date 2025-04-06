%% nestEggVec.m
% This program takes an initial balance that accrues interest yearly 
% and finds the new account balance over a given number of years.
%
% Author: Joe Lyon & Andrew Bartolini
% January 27, 2025
% 
% Clear Workspace
clear

% Clear Command Window
clc

%% Set parameters
% Total years that the nestEgg will build
totalYears = 30; % years

% Annual interest rate
rate = 0.08;

% Initial balance of the account
initialBalance = 1000; % $

%% Initialize arrays
% Create a row vector that as a column for each year based on the
% totalYears variable.


% Set the first balance to the initialBalance. Note that the first index in
% MATLAB is 1. This is sometimes different in other programming languagues.


%% Calculate balances
% Use a FOR loop to cycle through each year and calculate the new balance
% based on the previous year's balance and the interest rate.
%
% We store the data in a vector because we need it for a future application
% (i.e., we need to plot it).




