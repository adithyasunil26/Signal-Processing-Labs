%declaring relevant parameters
T = 4;
w = -5:0.1:5;
syms t;
a = -T;
b = T;


%declaring the function
xt = 1;

%running cont. FT
y = continuousFT(xt,t,a,b,w);

%plots
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

%this is an illustration of the time scaling property
%when T is taken to be 4 times the previous one we see 
%that the FT gets stretched vertically and compressed 
%horizontally by a factor of 4
