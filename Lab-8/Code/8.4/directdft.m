function X=directdft(x,N)
X = zeros(1,N);
k=0:N-1;
    for n=0:N-1
        X=X+(x(n+1).*exp(-1*1i*2*pi*(n)*(k)/N));
    end
end
