
b=[1];
a=[1,-0.5,0.2,-0.1,0.007,0.14,0.15];

n=1001;
[h,w]=freqz(b,a,'whole',n);

figure;
zplane(b,a);

%By geometrical intuition, we can say that the peaks in the magnitude response graph represent poles at that particular
%frequency, and the lows in the graph represent the zeros. By comparing the actual location of poles and zeros, we
%find that the locations obtained by geometric intuition are pretty accurate.


figure;
plot(w,abs(h));
title('Magnitude of freq. response')
xlabel('w') 
ylabel('Magnitude of freq. response') 

