N = 5;
A=zeros(N,1);

for k=1:N
    A(k)=1/k^2;                                                          %amplitude vector
end
fs = 10000;                                                              %sampling frequency

F_notes1=2*[87.31 98.00 116.54 98.00 87.31 98.00 116.54 98.00];          %storing the frequencies of the notes
F_notes2=2*[87.31 98.00 116.54 155.56 174.61 155.56 130.81 146.83 130.81]; 
td_notes1=[0.2 0.2 0.4 1.5 0.2 0.2 0.4 1.5];                             %storing the durations of the notes
td_notes2=[0.2 0.2 0.4 0.1 0.2 0.8 0.3 0.2 0.4];


F_notes=[F_notes1,F_notes2];   
td_notes=[td_notes1,td_notes2];

%envelope
adsr= [0.2 0.2 0.4 0.7 0.2];   
P=zeros(N,1);

%calling the synthesizer function
y=synthesizer(A,F_notes,P,adsr,td_notes,fs);  

soundsc(y,fs);
audiowrite('do_i_wanna_know_arctic_monkeys.wav',y,fs);
