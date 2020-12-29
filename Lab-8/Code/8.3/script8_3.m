L=5;
N=5;
x = [ones(1,L), zeros(1,(N-L))];
X =directdft(x,N);

figure;
subplot(3,1,1)
plot(x);
title('Input x')
xlabel('k')
ylabel('input x')
subplot(3,1,2)
plot(abs(X));
title('Ouput X')
xlabel('k')
ylabel('magnitude of X')
subplot(3,1,3)
plot(angle(X));
title('Ouput X')
xlabel('k')
ylabel('phase of X')


%%%%%%%%%%%%%%%%%%%%%%%%%%

L=5;
N=10;
x = [ones(1,L), zeros(1,(N-L))];
X =directdft(x,N);

figure;
subplot(3,1,1)
plot(x);
title('Input x')
xlabel('k')
ylabel('input x')
subplot(3,1,2)
plot(abs(X));
title('Ouput X')
xlabel('k')
ylabel('magnitude of X')
subplot(3,1,3)
plot(angle(X));
title('Ouput X')
xlabel('k')
ylabel('phase of X')


%%%%%%%%%%%%%%%%%%%%%%%%%%

L=5;
N=100;
x = [ones(1,L), zeros(1,(N-L))];
X =directdft(x,N);

figure;
subplot(3,1,1)
plot(x);
title('Input x')
xlabel('k')
ylabel('input x')
subplot(3,1,2)
plot(abs(X));
title('Ouput X')
xlabel('k')
ylabel('magnitude of X')
subplot(3,1,3)
plot(angle(X));
title('Ouput X')
xlabel('k')
ylabel('phase of X')

%%%%%%%%%%%%%%%%%%%%%%%%%%

w0 = 3*pi/10;
N = 20;
n = 0:(N-1);
x = sin(w0*n);
X =directdft(x,N);

figure;
subplot(3,1,1)
plot(x);
title('Input x')
xlabel('k')
ylabel('input x')
subplot(3,1,2)
plot(abs(X));
title('Ouput X')
xlabel('k')
ylabel('magnitude of X')
subplot(3,1,3)
plot(angle(X));
title('Ouput X')
xlabel('k')
ylabel('phase of X')
%%%%%%%%%%%%%%%%%%%%%%%%%%

n = 0:(N-1);
x = cos(w0*n);
X =directdft(x,N);

figure;
subplot(3,1,1)
plot(x);
title('Input x')
xlabel('k')
ylabel('input x')
subplot(3,1,2)
plot(abs(X));
title('Ouput X')
xlabel('k')
ylabel('magnitude of X')
subplot(3,1,3)
plot(angle(X));
title('Ouput X')
xlabel('k')
ylabel('phase of X')

%%%%%%%%%%%%%%%%%%%%%%%%
n = 0:(N-1);
x = exp(1i*w0*n);
X =directdft(x,N);

figure;
subplot(3,1,1)
plot(x);
title('Input x')
xlabel('k')
ylabel('input x')
subplot(3,1,2)
plot(abs(X));
title('Ouput X')
xlabel('k')
ylabel('magnitude of X')
subplot(3,1,3)
plot(angle(X));
title('Ouput X')
xlabel('k')
ylabel('phase of X')
%%%%%%%%%%%%%%%%%%%%%%%%%%

w0 = 3*pi/10;
N = 20;
n = 0:(N-1);
x = sin(w0*(n-1));
X =directdft(x,N);

figure;
subplot(3,1,1)
plot(x);
title('Input x')
xlabel('k')
ylabel('input x')
subplot(3,1,2)
plot(abs(X));
title('Ouput X')
xlabel('k')
ylabel('magnitude of X')
subplot(3,1,3)
plot(angle(X));
title('Ouput X')
xlabel('k')
ylabel('phase of X')
%%%%%%%%%%%%%%%%%%%%%%%%%%
n = 0:(N-1);
x = cos(w0*(n-2));
X =directdft(x,N);

figure;
subplot(3,1,1)
plot(x);
title('Input x')
xlabel('k')
ylabel('input x')
subplot(3,1,2)
plot(abs(X));
title('Ouput X')
xlabel('k')
ylabel('magnitude of X')
subplot(3,1,3)
plot(angle(X));
title('Ouput X')
xlabel('k')
ylabel('phase of X')
%%%%%%%%%%%%%%%%%%%%%%%%

n = 0:(N-1);
x = exp(1i*w0*(n-3));
X =directdft(x,N);

figure;
subplot(3,1,1)
plot(x);
title('Input x')
xlabel('k')
ylabel('input x')
subplot(3,1,2)
plot(abs(X));
title('Ouput X')
xlabel('k')
ylabel('magnitude of X')
subplot(3,1,3)
plot(angle(X));
title('Ouput X')
xlabel('k')
ylabel('phase of X')
%%%%%%%%%%%%%%%%%%%%%%%%%%

N = 10;
x = [1, zeros(1, N-1)];
X =directdft(x,N);

figure;
subplot(3,1,1)
plot(x);
title('Input x')
xlabel('k')
ylabel('input x')
subplot(3,1,2)
plot(abs(X));
title('Ouput X')
xlabel('k')
ylabel('magnitude of X')
subplot(3,1,3)
plot(angle(X));
title('Ouput X')
xlabel('k')
ylabel('phase of X')
%%%%%%%%%%%%%%%%%%%%%%%%%%


N = 20;
n = 0:(N-1);
x = (0.9).^n;
X =directdft(x,N);

figure;
subplot(3,1,1)
plot(x);
title('Input x')
xlabel('k')
ylabel('input x')
subplot(3,1,2)
plot(abs(X));
title('Ouput X')
xlabel('k')
ylabel('magnitude of X')
subplot(3,1,3)
plot(angle(X));
title('Ouput X')
xlabel('k')
ylabel('phase of X')





