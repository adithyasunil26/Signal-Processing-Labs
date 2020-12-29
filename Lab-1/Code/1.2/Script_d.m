% defining relevant parameters
T= 1;
T1=1/4;
a=-T1;
b=T1;
t1=-0.5:0.001:0.5;
Narr=1:100;

%initializing arrays to store mse and mae for each value of N
msearr=zeros(length(Narr));
maearr=zeros(length(Narr));

%generating outputs of original function for error calculation
M = length(t1); 
K = floor(M/4); 
xtt = zeros(M,1); 
nz_idx = K+1:3*K+1; 
t1=-0.5:0.001:0.5;
xtt(nz_idx) = 0.25 - abs(t1(nz_idx)); 
disp(length(xtt));

%loop to calculate error for all N values from 1 to 30 (1 to 100 could not be done as laptop takes too long for each iteration after 30)
for N=1:30                             
    disp(N);
    syms t;
    
    xt = 1/4 - abs(t);  % triangle wave
    
    % function call to fourierCoeff which returns array of fourier coefficients
    F = fourierCoeff(N,T,t,xt,a,b);

    %function call to partialfouriersum which returns array of partial fourier
    %sums
    y = abs( partialfouriersum (F, T,t1));
    
    
    %calculating error for particular N
    mae=zeros(length(xtt));
    mse=0;
    for q=1:length(y)
        a=xtt(q)-y(q);
        mae(q)=abs(a);
        mse=mse+(a.^2);
    end
    
    %adding calculated error values to arrays
    maearr(N)= max(mae,[],'all');
    msearr(N)= mse/length(y);
    
end

%plotting the graphs of mae and mse for N from 1 to 100
figure; plot(Narr,maearr); grid on;
hold on; plot(Narr,msearr); hold off;

%labels for axes and title for plot
xlabel('N'); 
ylabel('error(N)'); 
title('Max. absolute error and mean squared error');
%legend for plot
legend('Max. Absolute Error ','Mean Squared Error');