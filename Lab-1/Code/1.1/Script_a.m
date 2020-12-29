

% defining relevant parameters
T= 1;
T1=1/4;
N=10;
a=-T1;
b=T1;

% defining relevant expressions
syms t;
xt = 1/4 - abs(t);  % triangle wave

% function call to fourierCoeff which returns array of fourier coefficients
F = fourierCoeff(N,T,t,xt,a,b);

% plotting
FS_idx = -N:N;
figure; stem(FS_idx,F); grid on;

%labels for axes and title for plot
xlabel('k') 
ylabel('ak (kth FS coeff.)') 
title('FS coeff. of x(t)')

%on solving analytically as instructed in b) we see that the values of FS
%coefficients obtained analytically match the values obtained using the
%function fourierCoeff

