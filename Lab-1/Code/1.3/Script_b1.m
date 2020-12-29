%declaring relevant parameters
T = 1;
N = (100*T);
T1 = 0.1;
syms t;

%declaring the function
xt = 1;

%function call to fourierCoeff which returns array of fourier coefficients
F = fourierCoeff(N,T,t,xt,-T1,T1);

%displaying the coefficients
disp(F);

%plotting all the coefficients
k = -N:N;
figure; stem(k,F); grid on;

%labels for axes and title of the plot
xlabel('k');
ylabel('ak');
title('FS coeff. of x(t)');


