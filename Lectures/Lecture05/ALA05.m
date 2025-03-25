%% forSine.m
% Lecture 05 ALA. 
% Creates a vector
% t


t = -5:0.25:5; % Radians
y = zeros(size(t));

N = length(t);

for stepNumber = 1:N
    y(stepNumber) = sin(t(stepNumber));
end

%% Plot the output
figure("Name","Sine Plot")
plot(t,y, 'rx-')
grid on
title("Here's a Title")
xlabel("The x-axis [units]")
ylabel('The y-axis [units]')