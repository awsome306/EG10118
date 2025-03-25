%% studentInfo.m 
% This script STORES students dorm information using a for loop

% Author: Kerry Meyers
% December 20, 2021

% Clear Workspace
clear

% Clear Command Window
clc

%% Set parameters 
% Set the number of people you want to collect data from
% (# of people at your table)
N = input('Enter the number of students to enter their inforamation: ');

%% Use a for loop to gather information from each user

% Initialize the vectors
name = strings(N,1);
state_country = strings(N,1);
nSiblings = zeros(N,1);


% Let's run the for loop! We will set it to start at 1, increment in steps
% of 1 until we reach N. That is the colon notation ... 
% (i.e. starting_value:increment:stop_when_execeeded_value)
% iStudent is the looping variable, we use i in front to remind us (the
% user) that this variable changes value each time you go through the loop.
% The for loop doesn't care, but it helps us the programmers!
for iStudent = 1:1:N
    % Gather Input
    
    % Note: To store the name and dorm in an array, it easier to use a
    % STRING!! That is because a character arry is already a vector, but
    % the string will store all the information into one element, allowing
    % us to make a vector of strings!
    name(iStudent) = string(input('Enter your name: ','s'));
    state_country(iStudent) = string(input('Enter your state/country: ','s'));
    nSiblings(iStudent) = input('Enter your number of siblings: ');
end

%% Display One Student
%  Ask the user for a number between 1-N
student = input("Enter a number between 1 - " + N + " : ");

% Display the result
% When displaying, we will need to convert the string to a char before we
% concatenate all the results! You could also concatenate a string if you
% wanted to!
disp(' ')
disp("Student Name: " + name(student))
disp("Number of Siblings: " + string(nSiblings(student)))
disp("State/Country: " + state_country(student))
disp(' ---------------------------- ')