%Bit rate is 128kbps
bitrate=128000;

[y,Fs] = audioread('sp.wav');
disp("Sampling Frequency=" + Fs);
%Sampling Frequency=8000

durat = length(y)/ Fs ;
disp("Duration="+durat+"s");
%Duration=0.88062s

adcbits=bitrate/Fs;
disp("Bits used by ADC="+adcbits);
%Bits used by ADC=16

quantlvls=2.^(adcbits);
disp("Levels of quant.="+quantlvls);
%Levels of quant.=65536

%sound(y,Fs);
%sound(y,0.9*Fs);
%sound(y,0.8*Fs);
%sound(y,0.7*Fs);
%sound(y,0.2*Fs);
%When sampling frequency is lowered we see that the outptut from the DAC is
%more and more inaccurate as the higher frequency conetents are removed. We also
%see that the audio is a lot slower now as the sampling frequency has been
%reduced.

%sound(y,Fs);
%sound(y,1.2*Fs);
%sound(y,1.4*Fs);
%sound(y,1.6*Fs);
%sound(y,2*Fs);
%When sampling frequency is increased we see that the outptut from the DAC is
%still accurate as a wider range of frequencies is being included. We also
%see that the audio is a lot faster now as the sampling frequency has been
%increased.


%The fourier transform property observed here is frequency scaling. 
