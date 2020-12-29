%%Rectangular
N = 51; 
w = ones(N,1);

wk = fftshift(fft(w,500));
m = max(wk);
mi = min(wk);
nwk = (wk-mi)/(m-mi);
dbs = 20*log10(abs(nwk));

figure;
n = 0:50;
subplot(3,3,1)
plot(w);
title('w');
ylabel("w(n)");
xlabel("n");
subplot(3,3,2)
plot(dbs)
ylim([-100 10])
title('Magnitude in dbs');
ylabel("Magnitude");
xlabel("w");
subplot(3,3,3)
plot(angle(wk))
title('Phase');
ylabel("Phase");
xlabel("w");

N = 75; 
w = ones(N,1);

wk = fftshift(fft(w,500));
m = max(wk);
nwk = wk/m;
dbs = 20*log10(abs(nwk));

n = 0:74;
subplot(3,3,4)
plot(w);
title('w');
ylabel("w(n)");
xlabel("n");
subplot(3,3,5)
plot(dbs)
ylim([-100 10])
title('Magnitude in dbs');
ylabel("Magnitude");
xlabel("w");
subplot(3,3,6)
plot(angle(wk))
title('Phase');
ylabel("Phase");
xlabel("w");

N = 101; 
w = ones(N,1);

wk = fftshift(fft(w,500));
m = max(wk);
nwk = wk/m;
dbs = 20*log10(abs(nwk));

n = 0:100;
subplot(3,3,7)
plot(w);
title('w');
ylabel("w(n)");
xlabel("n");
subplot(3,3,8)
plot(dbs)
ylim([-100 10])
title('Magnitude in dbs');
ylabel("Magnitude");
xlabel("w");
subplot(3,3,9)
plot(angle(wk))
title('Phase');
ylabel("Phase");
xlabel("w");

%%%%%%%%%%%%%%%%%%%%%%%%%%
%%Barlett

N = 51; 
w = bartlett(N);

wk = fftshift(fft(w,500));
m = max(wk);
nwk = wk/m;
dbs = 20*log10(abs(nwk));

figure;
n = 0:50;
subplot(3,3,1)
plot(w);
title('w');
ylabel("w(n)");
xlabel("n");
subplot(3,3,2)
plot(dbs)
ylim([-100 10])
title('Magnitude in dbs');
ylabel("Magnitude");
xlabel("w");
subplot(3,3,3)
plot(angle(wk))
title('Phase');
ylabel("Phase");
xlabel("w");

N = 75; 
w = bartlett(N);

wk = fftshift(fft(w,500));
m = max(wk);
nwk = wk/m;
dbs = 20*log10(abs(nwk));

n = 0:74;
subplot(3,3,4)
plot(w);
title('w');
ylabel("w(n)");
xlabel("n");
subplot(3,3,5)
plot(dbs)
ylim([-100 10])
title('Magnitude in dbs');
ylabel("Magnitude");
xlabel("w");
subplot(3,3,6)
plot(angle(wk))
title('Phase');
ylabel("Phase");
xlabel("w");

N = 101; 
w = bartlett(N);

wk = fftshift(fft(w,500));
m = max(wk);
nwk = wk/m;
dbs = 20*log10(abs(nwk));

n = 0:100;
subplot(3,3,7)
plot(w);
title('w');
ylabel("w(n)");
xlabel("n");
subplot(3,3,8)
plot(dbs)
ylim([-100 10])
title('Magnitude in dbs');
ylabel("Magnitude");
xlabel("w");
subplot(3,3,9)
plot(angle(wk))
title('Phase');
ylabel("Phase");
xlabel("w");

%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%Hamming

N = 51; 
w = hamming(N);

wk = fftshift(fft(w,500));
m = max(wk);
nwk = wk/m;
dbs = 20*log10(abs(nwk));

figure;
n = 0:50;
subplot(3,3,1)
plot(w);
title('w');
ylabel("w(n)");
xlabel("n");
subplot(3,3,2)
plot(dbs)
ylim([-100 10])
title('Magnitude in dbs');
ylabel("Magnitude");
xlabel("w");
subplot(3,3,3)
plot(angle(wk))
title('Phase');
ylabel("Phase");
xlabel("w");

N = 75; 
w = hamming(N);

wk = fftshift(fft(w,500));
m = max(wk);
nwk = wk/m;
dbs = 20*log10(abs(nwk));

