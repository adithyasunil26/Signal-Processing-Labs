
% defining relevant parameters
T= 2*pi;
t1=-2*T:0.01:2*T;
a=-T/2;
b=T/2;
N=50;
wc=2.5;

%in case of sin(2t)+cos(3t) and wc =2.5 the low pass filter output
%consists only of the sin(2t) terms and high pass filter consists only of
%the cos(3t) terms.

% defining relevant expressions
syms t;
xt=sin(2*t)+cos(3*t);


% function call to fourierCoeff which returns array of fourier coefficients
A = fourierCoeff(N,T,t,xt,a,b);
%we are using the previously made fourierCoeff function to generate the
%fourier coefficients of xt to use as A

%function call to partialfouriersum which returns array of partial fourier
%sums
y=partialfouriersum (A, T,t1);

%Frequency is given by kwo where w0 is given by 2pi/T but here T is pi and 
%hence, frequency values are equivalent to k
F=zeros(length(A),1);
for k=-N:N
    F(k+N+1)=k*2*pi/T;
end

%passing signal through low pass filter
lpfa=LPF(A,F,wc); 
ylpf=partialfouriersum (lpfa, T,t1);

%passing signal through high pass filter
hpfa=HPF(A,F,wc);
yhpf=partialfouriersum (hpfa, T,t1);

%passing signal through non-ideal filter
a1=1;
G=1;
nifa=NonIdeal(A,F,G,a1);
ynif=partialfouriersum (nifa, T,t1);
%we can see that the non ideal filter stunts the amplitude of the function
%and there is a phase shift as well in the reconstructed x(t)

%Due to the complex values nature of the frequency response we will see a
%(a-jw) term in the numerator of the output

%we see that we get the RC filter done in class when we substitute the
%values of G and a as 1/R*C and 1/R*C.

%plots
figure;
subplot(2,2,1);
plot(t1,y);
xlabel('t') ;
ylabel('Reconstructed x(t)');
title('Reconstructed x(t)');
grid on;

subplot(2,2,2);
plot(t1,ylpf);
hold on;
plot(t1,y);
hold off;
xlabel('t') ;
ylabel('Reconstructed x(t)');
title('Reconstructed x(t) after LPF vs original');
legend('Reconstructed','Original')
grid on;

subplot(2,2,3);
plot(t1,yhpf);
hold on;
plot(t1,y);
hold off;
xlabel('t') ;
ylabel('Reconstructed x(t)');
title('Reconstructed x(t) after HPF vs original');
legend('Reconstructed','Original')
grid on;

subplot(2,2,4);
plot(t1,ynif);
hold on;
plot(t1,y);
hold off;
xlabel('t') ;
ylabel('Reconstructed x(t)');
title('Reconstructed x(t) after Non ideal filter vs original');
legend('Reconstructed','Original')
grid on;