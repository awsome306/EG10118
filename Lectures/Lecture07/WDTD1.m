%% Lecture 07 What does this do? Number 01

%% 
clear, clc, close all

counter1 = 0;
counter2 = 0;

for ix = 1:2:3
    counter1 = counter1+1;
    for iy = 2:2:5
        disp(ix)
        disp(iy)
        disp('--')
        counter2 = counter2 + 1;
    end
end
disp(counter1)
disp(counter2)
