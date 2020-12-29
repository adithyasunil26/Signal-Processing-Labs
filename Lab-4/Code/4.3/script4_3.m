%Bit rate is 128kbps
bitrate=128000;

[y,Fs] = audioread('sp.wav');
yq=quant(y,8,-0.5,0.5);
%sound(y,Fs);
%sound(yq,Fs);

%The quantised signal sounds muffled and unclear

L=[2,4,8,16,32,64,128,256];
for l=1:length(L)
    yq=quant(y,L(l),-0.5,0.5);
    sound(yq,Fs);
    pause(2);
end

% We observe that the quality of the audio increases when the number of
% levels is increased

%When L is changed the frequency of the signal gets quantised accordingly.
%When we hav L=2 in the interval (-1,1) we are quantising every frequency 
%value to 2 levels which are -0.5 and 0.5. Similarly, for the other values
%of L the frequency content gets quantised to the respective number of
%levels. When we have more levels available for quantization we can
%represent the signal more accurately.