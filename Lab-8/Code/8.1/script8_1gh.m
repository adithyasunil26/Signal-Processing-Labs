w1=1/8;
w2=3/8;
L=100;
x=pn(w1,w2,L);
N=1000;
y=fft(x,N);
figure;
plot(1:N,abs(y));
title('N point DFT L=100 N=1000')
xlabel('k') 
ylabel('X[k]') 

L=100;
x=pn(w1,w2,L);
N=100;
y=fft(x,N);
figure;
plot(1:N,abs(y));
title('N point DFT L=100 N=100')
xlabel('k') 
ylabel('X[k]') 

w1=1/8;
w2=1/8+1/40;
L=100;
x=pn(w1,w2,L);
N=1000;
y=fft(x,N);
figure;
plot(1:N,abs(y));
title('N point DFT L=100 N=1000')
xlabel('k') 
ylabel('X[k]') 

L=100;
x=pn(w1,w2,L);
N=100;
y=fft(x,N);
figure;
plot(1:N,abs(y));
title('N point DFT L=100 N=100')
xlabel('k') 
ylabel('X[k]') 

function [p] = pn(w1,w2,L)
    p=zeros(L,1);
    for k=1:L
        p(k)=cos(2*pi*w1*k)+cos(2*pi*w2*k);
    end
end