%% countRandomBonus.m
% If you finish the ALA, here is an additional challenge problem. 
% 
% * Run the code in 'countRandom.m' repeatedly (for a BIG_NUMBER of times). 
% * What was the average number of tries it took to reach GOAL_TIMES?
% * How many times did you have to run 'countRandom.m' until the average
% converges to within 1% of the true average?
%
% * Author: Joseph Heston
% * Date: Feb 5, 2025

%% Clear the Workspace
clear, clc, close all

%% Set Parameters

% Good choices are around 100-1000 max
BIG_NUMBER = 1000;

RAND_MIN = 1;
RAND_MAX = 2;
GOAL_NUM = 2;
GOAL_TIMES = 4;


% Prevent the user from entering bad parameters:
if ~(RAND_MIN<=GOAL_NUM && GOAL_NUM <= RAND_MAX)
    fprintf("BAD PARAMETERS! \n")
    return
end
%% Run countRandom

% Initialize the numTimesVec:
numTimesVec = zeros(BIG_NUMBER,1);

% Run the for loop
for n = 1:BIG_NUMBER 

    % Run countRandom.m: 
    countRandom 
    % Make sure to comment the lines that clear the workspace, 
    % otherwise you will delete your iterator variable. Suppress the disp
    % if you want. 

    % Store numTimes for later:
    numTimesVec(n) = numTimes;
end

clear GOAL_TIMES GOAL_NUM numGoal RAND_MIN RAND_MAX

disp("On average, it takes: "+mean(numTimesVec)+" tries.")

%% Compute the Mean Number of Tries 
% What is the mean if you run the code once, twice, thrice, etc...?

for n = 1:length(numTimesVec)
    meanNumTimes(n) = mean(numTimesVec(1:n));
end
%% Plot
close all

x = 1:length(meanNumTimes);
%xx = 1:0.1:length(meanNumTimes);
plot(x,meanNumTimes,'.-')
hold on
percentError = 0.01;
plot(x,meanNumTimes(end)+percentError*meanNumTimes(end)*ones(size(x)),'r-')
plot(x,meanNumTimes(end)-percentError*meanNumTimes(end)*ones(size(x)),'r-')
plot(x,meanNumTimes(end)*ones(size(x)),'k--')
%plot(xx,spline(x,meanNumTimes,xx),Color="#006600",LineWidth=1)
% Format the plot
grid on
legend("Average","Error Bound","Error Bound","True Average")
xlabel('Loop Iterations')
ylabel('Mean Number of Tries')

figure
plot(x,numTimesVec,'.')
% Format the plot
xlabel('Loop Iteration')
ylabel('Number of Tries')

grid on