%% forSine.m
%  Uses domain marching to approximate a sine function. 

%  Author: Andrew Bartolini
%  Date: 1/24/23

%% Set Parameters
% Setting parameters for t
startVal = -5;
increment = 0.25; 
endVal = 5; 

%% Calculations 
% Create t 
t = startVal:increment:endVal;

% Find length of t
Nt = length(t);

% Initialize y 
y = zeros(1,Nt);

% Use a for loop to conduct domain marching 
for it = 1:Nt
    y(it) = sin(t(it));
end