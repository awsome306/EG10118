%% freezeCheck.m
% This program asks the input for the temperature in F and checks its value
% relative to 32, and displays the appropriate message.

% Authors: Joe Lyon
% January 14, 2025

% Clear memory
clear

% Clear command window
clc

%% Get Input From User
% Ask for the temperature
temperatureValue = input('Enter the temperature (in F): ');

%% Conditional Check & Display 
% Check the value and display the corresponding message
% First check if the integer is greater than 32
if temperatureValue > 32 
    % if it is, tell the user it is greater than 32
    disp('Above Freezing');

% Use elseif to check another condition, it being equal to 32
elseif temperatureValue == 32
    % If it is, we want to tell the user it is equal to 32
    disp('Exactly Freezing');

% Finally, if it isn't greater than 32, and it isn't equal to 32, it is less
% than fifty, we so can use ELSE here
else
    % We can then display less than 32
    disp('Below Freezing');
end