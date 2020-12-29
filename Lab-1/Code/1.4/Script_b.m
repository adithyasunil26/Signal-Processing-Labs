% defining relevant parameters
T= 1;
T1=1/4;
N=10;
a=-T1;
b=T1;

% defining relevant expressions
syms t;
xt = t;  %given wave

% function call to fourierCoeff which returns array of fourier coefficients
F = fourierCoeff(N,T,t,xt,a,b);

%displaying all the coefficients
disp(F);

% plotting the FS coeff.
FS_idx = -N:N;
figure; stem(FS_idx,F); grid on;

%labels for axes and title of the plot
xlabel('k') ;
ylabel('ak (kth FS coeff.');
title('FS coeff. of x2(t)');