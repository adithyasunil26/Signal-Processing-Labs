                                                                 
%function to compute the partial fourier sums
function y = partialfouriersum (A, T,t)
N= (length(A)-1)/2;     %defining the range in which the loop iterates
y = zeros(size(t));     %initialising partial fourier sums as a zero array
for k=-N:N
    y=y + A(k+N+1)*exp(1i*(k)*(2*pi/T)*t);      %expression for calculating partial fourier sum
end
end
 