N=51;
mid=(N-1)/2;
n=0:1:N-1;
n = n';
wn = ones(N,1);

hd  = (1/6)*sinc((pi/6)*(n-mid));
hn = hd.*wn;
figure;
subplot(3,1,1);
plot(n,hn);
title("Coefficients h(n)");
xlabel("n");
ylabel("h[n]");
x=0:1:499;
x = x';
Hn = fft(hn,500);
Hn =fftshift(Hn);
Hnorm = (Hn - min(Hn))/(max(Hn) - min(Hn));
Hdb = 20*log10(abs(Hnorm));
subplot(3,1,2);
plot(x,Hdb);
title("Magnitude Response");
ylabel("Magnitude of H(e^jw)");
xlabel("w");
subplot(3,1,3);
plot(x,angle(Hn));
title("Phase Response");
ylabel("Phase");
xlabel("w");
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

N=51;
mid=(N-1)/2;
n=0:1:N-1;
n = n';
wn = blackman(51);

hd  = (1/6)*sinc((pi/6)*(n-25));
hn = hd.*wn;
figure;
subplot(3,1,1);
plot(n,hn);
title("Coefficients h(n)");
xlabel("n");
ylabel("h[n]");
x=0:1:499;
x = x';
Hn = fft(hn,500);
Hn =fftshift(Hn);
Hnorm = (Hn - min(Hn))/(max(Hn) - min(Hn));
Hdb = 20*log10(abs(Hnorm));
subplot(3,1,2);
plot(x,Hdb);
title("Magnitude Response");
ylabel("Magnitude of H(e^jw)");
xlabel("w");
subplot(3,1,3);
plot(x,angle(Hn));
title("Phase Response");
ylabel("Phase");
xlabel("w");

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

n = 0:1:200;
x = cos(pi.*n/16) + 0.25*sin(pi.*n/2);

y = conv(x,hn);
t = 0:1:250;
figure;
subplot(2,1,1)
plot(n,x);
title("x(n)");
xlabel("n");
ylabel("x(n)");
subplot(2,1,2);
plot(t,y);
ylim([-1.5,1.5]);
title("Filtered Signal");
xlabel("n");
ylabel("y(n)");

n = 0:1:200;
x = cos(pi.*n/16) + 0.25*randn(1,201);
y = conv(x,hn);
t = 0:1:250;
figure;
subplot(2,1,1)
plot(n,x);
title("x(n)");
xlabel("n");
ylabel("x(n)");
subplot(2,1,2);
plot(t,y);
ylim([-1.5,1.5]);
title("Filtered Signal");
xlabel("n");
ylabel("y(n)");

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
N=51;
mid=(N-1)/2;
n=0:1:N-1;
n = n';
wn = ones(N,1);

hd  = (1/6)*sinc((pi/6)*(n-mid));
hn = hd.*wn;

h1n = ((-1).^n).*hn;

x=0:1:499;
x = x';
Hn = fft(h1n,500);
Hn =fftshift(Hn);
Hnorm = (Hn - min(Hn))/(max(Hn) - min(Hn));
Hdb = 20*log10(abs(Hnorm));
figure;
plot(x,Hdb);
title("Magnitude response of new filter");
xlabel("n");
ylabel("magnitude of h(n)");


