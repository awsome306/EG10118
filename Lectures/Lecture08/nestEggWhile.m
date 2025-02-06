%% nestEggWhile.m
% Find how long it takes an account to reach a certain value. 
% (Let the desired end balance be called END_BAL)
% The initial balance is $1000.
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
%NUM_YEAR = 3;
END_BAL  = 10E3; 
RATE     = 0.08;

%% Compute Interest Using a While Loop
% This time, we will use a vector to store the history of the amount of
% money each year. 

% We do not know how long the while loop will last, so we can't initialize
% the vector. 
%currentBal = zeros(1,NUM_YEAR+1);

% MATLAB begins indexing at 1, but the first entry takes place after zero
% years. 
currentBal(1)= INIT_BAL;

% We have to define the iterator before the while statement
iY = 1;

while currentBal(iY) < END_BAL
    currentBal(iY+1) = currentBal(iY)+currentBal(iY)*RATE;
    iY = iY+1;
end

%% Display the Output
clc
disp("The final balance after "+(iY-1)+" years is:")
disp(currentBal(end))
disp('-----')
currentBal'