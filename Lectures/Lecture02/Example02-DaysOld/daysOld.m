%% Days Old (daysOld.m)
% This program calculates how old a person is by converting month,day,year
% they were born to total number of days
%
% * Author: Joseph Heston
% * Collaborators: Section 09
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
birthYear   = 1998;
birthMonth  = 01;
birthDay    = 26;

% Current year, month, day
% You can check that year, month and day are actually functions - so don't
% use them!
todayYear   = 2025;
todayMonth  = 01;
todayDay    = 16;
%% Calculate How Many Days Old
% Assumptions being made: 
%   1) We are ignoring leap years
%   2) We are using the average number of days in a month (30.42)

diffYears   = todayYear  - birthYear;
diffMonths  = todayMonth - birthMonth;
diffDays    = todayDay   - birthDay;

daysInYear  = 365;
daysInMonth = 30.42;
daysInDay   = 1;

numOfDays = daysInYear*diffYears + daysInMonth*diffMonths + daysInDay*diffDays;

%% Display the Results
% Display days old. The first line is a description to explain what
% information is forthcoming.

disp('You are the following number of days old:')
disp(numOfDays)