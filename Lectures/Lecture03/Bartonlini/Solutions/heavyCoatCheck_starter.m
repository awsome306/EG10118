%% heavyCoatCheck.m
% This program asks the input for the temperature in F and the wind speed
% in mph and advises a heavy coat if either of the following are true:
%    The temperature is < 45 degrees F and the wind speed is > than 15 mph
%    The temperature is below freezing

% Authors: Joe Lyon & Andrew Bartolini
% January 14, 2025

% Clear memory
clear

% Clear command window
clc

%% Get Input From User
% Ask for the temperature
temperatureValue = input('Enter the temperature (in F): ');

% Ask for the wind speed
windSpeed = input('Enter the wind speed (in mph): ');

%% Conditional Check & Display
% Utilize a complex conditional to display the appropriate message.
if (temperatureValue < 45 && windSpeed > 15) || temperatureValue < 32
    % If either condition is met, then tell the user to wear a heavy coat
    disp('Wear a heavy coat');
end

%% Alternative Method
% You could program the same code without complex conditionals, it would
% just take a nested loop and an elseif conditional in this case.
if temperatureValue < 32
    disp('Wear a heavy coat');
elseif temperatureValue < 45
    if windSpeed > 15
        disp('Wear a heavy coat');
    end
end