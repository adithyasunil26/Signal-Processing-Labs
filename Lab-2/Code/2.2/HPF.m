function [Y]= HPF(A,F,wc)  
%initializing Y as a zero array
Y=zeros(length(A),1);
for k=1:length(A)
   if abs(F(k))<wc           %removing lower frequencies
       Y(k)=0;
   else
       Y(k)=A(k);
   end    
end
end
