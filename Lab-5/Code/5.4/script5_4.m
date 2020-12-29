N = 5;
A=zeros(N,1);

for k=1:N
    A(k)=1/k^2;
end
fs = 10000;

M = 5; 
F_notes = 50 + 50*rand(1,M); 
td_notes = 0.5 + rand(1,M);
%F_notes=100:-10:40;
%M=length(F_notes);
%td_notes=ones(M,1);

adsr= [0.2 0.2 0.4 0.7 0.2];
P=zeros(N,1);

y=synthesizer(A,F_notes,P,adsr,td_notes,fs);

soundsc(y,fs);
audiowrite('c.wav',y,fs);