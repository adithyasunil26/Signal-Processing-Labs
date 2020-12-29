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

% plotting the original function and reconstructed function
M = length(t1); 
K = floor(M/4); 
xt = zeros(M,1); 
nz_idx = K+1:3*K+1; % indices where xt is non-zero 
xt(nz_idx) = 0.25 - abs(t1(nz_idx)); 
figure; plot(t1,xt); grid on; 
hold on; plot(t1,y); hold off;

%labels for axes and title for plot
xlabel('t'); 
ylabel('x(t)'); 
title('original vs reconstructed x(t)');
%legend for plot
legend('original x(t) ','reconstructed x(t)');

%We observe that the reconstructed version of x(t) is slightly
%different from the original x(t). This is because we are
%reconstructing the waveform from the fourier coefficients and 
%hence if we have more number of fourier coefficients availabe,
%the reconstruction will be accurate.
%We will be able to reconstruct the waveform perfectly when we 
%have infinitely many FS coefficients calculated.