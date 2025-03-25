%% Lecture 07 What does this do? Number 03

clear, clc, close all

M = [4,6,7;
    1,9,2;
    10,1,0];

[nRows,nCols] = size(M);
newM = zeros(nRows-1, nCols-1);
for iRow = 1:1:nRows-1
    for iCol = 1:1:nCols-1
        newM(iRow,iCol) = M(iCol,iRow); % This is weird! Be careful!
    end 
end
disp(newM)