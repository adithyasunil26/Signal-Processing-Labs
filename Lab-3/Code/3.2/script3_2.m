%defining time-grid and sampling the signa
t_fine = 0:0.001:2;
Ts=0.1;
t_samples= 0:Ts:2;
xn=xt(t_samples);
n=1:length(xn);

%interpolations
interxt1= interp1(t_samples,xn,t_fine,'nearest');
interxt2= interp1(t_samples,xn,t_fine,'linear');
interxt3= sinc_interp(n,xn,Ts,t_fine);

%plotting
figure;
subplot(2,2,1);
plot(t_fine,xt(t_fine));
hold on
stem(t_samples,xn);
title('Original vs samples signal')
xlabel('t') 
ylabel('x(t)') 
legend('Original signal','Sampled signal');
hold off

subplot(2,2,2);
plot(t_fine,interxt1);
hold on
stem(t_samples,xn);
title('Zero order hold reconstruction')
xlabel('t') 
ylabel('x(t)') 
legend('Reconstructed signal','Sampled signal');
hold off

subplot(2,2,3);
plot(t_fine,interxt2);
hold on
stem(t_samples,xn);
title('linear interpolation')
xlabel('t') 
ylabel('x(t)') 
legend('reconstructed sig.','Sampled signal');
hold off

subplot(2,2,4);
plot(t_fine,interxt3);
hold on
stem(t_samples,xn);
title('Sinc reconstruction')
xlabel('t') 
ylabel('x(t)') 
legend('Reconstructed signal','Sampled signal');
hold off

%error calculation 
mae1=zeros(length(t_samples),1);
for t=1:length(t_samples)
    a=xt(t_samples(t))-interxt1(t);
    mae1(t)=abs(a);
end
disp(max(mae1,[],'all'));

mae2=zeros(length(t_samples),1);
for t=1:length(t_samples)
    a=xt(t_samples(t))-interxt2(t);
    mae2(t)=abs(a);
end
disp(max(mae2,[],'all'));

mae3=zeros(length(t_samples),1);
for t=1:length(t_samples)
    a=xt(t)-interxt3(t);
    mae3(t)=abs(a);
end
disp(max(mae3,[],'all'));

%function for signal
function [y]=xt(t)
    y=sin(5*pi*t)+cos(10*pi*t);
end

%The quality of reconstruction varies such that it is most accurate towards 
%the middle of the range or close to 1. The reconstruction gets more and
%more inaccurate on going farther away from 1 within the range. 
