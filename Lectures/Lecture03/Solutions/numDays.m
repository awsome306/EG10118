%% numDays.m
% This program asks the user for the month number and displays the number
% of days.

% Authors: Andrew Bartolini
% January 15, 2025

% Clear memory
clear

% Clear command window
clc

%% Gather Input Data
% Ask the user for the month number
nMonth = input('Enter the month number: ');

%% Conditional % Display
% Using a switch conditional, based on the month number, assign the number
% of days to the variable nDays
switch nMonth
    case {1, 3, 5, 7, 8, 10, 12}
        nDays = 31;
        disp('The number of days in that month is: ')
        disp(nDays)
    case 2
        nDays = 28;
        disp('The number of days in that month is: ')
        disp(nDays)
    case {4, 6, 9, 11}
        nDays = 30;
        disp('The number of days in that month is: ')
        disp(nDays)
    otherwise
        disp('Invalid month number')
end