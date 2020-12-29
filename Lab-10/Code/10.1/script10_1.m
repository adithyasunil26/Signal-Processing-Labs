fs=10000;
fc=2000;
pb=1;
sb=40;
N = 5;

[bb,ab] = butter(N,fc/(fs/2));
[hb,wb] = freqz(bb,ab,2001,fs);

[b1,a1] = cheby1(N,pb,fc/(fs/2),'low');
[h1,w1] = freqz(b1,a1,2001,fs);

[b2,a2] = cheby2(N,sb,fc/(fs/2),'low');
[h2,w2] = freqz(b2,a2,2001,fs);

[be,ae] = ellip(N,pb,sb,fc/(fs/2),'low');
[he,we] = freqz(be,ae,2001,fs);

pb=angle(hb);
p1=angle(h1);
p2=angle(h2);
pe=angle(he);



disp(wb);
figure;
subplot(2,2,1);
plot(1:2001,20*log10(abs(hb)))
title('Butterworth')
xlabel('Frequency')
ylabel('Magnitude (dB)')
axis([0 2000 -200 0])
subplot(2,2,2);
plot(1:2001,20*log10(abs(h1)))
title('Chebyshev 1')
xlabel('Frequency')
ylabel('Magnitude (dB)')
axis([0 2000 -200 0])
subplot(2,2,3);
plot(1:2001,20*log10(abs(h2)))
title('Chebyshev 2')
xlabel('Frequency')
ylabel('Magnitude (dB)')
axis([0 2000 -200 0])
subplot(2,2,4);
plot(1:2001,20*log10(abs(he)))
title('Elliptical')
xlabel('Frequency')
ylabel('Magnitude (dB)')
axis([0 2000 -200 0])

figure;
subplot(2,2,1);
plot(1:2001,pb)
title('Butterworth')
xlabel('Frequency')
ylabel('Phase')
subplot(2,2,2);
plot(1:2001,p1)
title('Chebyshev 1')
xlabel('Frequency')
ylabel('Phase')
subplot(2,2,3);
plot(1:2001,p2)
title('Chebyshev 2')
xlabel('Frequency')
ylabel('Phase')
subplot(2,2,4);
plot(1:2001,pe)
title('Elliptical')
xlabel('Frequency')
ylabel('Phase')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[hb,tb] = impz(bb,ab);
[h1,t1] = impz(b1,a1);
[h2,t2] = impz(b2,a2);
[he,te] = impz(be,ae);
figure;
subplot(2,2,1);
stem(tb,hb)
title('Butterworth')
xlabel('t')
ylabel('Impulse response')
subplot(2,2,2);
stem(t1,h1)
title('Chebyshev 1')
xlabel('t')
ylabel('Impulse response')
subplot(2,2,3);
stem(t2,h2)
title('Chebyshev 2')
xlabel('t')
ylabel('Impulse response')
subplot(2,2,4);
stem(te,he)
title('Elliptical')
xlabel('t')
ylabel('Impulse response')

%Upon observing the phase responses of all the 4 filters, none of them have linear phase.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

N = 12;

[bb,ab] = butter(N,fc/(fs/2));
[hb,wb] = freqz(bb,ab,2001,fs);

[b1,a1] = cheby1(N,1,fc/(fs/2),'low');
[h1,w1] = freqz(b1,a1,2001,fs);

[b2,a2] = cheby2(N,sb,fc/(fs/2),'low');
[h2,w2] = freqz(b2,a2,2001,fs);

[be,ae] = ellip(N,1,sb,fc/(fs/2),'low');
[he,we] = freqz(be,ae,2001,fs);

figure;
subplot(2,2,1);
plot(1:2001,20*log10(abs(hb)))
title('Butterworth')
xlabel('Frequency')
ylabel('Magnitude (dB)')
axis([0 2000 -200 0])
subplot(2,2,2);
plot(1:2001,20*log10(abs(h1)))
title('Chebyshev 1')
xlabel('Frequency')
ylabel('Magnitude (dB)')
axis([0 2000 -200 0])
subplot(2,2,3);
plot(1:2001,20*log10(abs(h2)))
title('Chebyshev 2')
xlabel('Frequency')
ylabel('Magnitude (dB)')
axis([0 2000 -200 0])
subplot(2,2,4);
plot(1:2001,20*log10(abs(he)))
title('Elliptical')
xlabel('Frequency')
ylabel('Magnitude (dB)')
axis([0 2000 -200 0])

pb=angle(hb);
p1=angle(h1);
p2=angle(h2);
pe=angle(he);

figure;
subplot(2,2,1);
plot(1:2001,pb)
title('Butterworth')
xlabel('Frequency')
ylabel('Phase')
subplot(2,2,2);
plot(1:2001,p1)
title('Chebyshev 1')
xlabel('Frequency')
ylabel('Phase')
subplot(2,2,3);
plot(1:2001,p2)
title('Chebyshev 2')
xlabel('Frequency')
ylabel('Phase')
subplot(2,2,4);
plot(1:2001,pe)
title('Elliptical')
xlabel('Frequency')
ylabel('Phase')

%from all the 4 filters, Chebyshev Type-1 filter is more preferable, as Butterworth filters offer the flattest pass
%band, but Chebyshev filters are optimised to give a steeper roll off. The absolute difference of an actual ideal filter
%and a chebychev filter is less when compared to all other filters. In a elliptic filter, the transition is not smooth 
% as there are too many ripples in the pass band and the stop band regions. The Chebyshev filter response is the optimal 
%trade off between the ripple and the roll off. In a Chebychev type-1 filter, the pass band shows equiripple performance.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

f1=500;
f2=3000;
t=0:1/10000:1;

xa=sin(2*pi*f1*t)+sin(2*pi*f2*t);

[bb,ab] = butter(N,fc/(fs/2));
[b1,a1] = cheby1(N,1,fc/(fs/2),'low');
[b2,a2] = cheby2(N,sb,fc/(fs/2),'low');
[be,ae] = ellip(N,1,sb,fc/(fs/2),'low');

yb=filter(bb,ab,xa);
y1=filter(b1,a1,xa);
y2=filter(b2,a2,xa);
ye=filter(be,ae,xa);

figure;
subplot(4,2,1);
plot(t(1:100),xa(1:100));
title('Butterworth filter input')
xlabel('t')
ylabel('Input')
subplot(4,2,2);
plot(t(1:100),yb(1:100));
title('Butterworth filter output')
xlabel('t')
ylabel('Output')

subplot(4,2,3);
plot(t(1:100),xa(1:100));
title('Chebyshev1 filter input')
xlabel('t')
ylabel('Input')
subplot(4,2,4);
plot(t(1:100),y1(1:100));
title('Chebyshev1 filter output')
xlabel('t')
ylabel('Output')

subplot(4,2,5);
plot(t(1:100),xa(1:100));
title('Chebyshev2 filter input')
xlabel('t')
ylabel('Input')
subplot(4,2,6);
plot(t(1:100),y2(1:100));
title('Chebyshev2 filter output')
xlabel('t')
ylabel('Output')

subplot(4,2,7);
plot(t(1:100),xa(1:100));
title('Elliptical filter input')
xlabel('t')
ylabel('Input')
subplot(4,2,8);
plot(t(1:100),ye(1:100));
title('Elliptical filter output')
xlabel('t')
ylabel('Output')
