function [c1,c2] = dftconv(x1,x2)
    N = length(x1)+length(x2)-1;
    c1 = zeros(1,N);
    c2 = zeros(1,N);
    l1 = length(x1);
    l2 = length(x2);
    X1 = [x1, zeros(1, l1)];
    X2 = [x2, zeros(1, l2)];
   
    
    x11 = [x1 zeros(1,N-length(x1))];
    x22 = [x2 zeros(1,N-length(x2))];
    c1 = ifft(fft(x11).*fft(x22));
    c2 = ifft(fft(X1).*fft(X2));
end


