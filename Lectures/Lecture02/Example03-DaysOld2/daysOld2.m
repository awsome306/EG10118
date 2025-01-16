%% daysOld2.m 
% This program calculates how old a person is by convernting month,day,year
% they were born to total number of days using input statements

% Author: Kerry Meyers
% Date: 12/15/2021

% Clear memory (i.e. the previously stored variables in the Workspace)
clear

% Clear the Command Window
clc

%% Variable Assignments
% Note that when you want to store the input value as a string, you need to
% use the 's' as a second argument (after the ,). When you want to save the
% input value from the user as a number, do not use the second argument.

% Name of the user
name = input('Enter your name: ','s');

% Since we want to add and multiple the values of birth_year, birth_month,
% and birth_day, we need to make sure we store them as numbers, not 
% characters ... hence we don't use 's'.

% Individual's birthday using input commands
birth_year = input('Enter the year you were born: '); 
birth_month = input('Enter the month you were born: ');
birth_day = input('Enter the day you were born: ');

% Current year, month, day information
% Advanced note: some of this information can be gathered from date command
year = input('What year is it? ');
month = input('What month is it? ');
day = input('What day is it? ');

%% Calculate How Many Days Old
% Assumptions being made: 
%   1) We are ignoring leap years
%   2) We are using the average number of days in a month (30.42)

year_diff = year-birth_year;
month_diff = month-birth_month;
day_diff = day-birth_day;

total_days = (year_diff*365)+(month_diff*30.42)+(day_diff);

%% Display the Results
% This creates a space between input and output within the Command Window
disp('  ')

% Display name
disp(name)

% Display days old. The first line is a description to explain what
% information is forthcoming.
disp('You are the following number of days old:  ')
disp(total_days)
