b0 = 1.70710;
b1 = [1 -1*exp(1i*(pi/4))];
b2 = [1 -1*exp(-1i*(pi/4))];
a1 = [1 0];
a2 = [1 0];

b = b0*conv(b1,b2);
a = conv(a1,a2);
fvtool(b,a)

[h,w] = freqz(b,a,'whole',2001);
disp(w);
figure;
subplot(2,1,1);
plot(1:2001,20*log10(abs(h)))
title('FIR')
xlabel('Frequency')
ylabel('Magnitude (dB)')
subplot(2,1,2);
plot(angle(h));
xlabel('Frequency')
ylabel('Phase')


%%%%%%%%%%%%%%%%%%%%%%%%%%%

b0 = 0.99017;
b1 = [1 -1*exp(1i*(pi/4))];
b2 = [1 -1*exp(-1i*(pi/4))];
a1 = [1 -1*0.99*exp(1i*(pi/4))];
a2 = [1 -1*0.99*exp(-1i*(pi/4))];

b = b0*conv(b1,b2);
a = conv(a1,a2);
fvtool(b,a)

[h,w] = freqz(b,a,'whole',2001);
disp(w);
figure;
subplot(2,1,1);
plot(1:2001,20*log10(abs(h)))
title('IIR')
xlabel('Frequency')
ylabel('Magnitude (dB)')
subplot(2,1,2);
plot(angle(h));
xlabel('Frequency')
ylabel('Phase')

%Yes, the filter is stable since all the poles of the system lie inside the unit circle (z = 0.99).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
%c)
r0 = pi/8;
b0 = 0.99017;
b1 = [1 -1*exp(1i*(pi/8))];
b2 = [1 -1*exp(-1i*(pi/8))];
a1 = [1 -1*0.99*exp(1i*(pi/8))];
a2 = [1 -1*0.99*exp(-1i*(pi/8))];

b11 = b0*conv(b1,b2);
a11 = conv(a1,a2);
fvtool(b11,a11)

[h,w] = freqz(b11,a11,'whole',2001);
disp(w);
%figure;
%subplot(2,1,1);
%plot(1:2001,20*log10(abs(h)))
%title('IIR')
%xlabel('Frequency')
%ylabel('Magnitude (dB)')
%subplot(2,1,2);
%plot(angle(h));
%xlabel('Frequency')
%ylabel('Phase')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load handel.mat

filename = 'handel.wav';
audiowrite(filename,y,Fs);
clear y Fs
[y,Fs] = audioread('handel.wav');
%disp(Fs);
%sound(y,Fs);

t = 1/Fs:1/Fs:length(y)/Fs;
f0 = 1024;

y1=zeros(length(y),1);
for i=1:length(y)
    y1(i)=y(i)+sin(2*pi*f0*t(i));
end

%figure;
%subplot(3,1,1);
%plot(t,y);
%subplot(3,1,2);
%plot(t,sin(2*pi*f0*t));
%subplot(3,1,3);
%plot(t,y1)

%sound(y1,Fs);
b0 = 1.70710;
b1 = [1 -1*exp(1i*(pi/4))];
b2 = [1 -1*exp(-1i*(pi/4))];
a1 = [1 0];
a2 = [1 0];

b = b0*conv(b1,b2);
a = conv(a1,a2);
y11=filter(b,a,y1);

%sound(y11,Fs);

b0 = 0.99017;
b1 = [1 -1*exp(1i*(pi/4))];
b2 = [1 -1*exp(-1i*(pi/4))];
a1 = [1 -1*0.99*exp(1i*(pi/4))];
a2 = [1 -1*0.99*exp(-1i*(pi/4))];

b = b0*conv(b1,b2);
a = conv(a1,a2);
y12=filter(b,a,y1);
%sound(y12,Fs);

figure;
subplot(2,2,1);
plot(t(1:100),y1(1:100));
title('Input Signal');
xlabel('t');
ylabel('Input Signal');
subplot(2,2,2);
plot(t(1:100),y11(1:100));
title('Output Signal');
xlabel('t');
ylabel('Output Signal');
subplot(2,2,3);
plot(t(1:100),y1(1:100));
title('Input Signal');
xlabel('t');
ylabel('Input Signal');
subplot(2,2,4);
plot(t(1:100),y12(1:100));
title('Output Signal');
xlabel('t');
ylabel('Output Signal');
