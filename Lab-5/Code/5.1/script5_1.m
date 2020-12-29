
fs=10000;
A=[0.5 0.5];
F1=[350 440];
P=[0 0];
td1=4;

x1=SumOfSines(A,F1,P,td1,fs);
%sound(x1,fs);

F2 = [480 620];
td2=0.5;

b1=SumOfSines(A,F2,P,td2,fs);
disp(size(b1));
z1=zeros(length(b1),1);
x2=cat(1,b1,z1,b1,z1,b1,z1,b1,z1);
%sound(x2,fs);

F3=[440 480];
td3=2;
b2=SumOfSines(A,F3,P,2,fs);
z2=zeros(length(b2),1);
x3=cat(1,b2,z2,b2,z2,b2,z2,b2,z2);
%sound(x3,fs);

%Yes the signals sound very much like the phone dial tones.The first one
%being the steady single tone and the second and third going repeatedly on
%and off.

figure;
subplot(3,1,1);
n=1:500;
plot(n,x1(1:500));
title('Generated signal in part a)')
xlabel('n') 
ylabel('x1[n]')

subplot(3,1,2);
plot(n,x2(1:500));
title('Generated signal in part b)')
xlabel('n') 
ylabel('x2[n]')

subplot(3,1,3);
plot(n,x3(1:500));
title('Generated signal in part c)')
xlabel('n') 
ylabel('x3[n]')

%The plots show the variations in signals caused by the difference in the 
%frequencies we are taking in each case. Since the frequencies are different
%the summation of the respective sinusoids is also different. We also
%notice in b and c that the zero signal intervals are not visible in the
%graph. This is because we are only plotting the initial 500 samples and
%the zero signal intervals come after that.
