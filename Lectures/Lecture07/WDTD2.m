%% Lecture 07 What does this do? Number 02

clear, clc, close all


%M = [1:5; 6:10; 11:15; 16:20];

% Improved for readability:
M = [1:5;...
     6:10;...
    11:15;...
    16:20];

disp(M)

%% Main Loop
for iVal = 2:1:3
    disp("Row = ")
    disp(iVal)
    disp("--")
    for jVal = 4:1:5
        disp(M(iVal,jVal))
    end
    disp("--")
end