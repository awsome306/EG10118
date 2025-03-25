%% findPrimes.m
% This program creates and displays a 5x10 array (called myArray) of random
% integers between 1 and a maximum value. The program then counts the
% number of prime numbers in each row of the array and displays this
% number. The program finally displays the total number of prime numbers in
% myarray.

% Author: Andrew Bartolini
% February 8, 2022

% Clear Workspace
clear

% Clear Command Window
clc

%% Set parameters
% Load in the data
myArray = load('primeExampleData.txt');

% Find the size of the array and store the number of rows and columns
[rowNum, colNum] = size(myArray);

% Start the prime counter at 0
nprime = 0;

% Display the initial values of the myArray array
disp('The values of myArray are: ')
disp(myArray)

%% Count the prime numbers
% Initialize a vector, primeVals, that will store the number of prime
% values in each row.
primeVals = zeros(rowNum,1);

% Use a nested FOR loop to cycle through each row and each column. The
% first FOR loop cycles through each row one at a time. The second FOR loop
% cycles through each column one at a time. Using this set-up, the FOR loop
% will start in the first row and then check each column in myArray. Next,
% the loop moves to the second row and checks each column in row 2.
for irow = 1:rowNum
    for icol = 1:colNum

        % Test of nested FOR loop; make sure you can index all values
        % disp(myArray(irow, icol))

        % For the current element in myArray (based on irows and icol),
        % check to see if the value is prime. If it is prime, increment the
        % prime counter by 1. If not, do nothing.
        if isprime(myArray(irow, icol)) == 1   % Note: "== 1" is not needed
            nprime = nprime + 1;

            % % Alternate Version of Displaying When You Found a Prime Number
            % disp('Found prime!')
            % disp(myArray(irow, icol))
            % disp('Row: ')
            % disp(irow)
            % disp('Column: ')
            % disp(icol)
            % disp('--')
        end
    end
    % Store the number of primes in irows in the primeVals vector.
    primeVals(irow,1) = nprime;

    % Display the number of prime numbers in irows to the user.
    disp('Row')
    disp(irow)
    disp('has the following number of prime values:')
    disp(nprime)
    disp('---')

    % Reset the prime number counter to 0 so that we can count the number
    % of zeros in the next row. Since we stored the number of prime numbers
    % in each row in the primeVals vector, we will still know how many
    % total prime numbers there are in myArray.
    nprime = 0;
end

%% Display primes
% Determine the total number of prime numbers in myArray by using the sum
% function.
totalPrime = sum(primeVals);

% Display the total number of prime numbers in myArray to the user.
disp('There are the following number of prime numbers: ')
disp(totalPrime)