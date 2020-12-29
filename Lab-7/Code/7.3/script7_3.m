
r=0.5;
theta=pi/2;
b=[1,-2*cos(theta),1];
a=[1,-2*r*cos(theta),r^2];

figure;
subplot(2,2,1);
zplane(b,a); 


r=0.75;
theta=pi;
b=[1,-2*cos(theta),1];
a=[1,-2*r*cos(theta),r^2];
subplot(2,2,2);
zplane(b,a); 

r=0.25;
theta=pi/2;
b=[1,-2*cos(theta),1];
a=[1,-2*r*cos(theta),r^2];
subplot(2,2,3);
zplane(b,a); 

r=0.4;
theta=pi/4;
b=[1,-2*cos(theta),1];
a=[1,-2*r*cos(theta),r^2];
subplot(2,2,4);
zplane(b,a); 

%The zeroes of the transfer function will be located on the unit circle at
%angle theta in both directions(towards pi and -pi) from x axis while the 
%zeroes will be located on a circle of radius r at angle theta in both 
%directions from x axis.

%The system can be causal and stable at the same time. For the system
%to be causal the ROC has to be outside the outermost pole and must include
%inf but for the system to be stable all the poles must be within te unit
%circle and ROC should include the unit circle. We see that the conditions
%required for causality and stability are contradicting and hence the
%system can be both at the same time.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

r=0.95;

theta=0;
b=[1,-2*cos(theta),1];
a=[1,-2*r*cos(theta),r^2];
n=1001;
[h,w]=freqz(b,a,'whole',n);
figure;
subplot(2,2,1);
plot(w,abs(h));
title('Magnitude of freq. response (theta=0)')
xlabel('w') 
ylabel('Magnitude of freq. response') 

theta=pi/4;
b=[1,-2*cos(theta),1];
a=[1,-2*r*cos(theta),r^2];
n=1001;
[h,w]=freqz(b,a,'whole',n);
subplot(2,2,2);
plot(w,abs(h));
title('Magnitude of freq. response (theta=pi/4)')
xlabel('w') 
ylabel('Magnitude of freq. response')

theta=3*pi/4;
b=[1,-2*cos(theta),1];
a=[1,-2*r*cos(theta),r^2];
n=1001;
[h,w]=freqz(b,a,'whole',n);
subplot(2,2,3);
plot(w,abs(h));
title('Magnitude of freq. response (theta=3*pi/4)')
xlabel('w') 
ylabel('Magnitude of freq. response')

theta=pi;
b=[1,-2*cos(theta),1];
a=[1,-2*r*cos(theta),r^2];
n=1001;
[h,w]=freqz(b,a,'whole',n);
subplot(2,2,4);
plot(w,abs(h));
title('Magnitude of freq. response (theta=pi)')
xlabel('w') 
ylabel('Magnitude of freq. response')

%We see that with increase in value of theta from 0 to pi for a fixed r the
%filter gets thinner and thinner. At pi the nature of the filter goes from
%low pass to high pass. This happens because with an increase in theta the
%zeroes shift by that angle theta from their starting position with respect
%to origin.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

theta=pi/3;

r=0.2;
b=[1,-2*cos(theta),1];
a=[1,-2*r*cos(theta),r^2];
n=1001;
[h,w]=freqz(b,a,'whole',n);
figure;
subplot(2,2,1);
plot(w,abs(h));
title('Magnitude of freq. response(r=0.2)')
xlabel('w') 
ylabel('Magnitude of freq. response') 

r=0.4;
b=[1,-2*cos(theta),1];
a=[1,-2*r*cos(theta),r^2];
n=1001;
[h,w]=freqz(b,a,'whole',n);
subplot(2,2,2);
plot(w,abs(h));
title('Magnitude of freq. response (r=0.4)')
xlabel('w') 
ylabel('Magnitude of freq. response')

r=0.6;
b=[1,-2*cos(theta),1];
a=[1,-2*r*cos(theta),r^2];
n=1001;
[h,w]=freqz(b,a,'whole',n);
subplot(2,2,3);
plot(w,abs(h));
title('Magnitude of freq. response (r=0.6)')
xlabel('w') 
ylabel('Magnitude of freq. response')

r=0.8;
b=[1,-2*cos(theta),1];
a=[1,-2*r*cos(theta),r^2];
n=1001;
[h,w]=freqz(b,a,'whole',n);
subplot(2,2,4);
plot(w,abs(h));
title('Magnitude of freq. response (r=0.8)')
xlabel('w') 
ylabel('Magnitude of freq. response')

%We see that filter becomes more and more ideal when the calue of r increased 
%for a fixed value of theta.

%By geometrical intuition, we can say that the peaks in the magnitude response graph represent poles at that particular
%frequency, and the lows in the graph represent the zeros. By comparing the actual location of poles and zeros, we
%find that the locations obtained by geometric intuition are pretty accurate.