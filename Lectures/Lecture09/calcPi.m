%% Calculate Pi

clear, clc, close all

tol = 0.001;
k = 0;
piEst = 1;

%while abs(4*piEst-pi) > tol
for k = 1:1:5001
%k = k+1;
    piEst(k+1) = piEst(k) +(((-1).^(k+1))./(2*k+1));
end

piEst = 4*piEst