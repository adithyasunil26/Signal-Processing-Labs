function xr = sinc_interp(n,xn,Ts,t_fine)
% n - the integer locations of the samples x[n]
% xn - the sampled signal x[n] = x(n*Ts)
% Ts - the sampling interval
% t_fine - the time-grid for reconstruction of xr
% xr - the reconstructed signal over the time-grid t_fine
xr=zeros(length(t_fine),1);
ws = 2*pi/Ts;        %defining sampling frequency
wc = ws/2;           %defining critical frequency
for t=1:length(t_fine)
    for k=1:length(n)      %sinc reconstruction expression
        xr(t)=xr(t)+(Ts*xn(n(k))*(wc/pi)*sinc((wc/pi)*(t_fine(t)-((n(k)-1)*Ts))));
    end
end
end