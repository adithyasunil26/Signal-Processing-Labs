
% defining relevant parameters
T= 1;
T1=1/4;
N=10;
a=-T1;
b=T1;
t1=-0.5:0.001:0.5;

% defining relevant expressions
syms t;
xt = 1/4 - abs(t);  % triangle wave

% function call to fourierCoeff which returns array of fourier coefficients
F = fourierCoeff(N,T,t,xt,a,b);

%function call to partialfouriersum which returns array of partial fourier
%sums
y=partialfouriersum (F, T,t1);

%plotting the reconstructed x(t)
figure;plot(t1,y);grid on;

%labels for axes and title for plot
xlabel('t') ;
ylabel('Reconstructed x(t)');
title('Reconstructed x(t)');