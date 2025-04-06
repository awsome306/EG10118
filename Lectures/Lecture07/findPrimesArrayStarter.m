%% findPrimes.m
% This program creates and displays a 5x10 array (called myArray) of random
% integers between 1 and a maximum value. The program then counts the
% number of prime numbers in each row of the array and displays this
% number. The program finally displays the total number of prime numbers in
% myarray.
%
% Author: Andrew Bartolini
% February 8, 2022
% Modified by: Joseph Heston
% February 4, 2025

% Clear Workspace
clear

% Clear Command Window
clc

%% Set parameters
% Load in the data
myArray = load('primeExampleData.txt');

% Find the size of the array and store the number of rows and columns


% Start the prime counter at 0


% Display the initial values of the myArray array
disp('The values of myArray are: ')
disp(myArray)

%% Count the prime numbers
% Initialize a vector, primeVals, that will store the number of prime
% values in each row. (Create a vector full of zeros.)

% primeVals = 

% Use a nested FOR loop to cycle through each row and each column. 
% The outer FOR loop cycles through each row one at a time. 
% The inner FOR loop cycles through each column one at a time. 
% 
% Using this set-up, the FOR loop will start in the first row and 
% then check each column in myArray.
% Next,the loop moves to the second row and checks each column in row 2.

% SETUP NESTED FOR LOOPS HERE

        % Test the nested FOR loop; make sure you can index all values:
        % disp(myArray(iRow, iCol))

        % TEST FOR PRIME. 
        % For the current element in myArray (based on iRow and iCol),
        % check to see if the value is prime. 
        % If it is prime, increment the prime counter by 1.
        % If not, do nothing.
        
        if isprime(myArray(irow, icol)) == 1 % Check whether elem. is prime
            
            % INCREMENT numPrime COUNTER
            
        end % End Conditional Statement
    end % End inner loop

    % STORE numPrime IN THE primeVals VECTOR

    % Display the number of prime numbers in irows to the user.
    disp('Row '+iRow+' has the following number of prime values:')
    disp(numPrime)
    disp('---')

    % Reset the prime number counter to 0 so that we can count the number
    % of zeros in the next row. Since we stored the number of prime numbers
    % in each row in the primeVals vector, we will still know how many
    % total prime numbers there are in myArray.
    numPrime = 0;
end

%% Display Primes
% Determine the total number of prime numbers in myArray by using the sum
% function.

% totalPrime = 

% Display the total number of prime numbers in myArray to the user.
disp('There are the following number of prime numbers: ')
disp(totalPrime)