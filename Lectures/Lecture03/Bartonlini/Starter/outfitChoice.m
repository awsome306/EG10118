%% outfitChoice.m
% This program helps decide what jacket/accessories you should wear based on the temperature. 
% Randomly determine precipitation (1 = no, 2 = yes)
% Randomly determine temperature (1-100)

% Author: Andrew Bartolini & Eddie Pohl
% Date: 1/19/2023

% Clear Workspace
clear

% Clear Command Window
clc

%% Generate Values
% Set the seed value for random number generator.
rng(6);

% Generate precipitation, 1 is no, 2 is yes
precip = randi(2);

% Generate random temperature in degrees fahrenheit
temp = randi(100);

%% Determine Clothing
% Using complex logical expressions, identify what to wear and assign
% appropriate flag.
if precip == 1 && temp >= 85
    flag = 1;
    disp('Wear sunglasses and some sunscreen!')
elseif precip == 1 && temp >= 60
    flag = 2;
    disp('Wear anything you''d like, the temperature is comfortable.');
elseif precip == 1 && temp >= 40
    flag = 3;
    disp('Wear a sweatshirt!')
elseif precip == 1
    flag = 4;
    disp('Wear a winter coat!')
elseif precip == 2 && temp >= 60
    flag = 5;
    disp('Wear a rainjacket!')
elseif precip == 2 && temp >= 40
    flag = 6;
    disp('Wear a sweatshirt and a rain jacket!')
else
    flag = 7;
    disp('Wear a winter coat and maybe a scarf!')
end