fs=10000;
td=1;
f0=50;
N=5;
A=zeros(N,1);
A1=zeros(N,1);
A2=zeros(N,1);
A3=zeros(N,1);
A4=zeros(N,1);
A5=zeros(N,1);

P=zeros(N,1);

for k=1:N
    A(k)=1/k;
end
disp(A);
x=harmonics(A, f0, P, td, fs);
%soundsc(x);
figure;
subplot(2,1,1);
n=1:500;
plot(n,x(1:500));
title('Sampled signal for ak = 1/k')
xlabel('n') 
ylabel('x[n]')

for k1=1:N
    A1(k1)=1/(k1^2);
end
disp(A1);
x1=harmonics(A1, f0, P, td, fs);
%soundsc(x1);
subplot(2,1,2);
n=1:500;
plot(n,x1(1:500));
title('Sampled signal for ak = 1/k^2')
xlabel('n') 
ylabel('x[n]')


for k2=1:N
    A2(k2)=sin((pi*k2)/ N);
end
disp(A2);
x2=harmonics(A2, f0, P, td, fs);
%soundsc(x2);
figure;
subplot(2,2,1);
n=1:500;
plot(n,x2(1:500));
title('for ak=sin(pi*k/N)')
xlabel('n') 
ylabel('x[n]')


for k3=1:N
    A3(k3)=cos((pi*k2)/ N);
end
disp(A3);
x3=harmonics(A3, f0, P, td, fs);
%soundsc(x3);
subplot(2,2,2);
n=1:500;
plot(n,x3(1:500));
title('for ak=cos(pi*k/N)')
xlabel('n') 
ylabel('x[n]')


for k4=1:N
    A4(k4)=k4;
end
disp(A4);
x4=harmonics(A4, f0, P, td, fs);
%soundsc(x4);
subplot(2,2,3);
n=1:500;
plot(n,x4(1:500));
title('for ak = k')
xlabel('n') 
ylabel('x[n]')


for k5=1:N
    A5(k5)=cos((pi*k5)/ N)+sin((pi*k5)/ N);
end
disp(A5);
x5=harmonics(A5, f0, P, td, fs);
%soundsc(x5);
subplot(2,2,4);
n=1:500;
plot(n,x5(1:500));
title('for ak = cos(pi*k/N)+sin(pi*k/N)')
xlabel('n') 
ylabel('x[n]')


