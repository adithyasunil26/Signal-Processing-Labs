
fs=10000;
td=1;
f0=200;
N=5;
A=zeros(N,1);
P=zeros(N,1);

for k=1:N
    A(k)=k;
end

x4=harmonics(A, f0, P, td, fs);
[t_env,env] = envelope(0.2,0.2,0.7,0.4,0.2,fs);

%plot(t_env,env);

%soundsc(x4, fs)
x=zeros(length(x4),1);
for k=1:length(x4)
    x(k)=x4(k)*env(k);
end

soundsc(x, fs);

%plotting
figure;
subplot(3,1,1);
plot(t_env,x4);
title('Generated signal')
xlabel('t') 
ylabel('x[n]')

subplot(3,1,2);
plot(t_env,env);
title('Generated envelope')
xlabel('t') 
ylabel('x[n]')

subplot(3,1,3);
plot(t_env,x);
title('Enveloped signal')
xlabel('t') 
ylabel('x[n]')