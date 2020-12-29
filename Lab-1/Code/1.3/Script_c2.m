%declaring relevant parameters
T = 1;
N = 50;
T1 = 0.1;
syms t;
t1= -0.5:0.01:0.5;
%declaring the function
xt = 1;

%function call to fourierCoeff which returns array of fourier coefficients
F = fourierCoeff(N,T,t,xt,-T1,T1);
y = partialfouriersum (F, T,t1);

%plot
figure; plot(t1,y); grid on;

%labels for axes and title of the plot
xlabel('t');
ylabel('Reconstructed x(t)');
title('Reconstructed x(t)');
