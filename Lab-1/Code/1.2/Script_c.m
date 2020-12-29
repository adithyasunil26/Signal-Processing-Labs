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
y=abs(partialfouriersum (F, T,t1));

%generating outputs of original function for error calculation
M = length(t1); 
K = floor(M/4); 
xt = zeros(M,1); 
nz_idx = K+1:3*K+1; 
xt(nz_idx) = 0.25 - abs(t1(nz_idx)); 

%calculating mae and mse
mae=zeros(length(xt));
mse=0;
for q=1:length(xt)
    a=xt(q)-y(q);
    mae(q)=abs(a);
    mse=mse+(a.^2);
end

mse=mse/length(xt);
disp(max(mae,[],'all'));
disp(mse);
