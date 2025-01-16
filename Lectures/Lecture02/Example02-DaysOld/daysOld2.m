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

%% Get User Inputs

% Individual's birthday
birthYear   = input("In what year were you born?: ");
birthMonth  = input("In what month were you born? (As a Number): ");
birthDay    = input("On what day of the month were you born?: ");

% Current year, month, day
% You can check that year, month and day are actually functions - so don't
% use them!
todayYear   = input("What is the current year?: ");
todayMonth  = input("What is the current month? (As a number): ");
todayDay    = input("What is the current day? (As a number): ");

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