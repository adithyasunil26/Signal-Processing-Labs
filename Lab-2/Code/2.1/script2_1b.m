%declaring relevant parameters
T = 2;
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
%the plot is a sinc function which is the FT of
%rectangular pulse 

subplot(2,2,2);
plot(w,imag(y)); grid on;
title('Imaginary part of FT');
xlabel('w') ;
ylabel('Imag. part of FT');
%the plot is 0 throughout as the FT of a rectangular
%function has no imaginary part, it is a real sinc function

subplot(2,2,3);
plot(w,abs(y)); grid on;
title('Abssolute value of FT');
xlabel('w') ;
ylabel('Abs. value of FT');
%absolute value gives us the modulus of the real function 

subplot(2,2,4);
plot(w,angle(y)); grid on;
title('Phase of FT');
xlabel('w') ;
ylabel('Phase of FT');
%the phase angle oscillates between pi and 0 as 
%the magnitude of real value oscillates between 
%+ve and -ve values and hence in an argand plane 
%the phase angle changes by pi when going from +ve 
%to -ve


