t=0:0.001:1;
fs=5000;
ts=1/fs;
t_samples=0:ts:1;
xn=xt(t_samples);
%stem(t_samples,xn);

B=8;

y=quant(xn,2^B,-1,1);
%hold on
%stem(t_samples,y);
%hold off
n=t_samples;

figure;
subplot(3,1,1);
stem(n,xn);
title('Sampled signal')
xlabel('n') 
ylabel('x[n]')

subplot(3,1,2);
stem(n,y);
title('Quantized signal L=256')
xlabel('n') 
ylabel('xq[n]') 

%quantization error 
subplot(3,1,3);
en=zeros(length(xn),1);
for k=1:length(xn)
    en(k)=y(k)-xn(k);
end
plot(t_samples,en);
title('Quantization error for L=256')
xlabel('n') 
ylabel('eq[n]') 

%We can observe that when B increases the quantized signal starts to look
%more and more like the sampled signal and thereby the original signal
%because an increase in B leads to an increase in number of quantisation
%levels L as L=2^B. We also see a decrease in the quantization error
%with increase in B.

%max abs error for b 1:8
figure;
b=1:8;
max=zeros(length(b),1);
for z=1:8
   ye=quant(xn,2^z,-1,1); 
   max(z)=abs(ye(1)-xn(1));
   for l=2:length(ye)
       if abs(ye(l)-xn(l))>max(z)
           max(z)=abs(ye(l)-xn(l));
       end
   end
end
plot(b,max);
title('Max abs e for B=1:8')
xlabel('B') 
ylabel('Max. abs. e') 
%We see that there is a significant decrease in the maximum absolute
%quantization error with an incease in the number of bits. This occurs
%because when we have more bits available we are able to quantize the
%frequency contents to more levels and this allows us to represent the
%signal more accurately.

%sqnr
figure;
b=1:8;
sqnr=zeros(length(b),1);
for z=1:8
   ynn=quant(xn,2^z,-1,1);
   s1=0;
   s2=0;
   for v=1:length(xn)
       s1=s1+abs(xn(v))^2;
       s2=s2+abs(ynn(v)-xn(v))^2;
   end
   sqnr(z)=s1/s2;
end
plot(b,sqnr);
title('SQNR')
xlabel('B') 
ylabel('SQNR')
%We see that SQNR rises towards infinity with an increase in number of
%bits. 

%When we plot the graphs of experimentally measured SQNR and theoretical SQNR
%we can observe that for every bit added, the ratio increases 4 fold.
%The minimum value of SQNR can be observed as 1.5, when the number of bits is 0. 
%When compared, the experimental and the theoretical plots are almost similar,
%but a minor difference is that the theoretical grpah is steeper, i,e., there is 
%a rapid growth of the SQNR value with the increase in the number of bits (4 times), 
%where as the experimental values are not as strictly increasing.If we consider the 
%interval from 6 to 7 we see that the experimental value increased by around 18000
%while the theoretical value increased by around 18500.

figure;
plot(b,1.5*2.^(2*b));
title('SQNR(Theoretical)')
xlabel('B') 
ylabel('SQNR')

function [y]=xt(t)
    fo=10;
    y=sin(2*pi*fo*t);
end
