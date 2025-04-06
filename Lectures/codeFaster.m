%% codeFaster.m
% A set of exercises and examples of tips and tricks to write code faster
% in MATLAB. (Mostly this is just a list of my most frquently used hotkeys.)
% NOTE: These are only confirmed to work on Windows. Mac and Linux users
% beware!
%
% * Author: J. Heston
% * Date: 3/2025
%

%% Clear the Workspace 
clear, clc, close all

%% Section Break
% Two percentage signs (%%) creates a new section. You can run just the
% code within the current section by pressing CTRL+Enter. You can also run
% the code and advance to the next section at the same time using
% CTRL+Shift+Enter

% Press Ctrl and Enter while this section is selected.
disp("Section 01 ran, but the rest of the code didn't.")

% To jump between Sections, press Ctrl+Up/Down

%% Don't Run Me!
disp("Oops! The rest of the code ran!")

%% When Things Go Wrong:
% Depending on your keyboard, the "Home" and "End" keys easily allow you to jump
% to the beginning of a line or the end of line without mashing the arrows
% keys. Press Shift+Home/End to select the entire line to delete it or copy
% it easily!
%
% Also, pressing Ctrl+Backspace deletes a whole word at once. 
% Pressing Ctrl+<arrowKey> moves the cursor across a whole word. 
% Pressing Ctrl+Shift+<arrowKey> selects a whole word all at once. 

% Delete me:
thisIsALongVariableName = "Deleting all of me would take too much time because this is such a long line of code. Really, lines of code should stay less than 80 charactrs as a matter of convention, but we don't have to do this anymore because we don't use punchcards."

%% Running all the code:
% To run all the code in a script without using the mouse, presss the F5
% key. Sometimes this won't work on laptops, since the F-keys
% will be assigned to other functions (screen brightness, volume, etc.)

%% Save your work often!
% Press Ctrl+S to save your work.

%% Bounce around!
% If you need to access the command window quickly, you can press Ctrl+0 to
% jump there instantly!
% To get back to the script editor, press CTRL+SHIFT+0

var = input("Please provide a number: ");
disp("But now we're in the Command Window! Press CTRL+SHFT+0 to get back.")
%% Classics:

% The clipboard:
% Cut/Copy/Paste are Ctrl+X/C/V

% Undo and Redo:
% Ctrl+Z to undo; Ctrl+Y to redo. 
