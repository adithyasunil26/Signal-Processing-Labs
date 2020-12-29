
% defining relevant parameters
t= -10:0.001:10;
y=zeros(0,length(t));
N=1;

% define relevant expressions
syms t;
T= 2*pi;
a=-pi;
b=pi;

xt = cos(t);  

% function call to fourierCoeff which returns array of fourier coefficients
F = fourierCoeff(N,T,t,xt,a,b);

% plotting
FS_idx = -N:N;
figure; stem(FS_idx,F); grid on;

%labels for axes and title for plot
xlabel('k') 
ylabel('ak (kth FS coeff.)') 
title('FS coeff. of x(t)')

%we can see that the function correctly generates the FS coefficients for xt 
