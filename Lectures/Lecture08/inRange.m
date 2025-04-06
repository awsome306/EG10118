%% inRange.m
% Prompts a user for an integer-valued input between 1 and 10
% If the input is valid, then output a congratulatory message. 
% If the input is not valid, repeat the prompt. 
%
% * Author: Joseph Heston
% * Date: 02-05-2025

%% Clear the Workspace

clear, clc, close all

%%% Define Parameters

% Defining parameters avoids hard-coding and allows the code to be more
% generlizable in the future. 
VAL_MIN = 1;
VAL_MAX = 10;

promptMessage = "Please enter a number between "+...
                            VAL_MIN+" and "+VAL_MAX+": ";

%%% Prompt the user for input until a valid input is detected.

userInput = VAL_MIN-1;

%while ~((userInput>VAL_MIN) && (userInput<VAL_MAX) && isinteger(userInput))
while ~((userInput>VAL_MIN) && (userInput<VAL_MAX))
    userInput = input(promptMessage);
    disp("You typed in: "+userInput)
end

%% Alternative (but equivalent) code:

clear, clc, close all

%%% Define Parameters

% Defining parameters avoids hard-coding and allows the code to be more
% generlizable in the future. 
VAL_MIN = 1;
VAL_MAX = 10;

promptMessage = "Please enter a number between "+...
                            VAL_MIN+" and "+VAL_MAX+": ";

%%% Prompt the user for input until a valid input is detected.

userInput = VAL_MIN-1;

while (userInput>VAL_MIN) || (userInput<VAL_MAX)
    userInput = input(promptMessage);
    disp("You typed in: "+userInput)
end