n = 0:74;
subplot(3,3,4)
plot(w);
title('w');
ylabel("w(n)");
xlabel("n");
subplot(3,3,5)
plot(dbs)
ylim([-100 10])
title('Magnitude in dbs');
ylabel("Magnitude");
xlabel("w");
subplot(3,3,6)
plot(angle(wk))
title('Phase');
ylabel("Phase");
xlabel("w");

N = 101; 
w = hamming(N);

wk = fftshift(fft(w,500));
m = max(wk);
nwk = wk/m;
dbs = 20*log10(abs(nwk));

n = 0:100;
subplot(3,3,7)
plot(w);
title('w');
ylabel("w(n)");
xlabel("n");
subplot(3,3,8)
plot(dbs)
ylim([-100 10])
title('Magnitude in dbs');
ylabel("Magnitude");
xlabel("w");
subplot(3,3,9)
plot(angle(wk))
title('Phase');
ylabel("Phase");
xlabel("w");

%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%Hanning

N = 51; 
w = hann(N);

wk = fftshift(fft(w,500));
m = max(wk);
nwk = wk/m;
dbs = 20*log10(abs(nwk));

figure;
n = 0:50;
subplot(3,3,1)
plot(w);
title('w');
ylabel("w(n)");
xlabel("n");
subplot(3,3,2)
plot(dbs)
ylim([-100 10])
title('Magnitude in dbs');
ylabel("Magnitude");
xlabel("w");
subplot(3,3,3)
plot(angle(wk))
title('Phase');
ylabel("Phase");
xlabel("w");


N = 75; 
w = hann(N);

wk = fftshift(fft(w,500));
m = max(wk);
nwk = wk/m;
dbs = 20*log10(abs(nwk));

n = 0:74;
subplot(3,3,4)
plot(w);
title('w');
ylabel("w(n)");
xlabel("n");
subplot(3,3,5)
plot(dbs)
ylim([-100 10])
title('Magnitude in dbs');
ylabel("Magnitude");
xlabel("w");
subplot(3,3,6)
plot(angle(wk))
title('Phase');
ylabel("Phase");
xlabel("w");

N = 101; 
w = hann(N);

wk = fftshift(fft(w,500));
m = max(wk);
nwk = wk/m;
dbs = 20*log10(abs(nwk));

n = 0:100;
subplot(3,3,7)
plot(w);
title('w');
ylabel("w(n)");
xlabel("n");
subplot(3,3,8)
plot(dbs)
ylim([-100 10])
title('Magnitude in dbs');
ylabel("Magnitude");
xlabel("w");
subplot(3,3,9)
plot(angle(wk))
title('Phase');
ylabel("Phase");
xlabel("w");

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%Blackman

N = 51; 
w = blackman(N);

wk = fftshift(fft(w,500));
m = max(wk);
nwk = wk/m;
dbs = 20*log10(abs(nwk));

figure;
n = 0:50;
subplot(3,3,1)
plot(w);
title('w');
ylabel("w(n)");
xlabel("n");
subplot(3,3,2)
plot(dbs)
ylim([-100 10])
title('Magnitude in dbs');
ylabel("Magnitude");
xlabel("w");
subplot(3,3,3)
plot(angle(wk))
title('Phase');
ylabel("Phase");
xlabel("w");

N = 75; 
w = blackman(N);

wk = fftshift(fft(w,500));
m = max(wk);
nwk = wk/m;
dbs = 20*log10(abs(nwk));

n = 0:74;
subplot(3,3,4)
plot(w);
title('w');
ylabel("w(n)");
xlabel("n");
subplot(3,3,5)
plot(dbs)
ylim([-100 10])
title('Magnitude in dbs');
ylabel("Magnitude");
xlabel("w");
subplot(3,3,6)
plot(angle(wk))
title('Phase');
ylabel("Phase");
xlabel("w");

N = 101; 
w = blackman(N);

wk = fftshift(fft(w,500));
m = max(wk);
nwk = wk/m;
dbs = 20*log10(abs(nwk));

n = 0:100;
subplot(3,3,7)
plot(w);
title('w');
ylabel("w(n)");
xlabel("n");
subplot(3,3,8)
plot(dbs)
ylim([-100 10])
title('Magnitude in dbs');
ylabel("Magnitude");
xlabel("w");
subplot(3,3,9)
plot(angle(wk))
title('Phase');
ylabel("Phase");
xlabel("w");

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%b)
%We observe that the magnitude spectrums gets more and more compressed on 
%increasing the value of N. 
%%c)
%Yes, phase is linear in all cases.




