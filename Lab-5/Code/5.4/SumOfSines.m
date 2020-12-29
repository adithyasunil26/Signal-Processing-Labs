function [xn] = SumOfSines(A,F,P,td,fs)
    t=0:1/fs:td;
    xn=xt(A,F,P,t);
end

function [y] = xt(A,F,P,t)
y=zeros(length(t),1);

for t1=1:length(t)
    for k=1:length(A)
        y(t1)=y(t1)+(A(k)*sin(2*pi*F(k)*t(t1)+P(k)));
    end
end
end
