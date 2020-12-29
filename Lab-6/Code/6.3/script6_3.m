w=-10:0.01:10;

x1=[1,0,-1,0];
N01=1;
X1=DTFT(x1,N01,w);                       %finding the frequency response of the system

figure;
subplot(2,1,1);
plot(w,abs(X1));
title('Frequency response')
xlabel('w') 
ylabel('Magnitude of frequency response') 

subplot(2,1,2);
plot(w,angle(X1));                       %finding the phase response of the system
title('Phase response')
xlabel('w') 
ylabel('Phase response')  

%By observing the plot of the magnitude of frequency response above, we can notice that the peak is 
%repeating periodically. This hints at no particular high or low frequency threshold. So the nature 
%of this particular system(filter) is a band pass. At w=0, the magnitude is 0. The magnitude increases 
%as w increases until w reaches pi/2 and then steadily decreases to 0 at w = pi. This essentially hints at
%the first half of the bandpass filter being a high pass filter and the second half being a low pass filter.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

x1=[1/3,1/3,1/3];
N01=2;
X1=DTFT(x1,N01,w);                      %finding the frequency response of the system

figure;
subplot(2,1,1);
plot(w,abs(X1));
title('Frequency response')
xlabel('w') 
ylabel('Magnitude of frequency response') 

subplot(2,1,2);
plot(w,angle(X1));
title('Phase response')                %finding the phase response of the system
xlabel('w') 
ylabel('Phase response') 

%From the plot of the maginitude of frequency response, we can notice that the magnitude is at it's highest 
%at w = 0 and gradually decreases as w reaches 2.09. This repeats further. Hence we can say that the nature of 
%this system is lowpass.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

x1=[-1/4,1/2,-1/4];
N01=2;
X1=DTFT(x1,N01,w);                     %finding the frequency response of the system

figure;
subplot(2,1,1);
plot(w,abs(X1));
title('Frequency response')
xlabel('w') 
ylabel('Magnitude of frequency response') 

subplot(2,1,2);
plot(w,angle(X1));                     %finding the phase response of the system
title('Phase response')
xlabel('w') 
ylabel('Phase response') 

%%From the plot of the maginitude of frequency response, we can notice that the magnitude is at it's lowest 
%at w = 0 and gradually increases as approaches pi. Then decreases and eventually becomes 0 as w reaches 2*pi. This repeats further. Hence we can say that  
%this system behaves like a highpass filter in nature.


% D) The impulse response of the given system is taken to be h[n] = a^n*u[n]. The calculated DTFT of this would be 
% 1/(1-ae^(-jw)). By plotting this, we notice that for negative values of a (i.e., -1 to 0), the system acts as a
% high pass filter. And for positive values of a, (i.e., between 0 and 1), it behaves as a low pass filter. Also from the DTFT of the impulse
%response, we notice that n is not a parameter, hence it does not change with change in the value of n. Hence it's a constant function as a function of n, 
%so it takes on the nature of the system depending on the value of a.
