function [B]= NonIdeal(A,F,G,a)
B=zeros(length(A),1);
for k=1:length(A)
       B(k)=A(k)*(G/(a+(1i*F(k))));   %in freq domain the output signal is given by multiplication of input anf transfer function
end   
end
