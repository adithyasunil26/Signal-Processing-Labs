%defining time-grid
t_fine = 0:0.001:2;

%defining Ts
Ts1=0.1;
Ts2=0.2;
Ts3=0.3;
Ts4=0.4;

%finding location of samples for each Ts
t_samples1= 0:Ts1:2;
t_samples2= 0:Ts2:2;
t_samples3= 0:Ts3:2;
t_samples4= 0:Ts4:2;

%sampling signal for each Ts
xn1=xt(t_samples1);
xn2=xt(t_samples2);
xn3=xt(t_samples3);
xn4=xt(t_samples4);

%finding n for each 
n1=1:length(xn1);
n2=1:length(xn2);
n3=1:length(xn3);
n4=1:length(xn4);

%interpolation
interxt1= sinc_interp(n1,xn1,Ts1,t_fine);
interxt2= sinc_interp(n2,xn2,Ts2,t_fine);
interxt3= sinc_interp(n3,xn3,Ts3,t_fine);
interxt4= sinc_interp(n4,xn4,Ts4,t_fine);

%plotting
figure;
subplot(2,2,1);
plot(t_fine,interxt1);
hold on
stem(t_samples1,xn1);
title('Ts=0.1s');
xlabel('t') ;
ylabel('x(t)') ;
legend('Reconstructed signal','Sampled signal');
hold off

subplot(2,2,2);
plot(t_fine,interxt2);
hold on
stem(t_samples2,xn2);
title('Ts=0.2s');
xlabel('t') ;
ylabel('x(t)') ;
legend('Reconstructed signal','Sampled signal');
hold off

subplot(2,2,3);
plot(t_fine,interxt3);
hold on
stem(t_samples3,xn3);
title('Ts=0.3s');
xlabel('t') ;
ylabel('x(t)'); 
legend('Reconstructed signal','Sampled signal');
hold off

subplot(2,2,4);
plot(t_fine,interxt4);
hold on
stem(t_samples4,xn4);
title('Ts=0.4s');
xlabel('t') ;
ylabel('x(t)'); 
legend('Reconstructed signal','Sampled signal');
hold off

%function for signal
function [y]=xt(t)
    y=zeros(length(t));
    y=sin(5*pi*t); 
    %the angular frequency w of the given function is 5pi. The Nyquist rate of a function with an angular frequency
    %w is 2w. So the Nyquist rate of this function is 10pi.
end

%We observe that when Ts is 0.2 and 0.4 the sampled signal as well as the 
%reconstructed signal are innacurate 
