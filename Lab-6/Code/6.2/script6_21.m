
l=100;

wc = pi/16;
xn = zeros(2*l, 1);
syms w

for n=-l:l
    xn(n+l+1) = (1/(2*pi)).*int(exp(1i.*w*n), w, -wc, wc);
end

figure;
n=-l:l;
plot(n,xn);
title('Inverse DTFT (wc=pi/16)')
xlabel('n') 
ylabel('x[n]') 

%x[n] is expected to a real sinc function and we can see that our plot
%matches this expectation.

%We can notice that the value of the DTFT becomes zero for n = 16k, k = 0,1,2.., as sin(n*pi) is zero 
%irrespective of the value of n.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

wc = pi/8;
xn = zeros(2*l, 1);
syms w

for n=-l:l
    xn(n+l+1) = (1/(2*pi)).*int(exp(1i.*w*n), w, -wc, wc);
end

figure;
subplot(2,2,1)
n=-l:l;
plot(n,xn);
title('Inverse DTFT (wc=pi/8)')
xlabel('n') 
ylabel('x[n]')


%We can notice that the value of the DTFT becomes zero for n = 8k, k = 0,1,2.., as sin(n*pi) is zero 
%irrespective of the value of n.


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

wc = pi/4;
xn = zeros(2*l, 1);
syms w

for n=-l:l
    xn(n+l+1) = (1/(2*pi)).*int(exp(1i.*w*n), w, -wc, wc);
end

subplot(2,2,2)
n=-l:l;
plot(n,xn);
title('Inverse DTFT (wc=pi/4)')
xlabel('n') 
ylabel('x[n]')


%We can notice that the value of the DTFT becomes zero for n = 4k, k = 0,1,2.., as sin(n*pi) is zero 
%irrespective of the value of n.


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

wc = pi/2;
xn = zeros(2*l, 1);
syms w

for n=-l:l
    xn(n+l+1) = (1/(2*pi)).*int(exp(1i.*w*n), w, -wc, wc);
end

subplot(2,2,3)
n=-l:l;
plot(n,xn);
title('Inverse DTFT (wc=pi/2)')
xlabel('n') 
ylabel('x[n]')


%We can notice that the value of the DTFT becomes zero for n = 2k, k = 0,1,2.., as sin(n*pi) is zero 
%irrespective of the value of n.


%when the value of wc is increased, here in multiples of 2, we can observe that the plot of DTFT gets
%compressed as the function becomes zero whenever the factor wc*n becomes an integral multiple of pi.
%When the value of wc is increased as a multiple of 2, the number of times the function becomes zero 
%increases in the given interval, so the graph essentially compresses.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

wc = pi;
xn = zeros(2*l, 1);
syms w

for n=-l:l
    xn(n+l+1) = (1/(2*pi)).*int(exp(1i.*w*n), w, -wc, wc);
end

subplot(2,2,4)
n=-l:l;
plot(n,xn);
title('Inverse DTFT (wc=pi)')
xlabel('n') 
ylabel('x[n]')

%when the value of wc is pi we see that the generated time domain signal
%closely resembles an impose at 0. Since the result has a sin function in the numerator, 
%DTFT is zero at every value of n other than 0.
%This is because we are constructingthe time domain signal as a linear combination of 
%various e^(jwn)and when wc is pi the signal consists of sinusoids that interfere destructively
%and cancel out everywhere other than points near 0.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

w1=pi/8;
w2=pi/4;
xn = zeros(2*l, 1);
syms w

for n=-l:l
    xn(n+l+1) = (1/(2*pi)).*(int(exp(1i.*w*n), w, -w2, -w1)+int(exp(1i.*w*n), w, w1, w2));
end

figure;
subplot(2,1,1)
n=-l:l;
plot(n,xn);
title('Inverse DTFT (w1=pi/8 & w1=pi/4)')
xlabel('n') 
ylabel('x[n]')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

w1=pi/4;
w2=pi/2;
xn = zeros(2*l, 1);
syms w

for n=-l:l
    xn(n+l+1) = (1/(2*pi)).*(int(exp(1i.*w*n), w, -w2, -w1)+int(exp(1i.*w*n), w, w1, w2));
end

subplot(2,1,2)
n=-l:l;
plot(n,xn);
title('Inverse DTFT (w1=pi4 & w1=pi/2)')
xlabel('n') 
ylabel('x[n]')

%In this case we observe that the reconstructed signal is sharper when the
%width of the band of the band pass signal is increased. This can be
%explained by the fact that reconstruction is more accurate when a wider
%range of frequencies are used.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
