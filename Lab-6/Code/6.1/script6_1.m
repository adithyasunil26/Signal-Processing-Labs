w=-10:0.01:10;

%unit impulse del[n]

x1=[1,0,0,0,0,0];
N01=1;
X1=DTFT(x1,N01,w);

figure;
subplot(2,2,1);
plot(w,abs(X1));
title('DTFT of x[n]')
xlabel('w') 
ylabel('X(e^(^j^w^))') 

subplot(2,2,2);
plot(w,angle(X1));
title('Phase')
xlabel('w') 
ylabel('Phase') 

subplot(2,2,3);
plot(w,real(X1));
title('Real part')
xlabel('w') 
ylabel('Real part of X(e^(^j^w^))') 

subplot(2,2,4);
plot(w,imag(X1));
title('Imaginary part')
xlabel('w') 
ylabel('Imaginary part of X(e^(^j^w^))') 

%The analytical answer for DTFT is 1 and we see that the plot matches the 
%analytical answer. The DTFT is a constant so it is periodic with any period.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%unit impulse del[n-5]

x2=[0,0,0,0,0,1,0,0];
N02=1;
X2=DTFT(x2,N02,w);

figure;
subplot(2,2,1);
plot(w,abs(X2));
title('DTFT of x[n]')
xlabel('w') 
ylabel('X(e^(^j^w^))') 

subplot(2,2,2);
plot(w,angle(X2));
title('Phase')
xlabel('w') 
ylabel('Phase') 

subplot(2,2,3);
plot(w,real(X2));
title('Real part')
xlabel('w') 
ylabel('Real part of X(e^(^j^w^))') 

subplot(2,2,4);
plot(w,imag(X2));
title('Imaginary part')
xlabel('w') 
ylabel('Imaginary part of X(e^(^j^w^))') 

%The analytical answer for DTFT is an exponential function e^(-5jw) which
%signifies the shift in time. We see that our plot matches the analytical 
%answer. The real part is a cos wave and imaginary part is a sin wave. The 
%phase keeps shifting between -pi and pi. It is periodic with a period 2pi. 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%rectangular pulse from -5 to 5

x3=[1,1,1,1,1,1,1,1,1,1,1];
N03=6;
X3=DTFT(x3,N03,w);

figure;
subplot(2,2,1);
plot(w,abs(X3));
title('DTFT of x[n]')
xlabel('w') 
ylabel('X(e^(^j^w^))') 

subplot(2,2,2);
plot(w,angle(X3));
title('Phase')
xlabel('w') 
ylabel('Phase') 

subplot(2,2,3);
plot(w,real(X3));
title('Real part')
xlabel('w') 
ylabel('Real part of X(e^(^j^w^))') 

subplot(2,2,4);
plot(w,imag(X3));
title('Imaginary part')
xlabel('w') 
ylabel('Imaginary part of X(e^(^j^w^))') 

%The analytical answer for DTFT is a sinc function which matches our plot.
%The result is entirely real and the phase andle varies between -pi and pi.
%It is periodic with a period 2pi.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%rectangular pulse from 0 to 10

x4=[1,1,1,1,1,1,1,1,1,1,1];
N04=1;
X4=DTFT(x4,N04,w);

figure;
subplot(2,2,1);
plot(w,abs(X4));
title('DTFT of x[n]')
xlabel('w') 
ylabel('X(e^(^j^w^))') 

subplot(2,2,2);
plot(w,angle(X4));
title('Phase')
xlabel('w') 
ylabel('Phase') 

subplot(2,2,3);
plot(w,real(X4));
title('Real part')
xlabel('w') 
ylabel('Real part of X(e^(^j^w^))') 

subplot(2,2,4);
plot(w,imag(X4));
title('Imaginary part')
xlabel('w') 
ylabel('Imaginary part of X(e^(^j^w^))') 

%The analytical answer for DTFT is a product of sinc and exponential. We
%see that this matches our plot. It is periodic with a period 2pi.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%sin(w0n) where w0=pi/3

n=-500:500;
X4=DTFT(sinu(n),N04,w);

figure;
subplot(2,2,1);
plot(w,abs(X4));
title('DTFT of x[n]')
xlabel('w') 
ylabel('X(e^(^j^w^))') 

subplot(2,2,2);
plot(w,angle(X4));
title('Phase')
xlabel('w') 
ylabel('Phase') 

subplot(2,2,3);
plot(w,real(X4));
title('Real part')
xlabel('w') 
ylabel('Real part of X(e^(^j^w^))') 

subplot(2,2,4);
plot(w,imag(X4));
title('Imaginary part')
xlabel('w') 
ylabel('Imaginary part of X(e^(^j^w^))') 

%The analytical answer for DTFT is a linear combination or impulses. This
%matches our plot. It is periodic with a period 2pi.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%c

n1= 0:500;
b=0.9;
xb=fn(b,n1);
xmb=fn(-b,n1);
Xb=DTFT(xb,1,w);
Xmb=DTFT(xmb,1,w);

figure;
subplot(2,2,1);
plot(n1,xb);
title('Time domain signal for a=b (b=0.9)')
xlabel('n') 
ylabel('Signal') 

subplot(2,2,2);
plot(n1,xmb);
title('Time domain signal for a=-b (b=0.9)')
xlabel('n') 
ylabel('Signal')  

subplot(2,2,3);
plot(w,abs(Xb));
title('DTFT magnitude for a=b (b=0.9)')
xlabel('w') 
ylabel('DTFT magnitude')  

subplot(2,2,4);
plot(w,abs(Xmb));
title('DTFT magnitude for a=-b (b=0.9)')
xlabel('w') 
ylabel('DTFT magnitude')  

function y= fn(a,n)
    y=a.^n;
end

%We observe that as b increases the exponential nature of the time domain 
%signal increases. For a=-b we see that the signals also has negtaive values. 
%In the frequency domain we see that the peaks in the graph become more and
%more sharper with an increase in the value of b.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function y = sinu(n)
    y=sin((pi/3).*n);
end