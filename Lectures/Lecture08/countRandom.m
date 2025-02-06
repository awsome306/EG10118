%% countRandom.m
% Generate random numbers between 
% RAND_MIN and RAND_MAX
% until the number GOAL_NUM has been generated
% a total of GOAL_TIMES number of times. 
%
% * Author: Joseph Heston
% * Date: 02-05-2025

%% Clear the workspace
% clear, clc, close all

%% Set Parameters
% RAND_MIN = 1;
% RAND_MAX = 10;
% GOAL_NUM = 5;
% GOAL_TIMES = 20;

%% Compute the random numbers and display the output
numTimes    = 0; % Number of times we've generated a random number
numGoal     = 0; % Number of times the random number was the one we wanted
while numGoal < GOAL_TIMES 
    randNum = randi([RAND_MIN RAND_MAX]);
    %disp(randNum)
    if randNum == GOAL_NUM
        numGoal = numGoal + 1;
    end
    numTimes = numTimes+1;
end
% disp("It took "+numTimes+" tries to generate the number "...
%     +GOAL_NUM+" a total of "+GOAL_TIMES+" times.")




