%declaring relevant parameters
T = pi;
w = -5:0.1:5;
syms t;
a = -T;
b = T;


%declaring the function
%xt = exp(1i*t);
%xt = cos(t);
xt = sin(t);


y = continuousFT(xt,t,a,b,w);

figure;
subplot(2,2,1);
plot(w, real(y)); grid on;
title('Real part of FT');
xlabel('w') ;
ylabel('Real part of FT');

subplot(2,2,2);
plot(w, imag(y)); grid on;
title('Imaginary part of FT');
xlabel('w') ;
ylabel('Imag. part of FT');

subplot(2,2,3);
plot(w,abs(y)); grid on;
title('Abssolute value of FT');
xlabel('w') ;
ylabel('Abs. value of FT');

subplot(2,2,4);
plot(w, angle(y)); grid on;
title('Phase of FT');
xlabel('w') ;
ylabel('Phase of FT');

%The output obtained is different from the expected output because since
%integration is not well defined, the function is assumed to be product of
%xt we take and a rectangular pulse. Therefore, the result obtained is a
%convolution of xt and the rectangular pulse.