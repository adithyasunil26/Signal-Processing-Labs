w1=1/8;
w2=3/8;
L=20;
w=hann(L);
x=pn(w1,w2,L);
for k=1:L
    x(k)=x(k)*w(k);
end
N=1000;
y=fft(x,N); 

figure;
subplot(3,1,1);
plot(1:N,abs(y));
title('N point DFT w1=1/8 w2=3/8 L=20')
xlabel('k') 
ylabel('X[k]') 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

L=50;
w=hann(L);
x=pn(w1,w2,L);
for k=1:L
    x(k)=x(k)*w(k);
end
N=1000;
y=fft(x,N);

subplot(3,1,2);
plot(1:N,abs(y));
title('N point DFT w1=1/8 w2=3/8 L=50')
xlabel('k') 
ylabel('X[k]')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

L=100;
w=hann(L);
x=pn(w1,w2,L);
for k=1:L
    x(k)=x(k)*w(k);
end
N=1000;
y=fft(x,N);

subplot(3,1,3);
plot(1:N,abs(y));
title('N point DFT w1=1/8 w2=3/8 L=100')
xlabel('k') 
ylabel('X[k]')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

w1=1/8;
w2=(1/8)+(1/40);
L=20;
w=hann(L);
x=pn(w1,w2,L);
for k=1:L
    x(k)=x(k)*w(k);
end
N=1000;
y=fft(x,N);

figure;
subplot(3,1,1);
plot(1:N,abs(y));
title('N point DFT w1=1/8 w2=1/8+1/40 L=20')
xlabel('k') 
ylabel('X[k]')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

L=50;
w=hann(L);
x=pn(w1,w2,L);
for k=1:L
    x(k)=x(k)*w(k);
end
N=1000;
y=fft(x,N);

subplot(3,1,2);
plot(1:N,abs(y));
title('N point DFT w1=1/8 w2=1/8+1/40 L=50')
xlabel('k') 
ylabel('X[k]')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

L=100;
w=hann(L);
x=pn(w1,w2,L);
for k=1:L
    x(k)=x(k)*w(k);
end
N=1000;
y=fft(x,N);

subplot(3,1,3);
plot(1:N,abs(y));
title('N point DFT w1=1/8 w2=1/8+1/40 L=100')
xlabel('k') 
ylabel('X[k]')

function [p] = pn(w1,w2,L)
    p=zeros(L,1);
    for k=1:L
        p(k)=cos(2*pi*w1*k)+cos(2*pi*w2*k);
    end
end