%Function to compute continuous time fourier transform
function [X] = continuousFT (xt,t,a,b,w)
%defining symbolic var t
syms t;
X=int(xt * exp(-1i*w*t),t,[a b]);   %expression for cont. t FT
end