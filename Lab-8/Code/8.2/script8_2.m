N = 10;
x1 = randn(1,N);
x2 = randn(1,N);
[c1,c2] = dftconv(x1,x2);
clin = conv(x1,x2);
ccirc= cconv(x1,x2);
figure;
subplot(2,2,1)
stem(c2,'filled')
ylim([0 15])
title('Linear Convolution of x and y')

subplot(2,2,2)
stem(clin,'filled')
ylim([0 15])
title('Linear convolution using conv')

subplot(2,2,3)
stem(c1,'filled')
ylim([0 15])
title('Circular convolution of xpad and ypad')

subplot(2,2,4)
stem(ccirc,'filled')
ylim([0 15])
title('Circular Convolution using cconv')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% c) The theoretical computational complexity of evaluating the convolution implemented by the function dftconv using FFT
% is FFT techniques is O(nlogn)

%% c) The computational complexity of evaluating the convolution by directly evaluating it in time domain is O(n^2)

