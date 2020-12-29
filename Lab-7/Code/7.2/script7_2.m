p=0.8;
b=1;
a=[1,p];
figure;
zplane(b,a);

n=1001;

[h,w]=freqz(b,a,'whole',n);
[hi,t]=impz(b,a);

figure;
subplot(2,1,1);
plot(w,abs(h));
title('Magnitude of freq. response (p=0.8)')
xlabel('w') 
ylabel('Magnitude of freq. response') 

subplot(2,1,2);
plot(t,hi);
title('Impulse response (p=0.8)')
xlabel('t') 
ylabel('Impulse response') 
%Given the impulse response of the filter with the given transfer function and p = 0.8, we find that it is an IIR filter, as the 
%duration of the impulse response is not finite, i.e., infinite. The jagged nature of the impulse response plot also hints at it 
%being an IIR filter.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

p=-0.8;
b=1;
a=[1,p];
[h,w]=freqz(b,a,'whole',n);
[hi,t]=impz(b,a);

figure;
subplot(2,1,1);
plot(w,abs(h));
title('Magnitude of freq. response (p=-0.8)')
xlabel('w') 
ylabel('Magnitude of freq. response') 

subplot(2,1,2);
plot(t,hi);
title('Impulse response(p=-0.8)')
xlabel('t') 
ylabel('Impulse response') 


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

p=0.1;
b=1;
a=[1,p];
[h,w]=freqz(b,a,'whole',n);
[hi,t]=impz(b,a);

figure;
subplot(2,1,1);
plot(w,abs(h));
title('Magnitude of freq. response (p=0.1)')
xlabel('w') 
ylabel('Magnitude of freq. response') 

subplot(2,1,2);
plot(t,hi);
title('Impulse response (p=0.1)')
xlabel('t') 
ylabel('Impulse response') 


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

p=0.5;
b=[1,-1/p];
a=[1,-p];

[h,w]=freqz(b,a,'whole',n);
[hi,t]=impz(b,a);

figure;
zplane(b,a);

figure;
subplot(2,1,1);
plot(w,abs(h));
title('Magnitude of freq. response (p=0.5)')
xlabel('w') 
ylabel('Magnitude of freq. response') 

subplot(2,1,2);
plot(t,hi);
title('Impulse response (p=0.5)')
xlabel('t') 
ylabel('Impulse response') 
%Given the impulse response of the filter with the given transfer function and p = 0.5, we find that it is an IIR filter, as the 
%duration of the impulse response is not finite, i.e., infinite.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%By geometric intuition, we can say that peaks in the magnitude of frequency response represent poles and the lows in
%the graphrespresent the zeros. By observing the graph, we can say that there exists a singular pole for p = 0.8 and 
%p = 0.1. After solving, we find that the pole lies at z = -p = -0.8. And for p = -0.8, there exists a pole at w = pi. 
