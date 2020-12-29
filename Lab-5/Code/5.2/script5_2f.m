td=1;
f0=50;
N=5;
A=zeros(N,1);
A1=zeros(N,1);


P=2*pi*rand(1,N);

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

%for a random phase P = 2*pi*rand(1,N), as the phase varies in [2*pi, 2*pi*N] for every iteration, 
%we find that for ak = 1/k, the produced signal is clearer and shriller, which indicates a greater 
%amplitude, as compared to ak = 1/(k^2)

