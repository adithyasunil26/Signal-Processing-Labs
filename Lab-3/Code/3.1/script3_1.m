%defining time-grid
t_fine = 0:0.001:2;

%plotting original function
plot(t_fine,xt(t_fine));

%sampling
Ts=0.1;
t_samples= 0:Ts:2;
xn=xt(t_samples);

%plotting sampled signal
hold on
stem(t_samples,xn);
title('Original vs sampled signal')
xlabel('t') 
ylabel('x(t)') 
legend('Original signal','Sampled signal');
hold off

%function for signal
function [y]=xt(t)
    y=sin(5*pi*t)+cos(10*pi*t);
end

