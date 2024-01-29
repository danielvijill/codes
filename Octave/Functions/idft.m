function [x,n] = idft(X,N)
n=[0:1:N-1];
k=[0:1:N-1];
WN=exp(-i*2*pi/N);
nk=n'*k;
WNnk=WN.^(-nk);
x=(X*WNnk)/N;
