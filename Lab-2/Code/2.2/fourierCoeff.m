%function to compute the fourier coefficients
function [F] = fourierCoeff(N,T,t,xt,a,b)
wo = 2*pi/T;                %defining wo
F = zeros(2*N+1, 1);        %initializing F as a zero array 
syms t;

for k = 1:2*N+1
    F(k) = 1/T * int(xt * exp(-1i*(k-N-1)*wo*t),t,[a b]);   %expression for calculating FS coeff.
end
end


