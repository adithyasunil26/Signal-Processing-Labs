
function X = DTFT (x,N0,w)   %function to obtain the DTFT of a discrete-time signal x[n]
X=zeros(1,length(w));        %initialising the result array as a zero array
for k=1:length(x)
    X=X+ (x(k).*exp(-1i*w.*(k-N0)));  %expression for dtft  
end
end
