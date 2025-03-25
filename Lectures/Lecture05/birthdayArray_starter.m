%% birthdayArray.m 
% This program is for practicing storage and access to vectors and arrays
% with birthdays.
%
% Author: Kerry Meyers & Andrew Bartolini
% Date: January 27, 2025
% Modified: J.Heston
% Data: January 28, 2025

%% Clear the Workspace
% Clear Workspace
clear
% Clear Command Window
clc

%% Approach 1: Storing vectors numerically / directly
% Create a vector with your birth year, birth month, and birth day in one
% line. Vector starts and ends with [ ] and you can use commas or spaces to
% seperate the numbers.

myBirthday = 

% Display the vector
disp("My birthday is")
disp(myBirthday)

% Now, students should enter the same data for others at their table


%% Approach 2:  Store each number as a variable then variables into vector
% THIS IS OPTIONAL
% Assign the information into three separate variables
myBirthdayYear  = 
myBirthdayMonth = 
myBirthdayDay   =

myBirthday = [myBirthdayYear, myBirthdayMonth,myBirthdayDay];

% Create a vector to store the information. Here we are using variables
% instead of the numbers, but since the value of the variables are the same
% numbers, the two vectors kerry and kerry2 are identical


% Display second method

%% Assembling the Birthday Array 
% Create an array of all the birthdays; the semicolon (;) creates a new row
% with the next person's information.


%% Accessing Information from a Vector
% Display the birth month of first person by accessing the second position


%% Update Second Row to Notre Dame's Birthday
% Notre Dame's birthday
notreDameBirthday = [1842, 11, 26];

% Update the second row to be be Notre Dame's birthday (one element at a
% time);

% Update the second row to be be Notre Dame's birthday (entire row at a
% time)


%% Display Months and Days
% Display the months and days of the array, which is all the rows (:) and
% the second and third columns (2:3)


