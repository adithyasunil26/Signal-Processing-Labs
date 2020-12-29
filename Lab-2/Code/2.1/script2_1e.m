%declaring relevant parameters
T = 2;
w = -5:0.1:5;
syms t;
a = -1;
b = 1;


%declaring the function
xt = 1-abs(t);

%running cont. FT
y = continuousFT(xt,t,a,b,w);

figure; 
subplot(2,2,1);
plot(w,real(y)); grid on;
title('Real part of FT');
xlabel('w') ;
ylabel('Real part of FT');

subplot(2,2,2);
plot(w,imag(y)); grid on;
title('Imaginary part of FT');
xlabel('w') ;
ylabel('Imag. part of FT');

subplot(2,2,3);
plot(w,abs(y)); grid on;
title('Abssolute value of FT');
xlabel('w') ;
ylabel('Abs. value of FT');

subplot(2,2,4);
plot(w,angle(y)); grid on;
title('Phase of FT');
xlabel('w') ;
ylabel('Phase of FT');

%the expected output is the square of a sinc function as a triangle pulse
%is convolution of 2 rectangular pulses which in the frequency domain is
%multiplication of 2 sinc functions
