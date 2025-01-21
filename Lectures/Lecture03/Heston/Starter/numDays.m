%% Number of Days Per Month (numDays.m)
% Requests the user to provide a month and displays the number of days in 
% that month.
%
% * Author: Joseph Heston
% * Collaborators: Section 09
% * Date: 01/21/2024

%% Clear the Workspace
clear, clc, close all

%% Get User Input
% Ask the user which month they would like to check and store that value as
% a string. (Don't forget the 's')

monthName = 

% Convert the input to all lowercase  so the code is not case-sensitive.
%monthName = lower(monthName);

%% Switch Conditional
% 30 days has September, April, June, and November
% Once short (28) February's done, 
% All the rest have 31. 

switch monthName
    case {"september", "april", "june", "november"}
        numDays = 30;
    case {"february"}
        numDays = 28;
    case {"january","march", "may", "june", "july","august","october","december"}
        numDays = 31;
    otherwise
        disp("Invalid Input")
end

% Display that the program has ended:
disp("Program complete.")