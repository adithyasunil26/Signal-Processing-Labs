function [xt] = harmonics(A, f0, P, td, fs)
    N=length(A);
    F=zeros(N,1);
    for k = 1:N
        F(k)=f0*k; 
    end
    xt=SumOfSines(A,F,P,td,fs);
end
