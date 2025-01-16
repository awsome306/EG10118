%% Days Old (daysOld.m)
% This program calculates how old a person is by converting month,day,year
% they were born to total number of days
%
% * Author: 
% * Collaborators: Section X
% * Date: 1/16/2025

%% Clearing the Workspace
% It is good practice to write the following line of code at the start of
% each script. This removes old variables and closes any figures. 

% Clear Workspace
clear
% Clear the Command Window
clc
% Close any open figures
close all

%% Variable Assignments
% Individual's birthday
birth_year = 1976; 
birth_month = 2;
birth_day = 1;

% Current year, month, day
% You can check that year, month and day are actually functions - so don't
% use them!
current_year = 2023;
curent_month = 1;
current_day = 23;

%% Calculate How Many Days Old
% Assumptions being made: 
%   1) We are ignoring leap years
%   2) We are using the average number of days in a month (30.42)

year_diff = current_year-birth_year;
month_diff = curent_month-birth_month;
day_diff = current_day-birth_day;

total_days = (year_diff*365)+(month_diff*30.42)+(day_diff);

%% Display the Results
% Display days old. The first line is a description to explain what
% information is forthcoming.
disp('Number of days old:  ')
disp(total_days)