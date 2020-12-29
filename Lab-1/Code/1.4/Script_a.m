% defining relevant parameters
T = 1;
T1 = 1/4;
N = 10;
syms t;

% defining relevant expressions
xt = abs(t);

% function call to fourierCoeff which returns array of fourier coefficients
F = fourierCoeff(N,T,t,xt,-T1,T1);

%displaying all the coefficients
disp(F);

% plotting the FS coeff.
k = -N:N;
figure; stem(k, F); grid on;

%labels for axes and title of the plot
xlabel('k');
ylabel('ak (kth FS coeff.');
title('FS coeff. of x1(t)');