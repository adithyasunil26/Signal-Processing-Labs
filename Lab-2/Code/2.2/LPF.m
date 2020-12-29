function [B]= LPF(A,F,wc)
%initializing B as a zero array
B=zeros(length(A),1);
for k=1:length(A)
   if abs(F(k))>wc        %removing hgiher frequencies
       B(k)=0;
   else
       B(k)=A(k);
   end
end
end