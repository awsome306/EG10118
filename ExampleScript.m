%% Example Script
% This is an example of a MATLAB script. 
% You can write multiple lines of a description here to describe your code.
% Headers should always contain the author, collaborators (if any), 
% and the date. 
%
% * Author: Joseph Heston
% * Collaborators: None
% * Date: 1/15/2025

%% Clearing the Workspace
% It is good practice to write the following line of code at the start of
% each script. This removes old variables and closes any figures. 

clear, clc, close all

%% I am a Section Break
% In MATLAB, writing two percent signs, %%, will create a Section Break. 
% Use a Section Break to run small sections of code without running
% everything. This is especially useful when debugging your code!

% Click inside this section and press Ctrl+Enter to run the code. 
% (Press ctrl and enter at the same time)

disp("This is the only code that runs!")

%% What is a comment?
% Comments help document your code so people know what it does. 
% The percent sign, % , makes the line a comment. 
% MATLAB will not run code behind a percent sign: %

% This code will run:
disp("I appear in the Command Window.")

% But this code will not run:
% disp("I do not appear in the Command Window.")

% Again, you can run sections of code by pressing: Ctrl+Enter

%% Semicolons suppress the output.
% Remember, the semicolon, ; , will suppress the output of a line. 
% This can be helpful as we write longer and longer code. 

% Clear the command window:
clc

x = 90;
y = pi;
z = cos(x); 

%% Displaying Outputs
% We can still view the variables and their values
% in the "Workspace" section on the right, but we also have other ways of
% displaying output.

% We can output the values using the "disp()" command:
disp(x)
disp(y)
disp(z)

% We can "print" the output. (We will see this more later in class.):
fprintf("The value of x is: %.4f\n",x)
fprintf("The value of y is: %.4f\n",y)
fprintf("The value of z is: %.4f\n",z)

% BONUS: Is z what you expected it to be? Why/why not?

%% Running all the code at once. 
% If you want to run the whole script at once, you can click the green
% arrow under  the "Editor" tab at the top of the screen.
% Or you can press F5 on your keyboard. 
