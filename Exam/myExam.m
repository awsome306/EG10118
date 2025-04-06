%% myExam.m
%
% * Author: J. Heston
% * Date: 3/19/2025
%

%% Clear the Workspace
clear, clc, close all

%% Section 02

% 1. Load the Data:
% load the data:
% A = load(precSouthBend.txt);

A = 15*rand(11,14);

% 2. Size
[numRows, numCols] = size(A);

% 3. Month Data
monthData = A(:,2:end-1);

% 4. Find max
    % init:
    maxValue = 0;
    maxValInd = 1;
for i = 1: numel(monthData)
    if monthData(i) > maxValue
        maxValue = monthData(i);
        maxValInd = i;
    end
end

[maxValRow,maxValCol] = ind2sub(size(monthData),maxValInd);

% 5. Display

disp("The maximum precipitation for any month was "+maxValue+" inches.")
disp("It was found in row "+maxValRow+" and column "+maxValCol+" .")


%% Section 03: Analzing Precip. Data Based on User Inputs
%

% 6. Get User Row input

%userRowNum = input("Which row (1-11) would you like?: ")
userRowNum = 10;

% 7. Get first 3 vals (geq 4.5) in row
% store in vector

NUM_FIRST_VALS = 3;
GEQ_VAL = 4.5;

% Grab the values in the user's row:
userRow = monthData(userRowNum,:);

i = 0; % userRow index
numVals = 0; % outputVec index
while (numVals < NUM_FIRST_VALS) && (i <= length(userRow))
    i = i+1;
    if userRow(i) >= GEQ_VAL
        numVals = numVals+1;
        firstVals(numVals) = userRow(i);
    end
end

if numVals < 3
    disp("Three values above "+GEQ_VAL+" were not found in row "+userRowNum+".")
else
    disp("The first "+NUM_FIRST_VALS+" values above "+GEQ_VAL+" in row "+userRowNum+ "are:")
    disp(firstVals)
end

%% 30 mins!

%% Section 04

