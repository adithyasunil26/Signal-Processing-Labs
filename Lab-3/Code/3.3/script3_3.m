%defining time-grid
t_fine = -10:0.001:10;

%defining Ts
Ts1=0.5;
Ts2=0.2;
Ts3=0.1;
Ts4=0.05;

%finding location of samples for each Ts
t_samples1= -1:Ts1:1;
t_samples2= -1:Ts2:1;
t_samples3= -1:Ts3:1;
t_samples4= -1:Ts4:1;

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
t_fine1= -11:0.001:9;
plot(t_fine1,interxt1);
hold on
stem(t_samples1,xn1);
title('Ts=0.5s');
xlabel('t') ;
ylabel('x(t)') ;
legend('Reconstructed signal','Sampled signal');
hold off

subplot(2,2,2);
plot(t_fine1,interxt2);
hold on
stem(t_samples2,xn2);
title('Ts=0.2s');
xlabel('t') ;
ylabel('x(t)') ;
legend('Reconstructed signal','Sampled signal');
hold off

subplot(2,2,3);
plot(t_fine1,interxt3);
hold on
stem(t_samples3,xn3);
title('Ts=0.1s');
xlabel('t') ;
ylabel('x(t)'); 
legend('Reconstructed signal','Sampled signal');
hold off

subplot(2,2,4);
plot(t_fine1,interxt4);
hold on
stem(t_samples4,xn4);
title('Ts=0.05s');
xlabel('t') ;
ylabel('x(t)'); 
legend('Reconstructed signal','Sampled signal');
hold off

%%As the sampling interval is changed, as the value of Ts increased, the distance between the individual samples decreased
%and the initial signal can be reconstructed from the samples more accurately.

%function for signal
function [y]=xt(t)
    y = zeros(0, length(t));
    y = 1 - abs(t);
end
